package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class h79 extends t43.c {
    public static final BigInteger j = j79.h;
    public static final w43[] k = {new j79(s43.b)};
    public k79 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return h79.this.E(new j79(iArr), new j79(iArr2), h79.k);
        }

        @Override
        public i53 a(int i) {
            int[] iArrI = py6.i();
            int[] iArrI2 = py6.i();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 8; i5++) {
                    int i6 = iArrI[i5];
                    int[] iArr = this.b;
                    iArrI[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrI2[i5] = iArrI2[i5] ^ (iArr[(i2 + 8) + i5] & i4);
                }
                i2 += 16;
            }
            return b(iArrI, iArrI2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public h79() {
        super(j);
        this.i = new k79(this, null, null);
        this.b = l(s43.a);
        this.c = l(BigInteger.valueOf(7L));
        this.d = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new k79(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new h79();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 16];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            py6.f(((j79) i53Var.n()).g, 0, iArr, i3);
            py6.f(((j79) i53Var.o()).g, 0, iArr, i3 + 8);
            i3 += 16;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new k79(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new j79(bigInteger);
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
        int[] iArrI = py6.i();
        i79.k(secureRandom, iArrI);
        return new j79(iArrI);
    }
}
