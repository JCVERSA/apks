package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

public final class lib implements al3 {
    public final oj8 a;
    public final oj8 b;
    public final oj8 c;
    public final oj8 d;
    public final oj8 e;
    public final oj8 f;
    public final oj8 g;
    public final oj8 h;
    public final oj8 i;

    public lib(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4, oj8 oj8Var5, oj8 oj8Var6, oj8 oj8Var7, oj8 oj8Var8, oj8 oj8Var9) {
        this.a = oj8Var;
        this.b = oj8Var2;
        this.c = oj8Var3;
        this.d = oj8Var4;
        this.e = oj8Var5;
        this.f = oj8Var6;
        this.g = oj8Var7;
        this.h = oj8Var8;
        this.i = oj8Var9;
    }

    public static lib a(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3, oj8 oj8Var4, oj8 oj8Var5, oj8 oj8Var6, oj8 oj8Var7, oj8 oj8Var8, oj8 oj8Var9) {
        return new lib(oj8Var, oj8Var2, oj8Var3, oj8Var4, oj8Var5, oj8Var6, oj8Var7, oj8Var8, oj8Var9);
    }

    public static kib c(Context context, b50 b50Var, ge3 ge3Var, fpc fpcVar, Executor executor, e8a e8aVar, hy0 hy0Var, hy0 hy0Var2, xx0 xx0Var) {
        return new kib(context, b50Var, ge3Var, fpcVar, executor, e8aVar, hy0Var, hy0Var2, xx0Var);
    }

    @Override
    public kib get() {
        return c((Context) this.a.get(), (b50) this.b.get(), (ge3) this.c.get(), (fpc) this.d.get(), (Executor) this.e.get(), (e8a) this.f.get(), (hy0) this.g.get(), (hy0) this.h.get(), (xx0) this.i.get());
    }
}
