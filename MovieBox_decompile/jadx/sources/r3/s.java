package r3;

import androidx.media3.common.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import k2.s0;

public final class s implements m {

    private final String f70730a;

    private final int f70731b;

    private final String f70732c;

    private final androidx.media3.common.util.j0 f70733d;

    private final androidx.media3.common.util.i0 f70734e;

    private s0 f70735f;

    private String f70736g;

    private androidx.media3.common.r f70737h;

    private int f70738i;

    private int f70739j;

    private int f70740k;

    private int f70741l;

    private long f70742m;

    private boolean f70743n;

    private int f70744o;

    private int f70745p;

    private int f70746q;

    private boolean f70747r;

    private long f70748s;

    private int f70749t;

    private long f70750u;

    private int f70751v;

    private String f70752w;

    public s(String str, int i10, String str2) {
        this.f70730a = str;
        this.f70731b = i10;
        this.f70732c = str2;
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(1024);
        this.f70733d = j0Var;
        this.f70734e = new androidx.media3.common.util.i0(j0Var.e());
        this.f70742m = C.TIME_UNSET;
    }

    private static long b(androidx.media3.common.util.i0 i0Var) {
        return i0Var.h((i0Var.h(2) + 1) * 8);
    }

    private void f(androidx.media3.common.util.i0 i0Var) throws ParserException {
        if (!i0Var.g()) {
            this.f70743n = true;
            k(i0Var);
        } else if (!this.f70743n) {
            return;
        }
        if (this.f70744o != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (this.f70745p != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        j(i0Var, i(i0Var));
        if (this.f70747r) {
            i0Var.r((int) this.f70748s);
        }
    }

    private int g(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iB = i0Var.b();
        k2.a.b bVarD = k2.a.d(i0Var, true);
        this.f70752w = bVarD.f63492c;
        this.f70749t = bVarD.f63490a;
        this.f70751v = bVarD.f63491b;
        return iB - i0Var.b();
    }

    private void h(androidx.media3.common.util.i0 i0Var) {
        int iH = i0Var.h(3);
        this.f70746q = iH;
        if (iH == 0) {
            i0Var.r(8);
            return;
        }
        if (iH == 1) {
            i0Var.r(9);
            return;
        }
        if (iH == 3 || iH == 4 || iH == 5) {
            i0Var.r(6);
        } else {
            if (iH != 6 && iH != 7) {
                throw new IllegalStateException();
            }
            i0Var.r(1);
        }
    }

    private int i(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iH;
        if (this.f70746q != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        int i10 = 0;
        do {
            iH = i0Var.h(8);
            i10 += iH;
        } while (iH == 255);
        return i10;
    }

    private void j(androidx.media3.common.util.i0 i0Var, int i10) {
        int iE = i0Var.e();
        if ((iE & 7) == 0) {
            this.f70733d.W(iE >> 3);
        } else {
            i0Var.i(this.f70733d.e(), 0, i10 * 8);
            this.f70733d.W(0);
        }
        this.f70735f.c(this.f70733d, i10);
        androidx.media3.common.util.a.g(this.f70742m != C.TIME_UNSET);
        this.f70735f.b(this.f70742m, 1, i10, 0, null);
        this.f70742m += this.f70750u;
    }

    private void k(androidx.media3.common.util.i0 i0Var) throws ParserException {
        boolean zG;
        int iH = i0Var.h(1);
        int iH2 = iH == 1 ? i0Var.h(1) : 0;
        this.f70744o = iH2;
        if (iH2 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 1) {
            b(i0Var);
        }
        if (!i0Var.g()) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        this.f70745p = i0Var.h(6);
        int iH3 = i0Var.h(4);
        int iH4 = i0Var.h(3);
        if (iH3 != 0 || iH4 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 0) {
            int iE = i0Var.e();
            int iG = g(i0Var);
            i0Var.p(iE);
            byte[] bArr = new byte[(iG + 7) / 8];
            i0Var.i(bArr, 0, iG);
            androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(this.f70736g).U(this.f70732c).u0(MimeTypes.AUDIO_AAC).S(this.f70752w).R(this.f70751v).v0(this.f70749t).g0(Collections.singletonList(bArr)).j0(this.f70730a).s0(this.f70731b).N();
            if (!rVarN.equals(this.f70737h)) {
                this.f70737h = rVarN;
                this.f70750u = 1024000000 / ((long) rVarN.F);
                this.f70735f.d(rVarN);
            }
        } else {
            i0Var.r(((int) b(i0Var)) - g(i0Var));
        }
        h(i0Var);
        boolean zG2 = i0Var.g();
        this.f70747r = zG2;
        this.f70748s = 0L;
        if (zG2) {
            if (iH == 1) {
                this.f70748s = b(i0Var);
            } else {
                do {
                    zG = i0Var.g();
                    this.f70748s = (this.f70748s << 8) + ((long) i0Var.h(8));
                } while (zG);
            }
        }
        if (i0Var.g()) {
            i0Var.r(8);
        }
    }

    private void l(int i10) {
        this.f70733d.S(i10);
        this.f70734e.n(this.f70733d.e());
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f70735f);
        while (j0Var.a() > 0) {
            int i10 = this.f70738i;
            if (i10 != 0) {
                if (i10 == 1) {
                    int iH = j0Var.H();
                    if ((iH & 224) == 224) {
                        this.f70741l = iH;
                        this.f70738i = 2;
                    } else if (iH != 86) {
                        this.f70738i = 0;
                    }
                } else if (i10 == 2) {
                    int iH2 = ((this.f70741l & (-225)) << 8) | j0Var.H();
                    this.f70740k = iH2;
                    if (iH2 > this.f70733d.e().length) {
                        l(this.f70740k);
                    }
                    this.f70739j = 0;
                    this.f70738i = 3;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(j0Var.a(), this.f70740k - this.f70739j);
                    j0Var.l(this.f70734e.f10076a, this.f70739j, iMin);
                    int i11 = this.f70739j + iMin;
                    this.f70739j = i11;
                    if (i11 == this.f70740k) {
                        this.f70734e.p(0);
                        f(this.f70734e);
                        this.f70738i = 0;
                    }
                }
            } else if (j0Var.H() == 86) {
                this.f70738i = 1;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70742m = j10;
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70735f = tVar.track(dVar.c(), 1);
        this.f70736g = dVar.b();
    }

    @Override
    public void seek() {
        this.f70738i = 0;
        this.f70742m = C.TIME_UNSET;
        this.f70743n = false;
    }

    @Override
    public void d(boolean z10) {
    }
}
