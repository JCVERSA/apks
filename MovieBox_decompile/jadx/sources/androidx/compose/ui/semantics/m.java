package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;

public final class m {

    private final LayoutNode f5697a;

    private final d f5698b;

    public m(LayoutNode layoutNode, d dVar) {
        this.f5697a = layoutNode;
        this.f5698b = dVar;
    }

    public final SemanticsNode a() {
        return new SemanticsNode(this.f5698b, false, this.f5697a, new i());
    }
}
