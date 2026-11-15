package defpackage;

import java.math.BigInteger;

public class v99 extends t43.b {
    public static final w43[] k = {new u99(s43.b)};
    public w99 j;

    public class a extends u2 {
        public final int a;
        public final long[] b;

        public a(int i, long[] jArr) {
            this.a = i;
            this.b = jArr;
        }

        private i53 b(long[] jArr, long[] jArr2) {
            return v99.this.G(new u99(jArr), new u99(jArr2), v99.k);
        }

        @Override
        public i53 a(int i) {
            long[] jArrC = uy6.c();
            long[] jArrC2 = uy6.c();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 9; i4++) {
                    long j2 = jArrC[i4];
                    long[] jArr = this.b;
                    jArrC[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrC2[i4] = jArrC2[i4] ^ (jArr[(i2 + 9) + i4] & j);
                }
                i2 += 18;
            }
            return b(jArrC, jArrC2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public v99() {
        super(571, 2, 5, 10);
        this.j = new w99(this, null, null);
        this.b = l(BigInteger.valueOf(0L));
        this.c = l(BigInteger.valueOf(1L));
        this.d = new BigInteger(1, jp4.b("020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"));
        this.e = BigInteger.valueOf(4L);
        this.f = 6;
    }

    @Override
    public boolean A(int i) {
        return i == 6;
    }

    public i53 G(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new w99(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new v99();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        long[] jArr = new long[i2 * 18];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            uy6.a(((u99) i53Var.n()).g, 0, jArr, i3);
            uy6.a(((u99) i53Var.o()).g, 0, jArr, i3 + 9);
            i3 += 18;
        }
        return new a(i2, jArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new w99(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new u99(bigInteger);
    }

    @Override
    public int r() {
        return 571;
    }

    @Override
    public i53 s() {
        return this.j;
    }
}
