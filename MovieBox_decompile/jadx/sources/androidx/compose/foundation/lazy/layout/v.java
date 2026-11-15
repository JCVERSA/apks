package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.e1;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.n2;
import androidx.compose.runtime.u2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

final class v implements androidx.compose.ui.layout.f0, androidx.compose.ui.layout.f0.a, w.a {

    private final Object f2768a;

    private final w f2769b;

    private final e1 f2770c = n2.a(-1);

    private final e1 f2771d = n2.a(0);

    private final i1 f2772e = u2.c(null, null, 2, null);

    private final i1 f2773f = u2.c(null, null, 2, null);

    public v(Object obj, w wVar) {
        this.f2768a = obj;
        this.f2769b = wVar;
    }

    private final androidx.compose.ui.layout.f0.a b() {
        return (androidx.compose.ui.layout.f0.a) this.f2772e.getValue();
    }

    private final int d() {
        return this.f2771d.getIntValue();
    }

    private final androidx.compose.ui.layout.f0 e() {
        return (androidx.compose.ui.layout.f0) this.f2773f.getValue();
    }

    private final void h(androidx.compose.ui.layout.f0.a aVar) {
        this.f2772e.setValue(aVar);
    }

    private final void j(int i10) {
        this.f2771d.setIntValue(i10);
    }

    private final void k(androidx.compose.ui.layout.f0 f0Var) {
        this.f2773f.setValue(f0Var);
    }

    @Override
    public androidx.compose.ui.layout.f0.a a() {
        if (d() == 0) {
            this.f2769b.j(this);
            androidx.compose.ui.layout.f0 f0VarC = c();
            h(f0VarC != null ? f0VarC.a() : null);
        }
        j(d() + 1);
        return this;
    }

    public final androidx.compose.ui.layout.f0 c() {
        return e();
    }

    public final void f() {
        int iD = d();
        for (int i10 = 0; i10 < iD; i10++) {
            release();
        }
    }

    public void g(int i10) {
        this.f2770c.setIntValue(i10);
    }

    @Override
    public int getIndex() {
        return this.f2770c.getIntValue();
    }

    @Override
    public Object getKey() {
        return this.f2768a;
    }

    public final void i(androidx.compose.ui.layout.f0 f0Var) {
        androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
        androidx.compose.runtime.snapshots.j jVarD = aVar.d();
        Function1 function1H = jVarD != null ? jVarD.h() : null;
        androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
        try {
            if (f0Var != e()) {
                k(f0Var);
                if (d() > 0) {
                    androidx.compose.ui.layout.f0.a aVarB = b();
                    if (aVarB != null) {
                        aVarB.release();
                    }
                    h(f0Var != null ? f0Var.a() : null);
                }
            }
            Unit unit = Unit.f64096a;
        } finally {
            aVar.m(jVarD, jVarF, function1H);
        }
    }

    @Override
    public void release() {
        if (d() <= 0) {
            throw new IllegalStateException("Release should only be called once");
        }
        j(d() - 1);
        if (d() == 0) {
            this.f2769b.l(this);
            androidx.compose.ui.layout.f0.a aVarB = b();
            if (aVarB != null) {
                aVarB.release();
            }
            h(null);
        }
    }
}
