package androidx.constraintlayout.core.widgets.analyzer;

class e extends DependencyNode {

    public int f6652m;

    public e(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof j) {
            this.f6606e = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.f6606e = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override
    public void d(int i10) {
        if (this.f6611j) {
            return;
        }
        this.f6611j = true;
        this.f6608g = i10;
        for (u0.a aVar : this.f6612k) {
            aVar.a(aVar);
        }
    }
}
