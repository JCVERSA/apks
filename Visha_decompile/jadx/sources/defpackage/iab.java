package defpackage;

import androidx.media3.common.C;

public final class iab {
    public final int a;
    public boolean d;
    public boolean e;
    public boolean f;
    public final poa b = new poa(0);
    public long g = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public long i = C.TIME_UNSET;
    public final qw7 c = new qw7();

    public iab(int i) {
        this.a = i;
    }

    public final int a(pk3 pk3Var) {
        this.c.L(blb.f);
        this.d = true;
        pk3Var.resetPeekPosition();
        return 0;
    }

    public long b() {
        return this.i;
    }

    public poa c() {
        return this.b;
    }

    public boolean d() {
        return this.d;
    }

    public int e(pk3 pk3Var, id8 id8Var, int i) {
        if (i <= 0) {
            return a(pk3Var);
        }
        if (!this.f) {
            return h(pk3Var, id8Var, i);
        }
        if (this.h == C.TIME_UNSET) {
            return a(pk3Var);
        }
        if (!this.e) {
            return f(pk3Var, id8Var, i);
        }
        long j = this.g;
        if (j == C.TIME_UNSET) {
            return a(pk3Var);
        }
        long jB = this.b.b(this.h) - this.b.b(j);
        this.i = jB;
        if (jB < 0) {
            op5.i("TsDurationReader", "Invalid duration: " + this.i + ". Using TIME_UNSET instead.");
            this.i = C.TIME_UNSET;
        }
        return a(pk3Var);
    }

    public final int f(pk3 pk3Var, id8 id8Var, int i) {
        int iMin = (int) Math.min(this.a, pk3Var.getLength());
        long j = 0;
        if (pk3Var.getPosition() != j) {
            id8Var.a = j;
            return 1;
        }
        this.c.K(iMin);
        pk3Var.resetPeekPosition();
        pk3Var.peekFully(this.c.d(), 0, iMin);
        this.g = g(this.c, i);
        this.e = true;
        return 0;
    }

    public final long g(qw7 qw7Var, int i) {
        int iF = qw7Var.f();
        for (int iE = qw7Var.e(); iE < iF; iE++) {
            if (qw7Var.d()[iE] == 71) {
                long jC = oab.c(qw7Var, iE, i);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public final int h(pk3 pk3Var, id8 id8Var, int i) {
        long length = pk3Var.getLength();
        int iMin = (int) Math.min(this.a, length);
        long j = length - ((long) iMin);
        if (pk3Var.getPosition() != j) {
            id8Var.a = j;
            return 1;
        }
        this.c.K(iMin);
        pk3Var.resetPeekPosition();
        pk3Var.peekFully(this.c.d(), 0, iMin);
        this.h = i(this.c, i);
        this.f = true;
        return 0;
    }

    public final long i(qw7 qw7Var, int i) {
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        for (int i2 = iF - 188; i2 >= iE; i2--) {
            if (oab.b(qw7Var.d(), iE, iF, i2)) {
                long jC = oab.c(qw7Var, i2, i);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }
}
