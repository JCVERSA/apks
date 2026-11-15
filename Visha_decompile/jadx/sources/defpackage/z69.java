package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class z69 extends t43.c {
    public static final BigInteger j = b79.h;
    public static final w43[] k = {new b79(s43.b)};
    public c79 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return z69.this.E(new b79(iArr), new b79(iArr2), z69.k);
        }

        @Override
        public i53 a(int i) {
            int[] iArrE = oy6.e();
            int[] iArrE2 = oy6.e();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 7; i5++) {
                    int i6 = iArrE[i5];
                    int[] iArr = this.b;
                    iArrE[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrE2[i5] = iArrE2[i5] ^ (iArr[(i2 + 7) + i5] & i4);
                }
                i2 += 14;
            }
            return b(iArrE, iArrE2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public z69() {
        super(j);
        this.i = new c79(this, null, null);
        this.b = l(s43.a);
        this.c = l(BigInteger.valueOf(5L));
        this.d = new BigInteger(1, jp4.b("010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new c79(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new z69();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 14];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            oy6.c(((b79) i53Var.n()).g, 0, iArr, i3);
            oy6.c(((b79) i53Var.o()).g, 0, iArr, i3 + 7);
            i3 += 14;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new c79(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new b79(bigInteger);
    }

    @Override
    public int r() {
        return j.bitLength();
    }

    @Override
    public i53 s() {
        return this.i;
    }

    @Override
    public w43 z(SecureRandom secureRandom) {
        int[] iArrE = oy6.e();
        a79.j(secureRandom, iArrE);
        return new b79(iArrE);
    }
}
