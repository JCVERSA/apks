package com.hunantv.media.player.d;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.SurfaceUtil;
import com.hunantv.media.utils.FpsStatistic;
import com.hunantv.media.widget.IVideoView;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

public class f implements SurfaceTexture.OnFrameAvailableListener {
    private a B;
    private boolean D;
    private IVideoView E;
    private SurfaceTexture a;
    private Surface b;
    private b c;
    private HandlerThread d;
    private int e;
    private boolean i;
    private EGLConfig m;
    private EGLSurface n;
    private Object o;
    private int p;
    private int q;
    private int r;
    private int s;
    private com.hunantv.media.player.d.a.b u;
    private Context v;
    private MgtvPlayerListener.OnWarningListener y;
    private float[] f = new float[16];
    private com.hunantv.media.player.d.b g = new com.hunantv.media.player.d.b();
    private com.hunantv.media.player.d.a.b h = new com.hunantv.media.player.d.a.b();
    private EGL10 j = null;
    private EGLDisplay k = EGL10.EGL_NO_DISPLAY;
    private EGLContext l = EGL10.EGL_NO_CONTEXT;
    private int t = 2;
    private FpsStatistic w = new FpsStatistic();
    private volatile boolean x = false;
    private boolean z = false;
    private Object A = new Object();
    private volatile boolean C = false;

    public interface a {
        void onInfo(int i, int i2, String str);
    }

    public static class b extends Handler {
        private WeakReference<f> a;

        public b(f fVar, Looper looper) {
            super(looper);
            this.a = new WeakReference<>(fVar);
        }

        @Override
        public void handleMessage(Message message) {
            f fVar = this.a.get();
            if (fVar == null) {
                return;
            }
            int i = message.what;
            if (i != 1005) {
                if (i == 2005) {
                    fVar.n();
                    return;
                }
                if (i == 2006) {
                    fVar.o();
                    return;
                }
                switch (i) {
                    case 1000:
                        fVar.m();
                        break;
                    case 1001:
                        if (!fVar.z) {
                            fVar.t();
                        } else {
                            fVar.s();
                        }
                        break;
                    case 1002:
                        fVar.c(message.arg1, message.arg2);
                        break;
                }
                return;
            }
            fVar.d(message.arg1, message.arg2);
            fVar.b(message.arg1);
        }
    }

    public f(Context context) {
        this.v = context;
    }

    public static boolean k() {
        return true;
    }

    public void m() {
        DebugLog.i(l(), "initEGL in");
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.j = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.k = eGLDisplayEglGetDisplay;
        EGLDisplay eGLDisplay = EGL10.EGL_NO_DISPLAY;
        if (eGLDisplayEglGetDisplay == eGLDisplay) {
            a("101", "initEGL eglGetDisplay failed! " + this.j.eglGetError());
            return;
        }
        if (!this.j.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
            a("101", "initEGL eglInitialize failed! " + this.j.eglGetError());
            return;
        }
        com.hunantv.media.player.d.a.b bVar = new com.hunantv.media.player.d.a.b(true, this.t);
        this.u = bVar;
        EGLConfig eGLConfigA = bVar.a(this.j, this.k);
        this.m = eGLConfigA;
        int[] iArr = {12440, this.t, 12344};
        EGL10 egl11 = this.j;
        EGLDisplay eGLDisplay2 = this.k;
        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
        EGLContext eGLContextEglCreateContext = egl11.eglCreateContext(eGLDisplay2, eGLConfigA, eGLContext, iArr);
        this.l = eGLContextEglCreateContext;
        if (this.k != eGLDisplay && eGLContextEglCreateContext != eGLContext) {
            this.i = true;
            a(1, 1, "");
            DebugLog.i(l(), "initEGL out");
        } else {
            a("101", "initEGL eglCreateContext fail failed! " + this.j.eglGetError());
        }
    }

    public boolean n() {
        String str;
        if (this.j == null) {
            str = "updateSurfaceTextureImpl egl not initialized";
        } else if (this.k == null) {
            str = "updateSurfaceTextureImpl eglDisplay not initialized";
        } else if (this.m == null) {
            str = "updateSurfaceTextureImpl mEglConfig not initialized";
        } else {
            o();
            Object obj = this.o;
            if (obj == null) {
                str = "createSurfaceImpl mBindedSurfaceTexture null";
            } else {
                EGLSurface eGLSurfaceEglCreateWindowSurface = this.j.eglCreateWindowSurface(this.k, this.m, obj, null);
                this.n = eGLSurfaceEglCreateWindowSurface;
                if (eGLSurfaceEglCreateWindowSurface == null || eGLSurfaceEglCreateWindowSurface == EGL10.EGL_NO_SURFACE) {
                    str = "updateSurfaceTextureImpl eglCreateWindowSurface error:" + this.j.eglGetError();
                } else {
                    if (this.j.eglMakeCurrent(this.k, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, this.l)) {
                        if (!this.g.a(this.e, this.p, this.q, this.r, this.s, this.h)) {
                            return true;
                        }
                        a(3, this.h.h(), this.h.g());
                        return true;
                    }
                    str = "updateSurfaceTextureImpl eglMakeCurrent error";
                }
            }
        }
        a("101", str);
        return false;
    }

    public void o() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2;
        if (this.j == null || (eGLSurface = this.n) == null || eGLSurface == (eGLSurface2 = EGL10.EGL_NO_SURFACE)) {
            return;
        }
        DebugLog.i(l(), "eglDestroySurface in");
        this.j.eglMakeCurrent(this.k, eGLSurface2, eGLSurface2, EGL10.EGL_NO_CONTEXT);
        this.j.eglDestroySurface(this.k, this.n);
        this.n = null;
        DebugLog.i(l(), "eglDestroySurface out");
    }

    private void p() {
        DebugLog.i(l(), "releaseImpl in");
        b bVar = this.c;
        if (bVar != null) {
            bVar.removeMessages(1000);
            this.c.removeMessages(1001);
            this.c = null;
        }
        HandlerThread handlerThread = this.d;
        if (handlerThread != null) {
            handlerThread.quit();
            this.d = null;
        }
        this.g.a();
        q();
        Surface surface = this.b;
        if (surface != null && surface.isValid()) {
            DebugLog.i(l(), "Surface.release() in");
            this.b.release();
            this.b = null;
            DebugLog.i(l(), "Surface.release() out");
        }
        DebugLog.i(l(), "releaseImpl out");
    }

    private void q() {
        if (this.j != null) {
            o();
            if (this.l != null) {
                DebugLog.i(l(), "eglDestroyContext in");
                this.j.eglDestroyContext(this.k, this.l);
                this.l = null;
                DebugLog.i(l(), "eglDestroyContext out");
            }
            if (this.k != null) {
                DebugLog.i(l(), "eglTerminate in");
                this.j.eglTerminate(this.k);
                this.k = null;
                DebugLog.i(l(), "eglTerminate out");
            }
        }
    }

    private int r() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameterf(36197, 10241, 9728.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameterf(36197, 10242, 33071.0f);
        GLES20.glTexParameterf(36197, 10243, 33071.0f);
        GLES20.glBindTexture(36197, 0);
        return iArr[0];
    }

    public void s() {
        synchronized (this.A) {
            t();
        }
    }

    public void t() {
        if (!this.i || this.j == null || this.k == null || this.n == null || this.l == null) {
            return;
        }
        if (!this.C || !this.z || !n()) {
            EGL10 egl10 = this.j;
            EGLDisplay eGLDisplay = this.k;
            EGLSurface eGLSurface = this.n;
            egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.l);
        }
        try {
            IVideoView iVideoView = this.E;
            boolean z = (iVideoView == null || iVideoView.isPlaying()) ? false : true;
            SurfaceTexture surfaceTexture = this.a;
            if (surfaceTexture != null) {
                surfaceTexture.updateTexImage();
                if (this.D) {
                    this.D = false;
                } else {
                    this.a.getTransformMatrix(this.f);
                }
                if (z) {
                    return;
                }
                this.w.onFrame();
                this.g.a(this.f);
            }
            this.j.eglSwapBuffers(this.k, this.n);
        } catch (Exception e) {
            if (!this.x) {
                this.x = true;
                a("106", e.getMessage());
            }
        }
        if (this.C) {
            this.C = false;
        }
    }

    public f a(a aVar) {
        this.B = aVar;
        return this;
    }

    public SurfaceTexture b() {
        this.e = r();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.e);
        this.a = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        return this.a;
    }

    public SurfaceTexture c() {
        if (this.a == null) {
            b();
        }
        return this.a;
    }

    public Surface d() {
        if (this.b == null) {
            this.b = SurfaceUtil.create(c());
        }
        if (!this.b.isValid()) {
            SurfaceUtil.release(this.b);
            SurfaceTexture surfaceTexture = this.a;
            if (surfaceTexture != null) {
                surfaceTexture.setOnFrameAvailableListener(null);
                this.a.release();
                this.a = null;
            }
            this.b = SurfaceUtil.create(c());
        }
        Surface surface = this.b;
        if (surface != null && surface.isValid()) {
            return this.b;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Surface invalid mSurface:");
        sb.append(this.b);
        sb.append(",valid:");
        Surface surface2 = this.b;
        sb.append(surface2 != null ? surface2.isValid() : false);
        a("105", sb.toString());
        throw new RuntimeException("getSurface invalid");
    }

    public void e() {
        p();
    }

    public void f() {
        this.D = true;
        this.x = false;
        this.w.resetFps();
    }

    public void g() {
        this.w.startFps();
    }

    public void h() {
        this.w.stopFps();
    }

    public int i() {
        return this.w.getFps();
    }

    public com.hunantv.media.player.d.a.b j() {
        return this.h;
    }

    public String l() {
        return getClass().getSimpleName();
    }

    @Override
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        a(1001, 0, 0);
    }

    public void b(int i) {
        com.hunantv.media.player.d.a.b cVar;
        com.hunantv.media.player.d.a.b bVar = new com.hunantv.media.player.d.a.b();
        try {
            if (i != 1) {
                if (i == 2 && this.v != null) {
                    cVar = new com.hunantv.media.player.d.a.a.b(this.v);
                    bVar = cVar;
                }
            } else if (this.v != null) {
                cVar = new com.hunantv.media.player.d.a.a.c(this.v);
                bVar = cVar;
            }
        } catch (Exception e) {
            a("102", "filter:" + i + ",detail:" + e.getMessage());
        }
        if (i <= 100) {
            this.h = bVar;
            if (this.g.a(bVar)) {
                a(3, this.h.h(), this.h.g());
            }
        }
    }

    public void c(int i, int i2) {
        this.g.a(i, i2);
    }

    public void d(int i, int i2) {
        synchronized (this.A) {
            this.C = true;
            this.g.b(i, i2);
        }
    }

    public void a() {
        if (this.d == null) {
            HandlerThread handlerThread = new HandlerThread("mgtvmp_jRender");
            this.d = handlerThread;
            handlerThread.start();
        }
        if (this.c == null) {
            this.c = new b(this, this.d.getLooper());
            a(1000, 0, 0);
        }
    }

    public void a(int i) {
        a(1003, i, 0);
    }

    public void b(int i, int i2) {
        synchronized (this.A) {
            try {
                DebugLog.i(l(), "resizeWindow width:" + i + ",height:" + i2);
                if (this.r != i || this.s != i2) {
                    DebugLog.i(l(), "send resizeWindow width:" + i + ",height:" + i2);
                    this.r = i;
                    this.s = i2;
                    a(1005, i, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i, int i2) {
        if (i < 0 || i2 < 0) {
            return;
        }
        if (this.p == i && this.q == i2) {
            return;
        }
        DebugLog.d(l(), "resize width:" + i + ",height:" + i2);
        this.p = i;
        this.q = i2;
        a(1002, i, i2);
    }

    public void a(int i, int i2, int i3) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.removeMessages(i);
        }
        Message message = new Message();
        message.what = i;
        message.arg1 = i2;
        message.arg2 = i3;
        b bVar2 = this.c;
        if (bVar2 != null) {
            bVar2.sendMessage(message);
        }
    }

    private void a(int i, int i2, String str) {
        a aVar = this.B;
        if (aVar != null) {
            aVar.onInfo(i, i2, str);
        }
    }

    public void a(MgtvPlayerListener.OnWarningListener onWarningListener) {
        this.y = onWarningListener;
    }

    public void a(IVideoView iVideoView) {
        this.E = iVideoView;
        com.hunantv.media.player.d.b bVar = this.g;
        if (bVar != null) {
            bVar.a(iVideoView);
        }
    }

    public void a(Object obj) {
        if (this.o != obj || (obj instanceof SurfaceHolder)) {
            this.o = obj;
            a(2005, 0, 0);
        }
    }

    private void a(String str, String str2) {
        a(str, str2, (Object) null);
    }

    private void a(String str, String str2, Object obj) {
        MgtvPlayerListener.OnWarningListener onWarningListener = this.y;
        if (onWarningListener != null) {
            onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_JAVA_OPENGL, str, str2, obj);
        }
    }

    public void a(boolean z) {
        this.z = z;
    }
}
