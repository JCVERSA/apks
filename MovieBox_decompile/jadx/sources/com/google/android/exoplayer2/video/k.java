package com.google.android.exoplayer2.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class k {

    private final com.google.android.exoplayer2.video.e f27002a = new com.google.android.exoplayer2.video.e();

    private final b f27003b;

    private final e f27004c;

    private boolean f27005d;

    private Surface f27006e;

    private float f27007f;

    private float f27008g;

    private float f27009h;

    private float f27010i;

    private int f27011j;

    private long f27012k;

    private long f27013l;

    private long f27014m;

    private long f27015n;

    private long f27016o;

    private long f27017p;

    private long f27018q;

    private static final class a {
        public static void a(Surface surface, float f10) {
            try {
                surface.setFrameRate(f10, f10 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e10) {
                com.google.android.exoplayer2.util.s.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
            }
        }
    }

    interface b {

        public interface a {
            void a(Display display);
        }

        void a(a aVar);

        void unregister();
    }

    private static final class e implements Choreographer.FrameCallback, Handler.Callback {

        private static final e f27022f = new e();

        public volatile long f27023a = C.TIME_UNSET;

        private final Handler f27024b;

        private final HandlerThread f27025c;

        private Choreographer f27026d;

        private int f27027e;

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f27025c = handlerThread;
            handlerThread.start();
            Handler handlerV = p0.v(handlerThread.getLooper(), this);
            this.f27024b = handlerV;
            handlerV.sendEmptyMessage(0);
        }

        private void b() {
            Choreographer choreographer = this.f27026d;
            if (choreographer != null) {
                int i10 = this.f27027e + 1;
                this.f27027e = i10;
                if (i10 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f27026d = Choreographer.getInstance();
            } catch (RuntimeException e10) {
                com.google.android.exoplayer2.util.s.j("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
            }
        }

        public static e d() {
            return f27022f;
        }

        private void f() {
            Choreographer choreographer = this.f27026d;
            if (choreographer != null) {
                int i10 = this.f27027e - 1;
                this.f27027e = i10;
                if (i10 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f27023a = C.TIME_UNSET;
                }
            }
        }

        public void a() {
            this.f27024b.sendEmptyMessage(1);
        }

        @Override
        public void doFrame(long j10) {
            this.f27023a = j10;
            ((Choreographer) com.google.android.exoplayer2.util.a.e(this.f27026d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f27024b.sendEmptyMessage(2);
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                c();
                return true;
            }
            if (i10 == 1) {
                b();
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            f();
            return true;
        }
    }

    public k(Context context) {
        b bVarF = f(context);
        this.f27003b = bVarF;
        this.f27004c = bVarF != null ? e.d() : null;
        this.f27012k = C.TIME_UNSET;
        this.f27013l = C.TIME_UNSET;
        this.f27007f = -1.0f;
        this.f27010i = 1.0f;
        this.f27011j = 0;
    }

    private static boolean c(long j10, long j11) {
        return Math.abs(j10 - j11) <= 20000000;
    }

    private void d() {
        Surface surface;
        if (p0.f26854a < 30 || (surface = this.f27006e) == null || this.f27011j == Integer.MIN_VALUE || this.f27009h == 0.0f) {
            return;
        }
        this.f27009h = 0.0f;
        a.a(surface, 0.0f);
    }

    private static long e(long j10, long j11, long j12) {
        long j13;
        long j14 = j11 + (((j10 - j11) / j12) * j12);
        if (j10 <= j14) {
            j13 = j14 - j12;
        } else {
            j14 = j12 + j14;
            j13 = j14;
        }
        return j14 - j10 < j10 - j13 ? j14 : j13;
    }

    private static b f(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        b bVarC = p0.f26854a >= 17 ? d.c(applicationContext) : null;
        return bVarC == null ? c.b(applicationContext) : bVarC;
    }

    private void n() {
        this.f27014m = 0L;
        this.f27017p = -1L;
        this.f27015n = -1L;
    }

    public void p(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.f27012k = refreshRate;
            this.f27013l = (refreshRate * 80) / 100;
        } else {
            com.google.android.exoplayer2.util.s.i("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.f27012k = C.TIME_UNSET;
            this.f27013l = C.TIME_UNSET;
        }
    }

    private void q() {
        if (p0.f26854a < 30 || this.f27006e == null) {
            return;
        }
        float fB = this.f27002a.e() ? this.f27002a.b() : this.f27007f;
        float f10 = this.f27008g;
        if (fB == f10) {
            return;
        }
        if (fB != -1.0f && f10 != -1.0f) {
            if (Math.abs(fB - this.f27008g) < ((!this.f27002a.e() || this.f27002a.d() < 5000000000L) ? 1.0f : 0.02f)) {
                return;
            }
        } else if (fB == -1.0f && this.f27002a.c() < 30) {
            return;
        }
        this.f27008g = fB;
        r(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    private void r(boolean z10) {
        Surface surface;
        float f10;
        if (p0.f26854a < 30 || (surface = this.f27006e) == null || this.f27011j == Integer.MIN_VALUE) {
            return;
        }
        if (this.f27005d) {
            float f11 = this.f27008g;
            if (f11 != -1.0f) {
                f10 = f11 * this.f27010i;
            } else {
                f10 = 0.0f;
            }
        } else {
            f10 = 0.0f;
        }
        if (z10 || this.f27009h != f10) {
            this.f27009h = f10;
            a.a(surface, f10);
        }
    }

    public long b(long j10) {
        long j11;
        if (this.f27017p == -1 || !this.f27002a.e()) {
            j11 = j10;
        } else {
            long jA = this.f27018q + ((long) ((this.f27002a.a() * (this.f27014m - this.f27017p)) / this.f27010i));
            if (c(j10, jA)) {
                j11 = jA;
            } else {
                n();
                j11 = j10;
            }
        }
        this.f27015n = this.f27014m;
        this.f27016o = j11;
        e eVar = this.f27004c;
        if (eVar == null || this.f27012k == C.TIME_UNSET) {
            return j11;
        }
        long j12 = eVar.f27023a;
        return j12 == C.TIME_UNSET ? j11 : e(j11, j12, this.f27012k) - this.f27013l;
    }

    public void g(float f10) {
        this.f27007f = f10;
        this.f27002a.g();
        q();
    }

    public void h(long j10) {
        long j11 = this.f27015n;
        if (j11 != -1) {
            this.f27017p = j11;
            this.f27018q = this.f27016o;
        }
        this.f27014m++;
        this.f27002a.f(j10 * 1000);
        q();
    }

    public void i(float f10) {
        this.f27010i = f10;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f27005d = true;
        n();
        if (this.f27003b != null) {
            ((e) com.google.android.exoplayer2.util.a.e(this.f27004c)).a();
            this.f27003b.a(new b.a() {
                @Override
                public final void a(Display display) {
                    this.f27001a.p(display);
                }
            });
        }
        r(false);
    }

    public void l() {
        this.f27005d = false;
        b bVar = this.f27003b;
        if (bVar != null) {
            bVar.unregister();
            ((e) com.google.android.exoplayer2.util.a.e(this.f27004c)).e();
        }
        d();
    }

    public void m(Surface surface) {
        if (surface instanceof PlaceholderSurface) {
            surface = null;
        }
        if (this.f27006e == surface) {
            return;
        }
        d();
        this.f27006e = surface;
        r(true);
    }

    public void o(int i10) {
        if (this.f27011j == i10) {
            return;
        }
        this.f27011j = i10;
        r(true);
    }

    private static final class c implements b {

        private final WindowManager f27019a;

        private c(WindowManager windowManager) {
            this.f27019a = windowManager;
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
            aVar.a(this.f27019a.getDefaultDisplay());
        }

        @Override
        public void unregister() {
        }
    }

    private static final class d implements b, DisplayManager.DisplayListener {

        private final DisplayManager f27020a;

        private b.a f27021b;

        private d(DisplayManager displayManager) {
            this.f27020a = displayManager;
        }

        private Display b() {
            return this.f27020a.getDisplay(0);
        }

        public static b c(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        @Override
        public void a(b.a aVar) {
            this.f27021b = aVar;
            this.f27020a.registerDisplayListener(this, p0.w());
            aVar.a(b());
        }

        @Override
        public void onDisplayChanged(int i10) {
            b.a aVar = this.f27021b;
            if (aVar == null || i10 != 0) {
                return;
            }
            aVar.a(b());
        }

        @Override
        public void unregister() {
            this.f27020a.unregisterDisplayListener(this);
            this.f27021b = null;
        }

        @Override
        public void onDisplayAdded(int i10) {
        }

        @Override
        public void onDisplayRemoved(int i10) {
        }
    }
}
