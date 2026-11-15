package androidx.compose.ui.node;

public final class j {

    private final DepthSortedSet f5083a;

    private final DepthSortedSet f5084b;

    public j(boolean z10) {
        this.f5083a = new DepthSortedSet(z10);
        this.f5084b = new DepthSortedSet(z10);
    }

    public final void c(LayoutNode layoutNode, boolean z10) {
        if (z10) {
            this.f5083a.a(layoutNode);
            this.f5084b.a(layoutNode);
        } else {
            if (this.f5083a.b(layoutNode)) {
                return;
            }
            this.f5084b.a(layoutNode);
        }
    }

    public final boolean d(LayoutNode layoutNode) {
        return this.f5083a.b(layoutNode) || this.f5084b.b(layoutNode);
    }

    public final boolean e(LayoutNode layoutNode, boolean z10) {
        boolean zB = this.f5083a.b(layoutNode);
        if (z10) {
            return zB;
        }
        return zB || this.f5084b.b(layoutNode);
    }

    public final boolean f() {
        return this.f5084b.d() && this.f5083a.d();
    }

    public final boolean g(boolean z10) {
        return (z10 ? this.f5083a : this.f5084b).d();
    }

    public final boolean h() {
        return !f();
    }

    public final boolean i(LayoutNode layoutNode) {
        return this.f5084b.f(layoutNode) || this.f5083a.f(layoutNode);
    }
}
