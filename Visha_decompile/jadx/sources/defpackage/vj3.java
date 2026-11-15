package defpackage;

import com.yandex.div.core.expression.ExpressionResolverImpl;
import com.yandex.div.core.expression.local.RuntimeStore;

public final class vj3 {
    public final ExpressionResolverImpl a;
    public final snb b;
    public final x9b c;
    public final m84 d;
    public final RuntimeStore e;
    public boolean f;

    public vj3(ExpressionResolverImpl expressionResolverImpl, snb snbVar, x9b x9bVar, m84 m84Var, RuntimeStore runtimeStore) {
        y45.j(expressionResolverImpl, "expressionResolver");
        y45.j(snbVar, "variableController");
        y45.j(m84Var, "functionProvider");
        y45.j(runtimeStore, "runtimeStore");
        this.a = expressionResolverImpl;
        this.b = snbVar;
        this.c = x9bVar;
        this.d = m84Var;
        this.e = runtimeStore;
        this.f = true;
    }

    public final void a() {
        if (this.f) {
            return;
        }
        this.f = true;
        x9b x9bVar = this.c;
        if (x9bVar != null) {
            x9bVar.a();
        }
        this.b.d();
    }

    public final void b() {
        x9b x9bVar = this.c;
        if (x9bVar != null) {
            x9bVar.a();
        }
    }

    public final ExpressionResolverImpl c() {
        return this.a;
    }

    public final m84 d() {
        return this.d;
    }

    public final RuntimeStore e() {
        return this.e;
    }

    public final x9b f() {
        return this.c;
    }

    public final snb g() {
        return this.b;
    }

    public final void h(sv2 sv2Var) {
        y45.j(sv2Var, "view");
        x9b x9bVar = this.c;
        if (x9bVar != null) {
            x9bVar.d(sv2Var);
        }
    }

    public final void i() {
        if (this.f) {
            this.f = false;
            this.a.o();
            this.b.e();
        }
    }
}
