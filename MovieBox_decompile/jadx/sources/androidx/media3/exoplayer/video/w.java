package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class w {

    private final i f13007a = new i();

    private final b f13008b;

    private final c f13009c;

    private boolean f13010d;

    private Surface f13011e;

    private float f13012f;

    private float f13013g;

    private float f13014h;

    private float f13015i;

    private int f13016j;

    private long f13017k;

    private long f13018l;

    private long f13019m;

    private long f13020n;

    private long f13021o;

    private long f13022p;

    private long f13023q;

    private static final class a {
        public static void a(Surface surface, float f10) {
            try {
                surface.setFrameRate(f10, f10 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e10) {
                androidx.media3.common.util.u.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
            }
        }
    }

    private static final class c implements Choreographer.FrameCallback, Handler.Callback {

        private static final c f13026f = new c();

        public volatile long f13027a = C.TIME_UNSET;

        private final Handler f13028b;

        private final HandlerThread f13029c;

        private Choreographer f13030d;

        private int f13031e;

        private c() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f13029c = handlerThread;
            handlerThread.start();
            Handler handlerZ = a1.z(handlerThread.getLooper(), this);
            this.f13028b = handlerZ;
            handlerZ.sendEmptyMessage(1);
        }

        private void b() {
            Choreographer choreographer = this.f13030d;
            if (choreographer != null) {
                int i10 = this.f13031e + 1;
                this.f13031e = i10;
                if (i10 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f13030d = Choreographer.getInstance();
            } catch (RuntimeException e10) {
                androidx.media3.common.util.u.i("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
            }
        }

        public static c d() {
            return f13026f;
        }

        private void f() {
            Choreographer choreographer = this.f13030d;
            if (choreographer != null) {
                int i10 = this.f13031e - 1;
                this.f13031e = i10;
                if (i10 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f13027a = C.TIME_UNSET;
                }
            }
        }

        public void a() {
            this.f13028b.sendEmptyMessage(2);
        }

        @Override
        public void doFrame(long j10) {
            this.f13027a = j10;
            ((Choreographer) androidx.media3.common.util.a.e(this.f13030d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f13028b.sendEmptyMessage(3);
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                c();
                return true;
            }
            if (i10 == 2) {
                b();
                return true;
            }
            if (i10 != 3) {
                return false;
            }
            f();
            return true;
        }
    }

    public w(Context context) {
        b bVarF = f(context);
        this.f13008b = bVarF;
        this.f13009c = bVarF != null ? c.d() : null;
        this.f13017k = C.TIME_UNSET;
        this.f13018l = C.TIME_UNSET;
        this.f13012f = -1.0f;
        this.f13015i = 1.0f;
        this.f13016j = 0;
    }

    private static boolean c(long j10, long j11) {
        return Math.abs(j10 - j11) <= 20000000;
    }

    private void d() {
        Surface surface;
        if (a1.f10038a < 30 || (surface = this.f13011e) == null || this.f13016j == Integer.MIN_VALUE || this.f13014h == 0.0f) {
            return;
        }
        this.f13014h = 0.0f;
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

    private b f(Context context) {
        DisplayManager displayManager;
        if (context == null || (displayManager = (DisplayManager) context.getSystemService("display")) == null) {
            return null;
        }
        return new b(displayManager);
    }

    private void n() {
        this.f13019m = 0L;
        this.f13022p = -1L;
        this.f13020n = -1L;
    }

    public void p(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.f13017k = refreshRate;
            this.f13018l = (refreshRate * 80) / 100;
        } else {
            androidx.media3.common.util.u.h("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.f13017k = C.TIME_UNSET;
            this.f13018l = C.TIME_UNSET;
        }
    }

    private void q() {
        if (a1.f10038a < 30 || this.f13011e == null) {
            return;
        }
        float fB = this.f13007a.e() ? this.f13007a.b() : this.f13012f;
        float f10 = this.f13013g;
        if (fB == f10) {
            return;
        }
        if (fB != -1.0f && f10 != -1.0f) {
            if (Math.abs(fB - this.f13013g) < ((!this.f13007a.e() || this.f13007a.d() < 5000000000L) ? 1.0f : 0.02f)) {
                return;
            }
        } else if (fB == -1.0f && this.f13007a.c() < 30) {
            return;
        }
        this.f13013g = fB;
        r(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    private void r(boolean z10) {
        Surface surface;
        float f10;
        if (a1.f10038a < 30 || (surface = this.f13011e) == null || this.f13016j == Integer.MIN_VALUE) {
            return;
        }
        if (this.f13010d) {
            float f11 = this.f13013g;
            if (f11 != -1.0f) {
                f10 = f11 * this.f13015i;
            } else {
                f10 = 0.0f;
            }
        } else {
            f10 = 0.0f;
        }
        if (z10 || this.f13014h != f10) {
            this.f13014h = f10;
            a.a(surface, f10);
        }
    }

    public long b(long j10) {
        long j11;
        if (this.f13022p == -1 || !this.f13007a.e()) {
            j11 = j10;
        } else {
            long jA = this.f13023q + ((long) ((this.f13007a.a() * (this.f13019m - this.f13022p)) / this.f13015i));
            if (c(j10, jA)) {
                j11 = jA;
            } else {
                n();
                j11 = j10;
            }
        }
        this.f13020n = this.f13019m;
        this.f13021o = j11;
        c cVar = this.f13009c;
        if (cVar == null || this.f13017k == C.TIME_UNSET) {
            return j11;
        }
        long j12 = cVar.f13027a;
        return j12 == C.TIME_UNSET ? j11 : e(j11, j12, this.f13017k) - this.f13018l;
    }

    public void g(float f10) {
        this.f13012f = f10;
        this.f13007a.g();
        q();
    }

    public void h(long j10) {
        long j11 = this.f13020n;
        if (j11 != -1) {
            this.f13022p = j11;
            this.f13023q = this.f13021o;
        }
        this.f13019m++;
        this.f13007a.f(j10 * 1000);
        q();
    }

    public void i(float f10) {
        this.f13015i = f10;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f13010d = true;
        n();
        if (this.f13008b != null) {
            ((c) androidx.media3.common.util.a.e(this.f13009c)).a();
            this.f13008b.b();
        }
        r(false);
    }

    public void l() {
        this.f13010d = false;
        b bVar = this.f13008b;
        if (bVar != null) {
            bVar.c();
            ((c) androidx.media3.common.util.a.e(this.f13009c)).e();
        }
        d();
    }

    public void m(Surface surface) {
        if (this.f13011e == surface) {
            return;
        }
        d();
        this.f13011e = surface;
        r(true);
    }

    public void o(int i10) {
        if (this.f13016j == i10) {
            return;
        }
        this.f13016j = i10;
        r(true);
    }

    private final class b implements DisplayManager.DisplayListener {

        private final DisplayManager f13024a;

        public b(DisplayManager displayManager) {
            this.f13024a = displayManager;
        }

        private Display a() {
            return this.f13024a.getDisplay(0);
        }

        public void b() {
            this.f13024a.registerDisplayListener(this, a1.A());
            w.this.p(a());
        }

        public void c() {
            this.f13024a.unregisterDisplayListener(this);
        }

        @Override
        public void onDisplayChanged(int i10) {
            if (i10 == 0) {
                w.this.p(a());
            }
        }

        @Override
        public void onDisplayAdded(int i10) {
        }

        @Override
        public void onDisplayRemoved(int i10) {
        }
    }
}
