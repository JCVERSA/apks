package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

public class j extends WidgetRun {

    private static int[] f6656k = new int[2];

    static class a {

        static final int[] f6657a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f6657a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6657a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6657a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public j(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.f6621h.f6606e = DependencyNode.Type.LEFT;
        this.f6622i.f6606e = DependencyNode.Type.RIGHT;
        this.f6619f = 0;
    }

    private void q(int[] iArr, int i10, int i11, int i12, int i13, float f10, int i14) {
        int i15 = i11 - i10;
        int i16 = i13 - i12;
        if (i14 != -1) {
            if (i14 == 0) {
                iArr[0] = (int) ((i16 * f10) + 0.5f);
                iArr[1] = i16;
                return;
            } else {
                if (i14 != 1) {
                    return;
                }
                iArr[0] = i15;
                iArr[1] = (int) ((i15 * f10) + 0.5f);
                return;
            }
        }
        int i17 = (int) ((i16 * f10) + 0.5f);
        int i18 = (int) ((i15 / f10) + 0.5f);
        if (i17 <= i15) {
            iArr[0] = i17;
            iArr[1] = i16;
        } else if (i18 <= i16) {
            iArr[0] = i15;
            iArr[1] = i18;
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x02df  */
    /* JADX WARN: Code duplicated, block: B:127:0x02ee  */
    @Override
    public void a(u0.a aVar) {
        int iG;
        int i10;
        int iG2;
        float f10;
        float fX;
        float fX2;
        int i11;
        int i12 = a.f6657a[this.f6623j.ordinal()];
        if (i12 == 1) {
            p(aVar);
        } else if (i12 == 2) {
            o(aVar);
        } else if (i12 == 3) {
            ConstraintWidget constraintWidget = this.f6615b;
            n(aVar, constraintWidget.Q, constraintWidget.S, 0);
            return;
        }
        if (!this.f6618e.f6611j && this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f6615b;
            int i13 = constraintWidget2.f6591w;
            if (i13 == 2) {
                ConstraintWidget constraintWidgetM = constraintWidget2.M();
                if (constraintWidgetM != null) {
                    e eVar = constraintWidgetM.f6555e.f6618e;
                    if (eVar.f6611j) {
                        this.f6618e.d((int) ((eVar.f6608g * this.f6615b.B) + 0.5f));
                    }
                }
            } else if (i13 == 3) {
                int i14 = constraintWidget2.f6593x;
                if (i14 == 0 || i14 == 3) {
                    l lVar = constraintWidget2.f6557f;
                    DependencyNode dependencyNode = lVar.f6621h;
                    DependencyNode dependencyNode2 = lVar.f6622i;
                    boolean z10 = constraintWidget2.Q.f6542f != null;
                    boolean z11 = constraintWidget2.R.f6542f != null;
                    boolean z12 = constraintWidget2.S.f6542f != null;
                    boolean z13 = constraintWidget2.T.f6542f != null;
                    int iY = constraintWidget2.y();
                    if (z10 && z11 && z12 && z13) {
                        float fX3 = this.f6615b.x();
                        if (dependencyNode.f6611j && dependencyNode2.f6611j) {
                            DependencyNode dependencyNode3 = this.f6621h;
                            if (dependencyNode3.f6604c && this.f6622i.f6604c) {
                                q(f6656k, ((DependencyNode) dependencyNode3.f6613l.get(0)).f6608g + this.f6621h.f6607f, ((DependencyNode) this.f6622i.f6613l.get(0)).f6608g - this.f6622i.f6607f, dependencyNode.f6608g + dependencyNode.f6607f, dependencyNode2.f6608g - dependencyNode2.f6607f, fX3, iY);
                                this.f6618e.d(f6656k[0]);
                                this.f6615b.f6557f.f6618e.d(f6656k[1]);
                                return;
                            }
                            return;
                        }
                        DependencyNode dependencyNode4 = this.f6621h;
                        if (dependencyNode4.f6611j) {
                            DependencyNode dependencyNode5 = this.f6622i;
                            if (dependencyNode5.f6611j) {
                                if (!dependencyNode.f6604c || !dependencyNode2.f6604c) {
                                    return;
                                }
                                q(f6656k, dependencyNode4.f6608g + dependencyNode4.f6607f, dependencyNode5.f6608g - dependencyNode5.f6607f, ((DependencyNode) dependencyNode.f6613l.get(0)).f6608g + dependencyNode.f6607f, ((DependencyNode) dependencyNode2.f6613l.get(0)).f6608g - dependencyNode2.f6607f, fX3, iY);
                                this.f6618e.d(f6656k[0]);
                                this.f6615b.f6557f.f6618e.d(f6656k[1]);
                            }
                        }
                        DependencyNode dependencyNode6 = this.f6621h;
                        if (!dependencyNode6.f6604c || !this.f6622i.f6604c || !dependencyNode.f6604c || !dependencyNode2.f6604c) {
                            return;
                        }
                        q(f6656k, ((DependencyNode) dependencyNode6.f6613l.get(0)).f6608g + this.f6621h.f6607f, ((DependencyNode) this.f6622i.f6613l.get(0)).f6608g - this.f6622i.f6607f, ((DependencyNode) dependencyNode.f6613l.get(0)).f6608g + dependencyNode.f6607f, ((DependencyNode) dependencyNode2.f6613l.get(0)).f6608g - dependencyNode2.f6607f, fX3, iY);
                        this.f6618e.d(f6656k[0]);
                        this.f6615b.f6557f.f6618e.d(f6656k[1]);
                    } else if (z10 && z12) {
                        if (!this.f6621h.f6604c || !this.f6622i.f6604c) {
                            return;
                        }
                        float fX4 = this.f6615b.x();
                        int i15 = ((DependencyNode) this.f6621h.f6613l.get(0)).f6608g + this.f6621h.f6607f;
                        int i16 = ((DependencyNode) this.f6622i.f6613l.get(0)).f6608g - this.f6622i.f6607f;
                        if (iY == -1 || iY == 0) {
                            int iG3 = g(i16 - i15, 0);
                            int i17 = (int) ((iG3 * fX4) + 0.5f);
                            int iG4 = g(i17, 1);
                            if (i17 != iG4) {
                                iG3 = (int) ((iG4 / fX4) + 0.5f);
                            }
                            this.f6618e.d(iG3);
                            this.f6615b.f6557f.f6618e.d(iG4);
                        } else if (iY == 1) {
                            int iG5 = g(i16 - i15, 0);
                            int i18 = (int) ((iG5 / fX4) + 0.5f);
                            int iG6 = g(i18, 1);
                            if (i18 != iG6) {
                                iG5 = (int) ((iG6 * fX4) + 0.5f);
                            }
                            this.f6618e.d(iG5);
                            this.f6615b.f6557f.f6618e.d(iG6);
                        }
                    } else if (z11 && z13) {
                        if (!dependencyNode.f6604c || !dependencyNode2.f6604c) {
                            return;
                        }
                        float fX5 = this.f6615b.x();
                        int i19 = ((DependencyNode) dependencyNode.f6613l.get(0)).f6608g + dependencyNode.f6607f;
                        int i20 = ((DependencyNode) dependencyNode2.f6613l.get(0)).f6608g - dependencyNode2.f6607f;
                        if (iY == -1) {
                            iG = g(i20 - i19, 1);
                            i10 = (int) ((iG / fX5) + 0.5f);
                            iG2 = g(i10, 0);
                            if (i10 != iG2) {
                                iG = (int) ((iG2 * fX5) + 0.5f);
                            }
                            this.f6618e.d(iG2);
                            this.f6615b.f6557f.f6618e.d(iG);
                        } else if (iY == 0) {
                            int iG7 = g(i20 - i19, 1);
                            int i21 = (int) ((iG7 * fX5) + 0.5f);
                            int iG8 = g(i21, 0);
                            if (i21 != iG8) {
                                iG7 = (int) ((iG8 / fX5) + 0.5f);
                            }
                            this.f6618e.d(iG8);
                            this.f6615b.f6557f.f6618e.d(iG7);
                        } else if (iY == 1) {
                            iG = g(i20 - i19, 1);
                            i10 = (int) ((iG / fX5) + 0.5f);
                            iG2 = g(i10, 0);
                            if (i10 != iG2) {
                                iG = (int) ((iG2 * fX5) + 0.5f);
                            }
                            this.f6618e.d(iG2);
                            this.f6615b.f6557f.f6618e.d(iG);
                        }
                    }
                } else {
                    int iY2 = constraintWidget2.y();
                    if (iY2 != -1) {
                        if (iY2 == 0) {
                            ConstraintWidget constraintWidget3 = this.f6615b;
                            fX2 = constraintWidget3.f6557f.f6618e.f6608g / constraintWidget3.x();
                            i11 = (int) (fX2 + 0.5f);
                        } else if (iY2 != 1) {
                            i11 = 0;
                        } else {
                            ConstraintWidget constraintWidget4 = this.f6615b;
                            f10 = constraintWidget4.f6557f.f6618e.f6608g;
                            fX = constraintWidget4.x();
                        }
                        this.f6618e.d(i11);
                    } else {
                        ConstraintWidget constraintWidget5 = this.f6615b;
                        f10 = constraintWidget5.f6557f.f6618e.f6608g;
                        fX = constraintWidget5.x();
                    }
                    fX2 = f10 * fX;
                    i11 = (int) (fX2 + 0.5f);
                    this.f6618e.d(i11);
                }
            }
        }
        DependencyNode dependencyNode7 = this.f6621h;
        if (dependencyNode7.f6604c) {
            DependencyNode dependencyNode8 = this.f6622i;
            if (dependencyNode8.f6604c) {
                if (dependencyNode7.f6611j && dependencyNode8.f6611j && this.f6618e.f6611j) {
                    return;
                }
                if (!this.f6618e.f6611j && this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.f6615b;
                    if (constraintWidget6.f6591w == 0 && !constraintWidget6.k0()) {
                        DependencyNode dependencyNode9 = (DependencyNode) this.f6621h.f6613l.get(0);
                        DependencyNode dependencyNode10 = (DependencyNode) this.f6622i.f6613l.get(0);
                        int i22 = dependencyNode9.f6608g;
                        DependencyNode dependencyNode11 = this.f6621h;
                        int i23 = i22 + dependencyNode11.f6607f;
                        int i24 = dependencyNode10.f6608g + this.f6622i.f6607f;
                        dependencyNode11.d(i23);
                        this.f6622i.d(i24);
                        this.f6618e.d(i24 - i23);
                        return;
                    }
                }
                if (!this.f6618e.f6611j && this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f6614a == 1 && this.f6621h.f6613l.size() > 0 && this.f6622i.f6613l.size() > 0) {
                    int iMin = Math.min((((DependencyNode) this.f6622i.f6613l.get(0)).f6608g + this.f6622i.f6607f) - (((DependencyNode) this.f6621h.f6613l.get(0)).f6608g + this.f6621h.f6607f), this.f6618e.f6652m);
                    ConstraintWidget constraintWidget7 = this.f6615b;
                    int i25 = constraintWidget7.A;
                    int iMax = Math.max(constraintWidget7.f6597z, iMin);
                    if (i25 > 0) {
                        iMax = Math.min(i25, iMax);
                    }
                    this.f6618e.d(iMax);
                }
                if (this.f6618e.f6611j) {
                    DependencyNode dependencyNode12 = (DependencyNode) this.f6621h.f6613l.get(0);
                    DependencyNode dependencyNode13 = (DependencyNode) this.f6622i.f6613l.get(0);
                    int i26 = dependencyNode12.f6608g + this.f6621h.f6607f;
                    int i27 = dependencyNode13.f6608g + this.f6622i.f6607f;
                    float fA = this.f6615b.A();
                    if (dependencyNode12 == dependencyNode13) {
                        i26 = dependencyNode12.f6608g;
                        i27 = dependencyNode13.f6608g;
                        fA = 0.5f;
                    }
                    this.f6621h.d((int) (i26 + 0.5f + (((i27 - i26) - this.f6618e.f6608g) * fA)));
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
            this.f6618e.d(constraintWidget.Y());
        }
        if (this.f6618e.f6611j) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f6617d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour == dimensionBehaviour2 && (constraintWidgetM = this.f6615b.M()) != null && (constraintWidgetM.C() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetM.C() == dimensionBehaviour2)) {
                b(this.f6621h, constraintWidgetM.f6555e.f6621h, this.f6615b.Q.f());
                b(this.f6622i, constraintWidgetM.f6555e.f6622i, -this.f6615b.S.f());
                return;
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC = this.f6615b.C();
            this.f6617d = dimensionBehaviourC;
            if (dimensionBehaviourC != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (dimensionBehaviourC == dimensionBehaviour3 && (constraintWidgetM2 = this.f6615b.M()) != null && (constraintWidgetM2.C() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetM2.C() == dimensionBehaviour3)) {
                    int iY = (constraintWidgetM2.Y() - this.f6615b.Q.f()) - this.f6615b.S.f();
                    b(this.f6621h, constraintWidgetM2.f6555e.f6621h, this.f6615b.Q.f());
                    b(this.f6622i, constraintWidgetM2.f6555e.f6622i, -this.f6615b.S.f());
                    this.f6618e.d(iY);
                    return;
                }
                if (this.f6617d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f6618e.d(this.f6615b.Y());
                }
            }
        }
        e eVar = this.f6618e;
        if (eVar.f6611j) {
            ConstraintWidget constraintWidget2 = this.f6615b;
            if (constraintWidget2.f6547a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.Y;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f6542f;
                if (constraintAnchor2 != null && constraintAnchorArr[1].f6542f != null) {
                    if (constraintWidget2.k0()) {
                        this.f6621h.f6607f = this.f6615b.Y[0].f();
                        this.f6622i.f6607f = -this.f6615b.Y[1].f();
                        return;
                    }
                    DependencyNode dependencyNodeH = h(this.f6615b.Y[0]);
                    if (dependencyNodeH != null) {
                        b(this.f6621h, dependencyNodeH, this.f6615b.Y[0].f());
                    }
                    DependencyNode dependencyNodeH2 = h(this.f6615b.Y[1]);
                    if (dependencyNodeH2 != null) {
                        b(this.f6622i, dependencyNodeH2, -this.f6615b.Y[1].f());
                    }
                    this.f6621h.f6603b = true;
                    this.f6622i.f6603b = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        b(this.f6621h, dependencyNodeH3, this.f6615b.Y[0].f());
                        b(this.f6622i, this.f6621h, this.f6618e.f6608g);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.f6542f != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        b(this.f6622i, dependencyNodeH4, -this.f6615b.Y[1].f());
                        b(this.f6621h, this.f6622i, -this.f6618e.f6608g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof t0.a) || constraintWidget2.M() == null || this.f6615b.q(ConstraintAnchor.Type.CENTER).f6542f != null) {
                    return;
                }
                b(this.f6621h, this.f6615b.M().f6555e.f6621h, this.f6615b.Z());
                b(this.f6622i, this.f6621h, this.f6618e.f6608g);
                return;
            }
        }
        if (this.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f6615b;
            int i10 = constraintWidget3.f6591w;
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
            } else if (i10 == 3) {
                if (constraintWidget3.f6593x == 3) {
                    this.f6621h.f6602a = this;
                    this.f6622i.f6602a = this;
                    l lVar = constraintWidget3.f6557f;
                    lVar.f6621h.f6602a = this;
                    lVar.f6622i.f6602a = this;
                    eVar.f6602a = this;
                    if (constraintWidget3.m0()) {
                        this.f6618e.f6613l.add(this.f6615b.f6557f.f6618e);
                        this.f6615b.f6557f.f6618e.f6612k.add(this.f6618e);
                        l lVar2 = this.f6615b.f6557f;
                        lVar2.f6618e.f6602a = this;
                        this.f6618e.f6613l.add(lVar2.f6621h);
                        this.f6618e.f6613l.add(this.f6615b.f6557f.f6622i);
                        this.f6615b.f6557f.f6621h.f6612k.add(this.f6618e);
                        this.f6615b.f6557f.f6622i.f6612k.add(this.f6618e);
                    } else if (this.f6615b.k0()) {
                        this.f6615b.f6557f.f6618e.f6613l.add(this.f6618e);
                        this.f6618e.f6612k.add(this.f6615b.f6557f.f6618e);
                    } else {
                        this.f6615b.f6557f.f6618e.f6613l.add(this.f6618e);
                    }
                } else {
                    e eVar4 = constraintWidget3.f6557f.f6618e;
                    eVar.f6613l.add(eVar4);
                    eVar4.f6612k.add(this.f6618e);
                    this.f6615b.f6557f.f6621h.f6612k.add(this.f6618e);
                    this.f6615b.f6557f.f6622i.f6612k.add(this.f6618e);
                    e eVar5 = this.f6618e;
                    eVar5.f6603b = true;
                    eVar5.f6612k.add(this.f6621h);
                    this.f6618e.f6612k.add(this.f6622i);
                    this.f6621h.f6613l.add(this.f6618e);
                    this.f6622i.f6613l.add(this.f6618e);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.f6615b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.Y;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.f6542f;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].f6542f != null) {
            if (constraintWidget4.k0()) {
                this.f6621h.f6607f = this.f6615b.Y[0].f();
                this.f6622i.f6607f = -this.f6615b.Y[1].f();
                return;
            }
            DependencyNode dependencyNodeH5 = h(this.f6615b.Y[0]);
            DependencyNode dependencyNodeH6 = h(this.f6615b.Y[1]);
            if (dependencyNodeH5 != null) {
                dependencyNodeH5.b(this);
            }
            if (dependencyNodeH6 != null) {
                dependencyNodeH6.b(this);
            }
            this.f6623j = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode dependencyNodeH7 = h(constraintAnchor4);
            if (dependencyNodeH7 != null) {
                b(this.f6621h, dependencyNodeH7, this.f6615b.Y[0].f());
                c(this.f6622i, this.f6621h, 1, this.f6618e);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.f6542f != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchor6);
            if (dependencyNodeH8 != null) {
                b(this.f6622i, dependencyNodeH8, -this.f6615b.Y[1].f());
                c(this.f6621h, this.f6622i, -1, this.f6618e);
                return;
            }
            return;
        }
        if ((constraintWidget4 instanceof t0.a) || constraintWidget4.M() == null) {
            return;
        }
        b(this.f6621h, this.f6615b.M().f6555e.f6621h, this.f6615b.Z());
        c(this.f6622i, this.f6621h, 1, this.f6618e);
    }

    @Override
    public void e() {
        DependencyNode dependencyNode = this.f6621h;
        if (dependencyNode.f6611j) {
            this.f6615b.q1(dependencyNode.f6608g);
        }
    }

    @Override
    void f() {
        this.f6616c = null;
        this.f6621h.c();
        this.f6622i.c();
        this.f6618e.c();
        this.f6620g = false;
    }

    @Override
    boolean m() {
        return this.f6617d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f6615b.f6591w == 0;
    }

    void r() {
        this.f6620g = false;
        this.f6621h.c();
        this.f6621h.f6611j = false;
        this.f6622i.c();
        this.f6622i.f6611j = false;
        this.f6618e.f6611j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f6615b.v();
    }
}
