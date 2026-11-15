package defpackage;

import java.math.BigInteger;

public class v89 extends t43.b {
    public static final w43[] k = {new s89(s43.b)};
    public w89 j;

    public class a extends u2 {
        public final int a;
        public final long[] b;

        public a(int i, long[] jArr) {
            this.a = i;
            this.b = jArr;
        }

        private i53 b(long[] jArr, long[] jArr2) {
            return v89.this.G(new s89(jArr), new s89(jArr2), v89.k);
        }

        @Override
        public i53 a(int i) {
            long[] jArrJ = py6.j();
            long[] jArrJ2 = py6.j();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 4; i4++) {
                    long j2 = jArrJ[i4];
                    long[] jArr = this.b;
                    jArrJ[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrJ2[i4] = jArrJ2[i4] ^ (jArr[(i2 + 4) + i4] & j);
                }
                i2 += 8;
            }
            return b(jArrJ, jArrJ2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public v89() {
        super(193, 15, 0, 0);
        this.j = new w89(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B")));
        this.c = l(new BigInteger(1, jp4.b("00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE")));
        this.d = new BigInteger(1, jp4.b("010000000000000000000000015AAB561B005413CCD4EE99D5"));
        this.e = BigInteger.valueOf(2L);
        this.f = 6;
    }

    @Override
    public boolean A(int i) {
        return i == 6;
    }

    public i53 G(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new w89(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new v89();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        long[] jArr = new long[i2 * 8];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            py6.g(((s89) i53Var.n()).g, 0, jArr, i3);
            py6.g(((s89) i53Var.o()).g, 0, jArr, i3 + 4);
            i3 += 8;
        }
        return new a(i2, jArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new w89(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new s89(bigInteger);
    }

    @Override
    public int r() {
        return 193;
    }

    @Override
    public i53 s() {
        return this.j;
    }
}
