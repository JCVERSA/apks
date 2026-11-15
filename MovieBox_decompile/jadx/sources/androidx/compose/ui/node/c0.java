package androidx.compose.ui.node;

import java.util.Map;

public final class c0 extends AlignmentLines {
    public c0(a aVar) {
        super(aVar, null);
    }

    @Override
    protected long d(NodeCoordinator nodeCoordinator, long j10) {
        return NodeCoordinator.I2(nodeCoordinator, j10, false, 2, null);
    }

    @Override
    protected Map e(NodeCoordinator nodeCoordinator) {
        return nodeCoordinator.a1().v();
    }

    @Override
    protected int i(NodeCoordinator nodeCoordinator, androidx.compose.ui.layout.a aVar) {
        return nodeCoordinator.S0(aVar);
    }
}
