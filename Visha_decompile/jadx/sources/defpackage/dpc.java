package defpackage;

import java.util.concurrent.Executor;

public final class dpc implements al3 {
    public final oj8 a;
    public final oj8 b;
    public final oj8 c;
    public final oj8 d;

    public dpc(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4) {
        this.a = oj8Var;
        this.b = oj8Var2;
        this.c = oj8Var3;
        this.d = oj8Var4;
    }

    public static dpc a(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4) {
        return new dpc(oj8Var, oj8Var2, oj8Var3, oj8Var4);
    }

    public static cpc c(Executor executor, ge3 ge3Var, fpc fpcVar, e8a e8aVar) {
        return new cpc(executor, ge3Var, fpcVar, e8aVar);
    }

    @Override
    public cpc get() {
        return c((Executor) this.a.get(), (ge3) this.b.get(), (fpc) this.c.get(), (e8a) this.d.get());
    }
}
