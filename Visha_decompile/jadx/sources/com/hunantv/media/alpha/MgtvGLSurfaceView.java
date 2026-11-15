package com.hunantv.media.alpha;

import android.content.Context;
import android.opengl.GLDebugHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
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

public class MgtvGLSurfaceView extends SurfaceView implements SurfaceHolder.Callback2, IAlphaRenderView {
    public static final int DEBUG_CHECK_GL_ERROR = 1;
    public static final int DEBUG_LOG_GL_CALLS = 2;
    private static final boolean LOG_ATTACH_DETACH = false;
    private static final boolean LOG_EGL = false;
    private static final boolean LOG_PAUSE_RESUME = false;
    private static final boolean LOG_RENDERER = false;
    private static final boolean LOG_RENDERER_DRAW_FRAME = false;
    private static final boolean LOG_SURFACE = false;
    private static final boolean LOG_THREADS = false;
    public static final int RENDERMODE_CONTINUOUSLY = 1;
    public static final int RENDERMODE_WHEN_DIRTY = 0;
    private static final String TAG = "MgtvGLSurfaceView";
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
    private final WeakReference<MgtvGLSurfaceView> mThisWeakRef;

    public abstract class BaseConfigChooser implements EGLConfigChooser {
        protected int[] mConfigSpec;

        public BaseConfigChooser(int[] iArr) {
            this.mConfigSpec = filterConfigSpec(iArr);
        }

        private int[] filterConfigSpec(int[] iArr) {
            if (MgtvGLSurfaceView.this.mEGLContextClientVersion != 2 && MgtvGLSurfaceView.this.mEGLContextClientVersion != 3) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[length + 2];
            int i = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr2[i] = 12352;
            if (MgtvGLSurfaceView.this.mEGLContextClientVersion == 2) {
                iArr2[length] = 4;
            } else {
                iArr2[length] = 64;
            }
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
            int[] iArr = {this.EGL_CONTEXT_CLIENT_VERSION, MgtvGLSurfaceView.this.mEGLContextClientVersion, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (MgtvGLSurfaceView.this.mEGLContextClientVersion == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }

        @Override
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                return;
            }
            Log.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
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
                Log.e(MgtvGLSurfaceView.TAG, "eglCreateWindowSurface", e);
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
        private WeakReference<MgtvGLSurfaceView> mGLSurfaceViewWeakRef;

        public EglHelper(WeakReference<MgtvGLSurfaceView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        private void destroySurfaceImp() {
            EGLSurface eGLSurface;
            EGLSurface eGLSurface2 = this.mEglSurface;
            if (eGLSurface2 == null || eGLSurface2 == (eGLSurface = EGL10.EGL_NO_SURFACE)) {
                return;
            }
            this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            MgtvGLSurfaceView mgtvGLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (mgtvGLSurfaceView != null) {
                mgtvGLSurfaceView.mEGLWindowSurfaceFactory.destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
            }
            this.mEglSurface = null;
        }

        public static String formatEglError(String str, int i) {
            return str + " failed: ";
        }

        public static void logEglErrorAsWarning(String str, String str2, int i) {
            Log.w(str, formatEglError(str2, i));
        }

        private void throwEglException(String str) {
            throwEglException(str, this.mEgl.eglGetError());
        }

        public GL createGL() {
            GL gl = this.mEglContext.getGL();
            MgtvGLSurfaceView mgtvGLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (mgtvGLSurfaceView == null) {
                return gl;
            }
            if (mgtvGLSurfaceView.mGLWrapper != null) {
                gl = mgtvGLSurfaceView.mGLWrapper.wrap(gl);
            }
            if ((mgtvGLSurfaceView.mDebugFlags & 3) != 0) {
                return GLDebugHelper.wrap(gl, (mgtvGLSurfaceView.mDebugFlags & 1) == 0 ? 0 : 1, (mgtvGLSurfaceView.mDebugFlags & 2) != 0 ? new LogWriter() : null);
            }
            return gl;
        }

        public boolean createSurface() {
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
            MgtvGLSurfaceView mgtvGLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            this.mEglSurface = mgtvGLSurfaceView != null ? mgtvGLSurfaceView.mEGLWindowSurfaceFactory.createWindowSurface(this.mEgl, this.mEglDisplay, this.mEglConfig, mgtvGLSurfaceView.getHolder()) : null;
            EGLSurface eGLSurface = this.mEglSurface;
            if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                if (this.mEgl.eglGetError() == 12299) {
                    Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
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
            destroySurfaceImp();
        }

        public void finish() {
            if (this.mEglContext != null) {
                MgtvGLSurfaceView mgtvGLSurfaceView = this.mGLSurfaceViewWeakRef.get();
                if (mgtvGLSurfaceView != null) {
                    mgtvGLSurfaceView.mEGLContextFactory.destroyContext(this.mEgl, this.mEglDisplay, this.mEglContext);
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
            MgtvGLSurfaceView mgtvGLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (mgtvGLSurfaceView == null) {
                this.mEglConfig = null;
                this.mEglContext = null;
            } else {
                this.mEglConfig = mgtvGLSurfaceView.mEGLConfigChooser.chooseConfig(this.mEgl, this.mEglDisplay);
                this.mEglContext = mgtvGLSurfaceView.mEGLContextFactory.createContext(this.mEgl, this.mEglDisplay, this.mEglConfig);
            }
            EGLContext eGLContext = this.mEglContext;
            if (eGLContext == null || eGLContext == EGL10.EGL_NO_CONTEXT) {
                this.mEglContext = null;
                throwEglException("createContext");
            }
            this.mEglSurface = null;
        }

        public int swap() {
            if (this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface)) {
                return 12288;
            }
            return this.mEgl.eglGetError();
        }

        public static void throwEglException(String str, int i) {
            throw new RuntimeException(formatEglError(str, i));
        }
    }

    public static class GLThread extends Thread {
        private EglHelper mEglHelper;
        private boolean mExited;
        private boolean mFinishedCreatingEglSurface;
        private WeakReference<MgtvGLSurfaceView> mGLSurfaceViewWeakRef;
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
        private Runnable mFinishDrawingRunnable = null;
        private int mWidth = 0;
        private int mHeight = 0;
        private boolean mRequestRender = true;
        private int mRenderMode = 1;
        private boolean mWantRenderNotification = false;

        public GLThread(WeakReference<MgtvGLSurfaceView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        /* JADX WARN: Code duplicated, block: B:116:0x0184 A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:118:0x0190 A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:120:0x019a A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:123:0x01a8 A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:125:0x01b2 A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:129:0x01c4 A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:131:0x01cd A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:134:0x01db  */
        /* JADX WARN: Code duplicated, block: B:136:0x01df A[Catch: all -> 0x014a, TryCatch #6 {all -> 0x014a, blocks: (B:3:0x001f, B:4:0x0023, B:90:0x0143, B:95:0x014f, B:97:0x0157, B:98:0x015b, B:105:0x016b, B:106:0x016c, B:107:0x0170, B:114:0x0181, B:116:0x0184, B:118:0x0190, B:120:0x019a, B:123:0x01a8, B:125:0x01b2, B:127:0x01ba, B:129:0x01c4, B:131:0x01cd, B:132:0x01d1, B:136:0x01df, B:137:0x01ec, B:144:0x01fb, B:154:0x0222, B:139:0x01ee, B:140:0x01f7, B:100:0x015d, B:101:0x0166, B:5:0x0024, B:7:0x0028, B:18:0x003c, B:20:0x0044, B:88:0x0140, B:21:0x0051, B:23:0x0057, B:25:0x0062, B:27:0x0066, B:29:0x0072, B:31:0x007b, B:33:0x007f, B:35:0x0084, B:37:0x0088, B:42:0x009a, B:40:0x0094, B:43:0x009d, B:45:0x00a1, B:47:0x00a5, B:49:0x00a9, B:50:0x00ac, B:51:0x00b9, B:53:0x00bd, B:55:0x00c1, B:57:0x00cd, B:58:0x00db, B:60:0x00df, B:62:0x00e5, B:64:0x00eb, B:68:0x00f3, B:70:0x00f9, B:72:0x0105, B:73:0x010c, B:74:0x010d, B:76:0x0111, B:78:0x0115, B:79:0x011b, B:81:0x011f, B:83:0x0123, B:85:0x0132, B:152:0x0217, B:151:0x020c, B:109:0x0172, B:110:0x017d), top: B:174:0x001f, inners: #3, #4, #5, #7 }] */
        /* JADX WARN: Code duplicated, block: B:138:0x01ed  */
        /* JADX WARN: Code duplicated, block: B:145:0x01fc  */
        /* JADX WARN: Code duplicated, block: B:146:0x01ff  */
        /* JADX WARN: Code duplicated, block: B:149:0x0206  */
        /* JADX WARN: Code duplicated, block: B:163:0x0228 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:180:0x0147 A[SYNTHETIC] */
        private void guardedRun() throws InterruptedException {
            Runnable runnable;
            MgtvGLSurfaceView mgtvGLSurfaceView;
            int iSwap;
            boolean z;
            MgtvGLSurfaceView mgtvGLSurfaceView2;
            MgtvGLSurfaceView mgtvGLSurfaceView3;
            boolean z2;
            this.mEglHelper = new EglHelper(this.mGLSurfaceViewWeakRef);
            this.mHaveEglContext = false;
            this.mHaveEglSurface = false;
            this.mWantRenderNotification = false;
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
            Runnable runnable2 = null;
            GL10 gl10 = null;
            Runnable runnableRemove = null;
            while (true) {
                try {
                    synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                        while (true) {
                            if (this.mShouldExit) {
                                synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                                    stopEglSurfaceLocked();
                                    stopEglContextLocked();
                                }
                                return;
                            }
                            if (!this.mEventQueue.isEmpty()) {
                                runnableRemove = this.mEventQueue.remove(0);
                                runnable = null;
                                break;
                            }
                            boolean z11 = this.mPaused;
                            boolean z12 = this.mRequestPaused;
                            if (z11 != z12) {
                                this.mPaused = z12;
                                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                            } else {
                                z12 = false;
                            }
                            if (this.mShouldReleaseEglContext) {
                                stopEglSurfaceLocked();
                                stopEglContextLocked();
                                this.mShouldReleaseEglContext = false;
                                z5 = true;
                            }
                            if (z3) {
                                stopEglSurfaceLocked();
                                stopEglContextLocked();
                                z3 = false;
                            }
                            if (z12 && this.mHaveEglSurface) {
                                stopEglSurfaceLocked();
                            }
                            if (z12 && this.mHaveEglContext) {
                                MgtvGLSurfaceView mgtvGLSurfaceView4 = this.mGLSurfaceViewWeakRef.get();
                                if (!(mgtvGLSurfaceView4 == null ? false : mgtvGLSurfaceView4.mPreserveEGLContextOnPause)) {
                                    stopEglContextLocked();
                                }
                            }
                            if (!this.mHasSurface && !this.mWaitingForSurface) {
                                if (this.mHaveEglSurface) {
                                    stopEglSurfaceLocked();
                                }
                                this.mWaitingForSurface = true;
                                this.mSurfaceIsBad = false;
                                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                            }
                            if (this.mHasSurface && this.mWaitingForSurface) {
                                this.mWaitingForSurface = false;
                                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                            }
                            if (z4) {
                                this.mWantRenderNotification = false;
                                this.mRenderComplete = true;
                                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                                z4 = false;
                            }
                            Runnable runnable3 = this.mFinishDrawingRunnable;
                            if (runnable3 != null) {
                                runnable = null;
                                this.mFinishDrawingRunnable = null;
                                runnable2 = runnable3;
                            } else {
                                runnable = null;
                            }
                            if (readyToDraw()) {
                                if (!this.mHaveEglContext) {
                                    if (z5) {
                                        z5 = false;
                                    } else {
                                        try {
                                            this.mEglHelper.start();
                                            this.mHaveEglContext = true;
                                            MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                                            z6 = true;
                                        } catch (RuntimeException e) {
                                            MgtvGLSurfaceView.sGLThreadManager.releaseEglContextLocked(this);
                                            throw e;
                                        }
                                    }
                                }
                                if (this.mHaveEglContext && !this.mHaveEglSurface) {
                                    this.mHaveEglSurface = true;
                                    z7 = true;
                                    z8 = true;
                                    z9 = true;
                                }
                                if (this.mHaveEglSurface) {
                                    if (this.mSizeChanged) {
                                        i = this.mWidth;
                                        i2 = this.mHeight;
                                        this.mWantRenderNotification = true;
                                        this.mSizeChanged = false;
                                        z2 = false;
                                        z7 = true;
                                        z9 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    this.mRequestRender = z2;
                                    MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                                    if (!this.mWantRenderNotification) {
                                        break;
                                    }
                                    z10 = true;
                                    break;
                                }
                            } else if (runnable2 != null) {
                                Log.w(MgtvGLSurfaceView.TAG, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished.");
                                runnable2.run();
                                runnable2 = null;
                            }
                            MgtvGLSurfaceView.sGLThreadManager.wait();
                        }
                    }
                    if (runnableRemove != null) {
                        runnableRemove.run();
                        runnableRemove = runnable;
                    } else {
                        if (z7) {
                            if (this.mEglHelper.createSurface()) {
                                synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                                    this.mFinishedCreatingEglSurface = true;
                                    MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                                }
                                z7 = false;
                                if (z8) {
                                    gl10 = (GL10) this.mEglHelper.createGL();
                                    z8 = false;
                                }
                                if (z6) {
                                    mgtvGLSurfaceView3 = this.mGLSurfaceViewWeakRef.get();
                                    if (mgtvGLSurfaceView3 != null) {
                                        mgtvGLSurfaceView3.mRenderer.onSurfaceCreated(gl10, this.mEglHelper.mEglConfig);
                                    }
                                    z6 = false;
                                }
                                if (z9) {
                                    mgtvGLSurfaceView2 = this.mGLSurfaceViewWeakRef.get();
                                    if (mgtvGLSurfaceView2 != null) {
                                        mgtvGLSurfaceView2.mRenderer.onSurfaceChanged(gl10, i, i2);
                                    }
                                    z9 = false;
                                }
                                mgtvGLSurfaceView = this.mGLSurfaceViewWeakRef.get();
                                if (mgtvGLSurfaceView != null) {
                                    mgtvGLSurfaceView.mRenderer.onDrawFrame(gl10);
                                    if (runnable2 != null) {
                                        runnable2.run();
                                        runnable2 = runnable;
                                    }
                                }
                                iSwap = this.mEglHelper.swap();
                                if (iSwap != 12288) {
                                    if (iSwap != 12302) {
                                        EglHelper.logEglErrorAsWarning("GLThread", "eglSwapBuffers", iSwap);
                                        synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                                            z = true;
                                            this.mSurfaceIsBad = true;
                                            MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                                        }
                                    } else {
                                        z = true;
                                        z3 = true;
                                    }
                                    if (z10) {
                                        z4 = z;
                                        z10 = false;
                                    }
                                } else {
                                    z = true;
                                }
                                z3 = z3;
                                if (z10) {
                                    z4 = z;
                                    z10 = false;
                                }
                            } else {
                                synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                                    this.mFinishedCreatingEglSurface = true;
                                    this.mSurfaceIsBad = true;
                                    MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                                }
                            }
                            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                                stopEglSurfaceLocked();
                                stopEglContextLocked();
                                throw th;
                            }
                        }
                        if (z8) {
                            gl10 = (GL10) this.mEglHelper.createGL();
                            z8 = false;
                        }
                        if (z6) {
                            mgtvGLSurfaceView3 = this.mGLSurfaceViewWeakRef.get();
                            if (mgtvGLSurfaceView3 != null) {
                                mgtvGLSurfaceView3.mRenderer.onSurfaceCreated(gl10, this.mEglHelper.mEglConfig);
                            }
                            z6 = false;
                        }
                        if (z9) {
                            mgtvGLSurfaceView2 = this.mGLSurfaceViewWeakRef.get();
                            if (mgtvGLSurfaceView2 != null) {
                                mgtvGLSurfaceView2.mRenderer.onSurfaceChanged(gl10, i, i2);
                            }
                            z9 = false;
                        }
                        mgtvGLSurfaceView = this.mGLSurfaceViewWeakRef.get();
                        if (mgtvGLSurfaceView != null) {
                            mgtvGLSurfaceView.mRenderer.onDrawFrame(gl10);
                            if (runnable2 != null) {
                                runnable2.run();
                                runnable2 = runnable;
                            }
                        }
                        iSwap = this.mEglHelper.swap();
                        if (iSwap != 12288) {
                            if (iSwap != 12302) {
                                EglHelper.logEglErrorAsWarning("GLThread", "eglSwapBuffers", iSwap);
                                synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                                    z = true;
                                    this.mSurfaceIsBad = true;
                                    MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                                }
                            } else {
                                z = true;
                                z3 = true;
                            }
                            if (z10) {
                                z4 = z;
                                z10 = false;
                            }
                        } else {
                            z = true;
                        }
                        z3 = z3;
                        if (z10) {
                            z4 = z;
                            z10 = false;
                        }
                    }
                } catch (Throwable th) {
                    synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                        stopEglSurfaceLocked();
                        stopEglContextLocked();
                        throw th;
                    }
                }
            }
        }

        private boolean readyToDraw() {
            return !this.mPaused && this.mHasSurface && !this.mSurfaceIsBad && this.mWidth > 0 && this.mHeight > 0 && (this.mRequestRender || this.mRenderMode == 1);
        }

        private void stopEglContextLocked() {
            if (this.mHaveEglContext) {
                this.mEglHelper.finish();
                this.mHaveEglContext = false;
                MgtvGLSurfaceView.sGLThreadManager.releaseEglContextLocked(this);
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
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                i = this.mRenderMode;
            }
            return i;
        }

        public void onPause() {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mRequestPaused = true;
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mExited && !this.mPaused) {
                    try {
                        MgtvGLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onResume() {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mRequestPaused = false;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mExited && this.mPaused && !this.mRenderComplete) {
                    try {
                        MgtvGLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onWindowResize(int i, int i2) {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                try {
                    this.mWidth = i;
                    this.mHeight = i2;
                    this.mSizeChanged = true;
                    this.mRequestRender = true;
                    this.mRenderComplete = false;
                    if (Thread.currentThread() == this) {
                        return;
                    }
                    MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                    while (!this.mExited && !this.mPaused && !this.mRenderComplete && ableToDraw()) {
                        try {
                            MgtvGLSurfaceView.sGLThreadManager.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void queueEvent(Runnable runnable) {
            if (runnable == null) {
                throw new IllegalArgumentException("r must not be null");
            }
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mEventQueue.add(runnable);
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void requestExitAndWait() {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mShouldExit = true;
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mExited) {
                    try {
                        MgtvGLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void requestReleaseEglContextLocked() {
            this.mShouldReleaseEglContext = true;
            MgtvGLSurfaceView.sGLThreadManager.notifyAll();
        }

        public void requestRender() {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mRequestRender = true;
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void requestRenderAndNotify(Runnable runnable) {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                try {
                    if (Thread.currentThread() == this) {
                        return;
                    }
                    this.mWantRenderNotification = true;
                    this.mRequestRender = true;
                    this.mRenderComplete = false;
                    this.mFinishDrawingRunnable = runnable;
                    MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public void run() {
            setName("GLThread " + getId());
            try {
                guardedRun();
            } catch (InterruptedException unused) {
            } finally {
                MgtvGLSurfaceView.sGLThreadManager.threadExiting(this);
            }
        }

        public void setRenderMode(int i) {
            if (i < 0 || i > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mRenderMode = i;
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void surfaceCreated() {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mHasSurface = true;
                this.mFinishedCreatingEglSurface = false;
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                while (this.mWaitingForSurface && !this.mFinishedCreatingEglSurface && !this.mExited) {
                    try {
                        MgtvGLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void surfaceDestroyed() {
            synchronized (MgtvGLSurfaceView.sGLThreadManager) {
                this.mHasSurface = false;
                MgtvGLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mWaitingForSurface && !this.mExited) {
                    try {
                        MgtvGLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    public static class GLThreadManager {
        private static String TAG = "GLThreadManager";

        private GLThreadManager() {
        }

        public void releaseEglContextLocked(GLThread gLThread) {
            notifyAll();
        }

        public synchronized void threadExiting(GLThread gLThread) {
            gLThread.mExited = true;
            notifyAll();
        }
    }

    public interface GLWrapper {
        GL wrap(GL gl);
    }

    public static class LogWriter extends Writer {
        private StringBuilder mBuilder = new StringBuilder();

        private void flushBuilder() {
            if (this.mBuilder.length() > 0) {
                Log.v(MgtvGLSurfaceView.TAG, this.mBuilder.toString());
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

    public MgtvGLSurfaceView(Context context) {
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
        DebugLog.i("MgtvGLTextureView", "this is surfaceview");
        this.mMeasureHelper = new c(this);
        getHolder().addCallback(this);
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
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestExitAndWait();
        }
        this.mDetached = true;
        super.onDetachedFromWindow();
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
    public void setOpaque(boolean z) {
        if (z) {
            return;
        }
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        setZOrderOnTop(true);
        getHolder().setFormat(-3);
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

    @Override
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.mGLThread.onWindowResize(i2, i3);
    }

    @Override
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mGLThread.surfaceCreated();
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mGLThread.surfaceDestroyed();
    }

    @Override
    @Deprecated
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
    }

    @Override
    public void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, Runnable runnable) {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestRenderAndNotify(runnable);
        }
    }

    public MgtvGLSurfaceView(Context context, AttributeSet attributeSet) {
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
