package defpackage;

import java.math.BigInteger;

public class j99 extends t43.b {
    public static final w43[] k = {new i99(s43.b)};
    public k99 j;

    public class a extends u2 {
        public final int a;
        public final long[] b;

        public a(int i, long[] jArr) {
            this.a = i;
            this.b = jArr;
        }

        private i53 b(long[] jArr, long[] jArr2) {
            return j99.this.G(new i99(jArr), new i99(jArr2), j99.k);
        }

        @Override
        public i53 a(int i) {
            long[] jArrC = qy6.c();
            long[] jArrC2 = qy6.c();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 5; i4++) {
                    long j2 = jArrC[i4];
                    long[] jArr = this.b;
                    jArrC[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrC2[i4] = jArrC2[i4] ^ (jArr[(i2 + 5) + i4] & j);
                }
                i2 += 10;
            }
            return b(jArrC, jArrC2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public j99() {
        super(283, 5, 7, 12);
        this.j = new k99(this, null, null);
        this.b = l(BigInteger.valueOf(0L));
        this.c = l(BigInteger.valueOf(1L));
        this.d = new BigInteger(1, jp4.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"));
        this.e = BigInteger.valueOf(4L);
        this.f = 6;
    }

    @Override
    public boolean A(int i) {
        return i == 6;
    }

    public i53 G(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new k99(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new j99();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        long[] jArr = new long[i2 * 10];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            qy6.a(((i99) i53Var.n()).g, 0, jArr, i3);
            qy6.a(((i99) i53Var.o()).g, 0, jArr, i3 + 5);
            i3 += 10;
        }
        return new a(i2, jArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new k99(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new i99(bigInteger);
    }

    @Override
    public int r() {
        return 283;
    }

    @Override
    public i53 s() {
        return this.j;
    }
}
