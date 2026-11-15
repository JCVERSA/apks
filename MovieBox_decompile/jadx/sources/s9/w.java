package s9;

import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class w implements i0 {

    private final m f71954a;

    private final com.google.android.exoplayer2.util.c0 f71955b = new com.google.android.exoplayer2.util.c0(new byte[10]);

    private int f71956c = 0;

    private int f71957d;

    private l0 f71958e;

    private boolean f71959f;

    private boolean f71960g;

    private boolean f71961h;

    private int f71962i;

    private int f71963j;

    private boolean f71964k;

    private long f71965l;

    public w(m mVar) {
        this.f71954a = mVar;
    }

    private boolean c(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i10) {
        int iMin = Math.min(d0Var.a(), i10 - this.f71957d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            d0Var.Q(iMin);
        } else {
            d0Var.j(bArr, this.f71957d, iMin);
        }
        int i11 = this.f71957d + iMin;
        this.f71957d = i11;
        return i11 == i10;
    }

    private boolean d() {
        this.f71955b.p(0);
        int iH = this.f71955b.h(24);
        if (iH != 1) {
            com.google.android.exoplayer2.util.s.i("PesReader", "Unexpected start code prefix: " + iH);
            this.f71963j = -1;
            return false;
        }
        this.f71955b.r(8);
        int iH2 = this.f71955b.h(16);
        this.f71955b.r(5);
        this.f71964k = this.f71955b.g();
        this.f71955b.r(2);
        this.f71959f = this.f71955b.g();
        this.f71960g = this.f71955b.g();
        this.f71955b.r(6);
        int iH3 = this.f71955b.h(8);
        this.f71962i = iH3;
        if (iH2 == 0) {
            this.f71963j = -1;
        } else {
            int i10 = (iH2 - 3) - iH3;
            this.f71963j = i10;
            if (i10 < 0) {
                com.google.android.exoplayer2.util.s.i("PesReader", "Found negative packet payload size: " + this.f71963j);
                this.f71963j = -1;
            }
        }
        return true;
    }

    private void e() {
        this.f71955b.p(0);
        this.f71965l = C.TIME_UNSET;
        if (this.f71959f) {
            this.f71955b.r(4);
            long jH = ((long) this.f71955b.h(3)) << 30;
            this.f71955b.r(1);
            long jH2 = jH | ((long) (this.f71955b.h(15) << 15));
            this.f71955b.r(1);
            long jH3 = jH2 | ((long) this.f71955b.h(15));
            this.f71955b.r(1);
            if (!this.f71961h && this.f71960g) {
                this.f71955b.r(4);
                long jH4 = ((long) this.f71955b.h(3)) << 30;
                this.f71955b.r(1);
                long jH5 = jH4 | ((long) (this.f71955b.h(15) << 15));
                this.f71955b.r(1);
                long jH6 = jH5 | ((long) this.f71955b.h(15));
                this.f71955b.r(1);
                this.f71958e.b(jH6);
                this.f71961h = true;
            }
            this.f71965l = this.f71958e.b(jH3);
        }
    }

    private void f(int i10) {
        this.f71956c = i10;
        this.f71957d = 0;
    }

    @Override
    public void a(l0 l0Var, i9.n nVar, i0.d dVar) {
        this.f71958e = l0Var;
        this.f71954a.d(nVar, dVar);
    }

    @Override
    public final void b(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        com.google.android.exoplayer2.util.a.i(this.f71958e);
        if ((i10 & 1) != 0) {
            int i11 = this.f71956c;
            if (i11 != 0 && i11 != 1) {
                if (i11 == 2) {
                    com.google.android.exoplayer2.util.s.i("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f71963j != -1) {
                        com.google.android.exoplayer2.util.s.i("PesReader", "Unexpected start indicator: expected " + this.f71963j + " more bytes");
                    }
                    this.f71954a.packetFinished();
                }
            }
            f(1);
        }
        while (d0Var.a() > 0) {
            int i12 = this.f71956c;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        if (c(d0Var, this.f71955b.f26788a, Math.min(10, this.f71962i)) && c(d0Var, null, this.f71962i)) {
                            e();
                            i10 |= this.f71964k ? 4 : 0;
                            this.f71954a.c(this.f71965l, i10);
                            f(3);
                        }
                    } else {
                        if (i12 != 3) {
                            throw new IllegalStateException();
                        }
                        int iA = d0Var.a();
                        int i13 = this.f71963j;
                        int i14 = i13 != -1 ? iA - i13 : 0;
                        if (i14 > 0) {
                            iA -= i14;
                            d0Var.O(d0Var.e() + iA);
                        }
                        this.f71954a.b(d0Var);
                        int i15 = this.f71963j;
                        if (i15 != -1) {
                            int i16 = i15 - iA;
                            this.f71963j = i16;
                            if (i16 == 0) {
                                this.f71954a.packetFinished();
                                f(1);
                            }
                        }
                    }
                } else if (c(d0Var, this.f71955b.f26788a, 9)) {
                    f(d() ? 2 : 0);
                }
            } else {
                d0Var.Q(d0Var.a());
            }
        }
    }

    @Override
    public final void seek() {
        this.f71956c = 0;
        this.f71957d = 0;
        this.f71961h = false;
        this.f71954a.seek();
    }
}
