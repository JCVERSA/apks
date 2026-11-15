package defpackage;

import java.math.BigInteger;

public class b89 extends t43.b {
    public static final w43[] k = {new y79(s43.b)};
    public c89 j;

    public class a extends u2 {
        public final int a;
        public final long[] b;

        public a(int i, long[] jArr) {
            this.a = i;
            this.b = jArr;
        }

        private i53 b(long[] jArr, long[] jArr2) {
            return b89.this.G(new y79(jArr), new y79(jArr2), b89.k);
        }

        @Override
        public i53 a(int i) {
            long[] jArrG = ly6.g();
            long[] jArrG2 = ly6.g();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 2; i4++) {
                    long j2 = jArrG[i4];
                    long[] jArr = this.b;
                    jArrG[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrG2[i4] = jArrG2[i4] ^ (jArr[(i2 + 2) + i4] & j);
                }
                i2 += 4;
            }
            return b(jArrG, jArrG2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public b89() {
        super(113, 9, 0, 0);
        this.j = new c89(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("00689918DBEC7E5A0DD6DFC0AA55C7")));
        this.c = l(new BigInteger(1, jp4.b("0095E9A9EC9B297BD4BF36E059184F")));
        this.d = new BigInteger(1, jp4.b("010000000000000108789B2496AF93"));
        this.e = BigInteger.valueOf(2L);
        this.f = 6;
    }

    @Override
    public boolean A(int i) {
        return i == 6;
    }

    public i53 G(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new c89(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new b89();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        long[] jArr = new long[i2 * 4];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            ly6.d(((y79) i53Var.n()).g, 0, jArr, i3);
            ly6.d(((y79) i53Var.o()).g, 0, jArr, i3 + 2);
            i3 += 4;
        }
        return new a(i2, jArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new c89(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new y79(bigInteger);
    }

    @Override
    public int r() {
        return 113;
    }

    @Override
    public i53 s() {
        return this.j;
    }
}
