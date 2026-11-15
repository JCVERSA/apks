package r3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.s0;

public final class t implements m {

    private final androidx.media3.common.util.j0 f70753a;

    private final k2.i0.a f70754b;

    private final String f70755c;

    private final int f70756d;

    private final String f70757e;

    private s0 f70758f;

    private String f70759g;

    private int f70760h;

    private int f70761i;

    private boolean f70762j;

    private boolean f70763k;

    private long f70764l;

    private int f70765m;

    private long f70766n;

    public t(String str) {
        this(null, 0, str);
    }

    private void b(androidx.media3.common.util.j0 j0Var) {
        byte[] bArrE = j0Var.e();
        int iG = j0Var.g();
        for (int iF = j0Var.f(); iF < iG; iF++) {
            byte b10 = bArrE[iF];
            boolean z10 = (b10 & 255) == 255;
            boolean z11 = this.f70763k && (b10 & 224) == 224;
            this.f70763k = z10;
            if (z11) {
                j0Var.W(iF + 1);
                this.f70763k = false;
                this.f70753a.e()[1] = bArrE[iF];
                this.f70761i = 2;
                this.f70760h = 1;
                return;
            }
        }
        j0Var.W(iG);
    }

    private void f(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), this.f70765m - this.f70761i);
        this.f70758f.c(j0Var, iMin);
        int i10 = this.f70761i + iMin;
        this.f70761i = i10;
        if (i10 < this.f70765m) {
            return;
        }
        androidx.media3.common.util.a.g(this.f70766n != C.TIME_UNSET);
        this.f70758f.b(this.f70766n, 1, this.f70765m, 0, null);
        this.f70766n += this.f70764l;
        this.f70761i = 0;
        this.f70760h = 0;
    }

    private void g(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), 4 - this.f70761i);
        j0Var.l(this.f70753a.e(), this.f70761i, iMin);
        int i10 = this.f70761i + iMin;
        this.f70761i = i10;
        if (i10 < 4) {
            return;
        }
        this.f70753a.W(0);
        if (!this.f70754b.a(this.f70753a.q())) {
            this.f70761i = 0;
            this.f70760h = 1;
            return;
        }
        k2.i0.a aVar = this.f70754b;
        this.f70765m = aVar.f63615c;
        if (!this.f70762j) {
            this.f70764l = (((long) aVar.f63619g) * 1000000) / ((long) aVar.f63616d);
            this.f70758f.d(new androidx.media3.common.r.b().f0(this.f70759g).U(this.f70757e).u0(this.f70754b.f63614b).k0(4096).R(this.f70754b.f63617e).v0(this.f70754b.f63616d).j0(this.f70755c).s0(this.f70756d).N());
            this.f70762j = true;
        }
        this.f70753a.W(0);
        this.f70758f.c(this.f70753a, 4);
        this.f70760h = 2;
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f70758f);
        while (j0Var.a() > 0) {
            int i10 = this.f70760h;
            if (i10 == 0) {
                b(j0Var);
            } else if (i10 == 1) {
                g(j0Var);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException();
                }
                f(j0Var);
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70766n = j10;
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70759g = dVar.b();
        this.f70758f = tVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f70760h = 0;
        this.f70761i = 0;
        this.f70763k = false;
        this.f70766n = C.TIME_UNSET;
    }

    public t(String str, int i10, String str2) {
        this.f70760h = 0;
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(4);
        this.f70753a = j0Var;
        j0Var.e()[0] = -1;
        this.f70754b = new k2.i0.a();
        this.f70766n = C.TIME_UNSET;
        this.f70755c = str;
        this.f70756d = i10;
        this.f70757e = str2;
    }

    @Override
    public void d(boolean z10) {
    }
}
