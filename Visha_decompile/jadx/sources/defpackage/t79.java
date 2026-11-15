package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class t79 extends t43.c {
    public static final BigInteger j = v79.h;
    public static final w43[] k = {new v79(s43.b)};
    public w79 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return t79.this.E(new v79(iArr), new v79(iArr2), t79.k);
        }

        @Override
        public i53 a(int i) {
            int[] iArrL = vy6.l(17);
            int[] iArrL2 = vy6.l(17);
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 17; i5++) {
                    int i6 = iArrL[i5];
                    int[] iArr = this.b;
                    iArrL[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrL2[i5] = iArrL2[i5] ^ (iArr[(i2 + 17) + i5] & i4);
                }
                i2 += 34;
            }
            return b(iArrL, iArrL2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public t79() {
        super(j);
        this.i = new w79(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.c = l(new BigInteger(1, jp4.b("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00")));
        this.d = new BigInteger(1, jp4.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new w79(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new t79();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 34];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            vy6.k(17, ((v79) i53Var.n()).g, 0, iArr, i3);
            vy6.k(17, ((v79) i53Var.o()).g, 0, iArr, i3 + 17);
            i3 += 34;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new w79(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new v79(bigInteger);
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
        int[] iArrL = vy6.l(17);
        u79.l(secureRandom, iArrL);
        return new v79(iArrL);
    }
}
