package defpackage;

import java.util.ArrayList;
import java.util.List;

public final class uc3 implements ex7, gx7 {
    public final ex7 a;
    public final List b;
    public final lx7 c;

    public uc3(ex7 ex7Var) {
        y45.j(ex7Var, "baseContext");
        this.a = ex7Var;
        this.b = new ArrayList();
        this.c = new lx7() {
            @Override
            public final void c(Exception exc) {
                uc3.f(this.c, exc);
            }
        };
    }

    public static final void f(uc3 uc3Var, Exception exc) {
        y45.j(uc3Var, "this$0");
        y45.j(exc, "error");
        uc3Var.b.add(exc);
        uc3Var.b().getLogger().c(exc);
    }

    @Override
    public kga a() {
        return this.a.a();
    }

    @Override
    public ex7 b() {
        return this.a;
    }

    @Override
    public boolean c() {
        return this.a.c();
    }

    public final List e() {
        return this.b;
    }

    @Override
    public lx7 getLogger() {
        return this.c;
    }
}
