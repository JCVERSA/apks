package com.transsion.tranplayer;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.MainThread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public class AWindow implements IVLCVout {
    private static final int AWINDOW_REGISTER_ERROR = 0;
    private static final int AWINDOW_REGISTER_FLAGS_HAS_VIDEO_LAYOUT_LISTENER = 2;
    private static final int AWINDOW_REGISTER_FLAGS_SUCCESS = 1;
    private static final int ID_MAX = 2;
    private static final int ID_SUBTITLES = 1;
    private static final int ID_VIDEO = 0;
    private static final int SURFACE_STATE_ATTACHED = 1;
    private static final int SURFACE_STATE_INIT = 0;
    private static final int SURFACE_STATE_READY = 2;
    private static final String TAG = "AWindow";
    private final NativeLock mNativeLock;
    private final MediaPlayer.SurfaceListener mSurfaceCallback;
    private SurfaceTextureThread mSurfaceTextureThread;
    private final AtomicInteger mSurfacesState = new AtomicInteger(0);
    private IVLCVout.OnNewVideoLayoutListener mOnNewVideoLayoutListener = null;
    private ArrayList<IVLCVout.Callback> mIVLCVoutCallbacks = new ArrayList<>();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private boolean mUseGLRenderer = false;
    private long mCallbackNativeHandle = 0;
    private int mMouseAction = -1;
    private int mMouseButton = -1;
    private int mMouseX = -1;
    private int mMouseY = -1;
    private int mWindowWidth = -1;
    private int mWindowHeight = -1;
    private final SurfaceHelper[] mSurfaceHelpers = {null, null};
    private final Surface[] mSurfaces = {null, null};

    public static class NativeLock {
        private boolean buffersGeometryAbort;
        private boolean buffersGeometryConfigured;

        private NativeLock() {
            this.buffersGeometryConfigured = false;
            this.buffersGeometryAbort = false;
        }
    }

    @TargetApi(16)
    public static class SurfaceTextureThread implements Runnable, SurfaceTexture.OnFrameAvailableListener {
        private boolean mDoRelease;
        private boolean mFrameAvailable;
        private boolean mIsAttached;
        private Looper mLooper;
        private Surface mSurface;
        private SurfaceTexture mSurfaceTexture;
        private Thread mThread;

        public synchronized boolean attachToGLContext(int i) {
            if (this.mSurfaceTexture == null) {
                Thread thread = new Thread(this);
                this.mThread = thread;
                thread.start();
                while (this.mSurfaceTexture == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        return false;
                    }
                }
                this.mSurface = new Surface(this.mSurfaceTexture);
            }
            this.mSurfaceTexture.attachToGLContext(i);
            this.mFrameAvailable = false;
            this.mIsAttached = true;
            return true;
        }

        public synchronized void detachFromGLContext() {
            if (this.mDoRelease) {
                this.mLooper.quit();
                this.mLooper = null;
                try {
                    this.mThread.join();
                } catch (InterruptedException unused) {
                }
                this.mThread = null;
                Surface surface = this.mSurface;
                if (surface != null) {
                    surface.release();
                    this.mSurface = null;
                }
                SurfaceTexture surfaceTexture = this.mSurfaceTexture;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    this.mSurfaceTexture = null;
                }
                this.mDoRelease = false;
            } else {
                this.mSurfaceTexture.detachFromGLContext();
            }
            this.mIsAttached = false;
        }

        public synchronized Surface getSurface() {
            return this.mSurface;
        }

        public synchronized void release() {
            try {
                if (this.mSurfaceTexture != null) {
                    if (this.mIsAttached) {
                        this.mDoRelease = true;
                    } else {
                        Surface surface = this.mSurface;
                        if (surface != null) {
                            surface.release();
                            this.mSurface = null;
                        }
                        this.mSurfaceTexture.release();
                        this.mSurfaceTexture = null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public boolean waitAndUpdateTexImage(float[] fArr) {
            synchronized (this) {
                while (!this.mFrameAvailable) {
                    try {
                        try {
                            wait(500L);
                            if (!this.mFrameAvailable) {
                                return false;
                            }
                        } catch (InterruptedException unused) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.mFrameAvailable = false;
                this.mSurfaceTexture.updateTexImage();
                this.mSurfaceTexture.getTransformMatrix(fArr);
                return true;
            }
        }

        @Override
        public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
            try {
                if (surfaceTexture == this.mSurfaceTexture) {
                    if (this.mFrameAvailable) {
                        throw new IllegalStateException("An available frame was not updated");
                    }
                    this.mFrameAvailable = true;
                    notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override
        public void run() {
            Looper.prepare();
            synchronized (this) {
                this.mLooper = Looper.myLooper();
                SurfaceTexture surfaceTexture = new SurfaceTexture(0);
                this.mSurfaceTexture = surfaceTexture;
                surfaceTexture.detachFromGLContext();
                this.mSurfaceTexture.setOnFrameAvailableListener(this);
                notify();
            }
            Looper.loop();
        }

        private SurfaceTextureThread() {
            this.mSurfaceTexture = null;
            this.mSurface = null;
            this.mFrameAvailable = false;
            this.mLooper = null;
            this.mThread = null;
            this.mIsAttached = false;
            this.mDoRelease = false;
        }
    }

    public AWindow(MediaPlayer.SurfaceListener surfaceListener) {
        this.mSurfaceTextureThread = new SurfaceTextureThread();
        this.mNativeLock = new NativeLock();
        this.mSurfaceCallback = surfaceListener;
    }

    private void SurfaceTexture_detachFromGLContext() {
        this.mSurfaceTextureThread.detachFromGLContext();
    }

    private Surface SurfaceTexture_getSurface() {
        return this.mSurfaceTextureThread.getSurface();
    }

    private boolean SurfaceTexture_waitAndUpdateTexImage(float[] fArr) {
        return this.mSurfaceTextureThread.waitAndUpdateTexImage(fArr);
    }

    private void ensureInitState() throws IllegalStateException {
        if (this.mUseGLRenderer) {
            throw new IllegalStateException("Can't set view when using GL Renderer.");
        }
        if (this.mSurfacesState.get() == 0) {
            return;
        }
        throw new IllegalStateException("Can't set view when already attached. Current state: " + this.mSurfacesState.get() + ", mSurfaces[ID_VIDEO]: " + this.mSurfaceHelpers[0] + " / " + this.mSurfaces[0] + ", mSurfaces[ID_SUBTITLES]: " + this.mSurfaceHelpers[1] + " / " + this.mSurfaces[1]);
    }

    public Surface getNativeSurface(int i) {
        Surface surface;
        synchronized (this.mNativeLock) {
            surface = this.mSurfaces[i];
        }
        return surface;
    }

    private Surface getSubtitlesSurface() {
        return getNativeSurface(1);
    }

    private Surface getVideoSurface() {
        return getNativeSurface(0);
    }

    private static native void nativeOnMouseEvent(long j, int i, int i2, int i3, int i4);

    private static native void nativeOnWindowSize(long j, int i, int i2);

    @MainThread
    public void onSurfaceCreated() {
        if (this.mSurfacesState.get() != 1) {
            throw new IllegalArgumentException("invalid state");
        }
        SurfaceHelper[] surfaceHelperArr = this.mSurfaceHelpers;
        SurfaceHelper surfaceHelper = surfaceHelperArr[0];
        SurfaceHelper surfaceHelper2 = surfaceHelperArr[1];
        if (surfaceHelper == null) {
            throw new NullPointerException("videoHelper shouldn't be null here");
        }
        if (surfaceHelper.isReady()) {
            if (surfaceHelper2 == null || surfaceHelper2.isReady()) {
                this.mSurfacesState.set(2);
                Iterator<IVLCVout.Callback> it = this.mIVLCVoutCallbacks.iterator();
                while (it.hasNext()) {
                    it.next().onSurfacesCreated(this);
                }
                MediaPlayer.SurfaceListener surfaceListener = this.mSurfaceCallback;
                if (surfaceListener != null) {
                    surfaceListener.onSurfaceCreated();
                }
            }
        }
    }

    @MainThread
    public void onSurfaceDestroyed() {
        detachViews();
    }

    private int registerNative(long j) {
        int i;
        if (j == 0) {
            throw new IllegalArgumentException("nativeHandle is null");
        }
        synchronized (this.mNativeLock) {
            try {
                if (this.mCallbackNativeHandle != 0) {
                    return 0;
                }
                this.mCallbackNativeHandle = j;
                int i2 = this.mMouseAction;
                if (i2 != -1) {
                    nativeOnMouseEvent(j, i2, this.mMouseButton, this.mMouseX, this.mMouseY);
                }
                int i3 = this.mWindowWidth;
                if (i3 != -1 && (i = this.mWindowHeight) != -1) {
                    nativeOnWindowSize(this.mCallbackNativeHandle, i3, i);
                }
                return this.mOnNewVideoLayoutListener != null ? 3 : 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean setBuffersGeometry(Surface surface, int i, int i2, int i3) {
        return false;
    }

    public void setNativeSurface(int i, Surface surface) {
        synchronized (this.mNativeLock) {
            this.mSurfaces[i] = surface;
        }
    }

    private void setSurface(int i, Surface surface, SurfaceHolder surfaceHolder) {
        ensureInitState();
        if (!surface.isValid() && surfaceHolder == null) {
            throw new IllegalStateException("surface is not attached and holder is null");
        }
        SurfaceHelper surfaceHelper = this.mSurfaceHelpers[i];
        if (surfaceHelper != null) {
            surfaceHelper.release();
        }
        this.mSurfaceHelpers[i] = new SurfaceHelper(i, surface, surfaceHolder);
    }

    private void setVideoLayout(final int i, final int i2, final int i3, final int i4, final int i5, final int i6) {
        this.mHandler.post(new Runnable() {
            @Override
            public void run() {
                if (AWindow.this.mOnNewVideoLayoutListener != null) {
                    AWindow.this.mOnNewVideoLayoutListener.onNewVideoLayout(AWindow.this, i, i2, i3, i4, i5, i6);
                }
            }
        });
    }

    private void setView(int i, SurfaceView surfaceView) {
        ensureInitState();
        if (surfaceView == null) {
            throw new NullPointerException("view is null");
        }
        SurfaceHelper surfaceHelper = this.mSurfaceHelpers[i];
        if (surfaceHelper != null) {
            surfaceHelper.release();
        }
        this.mSurfaceHelpers[i] = new SurfaceHelper(i, surfaceView);
    }

    private void unregisterNative() {
        synchronized (this.mNativeLock) {
            try {
                if (this.mCallbackNativeHandle == 0) {
                    throw new IllegalArgumentException("unregister called when not registered");
                }
                this.mCallbackNativeHandle = 0L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean SurfaceTexture_attachToGLContext(int i) {
        return this.mSurfaceTextureThread.attachToGLContext(i);
    }

    @Override
    public void addCallback(IVLCVout.Callback callback) {
        if (this.mIVLCVoutCallbacks.contains(callback)) {
            return;
        }
        this.mIVLCVoutCallbacks.add(callback);
    }

    public boolean areSurfacesWaiting() {
        return this.mSurfacesState.get() == 1;
    }

    @Override
    @MainThread
    public boolean areViewsAttached() {
        return this.mSurfacesState.get() != 0;
    }

    @Override
    @MainThread
    public void attachViews(IVLCVout.OnNewVideoLayoutListener onNewVideoLayoutListener) {
        if (this.mSurfacesState.get() == 0) {
            if (this.mSurfaceHelpers[0] != null) {
                this.mSurfacesState.set(1);
                synchronized (this.mNativeLock) {
                    this.mOnNewVideoLayoutListener = onNewVideoLayoutListener;
                    this.mNativeLock.buffersGeometryConfigured = false;
                    this.mNativeLock.buffersGeometryAbort = false;
                }
                for (int i = 0; i < 2; i++) {
                    SurfaceHelper surfaceHelper = this.mSurfaceHelpers[i];
                    if (surfaceHelper != null) {
                        surfaceHelper.attach();
                    }
                }
                return;
            }
        }
        throw new IllegalStateException("already attached or video view not configured");
    }

    @Override
    @MainThread
    public synchronized void detachViews() {
        try {
            if (this.mSurfacesState.get() == 0) {
                return;
            }
            this.mSurfacesState.set(0);
            this.mHandler.removeCallbacksAndMessages(null);
            synchronized (this.mNativeLock) {
                this.mOnNewVideoLayoutListener = null;
                this.mNativeLock.buffersGeometryAbort = true;
                this.mNativeLock.notifyAll();
            }
            for (int i = 0; i < 2; i++) {
                SurfaceHelper surfaceHelper = this.mSurfaceHelpers[i];
                if (surfaceHelper != null) {
                    surfaceHelper.release();
                }
                this.mSurfaceHelpers[i] = null;
            }
            Iterator<IVLCVout.Callback> it = this.mIVLCVoutCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onSurfacesDestroyed(this);
            }
            MediaPlayer.SurfaceListener surfaceListener = this.mSurfaceCallback;
            if (surfaceListener != null) {
                surfaceListener.onSurfaceDestroyed();
            }
            this.mSurfaceTextureThread.release();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void removeCallback(IVLCVout.Callback callback) {
        this.mIVLCVoutCallbacks.remove(callback);
    }

    @Override
    public void sendMouseEvent(int i, int i2, int i3, int i4) {
        synchronized (this.mNativeLock) {
            try {
                long j = this.mCallbackNativeHandle;
                if (j != 0 && (this.mMouseAction != i || this.mMouseButton != i2 || this.mMouseX != i3 || this.mMouseY != i4)) {
                    nativeOnMouseEvent(j, i, i2, i3, i4);
                }
                this.mMouseAction = i;
                this.mMouseButton = i2;
                this.mMouseX = i3;
                this.mMouseY = i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setSubtitlesSurface(Surface surface, SurfaceHolder surfaceHolder) {
        setSurface(1, surface, surfaceHolder);
    }

    @Override
    @MainThread
    public void setSubtitlesView(SurfaceView surfaceView) {
        setView(1, surfaceView);
    }

    @Override
    public void setVideoSurface(Surface surface, SurfaceHolder surfaceHolder) {
        setSurface(0, surface, surfaceHolder);
    }

    @Override
    @MainThread
    public void setVideoView(SurfaceView surfaceView) {
        setView(0, surfaceView);
    }

    @Override
    public void setWindowSize(int i, int i2) {
        synchronized (this.mNativeLock) {
            try {
                long j = this.mCallbackNativeHandle;
                if (j != 0 && (this.mWindowWidth != i || this.mWindowHeight != i2)) {
                    nativeOnWindowSize(j, i, i2);
                }
                this.mWindowWidth = i;
                this.mWindowHeight = i2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @MainThread
    public void useGLRenderer() {
        this.mUseGLRenderer = true;
    }

    @Override
    @TargetApi(14)
    public void setSubtitlesSurface(SurfaceTexture surfaceTexture) {
        setSurface(1, new Surface(surfaceTexture), null);
    }

    @Override
    @MainThread
    public void setSubtitlesView(TextureView textureView) {
        setView(1, textureView);
    }

    @Override
    @TargetApi(14)
    public void setVideoSurface(SurfaceTexture surfaceTexture) {
        setSurface(0, new Surface(surfaceTexture), null);
    }

    @Override
    @MainThread
    public void setVideoView(TextureView textureView) {
        setView(0, textureView);
    }

    public class SurfaceHelper {
        private final int mId;
        private Surface mSurface;
        private final SurfaceHolder mSurfaceHolder;
        private final SurfaceHolder.Callback mSurfaceHolderCallback;
        private final TextureView.SurfaceTextureListener mSurfaceTextureListener;
        private final SurfaceView mSurfaceView;
        private final TextureView mTextureView;

        private void attachSurface() {
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.addCallback(this.mSurfaceHolderCallback);
            }
            setSurface(this.mSurface);
        }

        private void attachSurfaceView() {
            this.mSurfaceHolder.addCallback(this.mSurfaceHolderCallback);
            setSurface(this.mSurfaceHolder.getSurface());
        }

        @TargetApi(14)
        private void attachTextureView() {
            this.mTextureView.setSurfaceTextureListener(this.mSurfaceTextureListener);
            setSurface(new Surface(this.mTextureView.getSurfaceTexture()));
        }

        @TargetApi(14)
        private TextureView.SurfaceTextureListener createSurfaceTextureListener() {
            return new TextureView.SurfaceTextureListener() {
                @Override
                public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                    SurfaceHelper.this.setSurface(new Surface(surfaceTexture));
                }

                @Override
                public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                    AWindow.this.onSurfaceDestroyed();
                    return true;
                }

                @Override
                public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
                }

                @Override
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }
            };
        }

        @TargetApi(14)
        private void releaseTextureView() {
            TextureView textureView = this.mTextureView;
            if (textureView != null) {
                textureView.setSurfaceTextureListener(null);
            }
        }

        public void setSurface(Surface surface) {
            if (surface.isValid() && AWindow.this.getNativeSurface(this.mId) == null) {
                this.mSurface = surface;
                AWindow.this.setNativeSurface(this.mId, surface);
                AWindow.this.onSurfaceCreated();
            }
        }

        public void attach() {
            if (this.mSurfaceView != null) {
                attachSurfaceView();
            } else if (this.mTextureView != null) {
                attachTextureView();
            } else {
                if (this.mSurface == null) {
                    throw new IllegalStateException();
                }
                attachSurface();
            }
        }

        public Surface getSurface() {
            return this.mSurface;
        }

        public SurfaceHolder getSurfaceHolder() {
            return this.mSurfaceHolder;
        }

        public boolean isReady() {
            return this.mSurfaceView == null || this.mSurface != null;
        }

        public void release() {
            this.mSurface = null;
            AWindow.this.setNativeSurface(this.mId, null);
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.removeCallback(this.mSurfaceHolderCallback);
            }
            releaseTextureView();
        }

        private SurfaceHelper(int i, SurfaceView surfaceView) {
            this.mSurfaceHolderCallback = new SurfaceHolder.Callback() {
                @Override
                public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
                }

                @Override
                public void surfaceCreated(SurfaceHolder surfaceHolder) {
                    if (surfaceHolder != SurfaceHelper.this.mSurfaceHolder) {
                        throw new IllegalStateException("holders are different");
                    }
                    SurfaceHelper.this.setSurface(surfaceHolder.getSurface());
                }

                @Override
                public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                    Log.d(AWindow.TAG, "surfaceDestroyed called");
                    AWindow.this.onSurfaceDestroyed();
                }
            };
            this.mSurfaceTextureListener = createSurfaceTextureListener();
            this.mId = i;
            this.mTextureView = null;
            this.mSurfaceView = surfaceView;
            this.mSurfaceHolder = surfaceView.getHolder();
        }

        private SurfaceHelper(int i, TextureView textureView) {
            this.mSurfaceHolderCallback = new SurfaceHolder.Callback() {
                @Override
                public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
                }

                @Override
                public void surfaceCreated(SurfaceHolder surfaceHolder) {
                    if (surfaceHolder != SurfaceHelper.this.mSurfaceHolder) {
                        throw new IllegalStateException("holders are different");
                    }
                    SurfaceHelper.this.setSurface(surfaceHolder.getSurface());
                }

                @Override
                public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                    Log.d(AWindow.TAG, "surfaceDestroyed called");
                    AWindow.this.onSurfaceDestroyed();
                }
            };
            this.mSurfaceTextureListener = createSurfaceTextureListener();
            this.mId = i;
            this.mSurfaceView = null;
            this.mSurfaceHolder = null;
            this.mTextureView = textureView;
        }

        private SurfaceHelper(int i, Surface surface, SurfaceHolder surfaceHolder) {
            this.mSurfaceHolderCallback = new SurfaceHolder.Callback() {
                @Override
                public void surfaceChanged(SurfaceHolder surfaceHolder2, int i2, int i3, int i4) {
                }

                @Override
                public void surfaceCreated(SurfaceHolder surfaceHolder2) {
                    if (surfaceHolder2 != SurfaceHelper.this.mSurfaceHolder) {
                        throw new IllegalStateException("holders are different");
                    }
                    SurfaceHelper.this.setSurface(surfaceHolder2.getSurface());
                }

                @Override
                public void surfaceDestroyed(SurfaceHolder surfaceHolder2) {
                    Log.d(AWindow.TAG, "surfaceDestroyed called");
                    AWindow.this.onSurfaceDestroyed();
                }
            };
            this.mSurfaceTextureListener = createSurfaceTextureListener();
            this.mId = i;
            this.mSurfaceView = null;
            this.mTextureView = null;
            this.mSurfaceHolder = surfaceHolder;
            this.mSurface = surface;
        }
    }

    private void setView(int i, TextureView textureView) {
        ensureInitState();
        if (textureView != null) {
            SurfaceHelper surfaceHelper = this.mSurfaceHelpers[i];
            if (surfaceHelper != null) {
                surfaceHelper.release();
            }
            this.mSurfaceHelpers[i] = new SurfaceHelper(i, textureView);
            return;
        }
        throw new NullPointerException("view is null");
    }

    @Override
    @MainThread
    public void attachViews() {
        attachViews(null);
    }
}
