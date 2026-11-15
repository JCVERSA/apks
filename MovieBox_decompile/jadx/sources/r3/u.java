package r3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.s0;

public final class u implements m {

    private final String f70767a;

    private String f70772f;

    private s0 f70773g;

    private boolean f70776j;

    private int f70778l;

    private int f70779m;

    private int f70781o;

    private int f70782p;

    private int f70786t;

    private boolean f70788v;

    private int f70771e = 0;

    private final androidx.media3.common.util.j0 f70768b = new androidx.media3.common.util.j0(new byte[15], 2);

    private final androidx.media3.common.util.i0 f70769c = new androidx.media3.common.util.i0();

    private final androidx.media3.common.util.j0 f70770d = new androidx.media3.common.util.j0();

    private v.b f70783q = new v.b();

    private int f70784r = -2147483647;

    private int f70785s = -1;

    private long f70787u = -1;

    private boolean f70777k = true;

    private boolean f70780n = true;

    private double f70774h = -9.223372036854776E18d;

    private double f70775i = -9.223372036854776E18d;

    public u(String str) {
        this.f70767a = str;
    }

    private void b(androidx.media3.common.util.j0 j0Var, androidx.media3.common.util.j0 j0Var2, boolean z10) {
        int iF = j0Var.f();
        int iMin = Math.min(j0Var.a(), j0Var2.a());
        j0Var.l(j0Var2.e(), j0Var2.f(), iMin);
        j0Var2.X(iMin);
        if (z10) {
            j0Var.W(iF);
        }
    }

    private void f() {
        int i10;
        if (this.f70788v) {
            this.f70777k = false;
            i10 = 1;
        } else {
            i10 = 0;
        }
        double d10 = (((double) (this.f70785s - this.f70786t)) * 1000000.0d) / ((double) this.f70784r);
        long jRound = Math.round(this.f70774h);
        if (this.f70776j) {
            this.f70776j = false;
            this.f70774h = this.f70775i;
        } else {
            this.f70774h += d10;
        }
        this.f70773g.b(jRound, i10, this.f70782p, 0, null);
        this.f70788v = false;
        this.f70786t = 0;
        this.f70782p = 0;
    }

    private void g(androidx.media3.common.util.i0 i0Var) throws ParserException {
        v.c cVarH = v.h(i0Var);
        this.f70784r = cVarH.f70793b;
        this.f70785s = cVarH.f70794c;
        long j10 = this.f70787u;
        long j11 = this.f70783q.f70790b;
        if (j10 != j11) {
            this.f70787u = j11;
            String str = "mhm1";
            if (cVarH.f70792a != -1) {
                str = "mhm1" + String.format(".%02X", Integer.valueOf(cVarH.f70792a));
            }
            byte[] bArr = cVarH.f70795d;
            this.f70773g.d(new androidx.media3.common.r.b().f0(this.f70772f).U(this.f70767a).u0("audio/mhm1").v0(this.f70784r).S(str).g0((bArr == null || bArr.length <= 0) ? null : ImmutableList.of(a1.f10043f, bArr)).N());
        }
        this.f70788v = true;
    }

    private boolean h() throws ParserException {
        int iG = this.f70768b.g();
        this.f70769c.o(this.f70768b.e(), iG);
        boolean zG = v.g(this.f70769c, this.f70783q);
        if (zG) {
            this.f70781o = 0;
            this.f70782p += this.f70783q.f70791c + iG;
        }
        return zG;
    }

    private boolean i(int i10) {
        return i10 == 1 || i10 == 17;
    }

    private boolean j(androidx.media3.common.util.j0 j0Var) {
        int i10 = this.f70778l;
        if ((i10 & 2) == 0) {
            j0Var.W(j0Var.g());
            return false;
        }
        if ((i10 & 4) != 0) {
            return true;
        }
        while (j0Var.a() > 0) {
            int i11 = this.f70779m << 8;
            this.f70779m = i11;
            int iH = i11 | j0Var.H();
            this.f70779m = iH;
            if (v.e(iH)) {
                j0Var.W(j0Var.f() - 3);
                this.f70779m = 0;
                return true;
            }
        }
        return false;
    }

    private void k(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), this.f70783q.f70791c - this.f70781o);
        this.f70773g.c(j0Var, iMin);
        this.f70781o += iMin;
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f70773g);
        while (j0Var.a() > 0) {
            int i10 = this.f70771e;
            if (i10 != 0) {
                if (i10 == 1) {
                    b(j0Var, this.f70768b, false);
                    if (this.f70768b.a() != 0) {
                        this.f70780n = false;
                    } else if (h()) {
                        this.f70768b.W(0);
                        s0 s0Var = this.f70773g;
                        androidx.media3.common.util.j0 j0Var2 = this.f70768b;
                        s0Var.c(j0Var2, j0Var2.g());
                        this.f70768b.S(2);
                        this.f70770d.S(this.f70783q.f70791c);
                        this.f70780n = true;
                        this.f70771e = 2;
                    } else if (this.f70768b.g() < 15) {
                        androidx.media3.common.util.j0 j0Var3 = this.f70768b;
                        j0Var3.V(j0Var3.g() + 1);
                        this.f70780n = false;
                    }
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException();
                    }
                    if (i(this.f70783q.f70789a)) {
                        b(j0Var, this.f70770d, true);
                    }
                    k(j0Var);
                    int i11 = this.f70781o;
                    v.b bVar = this.f70783q;
                    if (i11 == bVar.f70791c) {
                        int i12 = bVar.f70789a;
                        if (i12 == 1) {
                            g(new androidx.media3.common.util.i0(this.f70770d.e()));
                        } else if (i12 == 17) {
                            this.f70786t = v.f(new androidx.media3.common.util.i0(this.f70770d.e()));
                        } else if (i12 == 2) {
                            f();
                        }
                        this.f70771e = 1;
                    }
                }
            } else if (j(j0Var)) {
                this.f70771e = 1;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70778l = i10;
        if (!this.f70777k && (this.f70782p != 0 || !this.f70780n)) {
            this.f70776j = true;
        }
        if (j10 != C.TIME_UNSET) {
            if (this.f70776j) {
                this.f70775i = j10;
            } else {
                this.f70774h = j10;
            }
        }
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70772f = dVar.b();
        this.f70773g = tVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f70771e = 0;
        this.f70779m = 0;
        this.f70768b.S(2);
        this.f70781o = 0;
        this.f70782p = 0;
        this.f70784r = -2147483647;
        this.f70785s = -1;
        this.f70786t = 0;
        this.f70787u = -1L;
        this.f70788v = false;
        this.f70776j = false;
        this.f70780n = true;
        this.f70777k = true;
        this.f70774h = -9.223372036854776E18d;
        this.f70775i = -9.223372036854776E18d;
    }

    @Override
    public void d(boolean z10) {
    }
}
