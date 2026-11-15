package defpackage;

import androidx.media3.common.C;

public final class x08 implements nab {
    public final m83 a;
    public final pw7 b = new pw7(new byte[10]);
    public int c = 0;
    public int d;
    public poa e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public boolean k;
    public long l;

    public x08(m83 m83Var) {
        this.a = m83Var;
    }

    @Override
    public final void a(qw7 qw7Var, int i) {
        zi.i(this.e);
        if ((i & 1) != 0) {
            int i2 = this.c;
            if (i2 != 0 && i2 != 1) {
                if (i2 == 2) {
                    op5.i("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i2 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.j != -1) {
                        op5.i("PesReader", "Unexpected start indicator: expected " + this.j + " more bytes");
                    }
                    this.a.b();
                }
            }
            f(1);
        }
        while (qw7Var.a() > 0) {
            int i3 = this.c;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 == 2) {
                        if (c(qw7Var, this.b.a, Math.min(10, this.i)) && c(qw7Var, null, this.i)) {
                            e();
                            i |= this.k ? 4 : 0;
                            this.a.packetStarted(this.l, i);
                            f(3);
                        }
                    } else {
                        if (i3 != 3) {
                            throw new IllegalStateException();
                        }
                        int iA = qw7Var.a();
                        int i4 = this.j;
                        int i5 = i4 != -1 ? iA - i4 : 0;
                        if (i5 > 0) {
                            iA -= i5;
                            qw7Var.N(qw7Var.e() + iA);
                        }
                        this.a.a(qw7Var);
                        int i6 = this.j;
                        if (i6 != -1) {
                            int i7 = i6 - iA;
                            this.j = i7;
                            if (i7 == 0) {
                                this.a.b();
                                f(1);
                            }
                        }
                    }
                } else if (c(qw7Var, this.b.a, 9)) {
                    f(d() ? 2 : 0);
                }
            } else {
                qw7Var.P(qw7Var.a());
            }
        }
    }

    @Override
    public void b(poa poaVar, qk3 qk3Var, nab.d dVar) {
        this.e = poaVar;
        this.a.c(qk3Var, dVar);
    }

    public final boolean c(qw7 qw7Var, byte[] bArr, int i) {
        int iMin = Math.min(qw7Var.a(), i - this.d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            qw7Var.P(iMin);
        } else {
            qw7Var.j(bArr, this.d, iMin);
        }
        int i2 = this.d + iMin;
        this.d = i2;
        return i2 == i;
    }

    public final boolean d() {
        this.b.p(0);
        int iH = this.b.h(24);
        if (iH != 1) {
            op5.i("PesReader", "Unexpected start code prefix: " + iH);
            this.j = -1;
            return false;
        }
        this.b.r(8);
        int iH2 = this.b.h(16);
        this.b.r(5);
        this.k = this.b.g();
        this.b.r(2);
        this.f = this.b.g();
        this.g = this.b.g();
        this.b.r(6);
        int iH3 = this.b.h(8);
        this.i = iH3;
        if (iH2 == 0) {
            this.j = -1;
        } else {
            int i = (iH2 - 3) - iH3;
            this.j = i;
            if (i < 0) {
                op5.i("PesReader", "Found negative packet payload size: " + this.j);
                this.j = -1;
            }
        }
        return true;
    }

    public final void e() {
        this.b.p(0);
        this.l = C.TIME_UNSET;
        if (this.f) {
            this.b.r(4);
            long jH = ((long) this.b.h(3)) << 30;
            this.b.r(1);
            long jH2 = jH | ((long) (this.b.h(15) << 15));
            this.b.r(1);
            long jH3 = jH2 | ((long) this.b.h(15));
            this.b.r(1);
            if (!this.h && this.g) {
                this.b.r(4);
                long jH4 = ((long) this.b.h(3)) << 30;
                this.b.r(1);
                long jH5 = jH4 | ((long) (this.b.h(15) << 15));
                this.b.r(1);
                long jH6 = jH5 | ((long) this.b.h(15));
                this.b.r(1);
                this.e.b(jH6);
                this.h = true;
            }
            this.l = this.e.b(jH3);
        }
    }

    public final void f(int i) {
        this.c = i;
        this.d = 0;
    }

    @Override
    public final void seek() {
        this.c = 0;
        this.d = 0;
        this.h = false;
        this.a.seek();
    }
}
