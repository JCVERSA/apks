package defpackage;

import kotlinx.serialization.json.b;

public abstract class ka5 {
    public static final boolean a(x95 x95Var, String str) {
        y45.j(x95Var, "<this>");
        return x95Var.a(la5.c(str));
    }

    public static final b b(eb5 eb5Var, String str, Boolean bool) {
        y45.j(eb5Var, "<this>");
        y45.j(str, "key");
        return eb5Var.b(str, la5.a(bool));
    }

    public static final b c(eb5 eb5Var, String str, Number number) {
        y45.j(eb5Var, "<this>");
        y45.j(str, "key");
        return eb5Var.b(str, la5.b(number));
    }

    public static final b d(eb5 eb5Var, String str, String str2) {
        y45.j(eb5Var, "<this>");
        y45.j(str, "key");
        return eb5Var.b(str, la5.c(str2));
    }

    public static final b e(eb5 eb5Var, String str, e74 e74Var) {
        y45.j(eb5Var, "<this>");
        y45.j(str, "key");
        y45.j(e74Var, "builderAction");
        x95 x95Var = new x95();
        e74Var.invoke(x95Var);
        return eb5Var.b(str, x95Var.b());
    }

    public static final b f(eb5 eb5Var, String str, e74 e74Var) {
        y45.j(eb5Var, "<this>");
        y45.j(str, "key");
        y45.j(e74Var, "builderAction");
        eb5 eb5Var2 = new eb5();
        e74Var.invoke(eb5Var2);
        return eb5Var.b(str, eb5Var2.a());
    }
}
