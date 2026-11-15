package defpackage;

public final class qo0 extends u25 {
    public qo0(byte b) {
        super(Byte.valueOf(b));
    }

    @Override
    public sm9 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        sm9 sm9VarT = qq6Var.o().t();
        y45.i(sm9VarT, "module.builtIns.byteType");
        return sm9VarT;
    }

    @Override
    public String toString() {
        return ((Number) b()).intValue() + ".toByte()";
    }
}
