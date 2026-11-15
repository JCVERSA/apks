package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public class um1 extends t43.c {
    public static final BigInteger j = wm1.h;
    public static final BigInteger k;
    public static final BigInteger l;
    public static final w43[] m;
    public xm1 i;

    public class a extends u2 {
        public final int a;
        public final int[] b;

        public a(int i, int[] iArr) {
            this.a = i;
            this.b = iArr;
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

        public final i53 b(int[] iArr, int[] iArr2) {
            return um1.this.E(new wm1(iArr), new wm1(iArr2), um1.m);
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    static {
        BigInteger bigInteger = new BigInteger(1, jp4.b("2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144"));
        k = bigInteger;
        l = new BigInteger(1, jp4.b("7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864"));
        m = new w43[]{new wm1(s43.b), new wm1(bigInteger)};
    }

    public um1() {
        super(j);
        this.i = new xm1(this, null, null);
        this.b = l(k);
        this.c = l(l);
        this.d = new BigInteger(1, jp4.b("1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"));
        this.e = BigInteger.valueOf(8L);
        this.f = 4;
    }

    @Override
    public boolean A(int i) {
        return i == 4;
    }

    public i53 E(w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        return new xm1(this, w43Var, w43Var2, w43VarArr);
    }

    @Override
    public t43 d() {
        return new um1();
    }

    @Override
    public b53 f(i53[] i53VarArr, int i, int i2) {
        int[] iArr = new int[i2 * 16];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            py6.f(((wm1) i53Var.n()).g, 0, iArr, i3);
            py6.f(((wm1) i53Var.o()).g, 0, iArr, i3 + 8);
            i3 += 16;
        }
        return new a(i2, iArr);
    }

    @Override
    public i53 h(w43 w43Var, w43 w43Var2) {
        return new xm1(this, w43Var, w43Var2);
    }

    @Override
    public w43 l(BigInteger bigInteger) {
        return new wm1(bigInteger);
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
        vm1.k(secureRandom, iArrI);
        return new wm1(iArrI);
    }
}
