package defpackage;

public final class ez3 extends pf1 {
    public ez3(float f) {
        super(Float.valueOf(f));
    }

    @Override
    public sm9 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        sm9 sm9VarB = qq6Var.o().B();
        y45.i(sm9VarB, "module.builtIns.floatType");
        return sm9VarB;
    }

    @Override
    public String toString() {
        return ((Number) b()).floatValue() + ".toFloat()";
    }
}
