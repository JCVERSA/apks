package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class p79 extends t43.c {
    public static final BigInteger j = r79.h;
    public static final w43[] k = {new r79(s43.b)};
    public s79 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return p79.this.E(new r79(iArr), new r79(iArr2), p79.k);
        }

        @Override
        public i53 a(int i) {
            int[] iArrL = vy6.l(12);
            int[] iArrL2 = vy6.l(12);
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 12; i5++) {
                    int i6 = iArrL[i5];
                    int[] iArr = this.b;
                    iArrL[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrL2[i5] = iArrL2[i5] ^ (iArr[(i2 + 12) + i5] & i4);
                }
                i2 += 24;
            }
            return b(iArrL, iArrL2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public p79() {
        super(j);
        this.i = new s79(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC")));
        this.c = l(new BigInteger(1, jp4.b("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF")));
        this.d = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new s79(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new p79();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 24];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            vy6.k(12, ((r79) i53Var.n()).g, 0, iArr, i3);
            vy6.k(12, ((r79) i53Var.o()).g, 0, iArr, i3 + 12);
            i3 += 24;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new s79(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new r79(bigInteger);
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
        int[] iArrL = vy6.l(12);
        q79.l(secureRandom, iArrL);
        return new r79(iArrL);
    }
}
