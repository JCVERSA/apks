package defpackage;

public abstract class q95 {
    public static final y7a a = new y7a("COMPLETING_ALREADY");
    public static final y7a b = new y7a("COMPLETING_WAITING_CHILDREN");
    public static final y7a c = new y7a("COMPLETING_RETRY");
    public static final y7a d = new y7a("TOO_LATE_TO_CANCEL");
    public static final y7a e = new y7a("SEALED");
    public static final l93 f = new l93(false);
    public static final l93 g = new l93(true);

    public static final Object g(Object obj) {
        return obj instanceof dz4 ? new ez4((dz4) obj) : obj;
    }

    public static final Object h(Object obj) {
        dz4 dz4Var;
        ez4 ez4Var = obj instanceof ez4 ? (ez4) obj : null;
        return (ez4Var == null || (dz4Var = ez4Var.a) == null) ? obj : dz4Var;
    }
}
