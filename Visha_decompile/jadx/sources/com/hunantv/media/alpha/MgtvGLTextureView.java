package com.hunantv.media.alpha;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLDebugHelper;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import com.hunantv.media.player.f.c;
import com.hunantv.media.player.pragma.DebugLog;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

public class MgtvGLTextureView extends TextureView implements TextureView.SurfaceTextureListener, View.OnLayoutChangeListener, IAlphaRenderView {
    public static final int DEBUG_CHECK_GL_ERROR = 1;
    public static final int DEBUG_LOG_GL_CALLS = 2;
    private static final boolean LOG_ATTACH_DETACH = true;
    private static final boolean LOG_EGL = true;
    private static final boolean LOG_PAUSE_RESUME = true;
    private static final boolean LOG_RENDERER = true;
    private static final boolean LOG_RENDERER_DRAW_FRAME = false;
    private static final boolean LOG_SURFACE = true;
    private static final boolean LOG_THREADS = true;
    public static final int RENDERMODE_CONTINUOUSLY = 1;
    public static final int RENDERMODE_WHEN_DIRTY = 0;
    private static final String TAG = "GLTextureView";
    private static final GLThreadManager sGLThreadManager = new GLThreadManager();
    private int mDebugFlags;
    private boolean mDetached;
    private EGLConfigChooser mEGLConfigChooser;
    private int mEGLContextClientVersion;
    private EGLContextFactory mEGLContextFactory;
    private EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
    private GLThread mGLThread;
    private GLWrapper mGLWrapper;
    private c mMeasureHelper;
    private boolean mPreserveEGLContextOnPause;
    private Renderer mRenderer;
    private final WeakReference<MgtvGLTextureView> mThisWeakRef;

    public abstract class BaseConfigChooser implements EGLConfigChooser {
        protected int[] mConfigSpec;

        public BaseConfigChooser(int[] iArr) {
            this.mConfigSpec = filterConfigSpec(iArr);
        }

        private int[] filterConfigSpec(int[] iArr) {
            if (MgtvGLTextureView.this.mEGLContextClientVersion != 2) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[length + 2];
            int i = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr2[i] = 12352;
            iArr2[length] = 4;
            iArr2[length + 1] = 12344;
            return iArr2;
        }

        @Override
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            if (!egl10.eglChooseConfig(eGLDisplay, this.mConfigSpec, null, 0, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i = iArr[0];
            if (i <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            if (!egl10.eglChooseConfig(eGLDisplay, this.mConfigSpec, eGLConfigArr, i, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            EGLConfig eGLConfigChooseConfig = chooseConfig(egl10, eGLDisplay, eGLConfigArr);
            if (eGLConfigChooseConfig != null) {
                return eGLConfigChooseConfig;
            }
            throw new IllegalArgumentException("No config chosen");
        }

        public abstract EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);
    }

    public class ComponentSizeChooser extends BaseConfigChooser {
        protected int mAlphaSize;
        protected int mBlueSize;
        protected int mDepthSize;
        protected int mGreenSize;
        protected int mRedSize;
        protected int mStencilSize;
        private int[] mValue;

        public ComponentSizeChooser(int i, int i2, int i3, int i4, int i5, int i6) {
            super(new int[]{12324, i, 12323, i2, 12322, i3, 12321, i4, 12325, i5, 12326, i6, 12344});
            this.mValue = new int[1];
            this.mRedSize = i;
            this.mGreenSize = i2;
            this.mBlueSize = i3;
            this.mAlphaSize = i4;
            this.mDepthSize = i5;
            this.mStencilSize = i6;
        }

        private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.mValue) ? this.mValue[0] : i2;
        }

        @Override
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int iFindConfigAttrib = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int iFindConfigAttrib2 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (iFindConfigAttrib >= this.mDepthSize && iFindConfigAttrib2 >= this.mStencilSize) {
                    int iFindConfigAttrib3 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int iFindConfigAttrib4 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int iFindConfigAttrib5 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int iFindConfigAttrib6 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    public class DefaultContextFactory implements EGLContextFactory {
        private int EGL_CONTEXT_CLIENT_VERSION;

        private DefaultContextFactory() {
            this.EGL_CONTEXT_CLIENT_VERSION = 12440;
        }

        @Override
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {this.EGL_CONTEXT_CLIENT_VERSION, MgtvGLTextureView.this.mEGLContextClientVersion, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (MgtvGLTextureView.this.mEGLContextClientVersion == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }

        @Override
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                return;
            }
            DebugLog.i("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
            StringBuilder sb = new StringBuilder();
            sb.append("tid=");
            sb.append(Thread.currentThread().getId());
            DebugLog.i("DefaultContextFactory", sb.toString());
            EglHelper.throwEglException("eglDestroyContex", egl10.eglGetError());
        }
    }

    public static class DefaultWindowSurfaceFactory implements EGLWindowSurfaceFactory {
        private DefaultWindowSurfaceFactory() {
        }

        @Override
        public EGLSurface createWindowSurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, null);
            } catch (IllegalArgumentException e) {
                DebugLog.e(MgtvGLTextureView.TAG, "eglCreateWindowSurface" + e);
                return null;
            }
        }

        @Override
        public void destroySurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    public interface EGLConfigChooser {
        EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay);
    }

    public interface EGLContextFactory {
        EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

        void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
    }

    public interface EGLWindowSurfaceFactory {
        EGLSurface createWindowSurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

        void destroySurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
    }

    public static class EglHelper {
        EGL10 mEgl;
        EGLConfig mEglConfig;
        EGLContext mEglContext;
        EGLDisplay mEglDisplay;
        EGLSurface mEglSurface;
        private WeakReference<MgtvGLTextureView> mGLSurfaceViewWeakRef;

        public EglHelper(WeakReference<MgtvGLTextureView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        private void destroySurfaceImp() {
            EGLSurface eGLSurface;
            EGLSurface eGLSurface2 = this.mEglSurface;
            if (eGLSurface2 == null || eGLSurface2 == (eGLSurface = EGL10.EGL_NO_SURFACE)) {
                return;
            }
            this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            MgtvGLTextureView mgtvGLTextureView = this.mGLSurfaceViewWeakRef.get();
            if (mgtvGLTextureView != null) {
                mgtvGLTextureView.mEGLWindowSurfaceFactory.destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
            }
            this.mEglSurface = null;
        }

        public static String formatEglError(String str, int i) {
            return str + " failed: " + i;
        }

        public static void logEglErrorAsWarning(String str, String str2, int i) {
            DebugLog.i(str, formatEglError(str2, i));
        }

        private void throwEglException(String str) {
            throwEglException(str, this.mEgl.eglGetError());
        }

        public GL createGL() {
            GL gl = this.mEglContext.getGL();
            MgtvGLTextureView mgtvGLTextureView = this.mGLSurfaceViewWeakRef.get();
            if (mgtvGLTextureView == null) {
                return gl;
            }
            if (mgtvGLTextureView.mGLWrapper != null) {
                gl = mgtvGLTextureView.mGLWrapper.wrap(gl);
            }
            if ((mgtvGLTextureView.mDebugFlags & 3) != 0) {
                return GLDebugHelper.wrap(gl, (mgtvGLTextureView.mDebugFlags & 1) == 0 ? 0 : 1, (mgtvGLTextureView.mDebugFlags & 2) != 0 ? new LogWriter() : null);
            }
            return gl;
        }

        public boolean createSurface() {
            DebugLog.i("EglHelper", "createSurface()  tid=" + Thread.currentThread().getId());
            if (this.mEgl == null) {
                throw new RuntimeException("egl not initialized");
            }
            if (this.mEglDisplay == null) {
                throw new RuntimeException("eglDisplay not initialized");
            }
            if (this.mEglConfig == null) {
                throw new RuntimeException("mEglConfig not initialized");
            }
            destroySurfaceImp();
            MgtvGLTextureView mgtvGLTextureView = this.mGLSurfaceViewWeakRef.get();
            this.mEglSurface = mgtvGLTextureView != null ? mgtvGLTextureView.mEGLWindowSurfaceFactory.createWindowSurface(this.mEgl, this.mEglDisplay, this.mEglConfig, mgtvGLTextureView.getSurfaceTexture()) : null;
            EGLSurface eGLSurface = this.mEglSurface;
            if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                if (this.mEgl.eglGetError() == 12299) {
                    DebugLog.i("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                }
                return false;
            }
            if (this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
                return true;
            }
            logEglErrorAsWarning("EGLHelper", "eglMakeCurrent", this.mEgl.eglGetError());
            return false;
        }

        public void destroySurface() {
            DebugLog.i("EglHelper", "destroySurface()  tid=" + Thread.currentThread().getId());
            destroySurfaceImp();
        }

        public void finish() {
            DebugLog.i("EglHelper", "finish() tid=" + Thread.currentThread().getId());
            if (this.mEglContext != null) {
                MgtvGLTextureView mgtvGLTextureView = this.mGLSurfaceViewWeakRef.get();
                if (mgtvGLTextureView != null) {
                    mgtvGLTextureView.mEGLContextFactory.destroyContext(this.mEgl, this.mEglDisplay, this.mEglContext);
                }
                this.mEglContext = null;
            }
            EGLDisplay eGLDisplay = this.mEglDisplay;
            if (eGLDisplay != null) {
                this.mEgl.eglTerminate(eGLDisplay);
                this.mEglDisplay = null;
            }
        }

        public void start() {
            DebugLog.i("EglHelper", "start() tid=" + Thread.currentThread().getId());
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.mEgl = egl10;
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.mEglDisplay = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
                throw new RuntimeException("eglGetDisplay failed");
            }
            if (!this.mEgl.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                throw new RuntimeException("eglInitialize failed");
            }
            MgtvGLTextureView mgtvGLTextureView = this.mGLSurfaceViewWeakRef.get();
            if (mgtvGLTextureView == null) {
                this.mEglConfig = null;
                this.mEglContext = null;
            } else {
                this.mEglConfig = mgtvGLTextureView.mEGLConfigChooser.chooseConfig(this.mEgl, this.mEglDisplay);
                this.mEglContext = mgtvGLTextureView.mEGLContextFactory.createContext(this.mEgl, this.mEglDisplay, this.mEglConfig);
            }
            EGLContext eGLContext = this.mEglContext;
            if (eGLContext == null || eGLContext == EGL10.EGL_NO_CONTEXT) {
                this.mEglContext = null;
                throwEglException("createContext");
            }
            DebugLog.i("EglHelper", "createContext " + this.mEglContext + " tid=" + Thread.currentThread().getId());
            this.mEglSurface = null;
        }

        public int swap() {
            if (this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface)) {
                return 12288;
            }
            return this.mEgl.eglGetError();
        }

        public static void throwEglException(String str, int i) {
            String eglError = formatEglError(str, i);
            DebugLog.i("EglHelper", "throwEglException tid=" + Thread.currentThread().getId() + " " + eglError);
            throw new RuntimeException(eglError);
        }
    }

    public static class GLThread extends Thread {
        private EglHelper mEglHelper;
        private boolean mExited;
        private WeakReference<MgtvGLTextureView> mGLSurfaceViewWeakRef;
        private boolean mHasSurface;
        private boolean mHaveEglContext;
        private boolean mHaveEglSurface;
        private boolean mPaused;
        private boolean mRenderComplete;
        private boolean mRequestPaused;
        private boolean mShouldExit;
        private boolean mShouldReleaseEglContext;
        private boolean mSurfaceIsBad;
        private boolean mWaitingForSurface;
        private ArrayList<Runnable> mEventQueue = new ArrayList<>();
        private boolean mSizeChanged = true;
        private int mWidth = 0;
        private int mHeight = 0;
        private boolean mRequestRender = true;
        private int mRenderMode = 1;

        public GLThread(WeakReference<MgtvGLTextureView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x03ee */
        /* JADX WARN: Code duplicated, block: B:185:0x03f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:78:0x020b  */
        /* JADX WARN: Code restructure failed: missing block: B:187:0x03ef, code lost:
        
            r0 = th;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void guardedRun() throws Throwable {
            boolean z;
            boolean z2;
            MgtvGLTextureView mgtvGLTextureView;
            GLThread gLThread = this;
            gLThread.mEglHelper = new EglHelper(gLThread.mGLSurfaceViewWeakRef);
            gLThread.mHaveEglContext = false;
            gLThread.mHaveEglSurface = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            int i = 0;
            int i2 = 0;
            GL10 gl10 = null;
            while (true) {
                Runnable runnableRemove = null;
                while (true) {
                    try {
                        synchronized (MgtvGLTextureView.sGLThreadManager) {
                            while (true) {
                                try {
                                    if (gLThread.mShouldExit) {
                                        synchronized (MgtvGLTextureView.sGLThreadManager) {
                                            stopEglSurfaceLocked();
                                            stopEglContextLocked();
                                        }
                                        return;
                                    }
                                    if (!gLThread.mEventQueue.isEmpty()) {
                                        runnableRemove = gLThread.mEventQueue.remove(0);
                                        gl10 = gl10;
                                        z = false;
                                        break;
                                    }
                                    boolean z11 = gLThread.mPaused;
                                    boolean z12 = gLThread.mRequestPaused;
                                    if (z11 != z12) {
                                        gLThread.mPaused = z12;
                                        MgtvGLTextureView.sGLThreadManager.notifyAll();
                                        z2 = z12;
                                        DebugLog.i("GLThread", "mPaused is now " + gLThread.mPaused + " tid=" + getId());
                                    } else {
                                        z2 = false;
                                    }
                                    if (gLThread.mShouldReleaseEglContext) {
                                        DebugLog.i("GLThread", "releasing EGL context because asked to tid=" + getId());
                                        stopEglSurfaceLocked();
                                        stopEglContextLocked();
                                        gLThread.mShouldReleaseEglContext = false;
                                        z10 = true;
                                    }
                                    if (z6) {
                                        stopEglSurfaceLocked();
                                        stopEglContextLocked();
                                        z6 = false;
                                    }
                                    if (z2 && gLThread.mHaveEglSurface) {
                                        DebugLog.i("GLThread", "releasing EGL surface because paused tid=" + getId());
                                        stopEglSurfaceLocked();
                                    }
                                    if (z2 && gLThread.mHaveEglContext && ((mgtvGLTextureView = gLThread.mGLSurfaceViewWeakRef.get()) == null || !mgtvGLTextureView.mPreserveEGLContextOnPause || MgtvGLTextureView.sGLThreadManager.shouldReleaseEGLContextWhenPausing())) {
                                        stopEglContextLocked();
                                        DebugLog.i("GLThread", "releasing EGL context because paused tid=" + getId());
                                    }
                                    if (z2 && MgtvGLTextureView.sGLThreadManager.shouldTerminateEGLWhenPausing()) {
                                        gLThread.mEglHelper.finish();
                                        DebugLog.i("GLThread", "terminating EGL because paused tid=" + getId());
                                    }
                                    if (!gLThread.mHasSurface && !gLThread.mWaitingForSurface) {
                                        DebugLog.i("GLThread", "noticed surfaceView surface lost tid=" + getId());
                                        if (gLThread.mHaveEglSurface) {
                                            stopEglSurfaceLocked();
                                        }
                                        gLThread.mWaitingForSurface = true;
                                        gLThread.mSurfaceIsBad = false;
                                        MgtvGLTextureView.sGLThreadManager.notifyAll();
                                    }
                                    if (gLThread.mHasSurface && gLThread.mWaitingForSurface) {
                                        DebugLog.i("GLThread", "noticed surfaceView surface acquired tid=" + getId());
                                        gLThread.mWaitingForSurface = false;
                                        MgtvGLTextureView.sGLThreadManager.notifyAll();
                                    }
                                    if (z9) {
                                        DebugLog.i("GLThread", "sending render notification tid=" + getId());
                                        gLThread.mRenderComplete = true;
                                        MgtvGLTextureView.sGLThreadManager.notifyAll();
                                        z8 = false;
                                        z9 = false;
                                    }
                                    if (readyToDraw()) {
                                        if (gLThread.mHaveEglContext) {
                                            z3 = z3;
                                        } else if (z10) {
                                            z3 = z3;
                                            z10 = false;
                                        } else if (MgtvGLTextureView.sGLThreadManager.tryAcquireEglContextLocked(gLThread)) {
                                            try {
                                                gLThread.mEglHelper.start();
                                                gLThread.mHaveEglContext = true;
                                                MgtvGLTextureView.sGLThreadManager.notifyAll();
                                                z3 = true;
                                            } catch (RuntimeException e) {
                                                MgtvGLTextureView.sGLThreadManager.releaseEglContextLocked(gLThread);
                                                throw e;
                                            }
                                        } else {
                                            z3 = z3;
                                        }
                                        if (gLThread.mHaveEglContext && !gLThread.mHaveEglSurface) {
                                            gLThread.mHaveEglSurface = true;
                                            z4 = true;
                                            z5 = true;
                                            z7 = true;
                                        }
                                        if (gLThread.mHaveEglSurface) {
                                            if (gLThread.mSizeChanged) {
                                                i = gLThread.mWidth;
                                                i2 = gLThread.mHeight;
                                                DebugLog.i("GLThread", "noticing that we want render notification tid=" + getId());
                                                gLThread.mSizeChanged = false;
                                                z = false;
                                                z4 = true;
                                                z7 = true;
                                                z8 = true;
                                            } else {
                                                z = false;
                                            }
                                            gLThread.mRequestRender = z;
                                            MgtvGLTextureView.sGLThreadManager.notifyAll();
                                            break;
                                        }
                                    } else {
                                        z3 = z3;
                                    }
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("waiting tid=");
                                    sb.append(getId());
                                    sb.append(" mHaveEglContext: ");
                                    sb.append(this.mHaveEglContext);
                                    sb.append(" mHaveEglSurface: ");
                                    sb.append(this.mHaveEglSurface);
                                    sb.append(" mPaused: ");
                                    sb.append(this.mPaused);
                                    sb.append(" mHasSurface: ");
                                    sb.append(this.mHasSurface);
                                    sb.append(" mSurfaceIsBad: ");
                                    sb.append(this.mSurfaceIsBad);
                                    sb.append(" mWaitingForSurface: ");
                                    sb.append(this.mWaitingForSurface);
                                    sb.append(" mWidth: ");
                                    sb.append(this.mWidth);
                                    sb.append(" mHeight: ");
                                    sb.append(this.mHeight);
                                    sb.append(" mRequestRender: ");
                                    sb.append(this.mRequestRender);
                                    sb.append(" mRenderMode: ");
                                    sb.append(this.mRenderMode);
                                    DebugLog.i("GLThread", sb.toString());
                                    MgtvGLTextureView.sGLThreadManager.wait();
                                    gLThread = this;
                                    gl10 = gl10;
                                } catch (Throwable th) {
                                    th = th;
                                }
                            }
                            try {
                            } catch (Throwable th2) {
                                th = th2;
                                while (true) {
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        synchronized (MgtvGLTextureView.sGLThreadManager) {
                                            stopEglSurfaceLocked();
                                            stopEglContextLocked();
                                        }
                                        throw th;
                                    }
                                }
                            }
                        }
                        if (runnableRemove != null) {
                            break;
                        }
                        try {
                            if (z4) {
                                DebugLog.i("GLThread", "egl createSurface");
                                if (gLThread.mEglHelper.createSurface()) {
                                    z4 = z;
                                } else {
                                    synchronized (MgtvGLTextureView.sGLThreadManager) {
                                        gLThread.mSurfaceIsBad = true;
                                        MgtvGLTextureView.sGLThreadManager.notifyAll();
                                    }
                                    gl10 = gl10;
                                }
                            }
                            MgtvGLTextureView mgtvGLTextureView2 = gLThread.mGLSurfaceViewWeakRef.get();
                            if (mgtvGLTextureView2 != null) {
                                mgtvGLTextureView2.mRenderer.onDrawFrame(gl10);
                            }
                            int iSwap = gLThread.mEglHelper.swap();
                            if (iSwap != 12288) {
                                if (iSwap != 12302) {
                                    EglHelper.logEglErrorAsWarning("GLThread", "eglSwapBuffers", iSwap);
                                    synchronized (MgtvGLTextureView.sGLThreadManager) {
                                        gLThread.mSurfaceIsBad = true;
                                        MgtvGLTextureView.sGLThreadManager.notifyAll();
                                    }
                                } else {
                                    DebugLog.i("GLThread", "egl context lost tid=" + getId());
                                    z6 = true;
                                }
                            }
                            if (z8) {
                                z9 = true;
                            }
                            gLThread = this;
                        } catch (Throwable th4) {
                            th = th4;
                            synchronized (MgtvGLTextureView.sGLThreadManager) {
                                stopEglSurfaceLocked();
                                stopEglContextLocked();
                                throw th;
                            }
                        }
                        if (z5) {
                            GL10 gl11 = (GL10) gLThread.mEglHelper.createGL();
                            MgtvGLTextureView.sGLThreadManager.checkGLDriver(gl11);
                            z5 = z;
                            gl10 = gl11;
                        } else {
                            gl10 = gl10;
                        }
                        if (z3) {
                            DebugLog.i("GLThread", "onSurfaceCreated");
                            MgtvGLTextureView mgtvGLTextureView3 = gLThread.mGLSurfaceViewWeakRef.get();
                            if (mgtvGLTextureView3 != null) {
                                mgtvGLTextureView3.mRenderer.onSurfaceCreated(gl10, gLThread.mEglHelper.mEglConfig);
                            }
                            z3 = z;
                        }
                        if (z7) {
                            DebugLog.i("GLThread", "onSurfaceChanged(" + i + ", " + i2 + ")");
                            MgtvGLTextureView mgtvGLTextureView4 = gLThread.mGLSurfaceViewWeakRef.get();
                            if (mgtvGLTextureView4 != null) {
                                mgtvGLTextureView4.mRenderer.onSurfaceChanged(gl10, i, i2);
                            }
                            z7 = z;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        synchronized (MgtvGLTextureView.sGLThreadManager) {
                            stopEglSurfaceLocked();
                            stopEglContextLocked();
                            throw th;
                        }
                    }
                }
                runnableRemove.run();
                gl10 = gl10;
            }
        }

        private boolean readyToDraw() {
            return !this.mPaused && this.mHasSurface && !this.mSurfaceIsBad && this.mWidth > 0 && this.mHeight > 0 && (this.mRequestRender || this.mRenderMode == 1);
        }

        private void stopEglContextLocked() {
            if (this.mHaveEglContext) {
                this.mEglHelper.finish();
                this.mHaveEglContext = false;
                MgtvGLTextureView.sGLThreadManager.releaseEglContextLocked(this);
            }
        }

        private void stopEglSurfaceLocked() {
            if (this.mHaveEglSurface) {
                this.mHaveEglSurface = false;
                this.mEglHelper.destroySurface();
            }
        }

        public boolean ableToDraw() {
            return this.mHaveEglContext && this.mHaveEglSurface && readyToDraw();
        }

        public int getRenderMode() {
            int i;
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                i = this.mRenderMode;
            }
            return i;
        }

        public void onPause() {
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                DebugLog.i("GLThread", "onPause tid=" + getId());
                this.mRequestPaused = true;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited && !this.mPaused) {
                    DebugLog.i("Main thread", "onPause waiting for mPaused.");
                    try {
                        MgtvGLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onResume() {
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                DebugLog.i("GLThread", "onResume tid=" + getId());
                this.mRequestPaused = false;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited && this.mPaused && !this.mRenderComplete) {
                    DebugLog.i("Main thread", "onResume waiting for !mPaused.");
                    try {
                        MgtvGLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onWindowResize(int i, int i2) {
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                this.mWidth = i;
                this.mHeight = i2;
                this.mSizeChanged = true;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited && !this.mPaused && !this.mRenderComplete && ableToDraw()) {
                    DebugLog.i("Main thread", "onWindowResize waiting for render complete from tid=" + getId());
                    try {
                        MgtvGLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void queueEvent(Runnable runnable) {
            if (runnable == null) {
                throw new IllegalArgumentException("r must not be null");
            }
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                this.mEventQueue.add(runnable);
                MgtvGLTextureView.sGLThreadManager.notifyAll();
            }
        }

        public void requestExitAndWait() {
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                this.mShouldExit = true;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited) {
                    try {
                        MgtvGLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void requestReleaseEglContextLocked() {
            this.mShouldReleaseEglContext = true;
            MgtvGLTextureView.sGLThreadManager.notifyAll();
        }

        public void requestRender() {
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                this.mRequestRender = true;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
            }
        }

        @Override
        public void run() {
            setName("GLThread " + getId());
            DebugLog.i("GLThread", "starting tid=" + getId());
            try {
                guardedRun();
            } catch (InterruptedException unused) {
            } finally {
                MgtvGLTextureView.sGLThreadManager.threadExiting(this);
            }
        }

        public void setRenderMode(int i) {
            if (i < 0 || i > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                this.mRenderMode = i;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
            }
        }

        public void surfaceCreated() {
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                DebugLog.i("GLThread", "surfaceCreated tid=" + getId());
                this.mHasSurface = true;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
                while (this.mWaitingForSurface && !this.mExited) {
                    try {
                        MgtvGLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void surfaceDestroyed() {
            synchronized (MgtvGLTextureView.sGLThreadManager) {
                DebugLog.i("GLThread", "surfaceDestroyed tid=" + getId());
                this.mHasSurface = false;
                MgtvGLTextureView.sGLThreadManager.notifyAll();
                while (!this.mWaitingForSurface && !this.mExited) {
                    try {
                        MgtvGLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    public static class GLThreadManager {
        private static String TAG = "GLThreadManager";
        private static final int kGLES_20 = 131072;
        private static final String kMSM7K_RENDERER_PREFIX = "Q3Dimension MSM7500 ";
        private GLThread mEglOwner;
        private boolean mGLESDriverCheckComplete;
        private int mGLESVersion;
        private boolean mGLESVersionCheckComplete;
        private boolean mLimitedGLESContexts;
        private boolean mMultipleGLESContextsAllowed;

        private GLThreadManager() {
        }

        private void checkGLESVersion() {
            if (this.mGLESVersionCheckComplete) {
                return;
            }
            this.mGLESVersionCheckComplete = true;
        }

        public synchronized void checkGLDriver(GL10 gl10) {
            try {
                if (!this.mGLESDriverCheckComplete) {
                    checkGLESVersion();
                    String strGlGetString = gl10.glGetString(7937);
                    if (this.mGLESVersion < 131072) {
                        this.mMultipleGLESContextsAllowed = !strGlGetString.startsWith(kMSM7K_RENDERER_PREFIX);
                        notifyAll();
                    }
                    this.mLimitedGLESContexts = !this.mMultipleGLESContextsAllowed;
                    DebugLog.i(TAG, "checkGLDriver renderer = \"" + strGlGetString + "\" multipleContextsAllowed = " + this.mMultipleGLESContextsAllowed + " mLimitedGLESContexts = " + this.mLimitedGLESContexts);
                    this.mGLESDriverCheckComplete = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public void releaseEglContextLocked(GLThread gLThread) {
            if (this.mEglOwner == gLThread) {
                this.mEglOwner = null;
            }
            notifyAll();
        }

        public synchronized boolean shouldReleaseEGLContextWhenPausing() {
            return this.mLimitedGLESContexts;
        }

        public synchronized boolean shouldTerminateEGLWhenPausing() {
            checkGLESVersion();
            return !this.mMultipleGLESContextsAllowed;
        }

        public synchronized void threadExiting(GLThread gLThread) {
            try {
                DebugLog.i("GLThread", "exiting tid=" + gLThread.getId());
                gLThread.mExited = true;
                if (this.mEglOwner == gLThread) {
                    this.mEglOwner = null;
                }
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }

        public boolean tryAcquireEglContextLocked(GLThread gLThread) {
            GLThread gLThread2 = this.mEglOwner;
            if (gLThread2 == gLThread || gLThread2 == null) {
                this.mEglOwner = gLThread;
                notifyAll();
                return true;
            }
            checkGLESVersion();
            if (this.mMultipleGLESContextsAllowed) {
                return true;
            }
            GLThread gLThread3 = this.mEglOwner;
            if (gLThread3 == null) {
                return false;
            }
            gLThread3.requestReleaseEglContextLocked();
            return false;
        }
    }

    public interface GLWrapper {
        GL wrap(GL gl);
    }

    public static class LogWriter extends Writer {
        private StringBuilder mBuilder = new StringBuilder();

        private void flushBuilder() {
            if (this.mBuilder.length() > 0) {
                DebugLog.i(MgtvGLTextureView.TAG, this.mBuilder.toString());
                StringBuilder sb = this.mBuilder;
                sb.delete(0, sb.length());
            }
        }

        @Override
        public void close() {
            flushBuilder();
        }

        @Override
        public void flush() {
            flushBuilder();
        }

        @Override
        public void write(char[] cArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                char c = cArr[i + i3];
                if (c == '\n') {
                    flushBuilder();
                } else {
                    this.mBuilder.append(c);
                }
            }
        }
    }

    public class SimpleEGLConfigChooser extends ComponentSizeChooser {
        public SimpleEGLConfigChooser(boolean z) {
            super(8, 8, 8, 0, z ? 16 : 0, 0);
        }
    }

    public MgtvGLTextureView(Context context) {
        super(context);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }

    private void checkRenderThreadState() {
        if (this.mGLThread != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    private void init() {
        DebugLog.i("MgtvGLTextureView", "this is textureview");
        this.mMeasureHelper = new c(this);
        setSurfaceTextureListener(this);
    }

    public void finalize() throws Throwable {
        try {
            GLThread gLThread = this.mGLThread;
            if (gLThread != null) {
                gLThread.requestExitAndWait();
            }
        } finally {
            super.finalize();
        }
    }

    public int getDebugFlags() {
        return this.mDebugFlags;
    }

    public boolean getPreserveEGLContextOnPause() {
        return this.mPreserveEGLContextOnPause;
    }

    public int getRenderMode() {
        return this.mGLThread.getRenderMode();
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        DebugLog.i(TAG, "onAttachedToWindow reattach =" + this.mDetached);
        if (this.mDetached && this.mRenderer != null) {
            GLThread gLThread = this.mGLThread;
            int renderMode = gLThread != null ? gLThread.getRenderMode() : 1;
            GLThread gLThread2 = new GLThread(this.mThisWeakRef);
            this.mGLThread = gLThread2;
            if (renderMode != 1) {
                gLThread2.setRenderMode(renderMode);
            }
            this.mGLThread.start();
        }
        this.mDetached = false;
    }

    @Override
    public void onDetachedFromWindow() {
        DebugLog.i(TAG, "onDetachedFromWindow");
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestExitAndWait();
        }
        this.mDetached = true;
        super.onDetachedFromWindow();
    }

    @Override
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        surfaceChanged(getSurfaceTexture(), 0, i3 - i, i4 - i2);
    }

    @Override
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        this.mMeasureHelper.c(i, i2);
        setMeasuredDimension(this.mMeasureHelper.b(), this.mMeasureHelper.c());
        this.mMeasureHelper.d(size, size2);
    }

    public void onPause() {
        this.mGLThread.onPause();
    }

    public void onResume() {
        this.mGLThread.onResume();
    }

    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        surfaceCreated(surfaceTexture);
        surfaceChanged(surfaceTexture, 0, i, i2);
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        surfaceDestroyed(surfaceTexture);
        return true;
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        surfaceChanged(surfaceTexture, 0, i, i2);
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        requestRender();
    }

    public void queueEvent(Runnable runnable) {
        this.mGLThread.queueEvent(runnable);
    }

    public void requestRender() {
        this.mGLThread.requestRender();
    }

    @Override
    public void setAspectRatio(int i) {
        this.mMeasureHelper.b(i);
        requestLayout();
    }

    public void setDebugFlags(int i) {
        this.mDebugFlags = i;
    }

    @Override
    public void setEGLConfigChooser(int i, int i2, int i3, int i4, int i5, int i6) {
        setEGLConfigChooser(new ComponentSizeChooser(i, i2, i3, i4, i5, i6));
    }

    @Override
    public void setEGLContextClientVersion(int i) {
        checkRenderThreadState();
        this.mEGLContextClientVersion = i;
    }

    public void setEGLContextFactory(EGLContextFactory eGLContextFactory) {
        checkRenderThreadState();
        this.mEGLContextFactory = eGLContextFactory;
    }

    public void setEGLWindowSurfaceFactory(EGLWindowSurfaceFactory eGLWindowSurfaceFactory) {
        checkRenderThreadState();
        this.mEGLWindowSurfaceFactory = eGLWindowSurfaceFactory;
    }

    public void setGLWrapper(GLWrapper gLWrapper) {
        this.mGLWrapper = gLWrapper;
    }

    @Override
    public void setPreserveEGLContextOnPause(boolean z) {
        this.mPreserveEGLContextOnPause = z;
    }

    public void setRenderMode(int i) {
        this.mGLThread.setRenderMode(i);
    }

    @Override
    public void setRenderer(Renderer renderer) {
        checkRenderThreadState();
        if (this.mEGLConfigChooser == null) {
            this.mEGLConfigChooser = new SimpleEGLConfigChooser(true);
        }
        if (this.mEGLContextFactory == null) {
            this.mEGLContextFactory = new DefaultContextFactory();
        }
        if (this.mEGLWindowSurfaceFactory == null) {
            this.mEGLWindowSurfaceFactory = new DefaultWindowSurfaceFactory();
        }
        this.mRenderer = renderer;
        GLThread gLThread = new GLThread(this.mThisWeakRef);
        this.mGLThread = gLThread;
        gLThread.start();
    }

    @Override
    public void setVideoSize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.mMeasureHelper.a(i, i2);
        requestLayout();
    }

    public void surfaceChanged(SurfaceTexture surfaceTexture, int i, int i2, int i3) {
        this.mGLThread.onWindowResize(i2, i3);
    }

    public void surfaceCreated(SurfaceTexture surfaceTexture) {
        this.mGLThread.surfaceCreated();
    }

    public void surfaceDestroyed(SurfaceTexture surfaceTexture) {
        this.mGLThread.surfaceDestroyed();
    }

    public MgtvGLTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }

    public void setEGLConfigChooser(EGLConfigChooser eGLConfigChooser) {
        checkRenderThreadState();
        this.mEGLConfigChooser = eGLConfigChooser;
    }

    public void setEGLConfigChooser(boolean z) {
        setEGLConfigChooser(new SimpleEGLConfigChooser(z));
    }
}
