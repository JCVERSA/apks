package defpackage;

public final class ix7 implements hx7 {
    public final kga a;
    public final lx7 b;

    public ix7(kga kgaVar, lx7 lx7Var) {
        y45.j(kgaVar, "templates");
        y45.j(lx7Var, "logger");
        this.a = kgaVar;
        this.b = lx7Var;
    }

    @Override
    public kga a() {
        return this.a;
    }

    @Override
    public lx7 getLogger() {
        return this.b;
    }
}
