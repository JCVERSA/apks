package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.e1;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.n2;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class VectorPainter extends Painter {

    private final i1 f4421g;

    private final i1 f4422h;

    private final VectorComponent f4423i;

    private final e1 f4424j;

    private float f4425k;

    private v1 f4426l;

    private int f4427m;

    /* JADX WARN: Multi-variable type inference failed */
    public VectorPainter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final int o() {
        return this.f4424j.getIntValue();
    }

    public final void s(int i10) {
        this.f4424j.setIntValue(i10);
    }

    @Override
    protected boolean a(float f10) {
        this.f4425k = f10;
        return true;
    }

    @Override
    protected boolean b(v1 v1Var) {
        this.f4426l = v1Var;
        return true;
    }

    @Override
    public long h() {
        return p();
    }

    @Override
    protected void j(z.g gVar) {
        VectorComponent vectorComponent = this.f4423i;
        v1 v1VarK = this.f4426l;
        if (v1VarK == null) {
            v1VarK = vectorComponent.k();
        }
        if (n() && gVar.getLayoutDirection() == LayoutDirection.Rtl) {
            long jN0 = gVar.N0();
            z.d dVarG0 = gVar.G0();
            long jI = dVarG0.i();
            dVarG0.e().n();
            try {
                dVarG0.c().e(-1.0f, 1.0f, jN0);
                vectorComponent.i(gVar, this.f4425k, v1VarK);
                dVarG0.e().j();
                dVarG0.f(jI);
            } catch (Throwable th2) {
                dVarG0.e().j();
                dVarG0.f(jI);
                throw th2;
            }
        } else {
            vectorComponent.i(gVar, this.f4425k, v1VarK);
        }
        this.f4427m = o();
    }

    public final boolean n() {
        return ((Boolean) this.f4422h.getValue()).booleanValue();
    }

    public final long p() {
        return ((y.m) this.f4421g.getValue()).m();
    }

    public final void q(boolean z10) {
        this.f4422h.setValue(Boolean.valueOf(z10));
    }

    public final void r(v1 v1Var) {
        this.f4423i.n(v1Var);
    }

    public final void t(String str) {
        this.f4423i.p(str);
    }

    public final void u(long j10) {
        this.f4421g.setValue(y.m.c(j10));
    }

    public final void v(long j10) {
        this.f4423i.q(j10);
    }

    public VectorPainter(GroupComponent groupComponent) {
        this.f4421g = u2.c(y.m.c(y.m.f76020b.b()), null, 2, null);
        this.f4422h = u2.c(Boolean.FALSE, null, 2, null);
        VectorComponent vectorComponent = new VectorComponent(groupComponent);
        vectorComponent.o(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m114invoke();
                return Unit.f64096a;
            }

            public final void m114invoke() {
                if (this.this$0.f4427m == this.this$0.o()) {
                    VectorPainter vectorPainter = this.this$0;
                    vectorPainter.s(vectorPainter.o() + 1);
                }
            }
        });
        this.f4423i = vectorComponent;
        this.f4424j = n2.a(0);
        this.f4425k = 1.0f;
        this.f4427m = -1;
    }

    public VectorPainter(GroupComponent groupComponent, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new GroupComponent() : groupComponent);
    }
}
