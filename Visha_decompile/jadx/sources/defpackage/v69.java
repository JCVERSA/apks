package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class v69 extends t43.c {
    public static final BigInteger j = x69.h;
    public static final w43[] k = {new x69(s43.b)};
    public y69 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return v69.this.E(new x69(iArr), new x69(iArr2), v69.k);
        }

        @Override
        public i53 a(int i) {
            int[] iArrH = ny6.h();
            int[] iArrH2 = ny6.h();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 6; i5++) {
                    int i6 = iArrH[i5];
                    int[] iArr = this.b;
                    iArrH[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrH2[i5] = iArrH2[i5] ^ (iArr[(i2 + 6) + i5] & i4);
                }
                i2 += 12;
            }
            return b(iArrH, iArrH2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public v69() {
        super(j);
        this.i = new y69(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC")));
        this.c = l(new BigInteger(1, jp4.b("64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1")));
        this.d = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22831"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new y69(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new v69();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 12];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            ny6.e(((x69) i53Var.n()).g, 0, iArr, i3);
            ny6.e(((x69) i53Var.o()).g, 0, iArr, i3 + 6);
            i3 += 12;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new y69(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new x69(bigInteger);
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
        int[] iArrH = ny6.h();
        w69.k(secureRandom, iArrH);
        return new x69(iArrH);
    }
}
