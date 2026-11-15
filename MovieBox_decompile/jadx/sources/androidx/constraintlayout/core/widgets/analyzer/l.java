package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

public class l extends WidgetRun {

    public DependencyNode f6666k;

    e f6667l;

    static class a {

        static final int[] f6668a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f6668a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6668a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6668a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public l(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.f6666k = dependencyNode;
        this.f6667l = null;
        this.f6621h.f6606e = DependencyNode.Type.TOP;
        this.f6622i.f6606e = DependencyNode.Type.BOTTOM;
        dependencyNode.f6606e = DependencyNode.Type.BASELINE;
        this.f6619f = 1;
    }

    @Override
    public void a(u0.a aVar) {
        float f10;
        float fX;
        float fX2;
        int i10;
        int i11 = a.f6668a[this.f6623j.ordinal()];
        if (i11 == 1) {
            p(aVar);
        } else if (i11 == 2) {
            o(aVar);
        } else if (i11 == 3) {
            ConstraintWidget constraintWidget = this.f6615b;
            n(aVar, constraintWidget.R, constraintWidget.T, 1);
            return;
        }
        e eVar = this.f6618e;
        if (eVar.f6604c && !eVar.f6611j && this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f6615b;
            int i12 = constraintWidget2.f6593x;
            if (i12 == 2) {
                ConstraintWidget constraintWidgetM = constraintWidget2.M();
                if (constraintWidgetM != null) {
                    e eVar2 = constraintWidgetM.f6557f.f6618e;
                    if (eVar2.f6611j) {
                        this.f6618e.d((int) ((eVar2.f6608g * this.f6615b.E) + 0.5f));
                    }
                }
            } else if (i12 == 3 && constraintWidget2.f6555e.f6618e.f6611j) {
                int iY = constraintWidget2.y();
                if (iY != -1) {
                    if (iY == 0) {
                        ConstraintWidget constraintWidget3 = this.f6615b;
                        fX2 = constraintWidget3.f6555e.f6618e.f6608g * constraintWidget3.x();
                        i10 = (int) (fX2 + 0.5f);
                    } else if (iY != 1) {
                        i10 = 0;
                    } else {
                        ConstraintWidget constraintWidget4 = this.f6615b;
                        f10 = constraintWidget4.f6555e.f6618e.f6608g;
                        fX = constraintWidget4.x();
                    }
                    this.f6618e.d(i10);
                } else {
                    ConstraintWidget constraintWidget5 = this.f6615b;
                    f10 = constraintWidget5.f6555e.f6618e.f6608g;
                    fX = constraintWidget5.x();
                }
                fX2 = f10 / fX;
                i10 = (int) (fX2 + 0.5f);
                this.f6618e.d(i10);
            }
        }
        DependencyNode dependencyNode = this.f6621h;
        if (dependencyNode.f6604c) {
            DependencyNode dependencyNode2 = this.f6622i;
            if (dependencyNode2.f6604c) {
                if (dependencyNode.f6611j && dependencyNode2.f6611j && this.f6618e.f6611j) {
                    return;
                }
                if (!this.f6618e.f6611j && this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.f6615b;
                    if (constraintWidget6.f6591w == 0 && !constraintWidget6.m0()) {
                        DependencyNode dependencyNode3 = (DependencyNode) this.f6621h.f6613l.get(0);
                        DependencyNode dependencyNode4 = (DependencyNode) this.f6622i.f6613l.get(0);
                        int i13 = dependencyNode3.f6608g;
                        DependencyNode dependencyNode5 = this.f6621h;
                        int i14 = i13 + dependencyNode5.f6607f;
                        int i15 = dependencyNode4.f6608g + this.f6622i.f6607f;
                        dependencyNode5.d(i14);
                        this.f6622i.d(i15);
                        this.f6618e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.f6618e.f6611j && this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f6614a == 1 && this.f6621h.f6613l.size() > 0 && this.f6622i.f6613l.size() > 0) {
                    DependencyNode dependencyNode6 = (DependencyNode) this.f6621h.f6613l.get(0);
                    int i16 = (((DependencyNode) this.f6622i.f6613l.get(0)).f6608g + this.f6622i.f6607f) - (dependencyNode6.f6608g + this.f6621h.f6607f);
                    e eVar3 = this.f6618e;
                    int i17 = eVar3.f6652m;
                    if (i16 < i17) {
                        eVar3.d(i16);
                    } else {
                        eVar3.d(i17);
                    }
                }
                if (this.f6618e.f6611j && this.f6621h.f6613l.size() > 0 && this.f6622i.f6613l.size() > 0) {
                    DependencyNode dependencyNode7 = (DependencyNode) this.f6621h.f6613l.get(0);
                    DependencyNode dependencyNode8 = (DependencyNode) this.f6622i.f6613l.get(0);
                    int i18 = dependencyNode7.f6608g + this.f6621h.f6607f;
                    int i19 = dependencyNode8.f6608g + this.f6622i.f6607f;
                    float fT = this.f6615b.T();
                    if (dependencyNode7 == dependencyNode8) {
                        i18 = dependencyNode7.f6608g;
                        i19 = dependencyNode8.f6608g;
                        fT = 0.5f;
                    }
                    this.f6621h.d((int) (i18 + 0.5f + (((i19 - i18) - this.f6618e.f6608g) * fT)));
                    this.f6622i.d(this.f6621h.f6608g + this.f6618e.f6608g);
                }
            }
        }
    }

    @Override
    void d() {
        ConstraintWidget constraintWidgetM;
        ConstraintWidget constraintWidgetM2;
        ConstraintWidget constraintWidget = this.f6615b;
        if (constraintWidget.f6547a) {
            this.f6618e.d(constraintWidget.z());
        }
        if (!this.f6618e.f6611j) {
            this.f6617d = this.f6615b.V();
            if (this.f6615b.b0()) {
                this.f6667l = new androidx.constraintlayout.core.widgets.analyzer.a(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f6617d;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetM2 = this.f6615b.M()) != null && constraintWidgetM2.V() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int iZ = (constraintWidgetM2.z() - this.f6615b.R.f()) - this.f6615b.T.f();
                    b(this.f6621h, constraintWidgetM2.f6557f.f6621h, this.f6615b.R.f());
                    b(this.f6622i, constraintWidgetM2.f6557f.f6622i, -this.f6615b.T.f());
                    this.f6618e.d(iZ);
                    return;
                }
                if (this.f6617d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f6618e.d(this.f6615b.z());
                }
            }
        } else if (this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetM = this.f6615b.M()) != null && constraintWidgetM.V() == ConstraintWidget.DimensionBehaviour.FIXED) {
            b(this.f6621h, constraintWidgetM.f6557f.f6621h, this.f6615b.R.f());
            b(this.f6622i, constraintWidgetM.f6557f.f6622i, -this.f6615b.T.f());
            return;
        }
        e eVar = this.f6618e;
        boolean z10 = eVar.f6611j;
        if (z10) {
            ConstraintWidget constraintWidget2 = this.f6615b;
            if (constraintWidget2.f6547a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.Y;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f6542f;
                if (constraintAnchor2 != null && constraintAnchorArr[3].f6542f != null) {
                    if (constraintWidget2.m0()) {
                        this.f6621h.f6607f = this.f6615b.Y[2].f();
                        this.f6622i.f6607f = -this.f6615b.Y[3].f();
                    } else {
                        DependencyNode dependencyNodeH = h(this.f6615b.Y[2]);
                        if (dependencyNodeH != null) {
                            b(this.f6621h, dependencyNodeH, this.f6615b.Y[2].f());
                        }
                        DependencyNode dependencyNodeH2 = h(this.f6615b.Y[3]);
                        if (dependencyNodeH2 != null) {
                            b(this.f6622i, dependencyNodeH2, -this.f6615b.Y[3].f());
                        }
                        this.f6621h.f6603b = true;
                        this.f6622i.f6603b = true;
                    }
                    if (this.f6615b.b0()) {
                        b(this.f6666k, this.f6621h, this.f6615b.r());
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        b(this.f6621h, dependencyNodeH3, this.f6615b.Y[2].f());
                        b(this.f6622i, this.f6621h, this.f6618e.f6608g);
                        if (this.f6615b.b0()) {
                            b(this.f6666k, this.f6621h, this.f6615b.r());
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.f6542f != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        b(this.f6622i, dependencyNodeH4, -this.f6615b.Y[3].f());
                        b(this.f6621h, this.f6622i, -this.f6618e.f6608g);
                    }
                    if (this.f6615b.b0()) {
                        b(this.f6666k, this.f6621h, this.f6615b.r());
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.f6542f != null) {
                    DependencyNode dependencyNodeH5 = h(constraintAnchor4);
                    if (dependencyNodeH5 != null) {
                        b(this.f6666k, dependencyNodeH5, 0);
                        b(this.f6621h, this.f6666k, -this.f6615b.r());
                        b(this.f6622i, this.f6621h, this.f6618e.f6608g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof t0.a) || constraintWidget2.M() == null || this.f6615b.q(ConstraintAnchor.Type.CENTER).f6542f != null) {
                    return;
                }
                b(this.f6621h, this.f6615b.M().f6557f.f6621h, this.f6615b.a0());
                b(this.f6622i, this.f6621h, this.f6618e.f6608g);
                if (this.f6615b.b0()) {
                    b(this.f6666k, this.f6621h, this.f6615b.r());
                    return;
                }
                return;
            }
        }
        if (z10 || this.f6617d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            eVar.b(this);
        } else {
            ConstraintWidget constraintWidget3 = this.f6615b;
            int i10 = constraintWidget3.f6593x;
            if (i10 == 2) {
                ConstraintWidget constraintWidgetM3 = constraintWidget3.M();
                if (constraintWidgetM3 != null) {
                    e eVar2 = constraintWidgetM3.f6557f.f6618e;
                    this.f6618e.f6613l.add(eVar2);
                    eVar2.f6612k.add(this.f6618e);
                    e eVar3 = this.f6618e;
                    eVar3.f6603b = true;
                    eVar3.f6612k.add(this.f6621h);
                    this.f6618e.f6612k.add(this.f6622i);
                }
            } else if (i10 == 3 && !constraintWidget3.m0()) {
                ConstraintWidget constraintWidget4 = this.f6615b;
                if (constraintWidget4.f6591w != 3) {
                    e eVar4 = constraintWidget4.f6555e.f6618e;
                    this.f6618e.f6613l.add(eVar4);
                    eVar4.f6612k.add(this.f6618e);
                    e eVar5 = this.f6618e;
                    eVar5.f6603b = true;
                    eVar5.f6612k.add(this.f6621h);
                    this.f6618e.f6612k.add(this.f6622i);
                }
            }
        }
        ConstraintWidget constraintWidget5 = this.f6615b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.Y;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.f6542f;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].f6542f != null) {
            if (constraintWidget5.m0()) {
                this.f6621h.f6607f = this.f6615b.Y[2].f();
                this.f6622i.f6607f = -this.f6615b.Y[3].f();
            } else {
                DependencyNode dependencyNodeH6 = h(this.f6615b.Y[2]);
                DependencyNode dependencyNodeH7 = h(this.f6615b.Y[3]);
                if (dependencyNodeH6 != null) {
                    dependencyNodeH6.b(this);
                }
                if (dependencyNodeH7 != null) {
                    dependencyNodeH7.b(this);
                }
                this.f6623j = WidgetRun.RunType.CENTER;
            }
            if (this.f6615b.b0()) {
                c(this.f6666k, this.f6621h, 1, this.f6667l);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchor5);
            if (dependencyNodeH8 != null) {
                b(this.f6621h, dependencyNodeH8, this.f6615b.Y[2].f());
                c(this.f6622i, this.f6621h, 1, this.f6618e);
                if (this.f6615b.b0()) {
                    c(this.f6666k, this.f6621h, 1, this.f6667l);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f6617d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.f6615b.x() > 0.0f) {
                    j jVar = this.f6615b.f6555e;
                    if (jVar.f6617d == dimensionBehaviour3) {
                        jVar.f6618e.f6612k.add(this.f6618e);
                        this.f6618e.f6613l.add(this.f6615b.f6555e.f6618e);
                        this.f6618e.f6602a = this;
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.f6542f != null) {
                DependencyNode dependencyNodeH9 = h(constraintAnchor7);
                if (dependencyNodeH9 != null) {
                    b(this.f6622i, dependencyNodeH9, -this.f6615b.Y[3].f());
                    c(this.f6621h, this.f6622i, -1, this.f6618e);
                    if (this.f6615b.b0()) {
                        c(this.f6666k, this.f6621h, 1, this.f6667l);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.f6542f != null) {
                    DependencyNode dependencyNodeH10 = h(constraintAnchor8);
                    if (dependencyNodeH10 != null) {
                        b(this.f6666k, dependencyNodeH10, 0);
                        c(this.f6621h, this.f6666k, -1, this.f6667l);
                        c(this.f6622i, this.f6621h, 1, this.f6618e);
                    }
                } else if (!(constraintWidget5 instanceof t0.a) && constraintWidget5.M() != null) {
                    b(this.f6621h, this.f6615b.M().f6557f.f6621h, this.f6615b.a0());
                    c(this.f6622i, this.f6621h, 1, this.f6618e);
                    if (this.f6615b.b0()) {
                        c(this.f6666k, this.f6621h, 1, this.f6667l);
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.f6617d;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour5 && this.f6615b.x() > 0.0f) {
                        j jVar2 = this.f6615b.f6555e;
                        if (jVar2.f6617d == dimensionBehaviour5) {
                            jVar2.f6618e.f6612k.add(this.f6618e);
                            this.f6618e.f6613l.add(this.f6615b.f6555e.f6618e);
                            this.f6618e.f6602a = this;
                        }
                    }
                }
            }
        }
        if (this.f6618e.f6613l.size() == 0) {
            this.f6618e.f6604c = true;
        }
    }

    @Override
    public void e() {
        DependencyNode dependencyNode = this.f6621h;
        if (dependencyNode.f6611j) {
            this.f6615b.r1(dependencyNode.f6608g);
        }
    }

    @Override
    void f() {
        this.f6616c = null;
        this.f6621h.c();
        this.f6622i.c();
        this.f6666k.c();
        this.f6618e.c();
        this.f6620g = false;
    }

    @Override
    boolean m() {
        return this.f6617d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f6615b.f6593x == 0;
    }

    void q() {
        this.f6620g = false;
        this.f6621h.c();
        this.f6621h.f6611j = false;
        this.f6622i.c();
        this.f6622i.f6611j = false;
        this.f6666k.c();
        this.f6666k.f6611j = false;
        this.f6618e.f6611j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f6615b.v();
    }
}
