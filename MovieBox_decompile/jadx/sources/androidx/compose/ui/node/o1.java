package androidx.compose.ui.node;

public final class o1 extends androidx.compose.runtime.a {
    public o1(LayoutNode layoutNode) {
        super(layoutNode);
    }

    @Override
    public void a(int i10, int i11) {
        ((LayoutNode) d()).Y0(i10, i11);
    }

    @Override
    public void b(int i10, int i11, int i12) {
        ((LayoutNode) d()).P0(i10, i11, i12);
    }

    @Override
    public void e() {
        super.e();
        y0 y0VarG0 = ((LayoutNode) j()).g0();
        if (y0VarG0 != null) {
            y0VarG0.onEndApplyChanges();
        }
    }

    @Override
    protected void k() {
        ((LayoutNode) j()).X0();
    }

    @Override
    public void f(int i10, LayoutNode layoutNode) {
        ((LayoutNode) d()).u0(i10, layoutNode);
    }

    @Override
    public void c(int i10, LayoutNode layoutNode) {
    }
}
