package defpackage;

import androidx.media3.common.C;

public final class ck8 {
    public boolean c;
    public boolean d;
    public boolean e;
    public final poa a = new poa(0);
    public long f = C.TIME_UNSET;
    public long g = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public final qw7 b = new qw7();

    public static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    public static long l(qw7 qw7Var) {
        int iE = qw7Var.e();
        if (qw7Var.a() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        qw7Var.j(bArr, 0, 9);
        qw7Var.O(iE);
        return !a(bArr) ? C.TIME_UNSET : m(bArr);
    }

    public static long m(byte[] bArr) {
        byte b = bArr[0];
        long j = (((((long) b) & 56) >> 3) << 30) | ((((long) b) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
        byte b2 = bArr[2];
        return j | (((((long) b2) & 248) >> 3) << 15) | ((((long) b2) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public final int b(pk3 pk3Var) {
        this.b.L(blb.f);
        this.c = true;
        pk3Var.resetPeekPosition();
        return 0;
    }

    public long c() {
        return this.h;
    }

    public poa d() {
        return this.a;
    }

    public boolean e() {
        return this.c;
    }

    public final int f(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
    }

    public int g(pk3 pk3Var, id8 id8Var) {
        if (!this.e) {
            return j(pk3Var, id8Var);
        }
        if (this.g == C.TIME_UNSET) {
            return b(pk3Var);
        }
        if (!this.d) {
            return h(pk3Var, id8Var);
        }
        long j = this.f;
        if (j == C.TIME_UNSET) {
            return b(pk3Var);
        }
        long jB = this.a.b(this.g) - this.a.b(j);
        this.h = jB;
        if (jB < 0) {
            op5.i("PsDurationReader", "Invalid duration: " + this.h + ". Using TIME_UNSET instead.");
            this.h = C.TIME_UNSET;
        }
        return b(pk3Var);
    }

    public final int h(pk3 pk3Var, id8 id8Var) {
        int iMin = (int) Math.min(20000L, pk3Var.getLength());
        long j = 0;
        if (pk3Var.getPosition() != j) {
            id8Var.a = j;
            return 1;
        }
        this.b.K(iMin);
        pk3Var.resetPeekPosition();
        pk3Var.peekFully(this.b.d(), 0, iMin);
        this.f = i(this.b);
        this.d = true;
        return 0;
    }

    public final long i(qw7 qw7Var) {
        int iF = qw7Var.f();
        for (int iE = qw7Var.e(); iE < iF - 3; iE++) {
            if (f(qw7Var.d(), iE) == 442) {
                qw7Var.O(iE + 4);
                long jL = l(qw7Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public final int j(pk3 pk3Var, id8 id8Var) {
        long length = pk3Var.getLength();
        int iMin = (int) Math.min(20000L, length);
        long j = length - ((long) iMin);
        if (pk3Var.getPosition() != j) {
            id8Var.a = j;
            return 1;
        }
        this.b.K(iMin);
        pk3Var.resetPeekPosition();
        pk3Var.peekFully(this.b.d(), 0, iMin);
        this.g = k(this.b);
        this.e = true;
        return 0;
    }

    public final long k(qw7 qw7Var) {
        int iE = qw7Var.e();
        for (int iF = qw7Var.f() - 4; iF >= iE; iF--) {
            if (f(qw7Var.d(), iF) == 442) {
                qw7Var.O(iF + 4);
                long jL = l(qw7Var);
                if (jL != C.TIME_UNSET) {
                    return jL;
                }
            }
        }
        return C.TIME_UNSET;
    }
}
