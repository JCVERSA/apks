package defpackage;

import java.math.BigInteger;

public abstract class v2 implements c53 {
    public i53 a(i53 i53Var) {
        return r43.a(i53Var);
    }

    public i53 b(i53 i53Var, BigInteger bigInteger) {
        int iSignum = bigInteger.signum();
        if (iSignum == 0 || i53Var.t()) {
            return i53Var.i().s();
        }
        i53 i53VarC = c(i53Var, bigInteger.abs());
        if (iSignum <= 0) {
            i53VarC = i53VarC.x();
        }
        return a(i53VarC);
    }

    public abstract i53 c(i53 i53Var, BigInteger bigInteger);
}
