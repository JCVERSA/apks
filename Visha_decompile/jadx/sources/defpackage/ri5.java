package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k;
import java.util.Collections;

public final class ri5 implements m83 {
    public final String a;
    public final qw7 b;
    public final pw7 c;
    public fva d;
    public String e;
    public k f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long k;
    public boolean l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public long s;
    public int t;
    public String u;

    public ri5(String str) {
        this.a = str;
        qw7 qw7Var = new qw7(1024);
        this.b = qw7Var;
        this.c = new pw7(qw7Var.d());
        this.k = C.TIME_UNSET;
    }

    public static long d(pw7 pw7Var) {
        return pw7Var.h((pw7Var.h(2) + 1) * 8);
    }

    @Override
    public void a(qw7 qw7Var) throws ParserException {
        zi.i(this.d);
        while (qw7Var.a() > 0) {
            int i = this.g;
            if (i != 0) {
                if (i == 1) {
                    int iC = qw7Var.C();
                    if ((iC & 224) == 224) {
                        this.j = iC;
                        this.g = 2;
                    } else if (iC != 86) {
                        this.g = 0;
                    }
                } else if (i == 2) {
                    int iC2 = ((this.j & (-225)) << 8) | qw7Var.C();
                    this.i = iC2;
                    if (iC2 > this.b.d().length) {
                        k(this.i);
                    }
                    this.h = 0;
                    this.g = 3;
                } else {
                    if (i != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(qw7Var.a(), this.i - this.h);
                    qw7Var.j(this.c.a, this.h, iMin);
                    int i2 = this.h + iMin;
                    this.h = i2;
                    if (i2 == this.i) {
                        this.c.p(0);
                        e(this.c);
                        this.g = 0;
                    }
                }
            } else if (qw7Var.C() == 86) {
                this.g = 1;
            }
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.d = qk3Var.track(dVar.c(), 1);
        this.e = dVar.b();
    }

    public final void e(pw7 pw7Var) throws ParserException {
        if (!pw7Var.g()) {
            this.l = true;
            j(pw7Var);
        } else if (!this.l) {
            return;
        }
        if (this.m != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (this.n != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        i(pw7Var, h(pw7Var));
        if (this.p) {
            pw7Var.r((int) this.q);
        }
    }

    public final int f(pw7 pw7Var) throws ParserException {
        int iB = pw7Var.b();
        i2.b bVarD = i2.d(pw7Var, true);
        this.u = bVarD.c;
        this.r = bVarD.a;
        this.t = bVarD.b;
        return iB - pw7Var.b();
    }

    public final void g(pw7 pw7Var) {
        int iH = pw7Var.h(3);
        this.o = iH;
        if (iH == 0) {
            pw7Var.r(8);
            return;
        }
        if (iH == 1) {
            pw7Var.r(9);
            return;
        }
        if (iH == 3 || iH == 4 || iH == 5) {
            pw7Var.r(6);
        } else {
            if (iH != 6 && iH != 7) {
                throw new IllegalStateException();
            }
            pw7Var.r(1);
        }
    }

    public final int h(pw7 pw7Var) throws ParserException {
        int iH;
        if (this.o != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        int i = 0;
        do {
            iH = pw7Var.h(8);
            i += iH;
        } while (iH == 255);
        return i;
    }

    public final void i(pw7 pw7Var, int i) {
        int iE = pw7Var.e();
        if ((iE & 7) == 0) {
            this.b.O(iE >> 3);
        } else {
            pw7Var.i(this.b.d(), 0, i * 8);
            this.b.O(0);
        }
        this.d.d(this.b, i);
        long j = this.k;
        if (j != C.TIME_UNSET) {
            this.d.e(j, 1, i, 0, null);
            this.k += this.s;
        }
    }

    public final void j(pw7 pw7Var) throws ParserException {
        boolean zG;
        int iH = pw7Var.h(1);
        int iH2 = iH == 1 ? pw7Var.h(1) : 0;
        this.m = iH2;
        if (iH2 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 1) {
            d(pw7Var);
        }
        if (!pw7Var.g()) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        this.n = pw7Var.h(6);
        int iH3 = pw7Var.h(4);
        int iH4 = pw7Var.h(3);
        if (iH3 != 0 || iH4 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 0) {
            int iE = pw7Var.e();
            int iF = f(pw7Var);
            pw7Var.p(iE);
            byte[] bArr = new byte[(iF + 7) / 8];
            pw7Var.i(bArr, 0, iF);
            k kVarE = new k.b().S(this.e).e0("audio/mp4a-latm").I(this.u).H(this.t).f0(this.r).T(Collections.singletonList(bArr)).V(this.a).E();
            if (!kVarE.equals(this.f)) {
                this.f = kVarE;
                this.s = 1024000000 / ((long) kVarE.A);
                this.d.b(kVarE);
            }
        } else {
            pw7Var.r(((int) d(pw7Var)) - f(pw7Var));
        }
        g(pw7Var);
        boolean zG2 = pw7Var.g();
        this.p = zG2;
        this.q = 0L;
        if (zG2) {
            if (iH == 1) {
                this.q = d(pw7Var);
            } else {
                do {
                    zG = pw7Var.g();
                    this.q = (this.q << 8) + ((long) pw7Var.h(8));
                } while (zG);
            }
        }
        if (pw7Var.g()) {
            pw7Var.r(8);
        }
    }

    public final void k(int i) {
        this.b.K(i);
        this.c.n(this.b.d());
    }

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override
    public void seek() {
        this.g = 0;
        this.k = C.TIME_UNSET;
        this.l = false;
    }
}
