package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class d69 extends t43.c {
    public static final BigInteger j = f69.h;
    public static final w43[] k = {new f69(s43.b)};
    public g69 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
        }

        private i53 b(int[] iArr, int[] iArr2) {
            return d69.this.E(new f69(iArr), new f69(iArr2), d69.k);
        }

        @Override
        public i53 a(int i) {
            int[] iArrF = ly6.f();
            int[] iArrF2 = ly6.f();
            int i2 = 0;
            for (int i3 = 0; i3 < this.a; i3++) {
                int i4 = ((i3 ^ i) - 1) >> 31;
                for (int i5 = 0; i5 < 4; i5++) {
                    int i6 = iArrF[i5];
                    int[] iArr = this.b;
                    iArrF[i5] = i6 ^ (iArr[i2 + i5] & i4);
                    iArrF2[i5] = iArrF2[i5] ^ (iArr[(i2 + 4) + i5] & i4);
                }
                i2 += 8;
            }
            return b(iArrF, iArrF2);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public d69() {
        super(j);
        this.i = new g69(this, null, null);
        this.b = l(new BigInteger(1, jp4.b("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.c = l(new BigInteger(1, jp4.b("E87579C11079F43DD824993C2CEE5ED3")));
        this.d = new BigInteger(1, jp4.b("FFFFFFFE0000000075A30D1B9038A115"));
        this.e = BigInteger.valueOf(1L);
        this.f = 2;
    }

    @Override
    public boolean A(int i) {
        return i == 2;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new g69(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new d69();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 8];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            ly6.c(((f69) i53Var.n()).g, 0, iArr, i3);
            ly6.c(((f69) i53Var.o()).g, 0, iArr, i3 + 4);
            i3 += 8;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new g69(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new f69(bigInteger);
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
        int[] iArrF = ly6.f();
        e69.k(secureRandom, iArrF);
        return new f69(iArrF);
    }
}
