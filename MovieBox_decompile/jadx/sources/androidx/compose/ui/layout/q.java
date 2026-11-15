package androidx.compose.ui.layout;

import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.internal.Intrinsics;

public final class q implements l {

    private final androidx.compose.ui.node.j0 f4888a;

    public q(androidx.compose.ui.node.j0 j0Var) {
        this.f4888a = j0Var;
    }

    private final long b() {
        androidx.compose.ui.node.j0 j0VarA = r.a(this.f4888a);
        l lVarW0 = j0VarA.W0();
        y.g.a aVar = y.g.f75999b;
        return y.g.q(C(lVarW0, aVar.c()), a().C(j0VarA.u1(), aVar.c()));
    }

    @Override
    public long B(l lVar, long j10, boolean z10) {
        if (!(lVar instanceof q)) {
            androidx.compose.ui.node.j0 j0VarA = r.a(this.f4888a);
            return y.g.r(B(j0VarA.v1(), j10, z10), j0VarA.u1().W0().B(lVar, y.g.f75999b.c(), z10));
        }
        androidx.compose.ui.node.j0 j0Var = ((q) lVar).f4888a;
        j0Var.u1().m2();
        androidx.compose.ui.node.j0 j0VarT1 = a().K1(j0Var.u1()).T1();
        if (j0VarT1 != null) {
            long jK = o0.p.k(o0.p.l(j0Var.z1(j0VarT1, !z10), o0.q.d(j10)), this.f4888a.z1(j0VarT1, !z10));
            return y.h.a(o0.p.h(jK), o0.p.i(jK));
        }
        androidx.compose.ui.node.j0 j0VarA2 = r.a(j0Var);
        long jL = o0.p.l(o0.p.l(j0Var.z1(j0VarA2, !z10), j0VarA2.d1()), o0.q.d(j10));
        androidx.compose.ui.node.j0 j0VarA3 = r.a(this.f4888a);
        long jK2 = o0.p.k(jL, o0.p.l(this.f4888a.z1(j0VarA3, !z10), j0VarA3.d1()));
        long jA = y.h.a(o0.p.h(jK2), o0.p.i(jK2));
        NodeCoordinator nodeCoordinatorZ1 = j0VarA3.u1().Z1();
        Intrinsics.e(nodeCoordinatorZ1);
        NodeCoordinator nodeCoordinatorZ2 = j0VarA2.u1().Z1();
        Intrinsics.e(nodeCoordinatorZ2);
        return nodeCoordinatorZ1.B(nodeCoordinatorZ2, jA, z10);
    }

    @Override
    public long C(l lVar, long j10) {
        return B(lVar, j10, true);
    }

    @Override
    public boolean F() {
        return a().F();
    }

    @Override
    public long L(long j10) {
        return a().L(y.g.r(j10, b()));
    }

    @Override
    public y.i O(l lVar, boolean z10) {
        return a().O(lVar, z10);
    }

    @Override
    public l R() {
        androidx.compose.ui.node.j0 j0VarT1;
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        NodeCoordinator nodeCoordinatorZ1 = a().Z0().f0().Z1();
        if (nodeCoordinatorZ1 == null || (j0VarT1 = nodeCoordinatorZ1.T1()) == null) {
            return null;
        }
        return j0VarT1.W0();
    }

    @Override
    public long Y(long j10) {
        return a().Y(y.g.r(j10, b()));
    }

    public final NodeCoordinator a() {
        return this.f4888a.u1();
    }

    @Override
    public long k() {
        androidx.compose.ui.node.j0 j0Var = this.f4888a;
        return o0.u.a(j0Var.u0(), j0Var.l0());
    }
}
