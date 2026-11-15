package defpackage;

public abstract class va5 {
    public static final u95 a(u95 u95Var, e74 e74Var) {
        y45.j(u95Var, "from");
        y45.j(e74Var, "builderAction");
        z95 z95Var = new z95(u95Var);
        e74Var.invoke(z95Var);
        return new ta5(z95Var.a(), z95Var.b());
    }

    public static u95 b(u95 u95Var, e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            u95Var = u95.d;
        }
        return a(u95Var, e74Var);
    }
}
