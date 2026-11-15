package defpackage;

public final class ux2 extends pf1 {
    public ux2(double d) {
        super(Double.valueOf(d));
    }

    @Override
    public sm9 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        sm9 sm9VarZ = qq6Var.o().z();
        y45.i(sm9VarZ, "module.builtIns.doubleType");
        return sm9VarZ;
    }

    @Override
    public String toString() {
        return ((Number) b()).doubleValue() + ".toDouble()";
    }
}
