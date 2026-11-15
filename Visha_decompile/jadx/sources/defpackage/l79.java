package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class l79 extends t43.c {
    public static final BigInteger j = n79.h;
    public static final w43[] k = {new n79(s43.b)};
    public o79 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return l79.this.E(new n79(iArr), new n79(iArr2), l79.k);
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

    public l79() {
        super(j);
        this.i = new o79(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC")));
        this.c = l(new BigInteger(1, jp4.b("5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B")));
        this.d = new BigInteger(1, jp4.b("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new o79(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new l79();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 16];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            py6.f(((n79) i53Var.n()).g, 0, iArr, i3);
            py6.f(((n79) i53Var.o()).g, 0, iArr, i3 + 8);
            i3 += 16;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new o79(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new n79(bigInteger);
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
        m79.l(secureRandom, iArrI);
        return new n79(iArrI);
    }
}
