package androidx.compose.ui.node;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class j0 extends LookaheadCapablePlaceable implements androidx.compose.ui.layout.s {

    private final NodeCoordinator f5085p;

    private Map f5087r;

    private androidx.compose.ui.layout.v f5089t;

    private long f5086q = o0.p.f67416b.a();

    private final androidx.compose.ui.layout.q f5088s = new androidx.compose.ui.layout.q(this);

    private final Map f5090u = new LinkedHashMap();

    public j0(NodeCoordinator nodeCoordinator) {
        this.f5085p = nodeCoordinator;
    }

    public final void B1(androidx.compose.ui.layout.v vVar) {
        Unit unit;
        Map map;
        if (vVar != null) {
            A0(o0.u.a(vVar.getWidth(), vVar.getHeight()));
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        if (unit == null) {
            A0(o0.t.f67425b.a());
        }
        if (!Intrinsics.c(this.f5089t, vVar) && vVar != null && ((((map = this.f5087r) != null && !map.isEmpty()) || !vVar.v().isEmpty()) && !Intrinsics.c(vVar.v(), this.f5087r))) {
            q1().v().m();
            Map linkedHashMap = this.f5087r;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                this.f5087r = linkedHashMap;
            }
            linkedHashMap.clear();
            linkedHashMap.putAll(vVar.v());
        }
        this.f5089t = vVar;
    }

    private final void x1(long j10) {
        if (!o0.p.g(d1(), j10)) {
            A1(j10);
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateH = Z0().P().H();
            if (lookaheadPassDelegateH != null) {
                lookaheadPassDelegateH.e1();
            }
            f1(this.f5085p);
        }
        if (i1()) {
            return;
        }
        Q0(a1());
    }

    public void A1(long j10) {
        this.f5086q = j10;
    }

    @Override
    public float B0() {
        return this.f5085p.B0();
    }

    @Override
    public Object G() {
        return this.f5085p.G();
    }

    @Override
    public LookaheadCapablePlaceable V0() {
        NodeCoordinator nodeCoordinatorY1 = this.f5085p.Y1();
        if (nodeCoordinatorY1 != null) {
            return nodeCoordinatorY1.T1();
        }
        return null;
    }

    @Override
    public boolean W() {
        return true;
    }

    @Override
    public androidx.compose.ui.layout.l W0() {
        return this.f5088s;
    }

    @Override
    public boolean Y0() {
        return this.f5089t != null;
    }

    @Override
    public LayoutNode Z0() {
        return this.f5085p.Z0();
    }

    @Override
    public androidx.compose.ui.layout.v a1() {
        androidx.compose.ui.layout.v vVar = this.f5089t;
        if (vVar != null) {
            return vVar;
        }
        throw new IllegalStateException("LookaheadDelegate has not been measured yet when measureResult is requested.");
    }

    @Override
    public LookaheadCapablePlaceable b1() {
        NodeCoordinator nodeCoordinatorZ1 = this.f5085p.Z1();
        if (nodeCoordinatorZ1 != null) {
            return nodeCoordinatorZ1.T1();
        }
        return null;
    }

    @Override
    public long d1() {
        return this.f5086q;
    }

    @Override
    public float getDensity() {
        return this.f5085p.getDensity();
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return this.f5085p.getLayoutDirection();
    }

    @Override
    public void l1() {
        y0(d1(), 0.0f, null);
    }

    public a q1() {
        a aVarC = this.f5085p.Z0().P().C();
        Intrinsics.e(aVarC);
        return aVarC;
    }

    public final int r1(androidx.compose.ui.layout.a aVar) {
        Integer num = (Integer) this.f5090u.get(aVar);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    protected final Map s1() {
        return this.f5090u;
    }

    public final long t1() {
        return t0();
    }

    public final NodeCoordinator u1() {
        return this.f5085p;
    }

    public final androidx.compose.ui.layout.q v1() {
        return this.f5088s;
    }

    protected void w1() {
        a1().w();
    }

    @Override
    public final void y0(long j10, float f10, Function1 function1) {
        x1(j10);
        if (j1()) {
            return;
        }
        w1();
    }

    public final void y1(long j10) {
        x1(o0.p.l(j10, k0()));
    }

    public final long z1(j0 j0Var, boolean z10) {
        long jA = o0.p.f67416b.a();
        j0 j0VarT1 = this;
        while (!Intrinsics.c(j0VarT1, j0Var)) {
            if (!j0VarT1.h1() || !z10) {
                jA = o0.p.l(jA, j0VarT1.d1());
            }
            NodeCoordinator nodeCoordinatorZ1 = j0VarT1.f5085p.Z1();
            Intrinsics.e(nodeCoordinatorZ1);
            j0VarT1 = nodeCoordinatorZ1.T1();
            Intrinsics.e(j0VarT1);
        }
        return jA;
    }
}
