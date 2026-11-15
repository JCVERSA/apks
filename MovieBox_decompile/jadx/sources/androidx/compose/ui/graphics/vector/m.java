package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import kotlin.Unit;

public abstract class m {
    public static final VectorPainter a(VectorPainter vectorPainter, long j10, long j11, String str, v1 v1Var, boolean z10) {
        vectorPainter.u(j10);
        vectorPainter.q(z10);
        vectorPainter.r(v1Var);
        vectorPainter.v(j11);
        vectorPainter.t(str);
        return vectorPainter;
    }

    private static final v1 b(long j10, int i10) {
        if (j10 != 16) {
            return v1.f4366b.a(j10, i10);
        }
        return null;
    }

    public static final GroupComponent c(GroupComponent groupComponent, j jVar) {
        int iO = jVar.o();
        for (int i10 = 0; i10 < iO; i10++) {
            l lVarC = jVar.c(i10);
            if (lVarC instanceof n) {
                PathComponent pathComponent = new PathComponent();
                n nVar = (n) lVarC;
                pathComponent.k(nVar.f());
                pathComponent.l(nVar.i());
                pathComponent.j(nVar.e());
                pathComponent.h(nVar.a());
                pathComponent.i(nVar.c());
                pathComponent.m(nVar.j());
                pathComponent.n(nVar.l());
                pathComponent.r(nVar.p());
                pathComponent.o(nVar.m());
                pathComponent.p(nVar.n());
                pathComponent.q(nVar.o());
                pathComponent.u(nVar.s());
                pathComponent.s(nVar.q());
                pathComponent.t(nVar.r());
                groupComponent.i(i10, pathComponent);
            } else if (lVarC instanceof j) {
                GroupComponent groupComponent2 = new GroupComponent();
                j jVar2 = (j) lVarC;
                groupComponent2.p(jVar2.f());
                groupComponent2.s(jVar2.l());
                groupComponent2.t(jVar2.m());
                groupComponent2.u(jVar2.n());
                groupComponent2.v(jVar2.p());
                groupComponent2.w(jVar2.q());
                groupComponent2.q(jVar2.i());
                groupComponent2.r(jVar2.j());
                groupComponent2.o(jVar2.e());
                c(groupComponent2, jVar2);
                groupComponent.i(i10, groupComponent2);
            }
        }
        return groupComponent;
    }

    public static final VectorPainter d(o0.e eVar, c cVar, GroupComponent groupComponent) {
        long jE = e(eVar, cVar.e(), cVar.d());
        return a(new VectorPainter(groupComponent), jE, f(jE, cVar.l(), cVar.k()), cVar.g(), b(cVar.j(), cVar.i()), cVar.c());
    }

    private static final long e(o0.e eVar, float f10, float f11) {
        return y.n.a(eVar.D0(f10), eVar.D0(f11));
    }

    private static final long f(long j10, float f10, float f11) {
        if (Float.isNaN(f10)) {
            f10 = y.m.i(j10);
        }
        if (Float.isNaN(f11)) {
            f11 = y.m.g(j10);
        }
        return y.n.a(f10, f11);
    }

    public static final VectorPainter g(c cVar, androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1413834416, i10, -1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:171)");
        }
        o0.e eVar = (o0.e) iVar.l(CompositionLocalsKt.c());
        float f10 = cVar.f();
        boolean zD = iVar.d((((long) Float.floatToRawIntBits(eVar.getDensity())) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
        Object objY = iVar.y();
        if (zD || objY == androidx.compose.runtime.i.f3427a.a()) {
            GroupComponent groupComponent = new GroupComponent();
            c(groupComponent, cVar.h());
            Unit unit = Unit.f64096a;
            objY = d(eVar, cVar, groupComponent);
            iVar.p(objY);
        }
        VectorPainter vectorPainter = (VectorPainter) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return vectorPainter;
    }
}
