package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;

public class c extends WidgetRun {

    ArrayList f6641k;

    private int f6642l;

    public c(ConstraintWidget constraintWidget, int i10) {
        super(constraintWidget);
        this.f6641k = new ArrayList();
        this.f6619f = i10;
        q();
    }

    private void q() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.f6615b;
        ConstraintWidget constraintWidgetN = constraintWidget2.N(this.f6619f);
        while (true) {
            ConstraintWidget constraintWidget3 = constraintWidgetN;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                constraintWidgetN = constraintWidget2.N(this.f6619f);
            }
        }
        this.f6615b = constraintWidget;
        this.f6641k.add(constraintWidget.P(this.f6619f));
        ConstraintWidget constraintWidgetL = constraintWidget.L(this.f6619f);
        while (constraintWidgetL != null) {
            this.f6641k.add(constraintWidgetL.P(this.f6619f));
            constraintWidgetL = constraintWidgetL.L(this.f6619f);
        }
        for (WidgetRun widgetRun : this.f6641k) {
            int i10 = this.f6619f;
            if (i10 == 0) {
                widgetRun.f6615b.f6551c = this;
            } else if (i10 == 1) {
                widgetRun.f6615b.f6553d = this;
            }
        }
        if (this.f6619f == 0 && ((androidx.constraintlayout.core.widgets.d) this.f6615b.M()).U1() && this.f6641k.size() > 1) {
            ArrayList arrayList = this.f6641k;
            this.f6615b = ((WidgetRun) arrayList.get(arrayList.size() - 1)).f6615b;
        }
        this.f6642l = this.f6619f == 0 ? this.f6615b.B() : this.f6615b.U();
    }

    private ConstraintWidget r() {
        for (int i10 = 0; i10 < this.f6641k.size(); i10++) {
            WidgetRun widgetRun = (WidgetRun) this.f6641k.get(i10);
            if (widgetRun.f6615b.X() != 8) {
                return widgetRun.f6615b;
            }
        }
        return null;
    }

    private ConstraintWidget s() {
        for (int size = this.f6641k.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = (WidgetRun) this.f6641k.get(size);
            if (widgetRun.f6615b.X() != 8) {
                return widgetRun.f6615b;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:293:0x00f4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:90:0x0153  */
    @Override
    public void a(u0.a aVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f10;
        boolean z10;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        float f11;
        if (this.f6621h.f6611j && this.f6622i.f6611j) {
            ConstraintWidget constraintWidgetM = this.f6615b.M();
            boolean zU1 = constraintWidgetM instanceof androidx.constraintlayout.core.widgets.d ? ((androidx.constraintlayout.core.widgets.d) constraintWidgetM).U1() : false;
            int i23 = this.f6622i.f6608g - this.f6621h.f6608g;
            int size = this.f6641k.size();
            int i24 = 0;
            while (true) {
                i10 = -1;
                i11 = 8;
                if (i24 >= size) {
                    i24 = -1;
                    break;
                } else if (((WidgetRun) this.f6641k.get(i24)).f6615b.X() != 8) {
                    break;
                } else {
                    i24++;
                }
            }
            int i25 = size - 1;
            for (int i26 = i25; i26 >= 0; i26--) {
                if (((WidgetRun) this.f6641k.get(i26)).f6615b.X() != 8) {
                    i10 = i26;
                    break;
                }
            }
            int i27 = 0;
            while (true) {
                if (i27 >= 2) {
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    f10 = 0.0f;
                    break;
                }
                int i28 = 0;
                i13 = 0;
                i14 = 0;
                int i29 = 0;
                f10 = 0.0f;
                while (i28 < size) {
                    WidgetRun widgetRun = (WidgetRun) this.f6641k.get(i28);
                    if (widgetRun.f6615b.X() != i11) {
                        i29++;
                        if (i28 > 0 && i28 >= i24) {
                            i13 += widgetRun.f6621h.f6607f;
                        }
                        e eVar = widgetRun.f6618e;
                        int i30 = eVar.f6608g;
                        boolean z11 = widgetRun.f6617d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z11) {
                            int i31 = this.f6619f;
                            if (i31 == 0 && !widgetRun.f6615b.f6555e.f6618e.f6611j) {
                                return;
                            }
                            if (i31 == 1 && !widgetRun.f6615b.f6557f.f6618e.f6611j) {
                                return;
                            } else {
                                i21 = i30;
                            }
                        } else {
                            i21 = i30;
                            if (widgetRun.f6614a == 1 && i27 == 0) {
                                i22 = eVar.f6652m;
                                i14++;
                            } else {
                                if (eVar.f6611j) {
                                    i22 = i21;
                                }
                                if (z11) {
                                    i13 += i22;
                                } else {
                                    i14++;
                                    f11 = widgetRun.f6615b.N0[this.f6619f];
                                    if (f11 >= 0.0f) {
                                        f10 += f11;
                                    }
                                }
                                if (i28 >= i25 && i28 < i10) {
                                    i13 += -widgetRun.f6622i.f6607f;
                                }
                            }
                            z11 = true;
                            if (z11) {
                                i14++;
                                f11 = widgetRun.f6615b.N0[this.f6619f];
                                if (f11 >= 0.0f) {
                                    f10 += f11;
                                }
                            } else {
                                i13 += i22;
                            }
                            if (i28 >= i25) {
                            }
                        }
                        i22 = i21;
                        if (z11) {
                            i14++;
                            f11 = widgetRun.f6615b.N0[this.f6619f];
                            if (f11 >= 0.0f) {
                                f10 += f11;
                            }
                        } else {
                            i13 += i22;
                        }
                        if (i28 >= i25) {
                        }
                    }
                    i28++;
                    i11 = 8;
                }
                if (i13 < i23 || i14 == 0) {
                    i12 = i29;
                    break;
                } else {
                    i27++;
                    i11 = 8;
                }
            }
            int i32 = this.f6621h.f6608g;
            if (zU1) {
                i32 = this.f6622i.f6608g;
            }
            if (i13 > i23) {
                i32 = zU1 ? i32 + ((int) (((i13 - i23) / 2.0f) + 0.5f)) : i32 - ((int) (((i13 - i23) / 2.0f) + 0.5f));
            }
            if (i14 > 0) {
                float f12 = i23 - i13;
                int i33 = (int) ((f12 / i14) + 0.5f);
                int i34 = 0;
                int i35 = 0;
                while (i34 < size) {
                    WidgetRun widgetRun2 = (WidgetRun) this.f6641k.get(i34);
                    int i36 = i33;
                    int i37 = i13;
                    if (widgetRun2.f6615b.X() != 8 && widgetRun2.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        e eVar2 = widgetRun2.f6618e;
                        if (eVar2.f6611j) {
                            zU1 = zU1;
                            i32 = i32;
                            f12 = f12;
                        } else {
                            int i38 = f10 > 0.0f ? (int) (((widgetRun2.f6615b.N0[this.f6619f] * f12) / f10) + 0.5f) : i36;
                            if (this.f6619f == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.f6615b;
                                i20 = constraintWidget.A;
                                i19 = constraintWidget.f6597z;
                            } else {
                                ConstraintWidget constraintWidget2 = widgetRun2.f6615b;
                                int i39 = constraintWidget2.D;
                                i19 = constraintWidget2.C;
                                i20 = i39;
                            }
                            int iMax = Math.max(i19, widgetRun2.f6614a == 1 ? Math.min(i38, eVar2.f6652m) : i38);
                            if (i20 > 0) {
                                iMax = Math.min(i20, iMax);
                            }
                            if (iMax != i38) {
                                i35++;
                                i38 = iMax;
                            }
                            widgetRun2.f6618e.d(i38);
                        }
                    } else {
                        zU1 = zU1;
                        i32 = i32;
                        f12 = f12;
                    }
                    i34++;
                    i33 = i36;
                    i13 = i37;
                    i32 = i32;
                    f12 = f12;
                    zU1 = zU1;
                    i12 = i12;
                }
                z10 = zU1;
                i15 = i12;
                i16 = i32;
                int i40 = i13;
                if (i35 > 0) {
                    i14 -= i35;
                    i13 = 0;
                    for (int i41 = 0; i41 < size; i41++) {
                        WidgetRun widgetRun3 = (WidgetRun) this.f6641k.get(i41);
                        if (widgetRun3.f6615b.X() != 8) {
                            if (i41 > 0 && i41 >= i24) {
                                i13 += widgetRun3.f6621h.f6607f;
                            }
                            i13 += widgetRun3.f6618e.f6608g;
                            if (i41 < i25 && i41 < i10) {
                                i13 += -widgetRun3.f6622i.f6607f;
                            }
                        }
                    }
                } else {
                    i13 = i40;
                }
                i18 = 2;
                if (this.f6642l == 2 && i35 == 0) {
                    i17 = 0;
                    this.f6642l = 0;
                } else {
                    i17 = 0;
                }
            } else {
                z10 = zU1;
                i15 = i12;
                i16 = i32;
                i17 = 0;
                i18 = 2;
            }
            if (i13 > i23) {
                this.f6642l = i18;
            }
            if (i15 > 0 && i14 == 0 && i24 == i10) {
                this.f6642l = i18;
            }
            int i42 = this.f6642l;
            if (i42 == 1) {
                int i43 = i15;
                int i44 = i43 > 1 ? (i23 - i13) / (i43 - 1) : i43 == 1 ? (i23 - i13) / 2 : i17;
                if (i14 > 0) {
                    i44 = i17;
                }
                int i45 = i16;
                for (int i46 = i17; i46 < size; i46++) {
                    WidgetRun widgetRun4 = (WidgetRun) this.f6641k.get(z10 ? size - (i46 + 1) : i46);
                    if (widgetRun4.f6615b.X() == 8) {
                        widgetRun4.f6621h.d(i45);
                        widgetRun4.f6622i.d(i45);
                    } else {
                        if (i46 > 0) {
                            i45 = z10 ? i45 - i44 : i45 + i44;
                        }
                        if (i46 > 0 && i46 >= i24) {
                            i45 = z10 ? i45 - widgetRun4.f6621h.f6607f : i45 + widgetRun4.f6621h.f6607f;
                        }
                        if (z10) {
                            widgetRun4.f6622i.d(i45);
                        } else {
                            widgetRun4.f6621h.d(i45);
                        }
                        e eVar3 = widgetRun4.f6618e;
                        int i47 = eVar3.f6608g;
                        if (widgetRun4.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.f6614a == 1) {
                            i47 = eVar3.f6652m;
                        }
                        i45 = z10 ? i45 - i47 : i45 + i47;
                        if (z10) {
                            widgetRun4.f6621h.d(i45);
                        } else {
                            widgetRun4.f6622i.d(i45);
                        }
                        widgetRun4.f6620g = true;
                        if (i46 < i25 && i46 < i10) {
                            i45 = z10 ? i45 - (-widgetRun4.f6622i.f6607f) : i45 + (-widgetRun4.f6622i.f6607f);
                        }
                    }
                }
                return;
            }
            int i48 = i15;
            if (i42 == 0) {
                int i49 = (i23 - i13) / (i48 + 1);
                if (i14 > 0) {
                    i49 = i17;
                }
                int i50 = i16;
                for (int i51 = i17; i51 < size; i51++) {
                    WidgetRun widgetRun5 = (WidgetRun) this.f6641k.get(z10 ? size - (i51 + 1) : i51);
                    if (widgetRun5.f6615b.X() == 8) {
                        widgetRun5.f6621h.d(i50);
                        widgetRun5.f6622i.d(i50);
                    } else {
                        int i52 = z10 ? i50 - i49 : i50 + i49;
                        if (i51 > 0 && i51 >= i24) {
                            i52 = z10 ? i52 - widgetRun5.f6621h.f6607f : i52 + widgetRun5.f6621h.f6607f;
                        }
                        if (z10) {
                            widgetRun5.f6622i.d(i52);
                        } else {
                            widgetRun5.f6621h.d(i52);
                        }
                        e eVar4 = widgetRun5.f6618e;
                        int iMin = eVar4.f6608g;
                        if (widgetRun5.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.f6614a == 1) {
                            iMin = Math.min(iMin, eVar4.f6652m);
                        }
                        i50 = z10 ? i52 - iMin : i52 + iMin;
                        if (z10) {
                            widgetRun5.f6621h.d(i50);
                        } else {
                            widgetRun5.f6622i.d(i50);
                        }
                        if (i51 < i25 && i51 < i10) {
                            i50 = z10 ? i50 - (-widgetRun5.f6622i.f6607f) : i50 + (-widgetRun5.f6622i.f6607f);
                        }
                    }
                }
                return;
            }
            if (i42 == 2) {
                float fA = this.f6619f == 0 ? this.f6615b.A() : this.f6615b.T();
                if (z10) {
                    fA = 1.0f - fA;
                }
                int i53 = (int) (((i23 - i13) * fA) + 0.5f);
                if (i53 < 0 || i14 > 0) {
                    i53 = i17;
                }
                int i54 = z10 ? i16 - i53 : i16 + i53;
                for (int i55 = i17; i55 < size; i55++) {
                    WidgetRun widgetRun6 = (WidgetRun) this.f6641k.get(z10 ? size - (i55 + 1) : i55);
                    if (widgetRun6.f6615b.X() == 8) {
                        widgetRun6.f6621h.d(i54);
                        widgetRun6.f6622i.d(i54);
                    } else {
                        if (i55 > 0 && i55 >= i24) {
                            i54 = z10 ? i54 - widgetRun6.f6621h.f6607f : i54 + widgetRun6.f6621h.f6607f;
                        }
                        if (z10) {
                            widgetRun6.f6622i.d(i54);
                        } else {
                            widgetRun6.f6621h.d(i54);
                        }
                        e eVar5 = widgetRun6.f6618e;
                        int i56 = eVar5.f6608g;
                        if (widgetRun6.f6617d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.f6614a == 1) {
                            i56 = eVar5.f6652m;
                        }
                        i54 = z10 ? i54 - i56 : i54 + i56;
                        if (z10) {
                            widgetRun6.f6621h.d(i54);
                        } else {
                            widgetRun6.f6622i.d(i54);
                        }
                        if (i55 < i25 && i55 < i10) {
                            i54 = z10 ? i54 - (-widgetRun6.f6622i.f6607f) : i54 + (-widgetRun6.f6622i.f6607f);
                        }
                    }
                }
            }
        }
    }

    @Override
    void d() {
        Iterator it = this.f6641k.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).d();
        }
        int size = this.f6641k.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = ((WidgetRun) this.f6641k.get(0)).f6615b;
        ConstraintWidget constraintWidget2 = ((WidgetRun) this.f6641k.get(size - 1)).f6615b;
        if (this.f6619f == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.Q;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.S;
            DependencyNode dependencyNodeI = i(constraintAnchor, 0);
            int iF = constraintAnchor.f();
            ConstraintWidget constraintWidgetR = r();
            if (constraintWidgetR != null) {
                iF = constraintWidgetR.Q.f();
            }
            if (dependencyNodeI != null) {
                b(this.f6621h, dependencyNodeI, iF);
            }
            DependencyNode dependencyNodeI2 = i(constraintAnchor2, 0);
            int iF2 = constraintAnchor2.f();
            ConstraintWidget constraintWidgetS = s();
            if (constraintWidgetS != null) {
                iF2 = constraintWidgetS.S.f();
            }
            if (dependencyNodeI2 != null) {
                b(this.f6622i, dependencyNodeI2, -iF2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.R;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.T;
            DependencyNode dependencyNodeI3 = i(constraintAnchor3, 1);
            int iF3 = constraintAnchor3.f();
            ConstraintWidget constraintWidgetR2 = r();
            if (constraintWidgetR2 != null) {
                iF3 = constraintWidgetR2.R.f();
            }
            if (dependencyNodeI3 != null) {
                b(this.f6621h, dependencyNodeI3, iF3);
            }
            DependencyNode dependencyNodeI4 = i(constraintAnchor4, 1);
            int iF4 = constraintAnchor4.f();
            ConstraintWidget constraintWidgetS2 = s();
            if (constraintWidgetS2 != null) {
                iF4 = constraintWidgetS2.T.f();
            }
            if (dependencyNodeI4 != null) {
                b(this.f6622i, dependencyNodeI4, -iF4);
            }
        }
        this.f6621h.f6602a = this;
        this.f6622i.f6602a = this;
    }

    @Override
    public void e() {
        for (int i10 = 0; i10 < this.f6641k.size(); i10++) {
            ((WidgetRun) this.f6641k.get(i10)).e();
        }
    }

    @Override
    void f() {
        this.f6616c = null;
        Iterator it = this.f6641k.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).f();
        }
    }

    @Override
    public long j() {
        int size = this.f6641k.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            WidgetRun widgetRun = (WidgetRun) this.f6641k.get(i10);
            j10 = j10 + ((long) widgetRun.f6621h.f6607f) + widgetRun.j() + ((long) widgetRun.f6622i.f6607f);
        }
        return j10;
    }

    @Override
    boolean m() {
        int size = this.f6641k.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!((WidgetRun) this.f6641k.get(i10)).m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ChainRun ");
        sb2.append(this.f6619f == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.f6641k) {
            sb2.append("<");
            sb2.append(widgetRun);
            sb2.append("> ");
        }
        return sb2.toString();
    }
}
