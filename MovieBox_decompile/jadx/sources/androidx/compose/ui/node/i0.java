package androidx.compose.ui.node;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class i0 extends AlignmentLines {
    public i0(a aVar) {
        super(aVar, null);
    }

    @Override
    protected long d(NodeCoordinator nodeCoordinator, long j10) {
        j0 j0VarT1 = nodeCoordinator.T1();
        Intrinsics.e(j0VarT1);
        long jD1 = j0VarT1.d1();
        return y.g.r(y.h.a(o0.p.h(jD1), o0.p.i(jD1)), j10);
    }

    @Override
    protected Map e(NodeCoordinator nodeCoordinator) {
        j0 j0VarT1 = nodeCoordinator.T1();
        Intrinsics.e(j0VarT1);
        return j0VarT1.a1().v();
    }

    @Override
    protected int i(NodeCoordinator nodeCoordinator, androidx.compose.ui.layout.a aVar) {
        j0 j0VarT1 = nodeCoordinator.T1();
        Intrinsics.e(j0VarT1);
        return j0VarT1.S0(aVar);
    }
}
