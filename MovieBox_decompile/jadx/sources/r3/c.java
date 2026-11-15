package r3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;
import k2.s0;

public final class c implements m {

    private final androidx.media3.common.util.i0 f70409a;

    private final androidx.media3.common.util.j0 f70410b;

    private final String f70411c;

    private final int f70412d;

    private final String f70413e;

    private String f70414f;

    private s0 f70415g;

    private int f70416h;

    private int f70417i;

    private boolean f70418j;

    private long f70419k;

    private androidx.media3.common.r f70420l;

    private int f70421m;

    private long f70422n;

    public c(String str) {
        this(null, 0, str);
    }

    private boolean b(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i10) {
        int iMin = Math.min(j0Var.a(), i10 - this.f70417i);
        j0Var.l(bArr, this.f70417i, iMin);
        int i11 = this.f70417i + iMin;
        this.f70417i = i11;
        return i11 == i10;
    }

    private void f() {
        this.f70409a.p(0);
        k2.b.C0781b c0781bF = k2.b.f(this.f70409a);
        androidx.media3.common.r rVar = this.f70420l;
        if (rVar == null || c0781bF.f63504d != rVar.E || c0781bF.f63503c != rVar.F || !Objects.equals(c0781bF.f63501a, rVar.f9849o)) {
            androidx.media3.common.r.b bVarP0 = new androidx.media3.common.r.b().f0(this.f70414f).U(this.f70413e).u0(c0781bF.f63501a).R(c0781bF.f63504d).v0(c0781bF.f63503c).j0(this.f70411c).s0(this.f70412d).p0(c0781bF.f63507g);
            if (MimeTypes.AUDIO_AC3.equals(c0781bF.f63501a)) {
                bVarP0.Q(c0781bF.f63507g);
            }
            androidx.media3.common.r rVarN = bVarP0.N();
            this.f70420l = rVarN;
            this.f70415g.d(rVarN);
        }
        this.f70421m = c0781bF.f63505e;
        this.f70419k = (((long) c0781bF.f63506f) * 1000000) / ((long) this.f70420l.F);
    }

    private boolean g(androidx.media3.common.util.j0 j0Var) {
        while (true) {
            if (j0Var.a() <= 0) {
                return false;
            }
            if (this.f70418j) {
                int iH = j0Var.H();
                if (iH == 119) {
                    this.f70418j = false;
                    return true;
                }
                this.f70418j = iH == 11;
            } else {
                this.f70418j = j0Var.H() == 11;
            }
        }
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f70415g);
        while (j0Var.a() > 0) {
            int i10 = this.f70416h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int iMin = Math.min(j0Var.a(), this.f70421m - this.f70417i);
                        this.f70415g.c(j0Var, iMin);
                        int i11 = this.f70417i + iMin;
                        this.f70417i = i11;
                        if (i11 == this.f70421m) {
                            androidx.media3.common.util.a.g(this.f70422n != C.TIME_UNSET);
                            this.f70415g.b(this.f70422n, 1, this.f70421m, 0, null);
                            this.f70422n += this.f70419k;
                            this.f70416h = 0;
                        }
                    }
                } else if (b(j0Var, this.f70410b.e(), 128)) {
                    f();
                    this.f70410b.W(0);
                    this.f70415g.c(this.f70410b, 128);
                    this.f70416h = 2;
                }
            } else if (g(j0Var)) {
                this.f70416h = 1;
                this.f70410b.e()[0] = 11;
                this.f70410b.e()[1] = 119;
                this.f70417i = 2;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70422n = j10;
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70414f = dVar.b();
        this.f70415g = tVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f70416h = 0;
        this.f70417i = 0;
        this.f70418j = false;
        this.f70422n = C.TIME_UNSET;
    }

    public c(String str, int i10, String str2) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(new byte[128]);
        this.f70409a = i0Var;
        this.f70410b = new androidx.media3.common.util.j0(i0Var.f10076a);
        this.f70416h = 0;
        this.f70422n = C.TIME_UNSET;
        this.f70411c = str;
        this.f70412d = i10;
        this.f70413e = str2;
    }

    @Override
    public void d(boolean z10) {
    }
}
