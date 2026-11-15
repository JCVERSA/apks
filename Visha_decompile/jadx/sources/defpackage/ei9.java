package defpackage;

public final class ei9 extends u25 {
    public ei9(short s) {
        super(Short.valueOf(s));
    }

    @Override
    public sm9 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        sm9 sm9VarT = qq6Var.o().T();
        y45.i(sm9VarT, "module.builtIns.shortType");
        return sm9VarT;
    }

    @Override
    public String toString() {
        return ((Number) b()).intValue() + ".toShort()";
    }
}
