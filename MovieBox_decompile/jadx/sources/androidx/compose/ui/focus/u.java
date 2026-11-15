package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.y0;

public abstract class u {
    public static final v b(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNodeZ0;
        y0 y0VarG0;
        i focusOwner;
        NodeCoordinator nodeCoordinatorB1 = focusTargetNode.getNode().b1();
        if (nodeCoordinatorB1 == null || (layoutNodeZ0 = nodeCoordinatorB1.Z0()) == null || (y0VarG0 = layoutNodeZ0.g0()) == null || (focusOwner = y0VarG0.getFocusOwner()) == null) {
            return null;
        }
        return focusOwner.c();
    }

    public static final void c(FocusTargetNode focusTargetNode) {
        androidx.compose.ui.node.g.n(focusTargetNode).getFocusOwner().g(focusTargetNode);
    }

    public static final v d(FocusTargetNode focusTargetNode) {
        return androidx.compose.ui.node.g.n(focusTargetNode).getFocusOwner().c();
    }
}
