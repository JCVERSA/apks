package defpackage;

import java.math.BigInteger;

public class f89 extends t43.b {
    public static final w43[] k = {new e89(s43.b)};
    public g89 j;

    public class a extends u2 {
        public final int a;
        public final long[] b;

        public a(int i, long[] jArr) {
            this.a = i;
            this.b = jArr;
        }

        private i53 b(long[] jArr, long[] jArr2) {
            return f89.this.G(new e89(jArr), new e89(jArr2), f89.k);
        }

        @Override
        public i53 a(int i) {
            long[] jArrI = ny6.i();
            long[] jArrI2 = ny6.i();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 3; i4++) {
                    long j2 = jArrI[i4];
                    long[] jArr = this.b;
                    jArrI[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrI2[i4] = jArrI2[i4] ^ (jArr[(i2 + 3) + i4] & j);
                }
                i2 += 6;
            }
            return b(jArrI, jArrI2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public f89() {
        super(131, 2, 3, 8);
        this.j = new g89(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("07A11B09A76B562144418FF3FF8C2570B8")));
        this.c = l(new BigInteger(1, jp4.b("0217C05610884B63B9C6C7291678F9D341")));
        this.d = new BigInteger(1, jp4.b("0400000000000000023123953A9464B54D"));
        this.e = BigInteger.valueOf(2L);
        this.f = 6;
    }

    @Override
    public boolean A(int i) {
        return i == 6;
    }

    public i53 G(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new g89(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new f89();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        long[] jArr = new long[i2 * 6];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            ny6.f(((e89) i53Var.n()).g, 0, jArr, i3);
            ny6.f(((e89) i53Var.o()).g, 0, jArr, i3 + 3);
            i3 += 6;
        }
        return new a(i2, jArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new g89(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new e89(bigInteger);
    }

    @Override
    public int r() {
        return 131;
    }

    @Override
    public i53 s() {
        return this.j;
    }
}
