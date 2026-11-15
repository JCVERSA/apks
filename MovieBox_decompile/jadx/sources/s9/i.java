package s9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;

public final class i implements m {

    private static final byte[] f71728v = {73, 68, 51};

    private final boolean f71729a;

    private final com.google.android.exoplayer2.util.c0 f71730b;

    private final com.google.android.exoplayer2.util.d0 f71731c;

    private final String f71732d;

    private String f71733e;

    private i9.e0 f71734f;

    private i9.e0 f71735g;

    private int f71736h;

    private int f71737i;

    private int f71738j;

    private boolean f71739k;

    private boolean f71740l;

    private int f71741m;

    private int f71742n;

    private int f71743o;

    private boolean f71744p;

    private long f71745q;

    private int f71746r;

    private long f71747s;

    private i9.e0 f71748t;

    private long f71749u;

    public i(boolean z10) {
        this(z10, null);
    }

    private void a() {
        com.google.android.exoplayer2.util.a.e(this.f71734f);
        p0.j(this.f71748t);
        p0.j(this.f71735g);
    }

    private void e(com.google.android.exoplayer2.util.d0 d0Var) {
        if (d0Var.a() == 0) {
            return;
        }
        this.f71730b.f26788a[0] = d0Var.d()[d0Var.e()];
        this.f71730b.p(2);
        int iH = this.f71730b.h(4);
        int i10 = this.f71742n;
        if (i10 != -1 && iH != i10) {
            o();
            return;
        }
        if (!this.f71740l) {
            this.f71740l = true;
            this.f71741m = this.f71743o;
            this.f71742n = iH;
        }
        r();
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        d0Var.P(i10 + 1);
        if (!u(d0Var, this.f71730b.f26788a, 1)) {
            return false;
        }
        this.f71730b.p(4);
        int iH = this.f71730b.h(1);
        int i11 = this.f71741m;
        if (i11 != -1 && iH != i11) {
            return false;
        }
        if (this.f71742n != -1) {
            if (!u(d0Var, this.f71730b.f26788a, 1)) {
                return true;
            }
            this.f71730b.p(2);
            if (this.f71730b.h(4) != this.f71742n) {
                return false;
            }
            d0Var.P(i10 + 2);
        }
        if (!u(d0Var, this.f71730b.f26788a, 4)) {
            return true;
        }
        this.f71730b.p(14);
        int iH2 = this.f71730b.h(13);
        if (iH2 < 7) {
            return false;
        }
        byte[] bArrD = d0Var.d();
        int iF = d0Var.f();
        int i12 = i10 + iH2;
        if (i12 >= iF) {
            return true;
        }
        byte b10 = bArrD[i12];
        if (b10 == -1) {
            int i13 = i12 + 1;
            if (i13 == iF) {
                return true;
            }
            return j((byte) -1, bArrD[i13]) && ((bArrD[i13] & 8) >> 3) == iH;
        }
        if (b10 != 73) {
            return false;
        }
        int i14 = i12 + 1;
        if (i14 == iF) {
            return true;
        }
        if (bArrD[i14] != 68) {
            return false;
        }
        int i15 = i12 + 2;
        return i15 == iF || bArrD[i15] == 51;
    }

    private boolean g(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i10) {
        int iMin = Math.min(d0Var.a(), i10 - this.f71737i);
        d0Var.j(bArr, this.f71737i, iMin);
        int i11 = this.f71737i + iMin;
        this.f71737i = i11;
        return i11 == i10;
    }

    private void h(com.google.android.exoplayer2.util.d0 d0Var) {
        byte[] bArrD = d0Var.d();
        int iE = d0Var.e();
        int iF = d0Var.f();
        while (iE < iF) {
            int i10 = iE + 1;
            byte b10 = bArrD[iE];
            int i11 = b10 & 255;
            if (this.f71738j == 512 && j((byte) -1, (byte) i11) && (this.f71740l || f(d0Var, iE - 1))) {
                this.f71743o = (b10 & 8) >> 3;
                this.f71739k = (b10 & 1) == 0;
                if (this.f71740l) {
                    r();
                } else {
                    p();
                }
                d0Var.P(i10);
                return;
            }
            int i12 = this.f71738j;
            int i13 = i11 | i12;
            if (i13 == 329) {
                this.f71738j = 768;
            } else if (i13 == 511) {
                this.f71738j = 512;
            } else if (i13 == 836) {
                this.f71738j = 1024;
            } else if (i13 == 1075) {
                s();
                d0Var.P(i10);
                return;
            } else if (i12 != 256) {
                this.f71738j = 256;
            }
            iE = i10;
        }
        d0Var.P(iE);
    }

    private boolean j(byte b10, byte b11) {
        return k(((b10 & 255) << 8) | (b11 & 255));
    }

    public static boolean k(int i10) {
        return (i10 & 65526) == 65520;
    }

    private void l() {
        this.f71730b.p(0);
        if (this.f71744p) {
            this.f71730b.r(10);
        } else {
            int i10 = 2;
            int iH = this.f71730b.h(2) + 1;
            if (iH != 2) {
                com.google.android.exoplayer2.util.s.i("AdtsReader", "Detected audio object type: " + iH + ", but assuming AAC LC.");
            } else {
                i10 = iH;
            }
            this.f71730b.r(5);
            byte[] bArrB = com.google.android.exoplayer2.audio.a.b(i10, this.f71742n, this.f71730b.h(3));
            com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(bArrB);
            p1 p1VarE = new p1.b().S(this.f71733e).e0(MimeTypes.AUDIO_AAC).I(bVarF.f23908c).H(bVarF.f23907b).f0(bVarF.f23906a).T(Collections.singletonList(bArrB)).V(this.f71732d).E();
            this.f71745q = 1024000000 / ((long) p1VarE.f24915z);
            this.f71734f.d(p1VarE);
            this.f71744p = true;
        }
        this.f71730b.r(4);
        int iH2 = this.f71730b.h(13);
        int i11 = iH2 - 7;
        if (this.f71739k) {
            i11 = iH2 - 9;
        }
        t(this.f71734f, this.f71745q, 0, i11);
    }

    private void m() {
        this.f71735g.c(this.f71731c, 10);
        this.f71731c.P(6);
        t(this.f71735g, 0L, 10, this.f71731c.C() + 10);
    }

    private void n(com.google.android.exoplayer2.util.d0 d0Var) {
        int iMin = Math.min(d0Var.a(), this.f71746r - this.f71737i);
        this.f71748t.c(d0Var, iMin);
        int i10 = this.f71737i + iMin;
        this.f71737i = i10;
        int i11 = this.f71746r;
        if (i10 == i11) {
            long j10 = this.f71747s;
            if (j10 != C.TIME_UNSET) {
                this.f71748t.e(j10, 1, i11, 0, null);
                this.f71747s += this.f71749u;
            }
            q();
        }
    }

    private void o() {
        this.f71740l = false;
        q();
    }

    private void p() {
        this.f71736h = 1;
        this.f71737i = 0;
    }

    private void q() {
        this.f71736h = 0;
        this.f71737i = 0;
        this.f71738j = 256;
    }

    private void r() {
        this.f71736h = 3;
        this.f71737i = 0;
    }

    private void s() {
        this.f71736h = 2;
        this.f71737i = f71728v.length;
        this.f71746r = 0;
        this.f71731c.P(0);
    }

    private void t(i9.e0 e0Var, long j10, int i10, int i11) {
        this.f71736h = 4;
        this.f71737i = i10;
        this.f71748t = e0Var;
        this.f71749u = j10;
        this.f71746r = i11;
    }

    private boolean u(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i10) {
        if (d0Var.a() < i10) {
            return false;
        }
        d0Var.j(bArr, 0, i10);
        return true;
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        a();
        while (d0Var.a() > 0) {
            int i10 = this.f71736h;
            if (i10 == 0) {
                h(d0Var);
            } else if (i10 == 1) {
                e(d0Var);
            } else if (i10 != 2) {
                if (i10 == 3) {
                    if (g(d0Var, this.f71730b.f26788a, this.f71739k ? 7 : 5)) {
                        l();
                    }
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException();
                    }
                    n(d0Var);
                }
            } else if (g(d0Var, this.f71731c.d(), 10)) {
                m();
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71747s = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71733e = dVar.b();
        i9.e0 e0VarTrack = nVar.track(dVar.c(), 1);
        this.f71734f = e0VarTrack;
        this.f71748t = e0VarTrack;
        if (!this.f71729a) {
            this.f71735g = new i9.k();
            return;
        }
        dVar.a();
        i9.e0 e0VarTrack2 = nVar.track(dVar.c(), 5);
        this.f71735g = e0VarTrack2;
        e0VarTrack2.d(new p1.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
    }

    public long i() {
        return this.f71745q;
    }

    @Override
    public void seek() {
        this.f71747s = C.TIME_UNSET;
        o();
    }

    public i(boolean z10, String str) {
        this.f71730b = new com.google.android.exoplayer2.util.c0(new byte[7]);
        this.f71731c = new com.google.android.exoplayer2.util.d0(Arrays.copyOf(f71728v, 10));
        q();
        this.f71741m = -1;
        this.f71742n = -1;
        this.f71745q = C.TIME_UNSET;
        this.f71747s = C.TIME_UNSET;
        this.f71729a = z10;
        this.f71732d = str;
    }

    @Override
    public void packetFinished() {
    }
}
