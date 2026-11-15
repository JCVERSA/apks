package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

public abstract class WidgetRun implements u0.a {

    public int f6614a;

    ConstraintWidget f6615b;

    k f6616c;

    protected ConstraintWidget.DimensionBehaviour f6617d;

    e f6618e = new e(this);

    public int f6619f = 0;

    boolean f6620g = false;

    public DependencyNode f6621h = new DependencyNode(this);

    public DependencyNode f6622i = new DependencyNode(this);

    protected RunType f6623j = RunType.NONE;

    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    static class a {

        static final int[] f6624a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f6624a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6624a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6624a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6624a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6624a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f6615b = constraintWidget;
    }

    private void l(int i10, int i11) {
        int i12 = this.f6614a;
        if (i12 == 0) {
            this.f6618e.d(g(i11, i10));
            return;
        }
        if (i12 == 1) {
            this.f6618e.d(Math.min(g(this.f6618e.f6652m, i10), i11));
            return;
        }
        if (i12 == 2) {
            ConstraintWidget constraintWidgetM = this.f6615b.M();
            if (constraintWidgetM != null) {
                e eVar = (i10 == 0 ? constraintWidgetM.f6555e : constraintWidgetM.f6557f).f6618e;
                if (eVar.f6611j) {
                    ConstraintWidget constraintWidget = this.f6615b;
                    this.f6618e.d(g((int) ((eVar.f6608g * (i10 == 0 ? constraintWidget.B : constraintWidget.E)) + 0.5f), i10));
                    return;
                }
                return;
            }
            return;
        }
        if (i12 != 3) {
            return;
        }
        ConstraintWidget constraintWidget2 = this.f6615b;
        WidgetRun widgetRun = constraintWidget2.f6555e;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.f6617d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.f6614a == 3) {
            l lVar = constraintWidget2.f6557f;
            if (lVar.f6617d == dimensionBehaviour2 && lVar.f6614a == 3) {
                return;
            }
        }
        if (i10 == 0) {
            widgetRun = constraintWidget2.f6557f;
        }
        if (widgetRun.f6618e.f6611j) {
            float fX = constraintWidget2.x();
            this.f6618e.d(i10 == 1 ? (int) ((widgetRun.f6618e.f6608g / fX) + 0.5f) : (int) ((fX * widgetRun.f6618e.f6608g) + 0.5f));
        }
    }

    @Override
    public abstract void a(u0.a aVar);

    protected final void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i10) {
        dependencyNode.f6613l.add(dependencyNode2);
        dependencyNode.f6607f = i10;
        dependencyNode2.f6612k.add(dependencyNode);
    }

    protected final void c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i10, e eVar) {
        dependencyNode.f6613l.add(dependencyNode2);
        dependencyNode.f6613l.add(this.f6618e);
        dependencyNode.f6609h = i10;
        dependencyNode.f6610i = eVar;
        dependencyNode2.f6612k.add(dependencyNode);
        eVar.f6612k.add(dependencyNode);
    }

    abstract void d();

    abstract void e();

    abstract void f();

    protected final int g(int i10, int i11) {
        int iMax;
        if (i11 == 0) {
            ConstraintWidget constraintWidget = this.f6615b;
            int i12 = constraintWidget.A;
            iMax = Math.max(constraintWidget.f6597z, i10);
            if (i12 > 0) {
                iMax = Math.min(i12, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.f6615b;
            int i13 = constraintWidget2.D;
            iMax = Math.max(constraintWidget2.C, i10);
            if (i13 > 0) {
                iMax = Math.min(i13, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        }
        return iMax;
    }

    protected final DependencyNode h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6542f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f6540d;
        int i10 = a.f6624a[constraintAnchor2.f6541e.ordinal()];
        if (i10 == 1) {
            return constraintWidget.f6555e.f6621h;
        }
        if (i10 == 2) {
            return constraintWidget.f6555e.f6622i;
        }
        if (i10 == 3) {
            return constraintWidget.f6557f.f6621h;
        }
        if (i10 == 4) {
            return constraintWidget.f6557f.f6666k;
        }
        if (i10 != 5) {
            return null;
        }
        return constraintWidget.f6557f.f6622i;
    }

    protected final DependencyNode i(ConstraintAnchor constraintAnchor, int i10) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6542f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f6540d;
        WidgetRun widgetRun = i10 == 0 ? constraintWidget.f6555e : constraintWidget.f6557f;
        int i11 = a.f6624a[constraintAnchor2.f6541e.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.f6622i;
        }
        return widgetRun.f6621h;
    }

    public long j() {
        e eVar = this.f6618e;
        if (eVar.f6611j) {
            return eVar.f6608g;
        }
        return 0L;
    }

    public boolean k() {
        return this.f6620g;
    }

    abstract boolean m();

    protected void n(u0.a aVar, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10) {
        DependencyNode dependencyNodeH = h(constraintAnchor);
        DependencyNode dependencyNodeH2 = h(constraintAnchor2);
        if (dependencyNodeH.f6611j && dependencyNodeH2.f6611j) {
            int iF = dependencyNodeH.f6608g + constraintAnchor.f();
            int iF2 = dependencyNodeH2.f6608g - constraintAnchor2.f();
            int i11 = iF2 - iF;
            if (!this.f6618e.f6611j && this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                l(i10, i11);
            }
            e eVar = this.f6618e;
            if (eVar.f6611j) {
                if (eVar.f6608g == i11) {
                    this.f6621h.d(iF);
                    this.f6622i.d(iF2);
                    return;
                }
                ConstraintWidget constraintWidget = this.f6615b;
                float fA = i10 == 0 ? constraintWidget.A() : constraintWidget.T();
                if (dependencyNodeH == dependencyNodeH2) {
                    iF = dependencyNodeH.f6608g;
                    iF2 = dependencyNodeH2.f6608g;
                    fA = 0.5f;
                }
                this.f6621h.d((int) (iF + 0.5f + (((iF2 - iF) - this.f6618e.f6608g) * fA)));
                this.f6622i.d(this.f6621h.f6608g + this.f6618e.f6608g);
            }
        }
    }

    protected void o(u0.a aVar) {
    }

    protected void p(u0.a aVar) {
    }
}
