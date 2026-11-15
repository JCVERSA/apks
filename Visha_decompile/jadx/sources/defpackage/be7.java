package defpackage;

import java.util.Arrays;

public final class be7 {
    public final ce7 a = new ce7();
    public final qw7 b = new qw7(new byte[65025], 0);
    public int c = -1;
    public int d;
    public boolean e;

    public final int a(int i) {
        int i2;
        int i3 = 0;
        this.d = 0;
        do {
            int i4 = this.d;
            int i5 = i + i4;
            ce7 ce7Var = this.a;
            if (i5 >= ce7Var.g) {
                break;
            }
            int[] iArr = ce7Var.j;
            this.d = i4 + 1;
            i2 = iArr[i4 + i];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    public ce7 b() {
        return this.a;
    }

    public qw7 c() {
        return this.b;
    }

    public boolean d(pk3 pk3Var) {
        int i;
        zi.g(pk3Var != null);
        if (this.e) {
            this.e = false;
            this.b.K(0);
        }
        while (!this.e) {
            if (this.c < 0) {
                if (!this.a.c(pk3Var) || !this.a.a(pk3Var, true)) {
                    return false;
                }
                ce7 ce7Var = this.a;
                int iA = ce7Var.h;
                if ((ce7Var.b & 1) == 1 && this.b.f() == 0) {
                    iA += a(0);
                    i = this.d;
                } else {
                    i = 0;
                }
                if (!rk3.e(pk3Var, iA)) {
                    return false;
                }
                this.c = i;
            }
            int iA2 = a(this.c);
            int i2 = this.c + this.d;
            if (iA2 > 0) {
                qw7 qw7Var = this.b;
                qw7Var.c(qw7Var.f() + iA2);
                if (!rk3.d(pk3Var, this.b.d(), this.b.f(), iA2)) {
                    return false;
                }
                qw7 qw7Var2 = this.b;
                qw7Var2.N(qw7Var2.f() + iA2);
                this.e = this.a.j[i2 + (-1)] != 255;
            }
            if (i2 == this.a.g) {
                i2 = -1;
            }
            this.c = i2;
        }
        return true;
    }

    public void e() {
        this.a.b();
        this.b.K(0);
        this.c = -1;
        this.e = false;
    }

    public void f() {
        if (this.b.d().length == 65025) {
            return;
        }
        qw7 qw7Var = this.b;
        qw7Var.M(Arrays.copyOf(qw7Var.d(), Math.max(65025, this.b.f())), this.b.f());
    }
}
