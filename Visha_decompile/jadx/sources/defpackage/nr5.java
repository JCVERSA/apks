package defpackage;

public final class nr5 extends u25 {
    public nr5(long j) {
        super(Long.valueOf(j));
    }

    @Override
    public sm9 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        sm9 sm9VarF = qq6Var.o().F();
        y45.i(sm9VarF, "module.builtIns.longType");
        return sm9VarF;
    }

    @Override
    public String toString() {
        return ((Number) b()).longValue() + ".toLong()";
    }
}
