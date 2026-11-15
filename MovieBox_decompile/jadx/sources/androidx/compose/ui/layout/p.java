package androidx.compose.ui.layout;

import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.LayoutDirection;

final class p extends g0.a {

    private final LookaheadCapablePlaceable f4886b;

    public p(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        this.f4886b = lookaheadCapablePlaceable;
    }

    @Override
    public LayoutDirection d() {
        return this.f4886b.getLayoutDirection();
    }

    @Override
    public int e() {
        return this.f4886b.s0();
    }
}
