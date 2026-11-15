package defpackage;

public abstract class ie1 {
    public static final y7a a = new y7a("CLOSED");

    public static final je1 b(je1 je1Var) {
        while (true) {
            Object objG = je1Var.g();
            if (objG == a) {
                return je1Var;
            }
            je1 je1Var2 = (je1) objG;
            if (je1Var2 != null) {
                je1Var = je1Var2;
            } else if (je1Var.m()) {
                return je1Var;
            }
        }
    }

    public static final Object c(oa9 oa9Var, long j, s74 s74Var) {
        while (true) {
            if (oa9Var.d >= j && !oa9Var.k()) {
                return pa9.a(oa9Var);
            }
            Object objG = oa9Var.g();
            if (objG == a) {
                return pa9.a(a);
            }
            oa9 oa9Var2 = (oa9) ((je1) objG);
            if (oa9Var2 == null) {
                oa9Var2 = (oa9) s74Var.invoke(Long.valueOf(oa9Var.d + 1), oa9Var);
                if (oa9Var.o(oa9Var2)) {
                    if (oa9Var.k()) {
                        oa9Var.n();
                    }
                }
            }
            oa9Var = oa9Var2;
        }
    }
}
