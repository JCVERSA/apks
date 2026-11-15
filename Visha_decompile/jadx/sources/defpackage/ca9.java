package defpackage;

import androidx.core.view.InputDeviceCompat;

public final class ca9 implements nab {
    public final ba9 a;
    public final qw7 b = new qw7(32);
    public int c;
    public int d;
    public boolean e;
    public boolean f;

    public ca9(ba9 ba9Var) {
        this.a = ba9Var;
    }

    @Override
    public void a(qw7 qw7Var, int i) {
        int iE;
        boolean z = (i & 1) != 0;
        if (z) {
            iE = qw7Var.e() + qw7Var.C();
        } else {
            iE = -1;
        }
        if (this.f) {
            if (!z) {
                return;
            }
            this.f = false;
            qw7Var.O(iE);
            this.d = 0;
        }
        while (qw7Var.a() > 0) {
            int i2 = this.d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int iC = qw7Var.C();
                    qw7Var.O(qw7Var.e() - 1);
                    if (iC == 255) {
                        this.f = true;
                        return;
                    }
                }
                int iMin = Math.min(qw7Var.a(), 3 - this.d);
                qw7Var.j(this.b.d(), this.d, iMin);
                int i3 = this.d + iMin;
                this.d = i3;
                if (i3 == 3) {
                    this.b.O(0);
                    this.b.N(3);
                    this.b.P(1);
                    int iC2 = this.b.C();
                    int iC3 = this.b.C();
                    this.e = (iC2 & 128) != 0;
                    this.c = (((iC2 & 15) << 8) | iC3) + 3;
                    int iB = this.b.b();
                    int i4 = this.c;
                    if (iB < i4) {
                        this.b.c(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i4, this.b.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(qw7Var.a(), this.c - this.d);
                qw7Var.j(this.b.d(), this.d, iMin2);
                int i5 = this.d + iMin2;
                this.d = i5;
                int i6 = this.c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.e) {
                        this.b.N(i6);
                    } else {
                        if (blb.r(this.b.d(), 0, this.c, -1) != 0) {
                            this.f = true;
                            return;
                        }
                        this.b.N(this.c - 4);
                    }
                    this.b.O(0);
                    this.a.a(this.b);
                    this.d = 0;
                }
            }
        }
    }

    @Override
    public void b(poa poaVar, qk3 qk3Var, nab.d dVar) {
        this.a.b(poaVar, qk3Var, dVar);
        this.f = true;
    }

    @Override
    public void seek() {
        this.f = true;
    }
}
