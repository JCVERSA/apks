package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Iterator;

class i extends WidgetRun {
    public i(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    private void q(DependencyNode dependencyNode) {
        this.f6621h.f6612k.add(dependencyNode);
        dependencyNode.f6613l.add(this.f6621h);
    }

    @Override
    public void a(u0.a aVar) {
        androidx.constraintlayout.core.widgets.a aVar2 = (androidx.constraintlayout.core.widgets.a) this.f6615b;
        int iZ1 = aVar2.z1();
        Iterator it = this.f6621h.f6613l.iterator();
        int i10 = 0;
        int i11 = -1;
        while (it.hasNext()) {
            int i12 = ((DependencyNode) it.next()).f6608g;
            if (i11 == -1 || i12 < i11) {
                i11 = i12;
            }
            if (i10 < i12) {
                i10 = i12;
            }
        }
        if (iZ1 == 0 || iZ1 == 2) {
            this.f6621h.d(i11 + aVar2.A1());
        } else {
            this.f6621h.d(i10 + aVar2.A1());
        }
    }

    @Override
    void d() {
        ConstraintWidget constraintWidget = this.f6615b;
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            this.f6621h.f6603b = true;
            androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) constraintWidget;
            int iZ1 = aVar.z1();
            boolean zY1 = aVar.y1();
            int i10 = 0;
            if (iZ1 == 0) {
                this.f6621h.f6606e = DependencyNode.Type.LEFT;
                while (i10 < aVar.W0) {
                    ConstraintWidget constraintWidget2 = aVar.V0[i10];
                    if (zY1 || constraintWidget2.X() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.f6555e.f6621h;
                        dependencyNode.f6612k.add(this.f6621h);
                        this.f6621h.f6613l.add(dependencyNode);
                    }
                    i10++;
                }
                q(this.f6615b.f6555e.f6621h);
                q(this.f6615b.f6555e.f6622i);
                return;
            }
            if (iZ1 == 1) {
                this.f6621h.f6606e = DependencyNode.Type.RIGHT;
                while (i10 < aVar.W0) {
                    ConstraintWidget constraintWidget3 = aVar.V0[i10];
                    if (zY1 || constraintWidget3.X() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.f6555e.f6622i;
                        dependencyNode2.f6612k.add(this.f6621h);
                        this.f6621h.f6613l.add(dependencyNode2);
                    }
                    i10++;
                }
                q(this.f6615b.f6555e.f6621h);
                q(this.f6615b.f6555e.f6622i);
                return;
            }
            if (iZ1 == 2) {
                this.f6621h.f6606e = DependencyNode.Type.TOP;
                while (i10 < aVar.W0) {
                    ConstraintWidget constraintWidget4 = aVar.V0[i10];
                    if (zY1 || constraintWidget4.X() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.f6557f.f6621h;
                        dependencyNode3.f6612k.add(this.f6621h);
                        this.f6621h.f6613l.add(dependencyNode3);
                    }
                    i10++;
                }
                q(this.f6615b.f6557f.f6621h);
                q(this.f6615b.f6557f.f6622i);
                return;
            }
            if (iZ1 != 3) {
                return;
            }
            this.f6621h.f6606e = DependencyNode.Type.BOTTOM;
            while (i10 < aVar.W0) {
                ConstraintWidget constraintWidget5 = aVar.V0[i10];
                if (zY1 || constraintWidget5.X() != 8) {
                    DependencyNode dependencyNode4 = constraintWidget5.f6557f.f6622i;
                    dependencyNode4.f6612k.add(this.f6621h);
                    this.f6621h.f6613l.add(dependencyNode4);
                }
                i10++;
            }
            q(this.f6615b.f6557f.f6621h);
            q(this.f6615b.f6557f.f6622i);
        }
    }

    @Override
    public void e() {
        ConstraintWidget constraintWidget = this.f6615b;
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            int iZ1 = ((androidx.constraintlayout.core.widgets.a) constraintWidget).z1();
            if (iZ1 == 0 || iZ1 == 1) {
                this.f6615b.q1(this.f6621h.f6608g);
            } else {
                this.f6615b.r1(this.f6621h.f6608g);
            }
        }
    }

    @Override
    void f() {
        this.f6616c = null;
        this.f6621h.c();
    }

    @Override
    boolean m() {
        return false;
    }
}
