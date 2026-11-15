package defpackage;

import java.math.BigInteger;

public abstract class hx3 {

    public static class a implements pd8 {
        public final t43 a;
        public final i53 b;

        public a(t43 t43Var, i53 i53Var) {
            this.a = t43Var;
            this.b = i53Var;
        }

        @Override
        public qd8 a(qd8 qd8Var) {
            gx3 gx3Var = qd8Var instanceof gx3 ? (gx3) qd8Var : null;
            int iA = hx3.a(this.a);
            int i = iA > 250 ? 6 : 5;
            int i2 = 1 << i;
            if (b(gx3Var, i2)) {
                return gx3Var;
            }
            int i3 = ((iA + i) - 1) / i;
            i53[] i53VarArr = new i53[i + 1];
            i53VarArr[0] = this.b;
            for (int i4 = 1; i4 < i; i4++) {
                i53VarArr[i4] = i53VarArr[i4 - 1].D(i3);
            }
            i53VarArr[i] = i53VarArr[0].C(i53VarArr[1]);
            this.a.w(i53VarArr);
            i53[] i53VarArr2 = new i53[i2];
            i53VarArr2[0] = i53VarArr[0];
            for (int i5 = i - 1; i5 >= 0; i5--) {
                i53 i53Var = i53VarArr[i5];
                int i6 = 1 << i5;
                for (int i7 = i6; i7 < i2; i7 += i6 << 1) {
                    i53VarArr2[i7] = i53VarArr2[i7 - i6].a(i53Var);
                }
            }
            this.a.w(i53VarArr2);
            gx3 gx3Var2 = new gx3();
            gx3Var2.d(this.a.f(i53VarArr2, 0, i2));
            gx3Var2.e(i53VarArr[i]);
            gx3Var2.f(i);
            return gx3Var2;
        }

        public final boolean b(gx3 gx3Var, int i) {
            return gx3Var != null && c(gx3Var.a(), i);
        }

        public final boolean c(b53 b53Var, int i) {
            return b53Var != null && b53Var.getSize() >= i;
        }
    }

    public static int a(t43 t43Var) {
        BigInteger bigIntegerU = t43Var.u();
        return bigIntegerU == null ? t43Var.r() + 1 : bigIntegerU.bitLength();
    }

    public static gx3 b(i53 i53Var) {
        t43 t43VarI = i53Var.i();
        return (gx3) t43VarI.y(i53Var, "bc_fixed_point", new a(t43VarI, i53Var));
    }
}
