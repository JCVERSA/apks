package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;

class h extends WidgetRun {
    public h(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.f6555e.f();
        constraintWidget.f6557f.f();
        this.f6619f = ((androidx.constraintlayout.core.widgets.f) constraintWidget).w1();
    }

    private void q(DependencyNode dependencyNode) {
        this.f6621h.f6612k.add(dependencyNode);
        dependencyNode.f6613l.add(this.f6621h);
    }

    @Override
    public void a(u0.a aVar) {
        DependencyNode dependencyNode = this.f6621h;
        if (dependencyNode.f6604c && !dependencyNode.f6611j) {
            this.f6621h.d((int) ((((DependencyNode) dependencyNode.f6613l.get(0)).f6608g * ((androidx.constraintlayout.core.widgets.f) this.f6615b).z1()) + 0.5f));
        }
    }

    @Override
    void d() {
        androidx.constraintlayout.core.widgets.f fVar = (androidx.constraintlayout.core.widgets.f) this.f6615b;
        int iX1 = fVar.x1();
        int iY1 = fVar.y1();
        fVar.z1();
        if (fVar.w1() == 1) {
            if (iX1 != -1) {
                this.f6621h.f6613l.add(this.f6615b.f6552c0.f6555e.f6621h);
                this.f6615b.f6552c0.f6555e.f6621h.f6612k.add(this.f6621h);
                this.f6621h.f6607f = iX1;
            } else if (iY1 != -1) {
                this.f6621h.f6613l.add(this.f6615b.f6552c0.f6555e.f6622i);
                this.f6615b.f6552c0.f6555e.f6622i.f6612k.add(this.f6621h);
                this.f6621h.f6607f = -iY1;
            } else {
                DependencyNode dependencyNode = this.f6621h;
                dependencyNode.f6603b = true;
                dependencyNode.f6613l.add(this.f6615b.f6552c0.f6555e.f6622i);
                this.f6615b.f6552c0.f6555e.f6622i.f6612k.add(this.f6621h);
            }
            q(this.f6615b.f6555e.f6621h);
            q(this.f6615b.f6555e.f6622i);
            return;
        }
        if (iX1 != -1) {
            this.f6621h.f6613l.add(this.f6615b.f6552c0.f6557f.f6621h);
            this.f6615b.f6552c0.f6557f.f6621h.f6612k.add(this.f6621h);
            this.f6621h.f6607f = iX1;
        } else if (iY1 != -1) {
            this.f6621h.f6613l.add(this.f6615b.f6552c0.f6557f.f6622i);
            this.f6615b.f6552c0.f6557f.f6622i.f6612k.add(this.f6621h);
            this.f6621h.f6607f = -iY1;
        } else {
            DependencyNode dependencyNode2 = this.f6621h;
            dependencyNode2.f6603b = true;
            dependencyNode2.f6613l.add(this.f6615b.f6552c0.f6557f.f6622i);
            this.f6615b.f6552c0.f6557f.f6622i.f6612k.add(this.f6621h);
        }
        q(this.f6615b.f6557f.f6621h);
        q(this.f6615b.f6557f.f6622i);
    }

    @Override
    public void e() {
        if (((androidx.constraintlayout.core.widgets.f) this.f6615b).w1() == 1) {
            this.f6615b.q1(this.f6621h.f6608g);
        } else {
            this.f6615b.r1(this.f6621h.f6608g);
        }
    }

    @Override
    void f() {
        this.f6621h.c();
    }

    @Override
    boolean m() {
        return false;
    }
}
