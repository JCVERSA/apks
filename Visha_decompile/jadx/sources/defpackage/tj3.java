package defpackage;

public final class tj3 extends dd0 {
    public final c74 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tj3(boolean z, c74 c74Var) {
        super(z);
        y45.j(c74Var, "calculateExpression");
        this.b = c74Var;
    }

    @Override
    public boolean b(String str) {
        y45.j(str, "input");
        return (a() && str.length() == 0) || ((Boolean) this.b.invoke()).booleanValue();
    }
}
