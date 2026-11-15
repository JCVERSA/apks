package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class r69 extends t43.c {
    public static final BigInteger j = t69.h;
    public static final w43[] k = {new t69(s43.b)};
    public u69 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return r69.this.E(new t69(iArr), new t69(iArr2), r69.k);
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

    public r69() {
        super(j);
        this.i = new u69(this, null, null);
        this.b = l(s43.a);
        this.c = l(BigInteger.valueOf(3L));
        this.d = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new u69(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new r69();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 12];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            ny6.e(((t69) i53Var.n()).g, 0, iArr, i3);
            ny6.e(((t69) i53Var.o()).g, 0, iArr, i3 + 6);
            i3 += 12;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new u69(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new t69(bigInteger);
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
        s69.j(secureRandom, iArrH);
        return new t69(iArrH);
    }
}
