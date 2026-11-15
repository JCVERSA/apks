package defpackage;

import java.math.BigInteger;

public class fx3 extends v2 {
    @Override
    public i53 c(i53 i53Var, BigInteger bigInteger) {
        t43 t43VarI = i53Var.i();
        int iA = hx3.a(t43VarI);
        if (bigInteger.bitLength() > iA) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        gx3 gx3VarB = hx3.b(i53Var);
        b53 b53VarA = gx3VarB.a();
        int iC = gx3VarB.c();
        int i = ((iA + iC) - 1) / iC;
        i53 i53VarS = t43VarI.s();
        int i2 = iC * i;
        int[] iArrQ = vy6.q(i2, bigInteger);
        int i3 = i2 - 1;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = 0;
            for (int i6 = i3 - i4; i6 >= 0; i6 -= i) {
                int i7 = iArrQ[i6 >>> 5] >>> (i6 & 31);
                i5 = ((i5 ^ (i7 >>> 1)) << 1) ^ i7;
            }
            i53VarS = i53VarS.F(b53VarA.a(i5));
        }
        return i53VarS.a(gx3VarB.b());
    }
}
