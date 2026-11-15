package defpackage;

import java.math.BigInteger;

public abstract class fgc {
    public static final int[] a = {13, 41, 121, 337, 897, 2305};
    public static final byte[] b = new byte[0];
    public static final int[] c = new int[0];
    public static final i53[] d = new i53[0];

    public static class a implements pd8 {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        @Override
        public qd8 a(qd8 qd8Var) {
            egc egcVar = qd8Var instanceof egc ? (egc) qd8Var : null;
            if (egcVar != null && egcVar.a() == this.a) {
                egcVar.i(0);
                return egcVar;
            }
            egc egcVar2 = new egc();
            egcVar2.i(0);
            egcVar2.f(this.a);
            if (egcVar != null) {
                egcVar2.g(egcVar.b());
                egcVar2.h(egcVar.c());
                egcVar2.j(egcVar.d());
                egcVar2.k(egcVar.e());
            }
            return egcVar2;
        }
    }

    public static void a(i53 i53Var) {
        t43 t43VarI = i53Var.i();
        if (t43VarI == null) {
            return;
        }
        BigInteger bigIntegerU = t43VarI.u();
        t43VarI.y(i53Var, "bc_wnaf", new a(Math.min(16, b(bigIntegerU == null ? t43VarI.r() + 1 : bigIntegerU.bitLength()) + 3)));
    }

    public static int b(int i) {
        return c(i, a, 16);
    }

    public static int c(int i, int[] iArr, int i2) {
        int i3 = 0;
        while (i3 < iArr.length && i >= iArr[i3]) {
            i3++;
        }
        return Math.max(2, Math.min(i2, i3 + 2));
    }
}
