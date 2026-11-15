package defpackage;

import kotlin.NoWhenBranchMatchedException;

public abstract class ddb {
    /* JADX WARN: Multi-variable type inference failed */
    public static final eh5 a(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        if (eh5Var instanceof cdb) {
            return ((cdb) eh5Var).l0();
        }
        return null;
    }

    public static final mgb b(mgb mgbVar, eh5 eh5Var) {
        y45.j(mgbVar, "<this>");
        y45.j(eh5Var, "origin");
        return d(mgbVar, a(eh5Var));
    }

    public static final mgb c(mgb mgbVar, eh5 eh5Var, e74 e74Var) {
        y45.j(mgbVar, "<this>");
        y45.j(eh5Var, "origin");
        y45.j(e74Var, "transform");
        eh5 eh5VarA = a(eh5Var);
        return d(mgbVar, eh5VarA != null ? (eh5) e74Var.invoke(eh5VarA) : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final mgb d(mgb mgbVar, eh5 eh5Var) {
        y45.j(mgbVar, "<this>");
        if (mgbVar instanceof cdb) {
            return d(((cdb) mgbVar).Q(), eh5Var);
        }
        if (eh5Var == null || y45.e(eh5Var, mgbVar)) {
            return mgbVar;
        }
        if (mgbVar instanceof sm9) {
            return new vm9((sm9) mgbVar, eh5Var);
        }
        if (mgbVar instanceof fy3) {
            return new jy3((fy3) mgbVar, eh5Var);
        }
        throw new NoWhenBranchMatchedException();
    }
}
