package defpackage;

public abstract class fmb {
    public static final void a(qr5 qr5Var, or5 or5Var, qw0 qw0Var, by6 by6Var) {
        y45.j(qr5Var, "<this>");
        y45.j(or5Var, "from");
        y45.j(qw0Var, "scopeOwner");
        y45.j(by6Var, "name");
        if (qr5Var == qr5.a.a) {
            return;
        }
        or5Var.getLocation();
    }

    public static final void b(qr5 qr5Var, or5 or5Var, dv7 dv7Var, by6 by6Var) {
        y45.j(qr5Var, "<this>");
        y45.j(or5Var, "from");
        y45.j(dv7Var, "scopeOwner");
        y45.j(by6Var, "name");
        String strB = dv7Var.d().b();
        y45.i(strB, "scopeOwner.fqName.asString()");
        String strB2 = by6Var.b();
        y45.i(strB2, "name.asString()");
        c(qr5Var, or5Var, strB, strB2);
    }

    public static final void c(qr5 qr5Var, or5 or5Var, String str, String str2) {
        y45.j(qr5Var, "<this>");
        y45.j(or5Var, "from");
        y45.j(str, "packageFqName");
        y45.j(str2, "name");
        if (qr5Var == qr5.a.a) {
            return;
        }
        or5Var.getLocation();
    }
}
