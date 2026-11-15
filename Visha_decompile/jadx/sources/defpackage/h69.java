package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class h69 extends t43.c {
    public static final BigInteger j = p69.h;
    public static final w43[] k = {new p69(s43.b)};
    public i69 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return h69.this.E(new p69(iArr), new p69(iArr2), h69.k);
        }

        @Override
        public i53 a(int i) {
            int[] iArrD = my6.d();
            int[] iArrD2 = my6.d();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 5; i5++) {
                    int i6 = iArrD[i5];
                    int[] iArr = this.b;
                    iArrD[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrD2[i5] = iArrD2[i5] ^ (iArr[(i2 + 5) + i5] & i4);
                }
                i2 += 10;
            }
            return b(iArrD, iArrD2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public h69() {
        super(j);
        this.i = new i69(this, null, null);
        this.b = l(s43.a);
        this.c = l(BigInteger.valueOf(7L));
        this.d = new BigInteger(1, jp4.b("0100000000000000000001B8FA16DFAB9ACA16B6B3"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new i69(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new h69();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 10];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            my6.c(((p69) i53Var.n()).g, 0, iArr, i3);
            my6.c(((p69) i53Var.o()).g, 0, iArr, i3 + 5);
            i3 += 10;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new i69(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new p69(bigInteger);
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
        int[] iArrD = my6.d();
        o69.j(secureRandom, iArrD);
        return new p69(iArrD);
    }
}
