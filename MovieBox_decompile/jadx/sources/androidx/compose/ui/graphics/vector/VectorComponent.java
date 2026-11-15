package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.f4;
import androidx.compose.ui.graphics.v1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import o0.u;

public final class VectorComponent extends i {

    private final GroupComponent f4409b;

    private String f4410c;

    private boolean f4411d;

    private final a f4412e;

    private Function0 f4413f;

    private final i1 f4414g;

    private v1 f4415h;

    private final i1 f4416i;

    private long f4417j;

    private float f4418k;

    private float f4419l;

    private final Function1 f4420m;

    public VectorComponent(GroupComponent groupComponent) {
        super(null);
        this.f4409b = groupComponent;
        groupComponent.d(new Function1<i, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((i) obj);
                return Unit.f64096a;
            }

            public final void invoke(i iVar) {
                VectorComponent.this.h();
            }
        });
        this.f4410c = "";
        this.f4411d = true;
        this.f4412e = new a();
        this.f4413f = new Function0<Unit>() {
            public final void m113invoke() {
            }

            @Override
            public Object invoke() {
                m113invoke();
                return Unit.f64096a;
            }
        };
        this.f4414g = u2.c(null, null, 2, null);
        y.m.a aVar = y.m.f76020b;
        this.f4416i = u2.c(y.m.c(aVar.b()), null, 2, null);
        this.f4417j = aVar.a();
        this.f4418k = 1.0f;
        this.f4419l = 1.0f;
        this.f4420m = new Function1<z.g, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z.g) obj);
                return Unit.f64096a;
            }

            public final void invoke(z.g gVar) {
                GroupComponent groupComponentL = this.this$0.l();
                VectorComponent vectorComponent = this.this$0;
                float f10 = vectorComponent.f4418k;
                float f11 = vectorComponent.f4419l;
                long jC = y.g.f75999b.c();
                z.d dVarG0 = gVar.G0();
                long jI = dVarG0.i();
                dVarG0.e().n();
                try {
                    dVarG0.c().e(f10, f11, jC);
                    groupComponentL.a(gVar);
                } finally {
                    dVarG0.e().j();
                    dVarG0.f(jI);
                }
            }
        };
    }

    public final void h() {
        this.f4411d = true;
        this.f4413f.invoke();
    }

    @Override
    public void a(z.g gVar) {
        i(gVar, 1.0f, null);
    }

    public final void i(z.g gVar, float f10, v1 v1Var) {
        int iA = (this.f4409b.j() && this.f4409b.g() != 16 && k.f(k()) && k.f(v1Var)) ? f4.f4130b.a() : f4.f4130b.b();
        if (this.f4411d || !y.m.f(this.f4417j, gVar.i()) || !f4.i(iA, j())) {
            this.f4415h = f4.i(iA, f4.f4130b.a()) ? v1.a.b(v1.f4366b, this.f4409b.g(), 0, 2, null) : null;
            this.f4418k = y.m.i(gVar.i()) / y.m.i(m());
            this.f4419l = y.m.g(gVar.i()) / y.m.g(m());
            this.f4412e.b(iA, u.a((int) Math.ceil(y.m.i(gVar.i())), (int) Math.ceil(y.m.g(gVar.i()))), gVar, gVar.getLayoutDirection(), this.f4420m);
            this.f4411d = false;
            this.f4417j = gVar.i();
        }
        if (v1Var == null) {
            v1Var = k() != null ? k() : this.f4415h;
        }
        this.f4412e.c(gVar, f10, v1Var);
    }

    public final int j() {
        e4 e4VarD = this.f4412e.d();
        return e4VarD != null ? e4VarD.b() : f4.f4130b.b();
    }

    public final v1 k() {
        return (v1) this.f4414g.getValue();
    }

    public final GroupComponent l() {
        return this.f4409b;
    }

    public final long m() {
        return ((y.m) this.f4416i.getValue()).m();
    }

    public final void n(v1 v1Var) {
        this.f4414g.setValue(v1Var);
    }

    public final void o(Function0 function0) {
        this.f4413f = function0;
    }

    public final void p(String str) {
        this.f4410c = str;
    }

    public final void q(long j10) {
        this.f4416i.setValue(y.m.c(j10));
    }

    public String toString() {
        String str = "Params: \tname: " + this.f4410c + "\n\tviewportWidth: " + y.m.i(m()) + "\n\tviewportHeight: " + y.m.g(m()) + "\n";
        Intrinsics.g(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }
}
