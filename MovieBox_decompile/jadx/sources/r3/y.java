package r3;

import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class y implements l0 {

    private final m f70804a;

    private final androidx.media3.common.util.i0 f70805b = new androidx.media3.common.util.i0(new byte[10]);

    private int f70806c = 0;

    private int f70807d;

    private p0 f70808e;

    private boolean f70809f;

    private boolean f70810g;

    private boolean f70811h;

    private int f70812i;

    private int f70813j;

    private boolean f70814k;

    private long f70815l;

    public y(m mVar) {
        this.f70804a = mVar;
    }

    private boolean d(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i10) {
        int iMin = Math.min(j0Var.a(), i10 - this.f70807d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            j0Var.X(iMin);
        } else {
            j0Var.l(bArr, this.f70807d, iMin);
        }
        int i11 = this.f70807d + iMin;
        this.f70807d = i11;
        return i11 == i10;
    }

    private boolean e() {
        this.f70805b.p(0);
        int iH = this.f70805b.h(24);
        if (iH != 1) {
            androidx.media3.common.util.u.h("PesReader", "Unexpected start code prefix: " + iH);
            this.f70813j = -1;
            return false;
        }
        this.f70805b.r(8);
        int iH2 = this.f70805b.h(16);
        this.f70805b.r(5);
        this.f70814k = this.f70805b.g();
        this.f70805b.r(2);
        this.f70809f = this.f70805b.g();
        this.f70810g = this.f70805b.g();
        this.f70805b.r(6);
        int iH3 = this.f70805b.h(8);
        this.f70812i = iH3;
        if (iH2 == 0) {
            this.f70813j = -1;
        } else {
            int i10 = (iH2 - 3) - iH3;
            this.f70813j = i10;
            if (i10 < 0) {
                androidx.media3.common.util.u.h("PesReader", "Found negative packet payload size: " + this.f70813j);
                this.f70813j = -1;
            }
        }
        return true;
    }

    private void f() {
        this.f70805b.p(0);
        this.f70815l = C.TIME_UNSET;
        if (this.f70809f) {
            this.f70805b.r(4);
            long jH = ((long) this.f70805b.h(3)) << 30;
            this.f70805b.r(1);
            long jH2 = jH | ((long) (this.f70805b.h(15) << 15));
            this.f70805b.r(1);
            long jH3 = jH2 | ((long) this.f70805b.h(15));
            this.f70805b.r(1);
            if (!this.f70811h && this.f70810g) {
                this.f70805b.r(4);
                long jH4 = ((long) this.f70805b.h(3)) << 30;
                this.f70805b.r(1);
                long jH5 = jH4 | ((long) (this.f70805b.h(15) << 15));
                this.f70805b.r(1);
                long jH6 = jH5 | ((long) this.f70805b.h(15));
                this.f70805b.r(1);
                this.f70808e.b(jH6);
                this.f70811h = true;
            }
            this.f70815l = this.f70808e.b(jH3);
        }
    }

    private void g(int i10) {
        this.f70806c = i10;
        this.f70807d = 0;
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var, int i10) {
        androidx.media3.common.util.a.i(this.f70808e);
        if ((i10 & 1) != 0) {
            int i11 = this.f70806c;
            if (i11 != 0 && i11 != 1) {
                if (i11 == 2) {
                    androidx.media3.common.util.u.h("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f70813j != -1) {
                        androidx.media3.common.util.u.h("PesReader", "Unexpected start indicator: expected " + this.f70813j + " more bytes");
                    }
                    this.f70804a.d(j0Var.g() == 0);
                }
            }
            g(1);
        }
        while (j0Var.a() > 0) {
            int i12 = this.f70806c;
            if (i12 == 0) {
                j0Var.X(j0Var.a());
            } else if (i12 != 1) {
                if (i12 == 2) {
                    if (d(j0Var, this.f70805b.f10076a, Math.min(10, this.f70812i)) && d(j0Var, null, this.f70812i)) {
                        f();
                        i10 |= this.f70814k ? 4 : 0;
                        this.f70804a.c(this.f70815l, i10);
                        g(3);
                    }
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException();
                    }
                    int iA = j0Var.a();
                    int i13 = this.f70813j;
                    int i14 = i13 == -1 ? 0 : iA - i13;
                    if (i14 > 0) {
                        iA -= i14;
                        j0Var.V(j0Var.f() + iA);
                    }
                    this.f70804a.a(j0Var);
                    int i15 = this.f70813j;
                    if (i15 != -1) {
                        int i16 = i15 - iA;
                        this.f70813j = i16;
                        if (i16 == 0) {
                            this.f70804a.d(false);
                            g(1);
                        }
                    }
                }
            } else if (d(j0Var, this.f70805b.f10076a, 9)) {
                g(e() ? 2 : 0);
            }
        }
    }

    @Override
    public void b(p0 p0Var, k2.t tVar, l0.d dVar) {
        this.f70808e = p0Var;
        this.f70804a.e(tVar, dVar);
    }

    public boolean c(boolean z10) {
        return this.f70806c == 3 && this.f70813j == -1 && !(z10 && (this.f70804a instanceof n)) && (!z10 || e());
    }

    @Override
    public void seek() {
        this.f70806c = 0;
        this.f70807d = 0;
        this.f70811h = false;
        this.f70804a.seek();
    }
}
