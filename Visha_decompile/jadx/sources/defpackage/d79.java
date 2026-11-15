package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class d79 extends t43.c {
    public static final BigInteger j = f79.h;
    public static final w43[] k = {new f79(s43.b)};
    public g79 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return d79.this.E(new f79(iArr), new f79(iArr2), d79.k);
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

    public d79() {
        super(j);
        this.i = new g79(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE")));
        this.c = l(new BigInteger(1, jp4.b("B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4")));
        this.d = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new g79(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new d79();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 14];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            oy6.c(((f79) i53Var.n()).g, 0, iArr, i3);
            oy6.c(((f79) i53Var.o()).g, 0, iArr, i3 + 7);
            i3 += 14;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new g79(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new f79(bigInteger);
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
        e79.k(secureRandom, iArrE);
        return new f79(iArrE);
    }
}
