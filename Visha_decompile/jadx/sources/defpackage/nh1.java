package defpackage;

public final class nh1 extends t3 implements xy4 {
    public final qw0 c;
    public final by6 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nh1(qw0 qw0Var, eh5 eh5Var, by6 by6Var, to8 to8Var) {
        super(eh5Var, to8Var);
        y45.j(qw0Var, "classDescriptor");
        y45.j(eh5Var, "receiverType");
        this.c = qw0Var;
        this.d = by6Var;
    }

    @Override
    public by6 a() {
        return this.d;
    }

    public String toString() {
        return getType() + ": Ctx { " + this.c + " }";
    }
}
