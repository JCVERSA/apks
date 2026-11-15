package defpackage;

import com.transsion.apiinvoke.invoke.RspCode;
import java.math.BigInteger;

public class p99 extends t43.b {
    public static final w43[] k = {new o99(s43.b)};
    public q99 j;

    public class a extends u2 {
        public final int a;
        public final long[] b;

        public a(int i, long[] jArr) {
            this.a = i;
            this.b = jArr;
        }

        private i53 b(long[] jArr, long[] jArr2) {
            return p99.this.G(new o99(jArr), new o99(jArr2), p99.k);
        }

        @Override
        public i53 a(int i) {
            long[] jArrC = sy6.c();
            long[] jArrC2 = sy6.c();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                long j = ((i3 ^ i) - 1) >> 31;
                for (int i4 = 0; i4 < 7; i4++) {
                    long j2 = jArrC[i4];
                    long[] jArr = this.b;
                    jArrC[i4] = j2 ^ (jArr[i2 + i4] & j);
                    jArrC2[i4] = jArrC2[i4] ^ (jArr[(i2 + 7) + i4] & j);
                }
                i2 += 14;
            }
            return b(jArrC, jArrC2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public p99() {
        super(RspCode.ERROR_CHANNEL_NOT_REGISTER, 87, 0, 0);
        this.j = new q99(this, null, null);
        this.b = l(BigInteger.valueOf(0L));
        this.c = l(BigInteger.valueOf(1L));
        this.d = new BigInteger(1, jp4.b("7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"));
        this.e = BigInteger.valueOf(4L);
        this.f = 6;
    }

    @Override
    public boolean A(int i) {
        return i == 6;
    }

    public i53 G(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new q99(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new p99();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        long[] jArr = new long[i2 * 14];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            sy6.a(((o99) i53Var.n()).g, 0, jArr, i3);
            sy6.a(((o99) i53Var.o()).g, 0, jArr, i3 + 7);
            i3 += 14;
        }
        return new a(i2, jArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new q99(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new o99(bigInteger);
    }

    @Override
    public int r() {
        return RspCode.ERROR_CHANNEL_NOT_REGISTER;
    }

    @Override
    public i53 s() {
        return this.j;
    }
}
