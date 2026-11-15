package defpackage;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

public class j9b implements f9b {
    public static volatile k9b e;
    public final hy0 a;
    public final hy0 b;
    public final g29 c;
    public final kib d;

    public j9b(hy0 hy0Var, hy0 hy0Var2, g29 g29Var, kib kibVar, cpc cpcVar) {
        this.a = hy0Var;
        this.b = hy0Var2;
        this.c = g29Var;
        this.d = kibVar;
        cpcVar.c();
    }

    public static j9b c() {
        k9b k9bVar = e;
        if (k9bVar != null) {
            return k9bVar.d();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static Set d(x92 x92Var) {
        return x92Var instanceof aa3 ? Collections.unmodifiableSet(((aa3) x92Var).a()) : Collections.singleton(ka3.b("proto"));
    }

    public static void f(Context context) {
        if (e == null) {
            synchronized (j9b.class) {
                try {
                    if (e == null) {
                        e = sr1.e().a(context).build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override
    public void a(dc9 dc9Var, m9b m9bVar) {
        this.c.a(dc9Var.f().f(dc9Var.c().c()), b(dc9Var), m9bVar);
    }

    public final xd3 b(dc9 dc9Var) {
        return xd3.a().i(this.a.a()).k(this.b.a()).j(dc9Var.g()).h(new ba3(dc9Var.b(), dc9Var.d())).g(dc9Var.c().a()).d();
    }

    public kib e() {
        return this.d;
    }

    public b9b g(x92 x92Var) {
        return new c9b(d(x92Var), a9b.a().b(x92Var.getName()).c(x92Var.getExtras()).a(), this);
    }
}
