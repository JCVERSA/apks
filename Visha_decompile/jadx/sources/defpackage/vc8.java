package defpackage;

public class vc8 {
    public x94 a;
    public tc8 b;
    public tc8[] c;
    public tc8[] d;

    public vc8(x94 x94Var, tc8 tc8Var) {
        this.a = x94Var;
        this.b = tc8Var;
        b();
        a();
    }

    public static void d(tc8[] tc8VarArr, int i, int i2) {
        tc8 tc8Var = tc8VarArr[i];
        tc8VarArr[i] = tc8VarArr[i2];
        tc8VarArr[i2] = tc8Var;
    }

    public final void a() {
        int iF;
        int iG = this.b.g();
        tc8[] tc8VarArr = new tc8[iG];
        int i = iG - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            tc8VarArr[i2] = new tc8(this.c[i2]);
        }
        this.d = new tc8[iG];
        while (i >= 0) {
            this.d[i] = new tc8(this.a, i);
            i--;
        }
        for (int i3 = 0; i3 < iG; i3++) {
            if (tc8VarArr[i3].f(i3) == 0) {
                int i4 = i3 + 1;
                boolean z = false;
                while (i4 < iG) {
                    if (tc8VarArr[i4].f(i3) != 0) {
                        d(tc8VarArr, i3, i4);
                        d(this.d, i3, i4);
                        i4 = iG;
                        z = true;
                    }
                    i4++;
                }
                if (!z) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int iF2 = this.a.f(tc8VarArr[i3].f(i3));
            tc8VarArr[i3].m(iF2);
            this.d[i3].m(iF2);
            for (int i5 = 0; i5 < iG; i5++) {
                if (i5 != i3 && (iF = tc8VarArr[i5].f(i3)) != 0) {
                    tc8 tc8VarN = tc8VarArr[i3].n(iF);
                    tc8 tc8VarN2 = this.d[i3].n(iF);
                    tc8VarArr[i5].b(tc8VarN);
                    this.d[i5].b(tc8VarN2);
                }
            }
        }
    }

    public final void b() {
        int i;
        int iG = this.b.g();
        this.c = new tc8[iG];
        int i2 = 0;
        while (true) {
            i = iG >> 1;
            if (i2 >= i) {
                break;
            }
            int i3 = i2 << 1;
            int[] iArr = new int[i3 + 1];
            iArr[i3] = 1;
            this.c[i2] = new tc8(this.a, iArr);
            i2++;
        }
        while (i < iG) {
            int i4 = i << 1;
            int[] iArr2 = new int[i4 + 1];
            iArr2[i4] = 1;
            this.c[i] = new tc8(this.a, iArr2).k(this.b);
            i++;
        }
    }

    public tc8[] c() {
        return this.d;
    }
}
