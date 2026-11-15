package s9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

public final class s implements m {

    private final String f71913a;

    private final com.google.android.exoplayer2.util.d0 f71914b;

    private final com.google.android.exoplayer2.util.c0 f71915c;

    private i9.e0 f71916d;

    private String f71917e;

    private p1 f71918f;

    private int f71919g;

    private int f71920h;

    private int f71921i;

    private int f71922j;

    private long f71923k;

    private boolean f71924l;

    private int f71925m;

    private int f71926n;

    private int f71927o;

    private boolean f71928p;

    private long f71929q;

    private int f71930r;

    private long f71931s;

    private int f71932t;

    private String f71933u;

    public s(String str) {
        this.f71913a = str;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(1024);
        this.f71914b = d0Var;
        this.f71915c = new com.google.android.exoplayer2.util.c0(d0Var.d());
        this.f71923k = C.TIME_UNSET;
    }

    private static long a(com.google.android.exoplayer2.util.c0 c0Var) {
        return c0Var.h((c0Var.h(2) + 1) * 8);
    }

    private void e(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        if (!c0Var.g()) {
            this.f71924l = true;
            j(c0Var);
        } else if (!this.f71924l) {
            return;
        }
        if (this.f71925m != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (this.f71926n != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        i(c0Var, h(c0Var));
        if (this.f71928p) {
            c0Var.r((int) this.f71929q);
        }
    }

    private int f(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        int iB = c0Var.b();
        com.google.android.exoplayer2.audio.a.b bVarE = com.google.android.exoplayer2.audio.a.e(c0Var, true);
        this.f71933u = bVarE.f23908c;
        this.f71930r = bVarE.f23906a;
        this.f71932t = bVarE.f23907b;
        return iB - c0Var.b();
    }

    private void g(com.google.android.exoplayer2.util.c0 c0Var) {
        int iH = c0Var.h(3);
        this.f71927o = iH;
        if (iH == 0) {
            c0Var.r(8);
            return;
        }
        if (iH == 1) {
            c0Var.r(9);
            return;
        }
        if (iH == 3 || iH == 4 || iH == 5) {
            c0Var.r(6);
        } else {
            if (iH != 6 && iH != 7) {
                throw new IllegalStateException();
            }
            c0Var.r(1);
        }
    }

    private int h(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        int iH;
        if (this.f71927o != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        int i10 = 0;
        do {
            iH = c0Var.h(8);
            i10 += iH;
        } while (iH == 255);
        return i10;
    }

    private void i(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        int iE = c0Var.e();
        if ((iE & 7) == 0) {
            this.f71914b.P(iE >> 3);
        } else {
            c0Var.i(this.f71914b.d(), 0, i10 * 8);
            this.f71914b.P(0);
        }
        this.f71916d.c(this.f71914b, i10);
        long j10 = this.f71923k;
        if (j10 != C.TIME_UNSET) {
            this.f71916d.e(j10, 1, i10, 0, null);
            this.f71923k += this.f71931s;
        }
    }

    private void j(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        boolean zG;
        int iH = c0Var.h(1);
        int iH2 = iH == 1 ? c0Var.h(1) : 0;
        this.f71925m = iH2;
        if (iH2 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 1) {
            a(c0Var);
        }
        if (!c0Var.g()) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        this.f71926n = c0Var.h(6);
        int iH3 = c0Var.h(4);
        int iH4 = c0Var.h(3);
        if (iH3 != 0 || iH4 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 0) {
            int iE = c0Var.e();
            int iF = f(c0Var);
            c0Var.p(iE);
            byte[] bArr = new byte[(iF + 7) / 8];
            c0Var.i(bArr, 0, iF);
            p1 p1VarE = new p1.b().S(this.f71917e).e0(MimeTypes.AUDIO_AAC).I(this.f71933u).H(this.f71932t).f0(this.f71930r).T(Collections.singletonList(bArr)).V(this.f71913a).E();
            if (!p1VarE.equals(this.f71918f)) {
                this.f71918f = p1VarE;
                this.f71931s = 1024000000 / ((long) p1VarE.f24915z);
                this.f71916d.d(p1VarE);
            }
        } else {
            c0Var.r(((int) a(c0Var)) - f(c0Var));
        }
        g(c0Var);
        boolean zG2 = c0Var.g();
        this.f71928p = zG2;
        this.f71929q = 0L;
        if (zG2) {
            if (iH == 1) {
                this.f71929q = a(c0Var);
            } else {
                do {
                    zG = c0Var.g();
                    this.f71929q = (this.f71929q << 8) + ((long) c0Var.h(8));
                } while (zG);
            }
        }
        if (c0Var.g()) {
            c0Var.r(8);
        }
    }

    private void k(int i10) {
        this.f71914b.L(i10);
        this.f71915c.n(this.f71914b.d());
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f71916d);
        while (d0Var.a() > 0) {
            int i10 = this.f71919g;
            if (i10 != 0) {
                if (i10 == 1) {
                    int iD = d0Var.D();
                    if ((iD & 224) == 224) {
                        this.f71922j = iD;
                        this.f71919g = 2;
                    } else if (iD != 86) {
                        this.f71919g = 0;
                    }
                } else if (i10 == 2) {
                    int iD2 = ((this.f71922j & (-225)) << 8) | d0Var.D();
                    this.f71921i = iD2;
                    if (iD2 > this.f71914b.d().length) {
                        k(this.f71921i);
                    }
                    this.f71920h = 0;
                    this.f71919g = 3;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(d0Var.a(), this.f71921i - this.f71920h);
                    d0Var.j(this.f71915c.f26788a, this.f71920h, iMin);
                    int i11 = this.f71920h + iMin;
                    this.f71920h = i11;
                    if (i11 == this.f71921i) {
                        this.f71915c.p(0);
                        e(this.f71915c);
                        this.f71919g = 0;
                    }
                }
            } else if (d0Var.D() == 86) {
                this.f71919g = 1;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71923k = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71916d = nVar.track(dVar.c(), 1);
        this.f71917e = dVar.b();
    }

    @Override
    public void seek() {
        this.f71919g = 0;
        this.f71923k = C.TIME_UNSET;
        this.f71924l = false;
    }

    @Override
    public void packetFinished() {
    }
}
