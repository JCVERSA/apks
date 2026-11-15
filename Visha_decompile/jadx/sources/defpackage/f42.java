package defpackage;

import java.util.concurrent.Executor;

public final class f42 implements al3 {
    public final oj8 a;
    public final oj8 b;
    public final oj8 c;
    public final oj8 d;
    public final oj8 e;

    public f42(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4, oj8 oj8Var5) {
        this.a = oj8Var;
        this.b = oj8Var2;
        this.c = oj8Var3;
        this.d = oj8Var4;
        this.e = oj8Var5;
    }

    public static f42 a(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4, oj8 oj8Var5) {
        return new f42(oj8Var, oj8Var2, oj8Var3, oj8Var4, oj8Var5);
    }

    public static e42 c(Executor executor, b50 b50Var, fpc fpcVar, ge3 ge3Var, e8a e8aVar) {
        return new e42(executor, b50Var, fpcVar, ge3Var, e8aVar);
    }

    @Override
    public e42 get() {
        return c((Executor) this.a.get(), (b50) this.b.get(), (fpc) this.c.get(), (ge3) this.d.get(), (e8a) this.e.get());
    }
}
