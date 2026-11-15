package defpackage;

public final class o92 implements pw0 {
    public final fv7 a;

    public o92(fv7 fv7Var) {
        y45.j(fv7Var, "packageFragmentProvider");
        this.a = fv7Var;
    }

    @Override
    public ow0 a(xw0 xw0Var) {
        ow0 ow0VarA;
        y45.j(xw0Var, "classId");
        fv7 fv7Var = this.a;
        o54 o54VarH = xw0Var.h();
        y45.i(o54VarH, "classId.packageFqName");
        for (dv7 dv7Var : gv7.c(fv7Var, o54VarH)) {
            if ((dv7Var instanceof r92) && (ow0VarA = ((r92) dv7Var).C0().a(xw0Var)) != null) {
                return ow0VarA;
            }
        }
        return null;
    }
}
