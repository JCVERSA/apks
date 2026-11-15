package defpackage;

import kotlin.NoWhenBranchMatchedException;

public abstract class ky3 {
    public static final fy3 a(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        mgb mgbVarL0 = eh5Var.L0();
        y45.h(mgbVarL0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType");
        return (fy3) mgbVarL0;
    }

    public static final boolean b(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return eh5Var.L0() instanceof fy3;
    }

    public static final sm9 c(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        mgb mgbVarL0 = eh5Var.L0();
        if (mgbVarL0 instanceof fy3) {
            return ((fy3) mgbVarL0).Q0();
        }
        if (mgbVarL0 instanceof sm9) {
            return (sm9) mgbVarL0;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final sm9 d(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        mgb mgbVarL0 = eh5Var.L0();
        if (mgbVarL0 instanceof fy3) {
            return ((fy3) mgbVarL0).R0();
        }
        if (mgbVarL0 instanceof sm9) {
            return (sm9) mgbVarL0;
        }
        throw new NoWhenBranchMatchedException();
    }
}
