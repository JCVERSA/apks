package defpackage;

public final class l9b implements al3 {
    public final oj8 a;
    public final oj8 b;
    public final oj8 c;
    public final oj8 d;
    public final oj8 e;

    public l9b(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4, oj8 oj8Var5) {
        this.a = oj8Var;
        this.b = oj8Var2;
        this.c = oj8Var3;
        this.d = oj8Var4;
        this.e = oj8Var5;
    }

    public static l9b a(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4, oj8 oj8Var5) {
        return new l9b(oj8Var, oj8Var2, oj8Var3, oj8Var4, oj8Var5);
    }

    public static j9b c(hy0 hy0Var, hy0 hy0Var2, g29 g29Var, kib kibVar, cpc cpcVar) {
        return new j9b(hy0Var, hy0Var2, g29Var, kibVar, cpcVar);
    }

    @Override
    public j9b get() {
        return c((hy0) this.a.get(), (hy0) this.b.get(), (g29) this.c.get(), (kib) this.d.get(), (cpc) this.e.get());
    }
}
