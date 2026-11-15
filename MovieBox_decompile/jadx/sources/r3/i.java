package r3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
import k2.s0;

public final class i implements m {

    private static final byte[] f70490x = {73, 68, 51};

    private final boolean f70491a;

    private final androidx.media3.common.util.i0 f70492b;

    private final androidx.media3.common.util.j0 f70493c;

    private final String f70494d;

    private final int f70495e;

    private final String f70496f;

    private String f70497g;

    private s0 f70498h;

    private s0 f70499i;

    private int f70500j;

    private int f70501k;

    private int f70502l;

    private boolean f70503m;

    private boolean f70504n;

    private int f70505o;

    private int f70506p;

    private int f70507q;

    private boolean f70508r;

    private long f70509s;

    private int f70510t;

    private long f70511u;

    private s0 f70512v;

    private long f70513w;

    public i(boolean z10, String str) {
        this(z10, null, 0, str);
    }

    private void b() {
        androidx.media3.common.util.a.e(this.f70498h);
        a1.i(this.f70512v);
        a1.i(this.f70499i);
    }

    private void f(androidx.media3.common.util.j0 j0Var) {
        if (j0Var.a() == 0) {
            return;
        }
        this.f70492b.f10076a[0] = j0Var.e()[j0Var.f()];
        this.f70492b.p(2);
        int iH = this.f70492b.h(4);
        int i10 = this.f70506p;
        if (i10 != -1 && iH != i10) {
            p();
            return;
        }
        if (!this.f70504n) {
            this.f70504n = true;
            this.f70505o = this.f70507q;
            this.f70506p = iH;
        }
        s();
    }

    private boolean g(androidx.media3.common.util.j0 j0Var, int i10) {
        j0Var.W(i10 + 1);
        if (!v(j0Var, this.f70492b.f10076a, 1)) {
            return false;
        }
        this.f70492b.p(4);
        int iH = this.f70492b.h(1);
        int i11 = this.f70505o;
        if (i11 != -1 && iH != i11) {
            return false;
        }
        if (this.f70506p != -1) {
            if (!v(j0Var, this.f70492b.f10076a, 1)) {
                return true;
            }
            this.f70492b.p(2);
            if (this.f70492b.h(4) != this.f70506p) {
                return false;
            }
            j0Var.W(i10 + 2);
        }
        if (!v(j0Var, this.f70492b.f10076a, 4)) {
            return true;
        }
        this.f70492b.p(14);
        int iH2 = this.f70492b.h(13);
        if (iH2 < 7) {
            return false;
        }
        byte[] bArrE = j0Var.e();
        int iG = j0Var.g();
        int i12 = i10 + iH2;
        if (i12 >= iG) {
            return true;
        }
        byte b10 = bArrE[i12];
        if (b10 == -1) {
            int i13 = i12 + 1;
            if (i13 == iG) {
                return true;
            }
            return k((byte) -1, bArrE[i13]) && ((bArrE[i13] & 8) >> 3) == iH;
        }
        if (b10 != 73) {
            return false;
        }
        int i14 = i12 + 1;
        if (i14 == iG) {
            return true;
        }
        if (bArrE[i14] != 68) {
            return false;
        }
        int i15 = i12 + 2;
        return i15 == iG || bArrE[i15] == 51;
    }

    private boolean h(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i10) {
        int iMin = Math.min(j0Var.a(), i10 - this.f70501k);
        j0Var.l(bArr, this.f70501k, iMin);
        int i11 = this.f70501k + iMin;
        this.f70501k = i11;
        return i11 == i10;
    }

    private void i(androidx.media3.common.util.j0 j0Var) {
        byte[] bArrE = j0Var.e();
        int iF = j0Var.f();
        int iG = j0Var.g();
        while (iF < iG) {
            int i10 = iF + 1;
            byte b10 = bArrE[iF];
            int i11 = b10 & 255;
            if (this.f70502l == 512 && k((byte) -1, (byte) i11) && (this.f70504n || g(j0Var, iF - 1))) {
                this.f70507q = (b10 & 8) >> 3;
                this.f70503m = (b10 & 1) == 0;
                if (this.f70504n) {
                    s();
                } else {
                    q();
                }
                j0Var.W(i10);
                return;
            }
            int i12 = this.f70502l;
            int i13 = i11 | i12;
            if (i13 == 329) {
                this.f70502l = 768;
            } else if (i13 == 511) {
                this.f70502l = 512;
            } else if (i13 == 836) {
                this.f70502l = 1024;
            } else if (i13 == 1075) {
                t();
                j0Var.W(i10);
                return;
            } else if (i12 != 256) {
                this.f70502l = 256;
            }
            iF = i10;
        }
        j0Var.W(iF);
    }

    private boolean k(byte b10, byte b11) {
        return l(((b10 & 255) << 8) | (b11 & 255));
    }

    public static boolean l(int i10) {
        return (i10 & 65526) == 65520;
    }

    private void m() {
        this.f70492b.p(0);
        if (this.f70508r) {
            this.f70492b.r(10);
        } else {
            int i10 = 2;
            int iH = this.f70492b.h(2) + 1;
            if (iH != 2) {
                androidx.media3.common.util.u.h("AdtsReader", "Detected audio object type: " + iH + ", but assuming AAC LC.");
            } else {
                i10 = iH;
            }
            this.f70492b.r(5);
            byte[] bArrA = k2.a.a(i10, this.f70506p, this.f70492b.h(3));
            k2.a.b bVarE = k2.a.e(bArrA);
            androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(this.f70497g).U(this.f70496f).u0(MimeTypes.AUDIO_AAC).S(bVarE.f63492c).R(bVarE.f63491b).v0(bVarE.f63490a).g0(Collections.singletonList(bArrA)).j0(this.f70494d).s0(this.f70495e).N();
            this.f70509s = 1024000000 / ((long) rVarN.F);
            this.f70498h.d(rVarN);
            this.f70508r = true;
        }
        this.f70492b.r(4);
        int iH2 = this.f70492b.h(13);
        int i11 = iH2 - 7;
        if (this.f70503m) {
            i11 = iH2 - 9;
        }
        u(this.f70498h, this.f70509s, 0, i11);
    }

    private void n() {
        this.f70499i.c(this.f70493c, 10);
        this.f70493c.W(6);
        u(this.f70499i, 0L, 10, this.f70493c.G() + 10);
    }

    private void o(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), this.f70510t - this.f70501k);
        this.f70512v.c(j0Var, iMin);
        int i10 = this.f70501k + iMin;
        this.f70501k = i10;
        if (i10 == this.f70510t) {
            androidx.media3.common.util.a.g(this.f70511u != C.TIME_UNSET);
            this.f70512v.b(this.f70511u, 1, this.f70510t, 0, null);
            this.f70511u += this.f70513w;
            r();
        }
    }

    private void p() {
        this.f70504n = false;
        r();
    }

    private void q() {
        this.f70500j = 1;
        this.f70501k = 0;
    }

    private void r() {
        this.f70500j = 0;
        this.f70501k = 0;
        this.f70502l = 256;
    }

    private void s() {
        this.f70500j = 3;
        this.f70501k = 0;
    }

    private void t() {
        this.f70500j = 2;
        this.f70501k = f70490x.length;
        this.f70510t = 0;
        this.f70493c.W(0);
    }

    private void u(s0 s0Var, long j10, int i10, int i11) {
        this.f70500j = 4;
        this.f70501k = i10;
        this.f70512v = s0Var;
        this.f70513w = j10;
        this.f70510t = i11;
    }

    private boolean v(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i10) {
        if (j0Var.a() < i10) {
            return false;
        }
        j0Var.l(bArr, 0, i10);
        return true;
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        b();
        while (j0Var.a() > 0) {
            int i10 = this.f70500j;
            if (i10 == 0) {
                i(j0Var);
            } else if (i10 == 1) {
                f(j0Var);
            } else if (i10 != 2) {
                if (i10 == 3) {
                    if (h(j0Var, this.f70492b.f10076a, this.f70503m ? 7 : 5)) {
                        m();
                    }
                } else {
                    if (i10 != 4) {
                        throw new IllegalStateException();
                    }
                    o(j0Var);
                }
            } else if (h(j0Var, this.f70493c.e(), 10)) {
                n();
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70511u = j10;
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70497g = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 1);
        this.f70498h = s0VarTrack;
        this.f70512v = s0VarTrack;
        if (!this.f70491a) {
            this.f70499i = new k2.n();
            return;
        }
        dVar.a();
        s0 s0VarTrack2 = tVar.track(dVar.c(), 5);
        this.f70499i = s0VarTrack2;
        s0VarTrack2.d(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f70496f).u0(MimeTypes.APPLICATION_ID3).N());
    }

    public long j() {
        return this.f70509s;
    }

    @Override
    public void seek() {
        this.f70511u = C.TIME_UNSET;
        p();
    }

    public i(boolean z10, String str, int i10, String str2) {
        this.f70492b = new androidx.media3.common.util.i0(new byte[7]);
        this.f70493c = new androidx.media3.common.util.j0(Arrays.copyOf(f70490x, 10));
        this.f70505o = -1;
        this.f70506p = -1;
        this.f70509s = C.TIME_UNSET;
        this.f70511u = C.TIME_UNSET;
        this.f70491a = z10;
        this.f70494d = str;
        this.f70495e = i10;
        this.f70496f = str2;
        r();
    }

    @Override
    public void d(boolean z10) {
    }
}
