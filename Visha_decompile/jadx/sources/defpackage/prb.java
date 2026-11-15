package defpackage;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.media3.common.C;
import com.google.android.exoplayer2.video.PlaceholderSurface;
import com.transsion.hubsdk.display.BuildConfig;

public final class prb {
    public final bx3 a = new bx3();
    public final b b;
    public final e c;
    public boolean d;
    public Surface e;
    public float f;
    public float g;
    public float h;
    public float i;
    public int j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;

    public static final class a {
        @DoNotInline
        public static void a(Surface surface, float f) {
            try {
                surface.setFrameRate(f, f == 0.0f ? 0 : 1);
            } catch (IllegalStateException e) {
                op5.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
            }
        }
    }

    public interface b {

        public interface a {
            void a(Display display);
        }

        void a(a aVar);

        void unregister();
    }

    public static final class c implements b {
        public final WindowManager a;

        public c(WindowManager windowManager) {
            this.a = windowManager;
        }

        public static b b(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        @Override
        public void a(b.a aVar) {
            aVar.a(this.a.getDefaultDisplay());
        }

        @Override
        public void unregister() {
        }
    }

    public static final class d implements b, DisplayManager.DisplayListener {
        public final DisplayManager a;
        public b.a b;

        public d(DisplayManager displayManager) {
            this.a = displayManager;
        }

        public static b c(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService(BuildConfig.FLAVOR);
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        @Override
        public void a(b.a aVar) {
            this.b = aVar;
            this.a.registerDisplayListener(this, blb.u());
            aVar.a(b());
        }

        public final Display b() {
            return this.a.getDisplay(0);
        }

        @Override
        public void onDisplayAdded(int i) {
        }

        @Override
        public void onDisplayChanged(int i) {
            b.a aVar = this.b;
            if (aVar == null || i != 0) {
                return;
            }
            aVar.a(b());
        }

        @Override
        public void onDisplayRemoved(int i) {
        }

        @Override
        public void unregister() {
            this.a.unregisterDisplayListener(this);
            this.b = null;
        }
    }

    public static final class e implements Choreographer.FrameCallback, Handler.Callback {
        public static final e g = new e();
        public volatile long b = C.TIME_UNSET;
        public final Handler c;
        public final HandlerThread d;
        public Choreographer e;
        public int f;

        public e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.d = handlerThread;
            handlerThread.start();
            Handler handlerT = blb.t(handlerThread.getLooper(), this);
            this.c = handlerT;
            handlerT.sendEmptyMessage(0);
        }

        public static e d() {
            return g;
        }

        public void a() {
            this.c.sendEmptyMessage(1);
        }

        public final void b() {
            Choreographer choreographer = this.e;
            if (choreographer != null) {
                int i = this.f + 1;
                this.f = i;
                if (i == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        public final void c() {
            try {
                this.e = Choreographer.getInstance();
            } catch (RuntimeException e) {
                op5.j("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e);
            }
        }

        @Override
        public void doFrame(long j) {
            this.b = j;
            ((Choreographer) zi.e(this.e)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.c.sendEmptyMessage(2);
        }

        public final void f() {
            Choreographer choreographer = this.e;
            if (choreographer != null) {
                int i = this.f - 1;
                this.f = i;
                if (i == 0) {
                    choreographer.removeFrameCallback(this);
                    this.b = C.TIME_UNSET;
                }
            }
        }

        @Override
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                c();
                return true;
            }
            if (i == 1) {
                b();
                return true;
            }
            if (i != 2) {
                return false;
            }
            f();
            return true;
        }
    }

    public prb(Context context) {
        b bVarF = f(context);
        this.b = bVarF;
        this.c = bVarF != null ? e.d() : null;
        this.k = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
        this.f = -1.0f;
        this.i = 1.0f;
        this.j = 0;
    }

    public static boolean c(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    public static long e(long j, long j2, long j3) {
        long j4;
        long j5 = j2 + (((j - j2) / j3) * j3);
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j5 = j3 + j5;
            j4 = j5;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    public static b f(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        b bVarC = blb.a >= 17 ? d.c(applicationContext) : null;
        return bVarC == null ? c.b(applicationContext) : bVarC;
    }

    public long b(long j) {
        long j2;
        if (this.p == -1 || !this.a.e()) {
            j2 = j;
        } else {
            long jA = this.q + ((long) ((this.a.a() * (this.m - this.p)) / this.i));
            if (c(j, jA)) {
                j2 = jA;
            } else {
                n();
                j2 = j;
            }
        }
        this.n = this.m;
        this.o = j2;
        e eVar = this.c;
        if (eVar == null || this.k == C.TIME_UNSET) {
            return j2;
        }
        long j3 = eVar.b;
        return j3 == C.TIME_UNSET ? j2 : e(j2, j3, this.k) - this.l;
    }

    public final void d() {
        Surface surface;
        if (blb.a < 30 || (surface = this.e) == null || this.j == Integer.MIN_VALUE || this.h == 0.0f) {
            return;
        }
        this.h = 0.0f;
        a.a(surface, 0.0f);
    }

    public void g(float f) {
        this.f = f;
        this.a.g();
        q();
    }

    public void h(long j) {
        long j2 = this.n;
        if (j2 != -1) {
            this.p = j2;
            this.q = this.o;
        }
        this.m++;
        this.a.f(j * 1000);
        q();
    }

    public void i(float f) {
        this.i = f;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.d = true;
        n();
        if (this.b != null) {
            ((e) zi.e(this.c)).a();
            this.b.a(new b.a() {
                @Override
                public final void a(Display display) {
                    this.a.p(display);
                }
            });
        }
        r(false);
    }

    public void l() {
        this.d = false;
        b bVar = this.b;
        if (bVar != null) {
            bVar.unregister();
            ((e) zi.e(this.c)).e();
        }
        d();
    }

    public void m(Surface surface) {
        if (surface instanceof PlaceholderSurface) {
            surface = null;
        }
        if (this.e == surface) {
            return;
        }
        d();
        this.e = surface;
        r(true);
    }

    public final void n() {
        this.m = 0L;
        this.p = -1L;
        this.n = -1L;
    }

    public void o(int i) {
        if (this.j == i) {
            return;
        }
        this.j = i;
        r(true);
    }

    public final void p(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.k = refreshRate;
            this.l = (refreshRate * 80) / 100;
        } else {
            op5.i("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.k = C.TIME_UNSET;
            this.l = C.TIME_UNSET;
        }
    }

    public final void q() {
        if (blb.a < 30 || this.e == null) {
            return;
        }
        float fB = this.a.e() ? this.a.b() : this.f;
        float f = this.g;
        if (fB == f) {
            return;
        }
        if (fB != -1.0f && f != -1.0f) {
            if (Math.abs(fB - this.g) < ((!this.a.e() || this.a.d() < 5000000000L) ? 1.0f : 0.02f)) {
                return;
            }
        } else if (fB == -1.0f && this.a.c() < 30) {
            return;
        }
        this.g = fB;
        r(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    public final void r(boolean z) {
        Surface surface;
        float f;
        if (blb.a < 30 || (surface = this.e) == null || this.j == Integer.MIN_VALUE) {
            return;
        }
        if (this.d) {
            float f2 = this.g;
            if (f2 != -1.0f) {
                f = f2 * this.i;
            } else {
                f = 0.0f;
            }
        } else {
            f = 0.0f;
        }
        if (z || this.h != f) {
            this.h = f;
            a.a(surface, f);
        }
    }
}
