package s9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class t implements m {

    private final com.google.android.exoplayer2.util.d0 f71934a;

    private final com.google.android.exoplayer2.audio.b0.a f71935b;

    private final String f71936c;

    private i9.e0 f71937d;

    private String f71938e;

    private int f71939f;

    private int f71940g;

    private boolean f71941h;

    private boolean f71942i;

    private long f71943j;

    private int f71944k;

    private long f71945l;

    public t() {
        this(null);
    }

    private void a(com.google.android.exoplayer2.util.d0 d0Var) {
        byte[] bArrD = d0Var.d();
        int iF = d0Var.f();
        for (int iE = d0Var.e(); iE < iF; iE++) {
            byte b10 = bArrD[iE];
            boolean z10 = (b10 & 255) == 255;
            boolean z11 = this.f71942i && (b10 & 224) == 224;
            this.f71942i = z10;
            if (z11) {
                d0Var.P(iE + 1);
                this.f71942i = false;
                this.f71934a.d()[1] = bArrD[iE];
                this.f71940g = 2;
                this.f71939f = 1;
                return;
            }
        }
        d0Var.P(iF);
    }

    private void e(com.google.android.exoplayer2.util.d0 d0Var) {
        int iMin = Math.min(d0Var.a(), this.f71944k - this.f71940g);
        this.f71937d.c(d0Var, iMin);
        int i10 = this.f71940g + iMin;
        this.f71940g = i10;
        int i11 = this.f71944k;
        if (i10 < i11) {
            return;
        }
        long j10 = this.f71945l;
        if (j10 != C.TIME_UNSET) {
            this.f71937d.e(j10, 1, i11, 0, null);
            this.f71945l += this.f71943j;
        }
        this.f71940g = 0;
        this.f71939f = 0;
    }

    private void f(com.google.android.exoplayer2.util.d0 d0Var) {
        int iMin = Math.min(d0Var.a(), 4 - this.f71940g);
        d0Var.j(this.f71934a.d(), this.f71940g, iMin);
        int i10 = this.f71940g + iMin;
        this.f71940g = i10;
        if (i10 < 4) {
            return;
        }
        this.f71934a.P(0);
        if (!this.f71935b.a(this.f71934a.n())) {
            this.f71940g = 0;
            this.f71939f = 1;
            return;
        }
        com.google.android.exoplayer2.audio.b0.a aVar = this.f71935b;
        this.f71944k = aVar.f23931c;
        if (!this.f71941h) {
            this.f71943j = (((long) aVar.f23935g) * 1000000) / ((long) aVar.f23932d);
            this.f71937d.d(new p1.b().S(this.f71938e).e0(this.f71935b.f23930b).W(4096).H(this.f71935b.f23933e).f0(this.f71935b.f23932d).V(this.f71936c).E());
            this.f71941h = true;
        }
        this.f71934a.P(0);
        this.f71937d.c(this.f71934a, 4);
        this.f71939f = 2;
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f71937d);
        while (d0Var.a() > 0) {
            int i10 = this.f71939f;
            if (i10 == 0) {
                a(d0Var);
            } else if (i10 == 1) {
                f(d0Var);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException();
                }
                e(d0Var);
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71945l = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71938e = dVar.b();
        this.f71937d = nVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f71939f = 0;
        this.f71940g = 0;
        this.f71942i = false;
        this.f71945l = C.TIME_UNSET;
    }

    public t(String str) {
        this.f71939f = 0;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(4);
        this.f71934a = d0Var;
        d0Var.d()[0] = -1;
        this.f71935b = new com.google.android.exoplayer2.audio.b0.a();
        this.f71945l = C.TIME_UNSET;
        this.f71936c = str;
    }

    @Override
    public void packetFinished() {
    }
}
