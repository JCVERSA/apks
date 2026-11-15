package androidx.media3.exoplayer.video;

import androidx.media3.common.m0;
import androidx.media3.common.util.o0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class x {

    private final a f13032a;

    private final u f13033b;

    private long f13042k;

    private final u.a f13034c = new u.a();

    private final o0 f13035d = new o0();

    private final o0 f13036e = new o0();

    private final androidx.media3.common.util.w f13037f = new androidx.media3.common.util.w();

    private long f13038g = C.TIME_UNSET;

    private m0 f13041j = m0.f9799e;

    private long f13039h = C.TIME_UNSET;

    private long f13040i = C.TIME_UNSET;

    interface a {
        void a();

        void b(long j10, long j11, boolean z10);

        void onVideoSizeChanged(m0 m0Var);
    }

    public x(a aVar, u uVar) {
        this.f13032a = aVar;
        this.f13033b = uVar;
    }

    private void a() {
        this.f13037f.f();
        this.f13032a.a();
    }

    private static Object c(o0 o0Var) {
        androidx.media3.common.util.a.a(o0Var.l() > 0);
        while (o0Var.l() > 1) {
            o0Var.i();
        }
        return androidx.media3.common.util.a.e(o0Var.i());
    }

    private boolean e(long j10) {
        Long l10 = (Long) this.f13036e.j(j10);
        if (l10 == null || l10.longValue() == this.f13042k) {
            return false;
        }
        this.f13042k = l10.longValue();
        return true;
    }

    private boolean f(long j10) {
        m0 m0Var = (m0) this.f13035d.j(j10);
        if (m0Var == null || m0Var.equals(m0.f9799e) || m0Var.equals(this.f13041j)) {
            return false;
        }
        this.f13041j = m0Var;
        return true;
    }

    private void k(boolean z10) {
        long jF = this.f13037f.f();
        if (f(jF)) {
            this.f13032a.onVideoSizeChanged(this.f13041j);
        }
        this.f13032a.b(z10 ? -1L : this.f13034c.g(), jF, this.f13033b.i());
    }

    public void b() {
        this.f13037f.b();
        this.f13038g = C.TIME_UNSET;
        this.f13039h = C.TIME_UNSET;
        this.f13040i = C.TIME_UNSET;
        if (this.f13036e.l() > 0) {
            Long l10 = (Long) c(this.f13036e);
            l10.longValue();
            this.f13036e.a(0L, l10);
        }
        if (this.f13035d.l() > 0) {
            this.f13035d.a(0L, (m0) c(this.f13035d));
        }
    }

    public boolean d() {
        long j10 = this.f13040i;
        return j10 != C.TIME_UNSET && this.f13039h == j10;
    }

    public void g(long j10) {
        this.f13037f.a(j10);
        this.f13038g = j10;
        this.f13040i = C.TIME_UNSET;
    }

    public void h(long j10) {
        o0 o0Var = this.f13036e;
        long j11 = this.f13038g;
        o0Var.a(j11 == C.TIME_UNSET ? 0L : j11 + 1, Long.valueOf(j10));
    }

    public void i(int i10, int i11) {
        o0 o0Var = this.f13035d;
        long j10 = this.f13038g;
        o0Var.a(j10 == C.TIME_UNSET ? 0L : j10 + 1, new m0(i10, i11));
    }

    public void j(long j10, long j11) {
        while (!this.f13037f.e()) {
            long jD = this.f13037f.d();
            if (e(jD)) {
                this.f13033b.j();
            }
            int iC = this.f13033b.c(jD, j10, j11, this.f13042k, false, false, this.f13034c);
            if (iC == 0 || iC == 1) {
                this.f13039h = jD;
                k(iC == 0);
            } else if (iC == 2 || iC == 3) {
                this.f13039h = jD;
                a();
            } else {
                if (iC != 4) {
                    if (iC != 5) {
                        throw new IllegalStateException(String.valueOf(iC));
                    }
                    return;
                }
                this.f13039h = jD;
            }
        }
    }

    public void l() {
        this.f13040i = this.f13038g;
    }
}
