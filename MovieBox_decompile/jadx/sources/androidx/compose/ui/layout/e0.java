package androidx.compose.ui.layout;

import androidx.compose.ui.node.y0;
import androidx.compose.ui.unit.LayoutDirection;

final class e0 extends g0.a {

    private final y0 f4876b;

    public e0(y0 y0Var) {
        this.f4876b = y0Var;
    }

    @Override
    public LayoutDirection d() {
        return this.f4876b.getLayoutDirection();
    }

    @Override
    public int e() {
        return this.f4876b.getRoot().m0();
    }
}
