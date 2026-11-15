package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;
import java.util.Collections;

public final class g9 implements m83 {
    public static final byte[] v = {73, 68, 51};
    public final boolean a;
    public final pw7 b;
    public final qw7 c;
    public final String d;
    public String e;
    public fva f;
    public fva g;
    public int h;
    public int i;
    public int j;
    public boolean k;
    public boolean l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public long q;
    public int r;
    public long s;
    public fva t;
    public long u;

    public g9(boolean z) {
        this(z, null);
    }

    private boolean g(qw7 qw7Var, byte[] bArr, int i) {
        int iMin = Math.min(qw7Var.a(), i - this.i);
        qw7Var.j(bArr, this.i, iMin);
        int i2 = this.i + iMin;
        this.i = i2;
        return i2 == i;
    }

    public static boolean k(int i) {
        return (i & 65526) == 65520;
    }

    @Override
    public void a(qw7 qw7Var) {
        d();
        while (qw7Var.a() > 0) {
            int i = this.h;
            if (i == 0) {
                h(qw7Var);
            } else if (i == 1) {
                e(qw7Var);
            } else if (i != 2) {
                if (i == 3) {
                    if (g(qw7Var, this.b.a, this.k ? 7 : 5)) {
                        l();
                    }
                } else {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    n(qw7Var);
                }
            } else if (g(qw7Var, this.c.d(), 10)) {
                m();
            }
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.e = dVar.b();
        fva fvaVarTrack = qk3Var.track(dVar.c(), 1);
        this.f = fvaVarTrack;
        this.t = fvaVarTrack;
        if (!this.a) {
            this.g = new s33();
            return;
        }
        dVar.a();
        fva fvaVarTrack2 = qk3Var.track(dVar.c(), 5);
        this.g = fvaVarTrack2;
        fvaVarTrack2.b(new k.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
    }

    public final void d() {
        zi.e(this.f);
        blb.j(this.t);
        blb.j(this.g);
    }

    public final void e(qw7 qw7Var) {
        if (qw7Var.a() == 0) {
            return;
        }
        this.b.a[0] = qw7Var.d()[qw7Var.e()];
        this.b.p(2);
        int iH = this.b.h(4);
        int i = this.n;
        if (i != -1 && iH != i) {
            o();
            return;
        }
        if (!this.l) {
            this.l = true;
            this.m = this.o;
            this.n = iH;
        }
        r();
    }

    public final boolean f(qw7 qw7Var, int i) {
        qw7Var.O(i + 1);
        if (!u(qw7Var, this.b.a, 1)) {
            return false;
        }
        this.b.p(4);
        int iH = this.b.h(1);
        int i2 = this.m;
        if (i2 != -1 && iH != i2) {
            return false;
        }
        if (this.n != -1) {
            if (!u(qw7Var, this.b.a, 1)) {
                return true;
            }
            this.b.p(2);
            if (this.b.h(4) != this.n) {
                return false;
            }
            qw7Var.O(i + 2);
        }
        if (!u(qw7Var, this.b.a, 4)) {
            return true;
        }
        this.b.p(14);
        int iH2 = this.b.h(13);
        if (iH2 < 7) {
            return false;
        }
        byte[] bArrD = qw7Var.d();
        int iF = qw7Var.f();
        int i3 = i + iH2;
        if (i3 >= iF) {
            return true;
        }
        byte b = bArrD[i3];
        if (b == -1) {
            int i4 = i3 + 1;
            if (i4 == iF) {
                return true;
            }
            return j((byte) -1, bArrD[i4]) && ((bArrD[i4] & 8) >> 3) == iH;
        }
        if (b != 73) {
            return false;
        }
        int i5 = i3 + 1;
        if (i5 == iF) {
            return true;
        }
        if (bArrD[i5] != 68) {
            return false;
        }
        int i6 = i3 + 2;
        return i6 == iF || bArrD[i6] == 51;
    }

    public final void h(qw7 qw7Var) {
        byte[] bArrD = qw7Var.d();
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        while (iE < iF) {
            int i = iE + 1;
            byte b = bArrD[iE];
            int i2 = b & 255;
            if (this.j == 512 && j((byte) -1, (byte) i2) && (this.l || f(qw7Var, iE - 1))) {
                this.o = (b & 8) >> 3;
                this.k = (b & 1) == 0;
                if (this.l) {
                    r();
                } else {
                    p();
                }
                qw7Var.O(i);
                return;
            }
            int i3 = this.j;
            int i4 = i2 | i3;
            if (i4 == 329) {
                this.j = ViewUtils.EDGE_TO_EDGE_FLAGS;
            } else if (i4 == 511) {
                this.j = 512;
            } else if (i4 == 836) {
                this.j = 1024;
            } else if (i4 == 1075) {
                s();
                qw7Var.O(i);
                return;
            } else if (i3 != 256) {
                this.j = 256;
            }
            iE = i;
        }
        qw7Var.O(iE);
    }

    public long i() {
        return this.q;
    }

    public final boolean j(byte b, byte b2) {
        return k(((b & 255) << 8) | (b2 & 255));
    }

    public final void l() {
        this.b.p(0);
        if (this.p) {
            this.b.r(10);
        } else {
            int i = 2;
            int iH = this.b.h(2) + 1;
            if (iH != 2) {
                op5.i("AdtsReader", "Detected audio object type: " + iH + ", but assuming AAC LC.");
            } else {
                i = iH;
            }
            this.b.r(5);
            byte[] bArrA = i2.a(i, this.n, this.b.h(3));
            i2.b bVarE = i2.e(bArrA);
            k kVarE = new k.b().S(this.e).e0("audio/mp4a-latm").I(bVarE.c).H(bVarE.b).f0(bVarE.a).T(Collections.singletonList(bArrA)).V(this.d).E();
            this.q = 1024000000 / ((long) kVarE.A);
            this.f.b(kVarE);
            this.p = true;
        }
        this.b.r(4);
        int iH2 = this.b.h(13);
        int i2 = iH2 - 7;
        if (this.k) {
            i2 = iH2 - 9;
        }
        t(this.f, this.q, 0, i2);
    }

    public final void m() {
        this.g.d(this.c, 10);
        this.c.O(6);
        t(this.g, 0L, 10, this.c.B() + 10);
    }

    public final void n(qw7 qw7Var) {
        int iMin = Math.min(qw7Var.a(), this.r - this.i);
        this.t.d(qw7Var, iMin);
        int i = this.i + iMin;
        this.i = i;
        int i2 = this.r;
        if (i == i2) {
            long j = this.s;
            if (j != C.TIME_UNSET) {
                this.t.e(j, 1, i2, 0, null);
                this.s += this.u;
            }
            q();
        }
    }

    public final void o() {
        this.l = false;
        q();
    }

    public final void p() {
        this.h = 1;
        this.i = 0;
    }

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.s = j;
        }
    }

    public final void q() {
        this.h = 0;
        this.i = 0;
        this.j = 256;
    }

    public final void r() {
        this.h = 3;
        this.i = 0;
    }

    public final void s() {
        this.h = 2;
        this.i = v.length;
        this.r = 0;
        this.c.O(0);
    }

    @Override
    public void seek() {
        this.s = C.TIME_UNSET;
        o();
    }

    public final void t(fva fvaVar, long j, int i, int i2) {
        this.h = 4;
        this.i = i;
        this.t = fvaVar;
        this.u = j;
        this.r = i2;
    }

    public final boolean u(qw7 qw7Var, byte[] bArr, int i) {
        if (qw7Var.a() < i) {
            return false;
        }
        qw7Var.j(bArr, 0, i);
        return true;
    }

    public g9(boolean z, String str) {
        this.b = new pw7(new byte[7]);
        this.c = new qw7(Arrays.copyOf(v, 10));
        q();
        this.m = -1;
        this.n = -1;
        this.q = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
        this.a = z;
        this.d = str;
    }
}
