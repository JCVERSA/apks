package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class d {

    private androidx.constraintlayout.core.widgets.d f6643a;

    private androidx.constraintlayout.core.widgets.d f6646d;

    private boolean f6644b = true;

    private boolean f6645c = true;

    private ArrayList f6647e = new ArrayList();

    private ArrayList f6648f = new ArrayList();

    private b.InterfaceC0052b f6649g = null;

    private b.a f6650h = new b.a();

    ArrayList f6651i = new ArrayList();

    public d(androidx.constraintlayout.core.widgets.d dVar) {
        this.f6643a = dVar;
        this.f6646d = dVar;
    }

    private void a(DependencyNode dependencyNode, int i10, int i11, DependencyNode dependencyNode2, ArrayList arrayList, k kVar) {
        WidgetRun widgetRun = dependencyNode.f6605d;
        if (widgetRun.f6616c == null) {
            androidx.constraintlayout.core.widgets.d dVar = this.f6643a;
            if (widgetRun == dVar.f6555e || widgetRun == dVar.f6557f) {
                return;
            }
            if (kVar == null) {
                kVar = new k(widgetRun, i11);
                arrayList.add(kVar);
            }
            widgetRun.f6616c = kVar;
            kVar.a(widgetRun);
            for (u0.a aVar : widgetRun.f6621h.f6612k) {
                if (aVar instanceof DependencyNode) {
                    a((DependencyNode) aVar, i10, 0, dependencyNode2, arrayList, kVar);
                }
            }
            for (u0.a aVar2 : widgetRun.f6622i.f6612k) {
                if (aVar2 instanceof DependencyNode) {
                    a((DependencyNode) aVar2, i10, 1, dependencyNode2, arrayList, kVar);
                }
            }
            if (i10 == 1 && (widgetRun instanceof l)) {
                for (u0.a aVar3 : ((l) widgetRun).f6666k.f6612k) {
                    if (aVar3 instanceof DependencyNode) {
                        a((DependencyNode) aVar3, i10, 2, dependencyNode2, arrayList, kVar);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.f6621h.f6613l) {
                if (dependencyNode3 == dependencyNode2) {
                    kVar.f6660b = true;
                }
                a(dependencyNode3, i10, 0, dependencyNode2, arrayList, kVar);
            }
            for (DependencyNode dependencyNode4 : widgetRun.f6622i.f6613l) {
                if (dependencyNode4 == dependencyNode2) {
                    kVar.f6660b = true;
                }
                a(dependencyNode4, i10, 1, dependencyNode2, arrayList, kVar);
            }
            if (i10 == 1 && (widgetRun instanceof l)) {
                Iterator it = ((l) widgetRun).f6666k.f6613l.iterator();
                while (it.hasNext()) {
                    a((DependencyNode) it.next(), i10, 2, dependencyNode2, arrayList, kVar);
                }
            }
        }
    }

    private boolean b(androidx.constraintlayout.core.widgets.d dVar) {
        int iY;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int iZ;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        for (ConstraintWidget constraintWidget : dVar.V0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f6550b0;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            if (constraintWidget.X() == 8) {
                constraintWidget.f6547a = true;
            } else {
                if (constraintWidget.B < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.f6591w = 2;
                }
                if (constraintWidget.E < 1.0f && dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.f6593x = 2;
                }
                if (constraintWidget.x() > 0.0f) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour5 == dimensionBehaviour7 && (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.f6591w = 3;
                    } else if (dimensionBehaviour6 == dimensionBehaviour7 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.f6593x = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour7 && dimensionBehaviour6 == dimensionBehaviour7) {
                        if (constraintWidget.f6591w == 0) {
                            constraintWidget.f6591w = 3;
                        }
                        if (constraintWidget.f6593x == 0) {
                            constraintWidget.f6593x = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour5 == dimensionBehaviour8 && constraintWidget.f6591w == 1 && (constraintWidget.Q.f6542f == null || constraintWidget.S.f6542f == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = dimensionBehaviour5;
                if (dimensionBehaviour6 == dimensionBehaviour8 && constraintWidget.f6593x == 1 && (constraintWidget.R.f6542f == null || constraintWidget.T.f6542f == null)) {
                    dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviour6;
                j jVar = constraintWidget.f6555e;
                jVar.f6617d = dimensionBehaviour9;
                int i10 = constraintWidget.f6591w;
                jVar.f6614a = i10;
                l lVar = constraintWidget.f6557f;
                lVar.f6617d = dimensionBehaviour10;
                int i11 = constraintWidget.f6593x;
                lVar.f6614a = i11;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if ((dimensionBehaviour9 == dimensionBehaviour11 || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour10 == dimensionBehaviour11 || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    int iY2 = constraintWidget.Y();
                    if (dimensionBehaviour9 == dimensionBehaviour11) {
                        iY = (dVar.Y() - constraintWidget.Q.f6543g) - constraintWidget.S.f6543g;
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iY = iY2;
                        dimensionBehaviour = dimensionBehaviour9;
                    }
                    int iZ2 = constraintWidget.z();
                    if (dimensionBehaviour10 == dimensionBehaviour11) {
                        iZ = (dVar.z() - constraintWidget.R.f6543g) - constraintWidget.T.f6543g;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iZ = iZ2;
                        dimensionBehaviour2 = dimensionBehaviour10;
                    }
                    l(constraintWidget, dimensionBehaviour, iY, dimensionBehaviour2, iZ);
                    constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                    constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                    constraintWidget.f6547a = true;
                } else {
                    if (dimensionBehaviour9 == dimensionBehaviour8 && (dimensionBehaviour10 == (dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i10 == 3) {
                            if (dimensionBehaviour10 == dimensionBehaviour4) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                            }
                            int iZ3 = constraintWidget.z();
                            int i12 = (int) ((iZ3 * constraintWidget.f6558f0) + 0.5f);
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour12, i12, dimensionBehaviour12, iZ3);
                            constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                            constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                            constraintWidget.f6547a = true;
                        } else if (i10 == 1) {
                            l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                            constraintWidget.f6555e.f6618e.f6652m = constraintWidget.Y();
                        } else if (i10 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = dVar.f6550b0[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour13 == dimensionBehaviour14 || dimensionBehaviour13 == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour14, (int) ((constraintWidget.B * dVar.Y()) + 0.5f), dimensionBehaviour10, constraintWidget.z());
                                constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                                constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                                constraintWidget.f6547a = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr = constraintWidget.Y;
                            if (constraintAnchorArr[0].f6542f == null || constraintAnchorArr[1].f6542f == null) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                                constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                                constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                                constraintWidget.f6547a = true;
                            }
                        }
                    }
                    if (dimensionBehaviour10 == dimensionBehaviour8 && (dimensionBehaviour9 == (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i11 == 3) {
                            if (dimensionBehaviour9 == dimensionBehaviour3) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                            }
                            int iY3 = constraintWidget.Y();
                            float f10 = constraintWidget.f6558f0;
                            if (constraintWidget.y() == -1) {
                                f10 = 1.0f / f10;
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour15, iY3, dimensionBehaviour15, (int) ((iY3 * f10) + 0.5f));
                            constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                            constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                            constraintWidget.f6547a = true;
                        } else if (i11 == 1) {
                            l(constraintWidget, dimensionBehaviour9, 0, dimensionBehaviour3, 0);
                            constraintWidget.f6557f.f6618e.f6652m = constraintWidget.z();
                        } else if (i11 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = dVar.f6550b0[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour16 == dimensionBehaviour17 || dimensionBehaviour16 == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour9, constraintWidget.Y(), dimensionBehaviour17, (int) ((constraintWidget.E * dVar.z()) + 0.5f));
                                constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                                constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                                constraintWidget.f6547a = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.Y;
                            if (constraintAnchorArr2[2].f6542f == null || constraintAnchorArr2[3].f6542f == null) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour10, 0);
                                constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                                constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                                constraintWidget.f6547a = true;
                            }
                        }
                    }
                    if (dimensionBehaviour9 == dimensionBehaviour8 && dimensionBehaviour10 == dimensionBehaviour8) {
                        if (i10 == 1 || i11 == 1) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            l(constraintWidget, dimensionBehaviour18, 0, dimensionBehaviour18, 0);
                            constraintWidget.f6555e.f6618e.f6652m = constraintWidget.Y();
                            constraintWidget.f6557f.f6618e.f6652m = constraintWidget.z();
                        } else if (i11 == 2 && i10 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = dVar.f6550b0;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviourArr2[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour19 == dimensionBehaviour20 && dimensionBehaviourArr2[1] == dimensionBehaviour20) {
                                l(constraintWidget, dimensionBehaviour20, (int) ((constraintWidget.B * dVar.Y()) + 0.5f), dimensionBehaviour20, (int) ((constraintWidget.E * dVar.z()) + 0.5f));
                                constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                                constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                                constraintWidget.f6547a = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int e(androidx.constraintlayout.core.widgets.d dVar, int i10) {
        int size = this.f6651i.size();
        long jMax = 0;
        for (int i11 = 0; i11 < size; i11++) {
            jMax = Math.max(jMax, ((k) this.f6651i.get(i11)).b(dVar, i10));
        }
        return (int) jMax;
    }

    private void i(WidgetRun widgetRun, int i10, ArrayList arrayList) {
        for (u0.a aVar : widgetRun.f6621h.f6612k) {
            if (aVar instanceof DependencyNode) {
                a((DependencyNode) aVar, i10, 0, widgetRun.f6622i, arrayList, null);
            } else if (aVar instanceof WidgetRun) {
                a(((WidgetRun) aVar).f6621h, i10, 0, widgetRun.f6622i, arrayList, null);
            }
        }
        for (u0.a aVar2 : widgetRun.f6622i.f6612k) {
            if (aVar2 instanceof DependencyNode) {
                a((DependencyNode) aVar2, i10, 1, widgetRun.f6621h, arrayList, null);
            } else if (aVar2 instanceof WidgetRun) {
                a(((WidgetRun) aVar2).f6622i, i10, 1, widgetRun.f6621h, arrayList, null);
            }
        }
        if (i10 == 1) {
            for (u0.a aVar3 : ((l) widgetRun).f6666k.f6612k) {
                if (aVar3 instanceof DependencyNode) {
                    a((DependencyNode) aVar3, i10, 2, null, arrayList, null);
                }
            }
        }
    }

    private void l(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i10, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i11) {
        b.a aVar = this.f6650h;
        aVar.f6631a = dimensionBehaviour;
        aVar.f6632b = dimensionBehaviour2;
        aVar.f6633c = i10;
        aVar.f6634d = i11;
        this.f6649g.b(constraintWidget, aVar);
        constraintWidget.o1(this.f6650h.f6635e);
        constraintWidget.P0(this.f6650h.f6636f);
        constraintWidget.O0(this.f6650h.f6638h);
        constraintWidget.E0(this.f6650h.f6637g);
    }

    public void c() {
        d(this.f6647e);
        this.f6651i.clear();
        k.f6658h = 0;
        i(this.f6643a.f6555e, 0, this.f6651i);
        i(this.f6643a.f6557f, 1, this.f6651i);
        this.f6644b = false;
    }

    public void d(ArrayList arrayList) {
        arrayList.clear();
        this.f6646d.f6555e.f();
        this.f6646d.f6557f.f();
        arrayList.add(this.f6646d.f6555e);
        arrayList.add(this.f6646d.f6557f);
        HashSet hashSet = null;
        for (ConstraintWidget constraintWidget : this.f6646d.V0) {
            if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
                arrayList.add(new h(constraintWidget));
            } else {
                if (constraintWidget.k0()) {
                    if (constraintWidget.f6551c == null) {
                        constraintWidget.f6551c = new c(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f6551c);
                } else {
                    arrayList.add(constraintWidget.f6555e);
                }
                if (constraintWidget.m0()) {
                    if (constraintWidget.f6553d == null) {
                        constraintWidget.f6553d = new c(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f6553d);
                } else {
                    arrayList.add(constraintWidget.f6557f);
                }
                if (constraintWidget instanceof t0.b) {
                    arrayList.add(new i(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).f();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it2.next();
            if (widgetRun.f6615b != this.f6646d) {
                widgetRun.d();
            }
        }
    }

    public boolean f(boolean z10) {
        boolean z11;
        boolean z12 = false;
        if (this.f6644b || this.f6645c) {
            for (ConstraintWidget constraintWidget : this.f6643a.V0) {
                constraintWidget.p();
                constraintWidget.f6547a = false;
                constraintWidget.f6555e.r();
                constraintWidget.f6557f.q();
            }
            this.f6643a.p();
            androidx.constraintlayout.core.widgets.d dVar = this.f6643a;
            dVar.f6547a = false;
            dVar.f6555e.r();
            this.f6643a.f6557f.q();
            this.f6645c = false;
        }
        if (b(this.f6646d)) {
            return false;
        }
        this.f6643a.q1(0);
        this.f6643a.r1(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW = this.f6643a.w(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = this.f6643a.w(1);
        if (this.f6644b) {
            c();
        }
        int iZ = this.f6643a.Z();
        int iA0 = this.f6643a.a0();
        this.f6643a.f6555e.f6621h.d(iZ);
        this.f6643a.f6557f.f6621h.d(iA0);
        m();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviourW == dimensionBehaviour || dimensionBehaviourW2 == dimensionBehaviour) {
            if (z10) {
                Iterator it = this.f6647e.iterator();
                while (it.hasNext()) {
                    if (!((WidgetRun) it.next()).m()) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (z10 && dimensionBehaviourW == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f6643a.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar2 = this.f6643a;
                dVar2.o1(e(dVar2, 0));
                androidx.constraintlayout.core.widgets.d dVar3 = this.f6643a;
                dVar3.f6555e.f6618e.d(dVar3.Y());
            }
            if (z10 && dimensionBehaviourW2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f6643a.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar4 = this.f6643a;
                dVar4.P0(e(dVar4, 1));
                androidx.constraintlayout.core.widgets.d dVar5 = this.f6643a;
                dVar5.f6557f.f6618e.d(dVar5.z());
            }
        }
        androidx.constraintlayout.core.widgets.d dVar6 = this.f6643a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dVar6.f6550b0[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int iY = dVar6.Y() + iZ;
            this.f6643a.f6555e.f6622i.d(iY);
            this.f6643a.f6555e.f6618e.d(iY - iZ);
            m();
            androidx.constraintlayout.core.widgets.d dVar7 = this.f6643a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dVar7.f6550b0[1];
            if (dimensionBehaviour4 == dimensionBehaviour3 || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iZ2 = dVar7.z() + iA0;
                this.f6643a.f6557f.f6622i.d(iZ2);
                this.f6643a.f6557f.f6618e.d(iZ2 - iA0);
            }
            m();
            z11 = true;
        } else {
            z11 = false;
        }
        for (WidgetRun widgetRun : this.f6647e) {
            if (widgetRun.f6615b != this.f6643a || widgetRun.f6620g) {
                widgetRun.e();
            }
        }
        for (WidgetRun widgetRun2 : this.f6647e) {
            if (z11 || widgetRun2.f6615b != this.f6643a) {
                if (!widgetRun2.f6621h.f6611j || ((!widgetRun2.f6622i.f6611j && !(widgetRun2 instanceof h)) || (!widgetRun2.f6618e.f6611j && !(widgetRun2 instanceof c) && !(widgetRun2 instanceof h)))) {
                    this.f6643a.T0(dimensionBehaviourW);
                    this.f6643a.k1(dimensionBehaviourW2);
                    return z12;
                }
            }
        }
        z12 = true;
        this.f6643a.T0(dimensionBehaviourW);
        this.f6643a.k1(dimensionBehaviourW2);
        return z12;
    }

    public boolean g(boolean z10) {
        if (this.f6644b) {
            for (ConstraintWidget constraintWidget : this.f6643a.V0) {
                constraintWidget.p();
                constraintWidget.f6547a = false;
                j jVar = constraintWidget.f6555e;
                jVar.f6618e.f6611j = false;
                jVar.f6620g = false;
                jVar.r();
                l lVar = constraintWidget.f6557f;
                lVar.f6618e.f6611j = false;
                lVar.f6620g = false;
                lVar.q();
            }
            this.f6643a.p();
            androidx.constraintlayout.core.widgets.d dVar = this.f6643a;
            dVar.f6547a = false;
            j jVar2 = dVar.f6555e;
            jVar2.f6618e.f6611j = false;
            jVar2.f6620g = false;
            jVar2.r();
            l lVar2 = this.f6643a.f6557f;
            lVar2.f6618e.f6611j = false;
            lVar2.f6620g = false;
            lVar2.q();
            c();
        }
        if (b(this.f6646d)) {
            return false;
        }
        this.f6643a.q1(0);
        this.f6643a.r1(0);
        this.f6643a.f6555e.f6621h.d(0);
        this.f6643a.f6557f.f6621h.d(0);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c1  */
    public boolean h(boolean z10, int i10) {
        boolean z11;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z12 = false;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW = this.f6643a.w(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = this.f6643a.w(1);
        int iZ = this.f6643a.Z();
        int iA0 = this.f6643a.a0();
        if (z10 && (dimensionBehaviourW == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviourW2 == dimensionBehaviour)) {
            for (WidgetRun widgetRun : this.f6647e) {
                if (widgetRun.f6619f == i10 && !widgetRun.m()) {
                    z10 = false;
                    break;
                }
            }
            if (i10 == 0) {
                if (z10 && dimensionBehaviourW == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f6643a.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                    androidx.constraintlayout.core.widgets.d dVar = this.f6643a;
                    dVar.o1(e(dVar, 0));
                    androidx.constraintlayout.core.widgets.d dVar2 = this.f6643a;
                    dVar2.f6555e.f6618e.d(dVar2.Y());
                }
            } else if (z10 && dimensionBehaviourW2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f6643a.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar3 = this.f6643a;
                dVar3.P0(e(dVar3, 1));
                androidx.constraintlayout.core.widgets.d dVar4 = this.f6643a;
                dVar4.f6557f.f6618e.d(dVar4.z());
            }
        }
        if (i10 == 0) {
            androidx.constraintlayout.core.widgets.d dVar5 = this.f6643a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dVar5.f6550b0[0];
            if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iY = dVar5.Y() + iZ;
                this.f6643a.f6555e.f6622i.d(iY);
                this.f6643a.f6555e.f6618e.d(iY - iZ);
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            androidx.constraintlayout.core.widgets.d dVar6 = this.f6643a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dVar6.f6550b0[1];
            if (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iZ2 = dVar6.z() + iA0;
                this.f6643a.f6557f.f6622i.d(iZ2);
                this.f6643a.f6557f.f6618e.d(iZ2 - iA0);
                z11 = true;
            } else {
                z11 = false;
            }
        }
        m();
        for (WidgetRun widgetRun2 : this.f6647e) {
            if (widgetRun2.f6619f == i10 && (widgetRun2.f6615b != this.f6643a || widgetRun2.f6620g)) {
                widgetRun2.e();
            }
        }
        for (WidgetRun widgetRun3 : this.f6647e) {
            if (widgetRun3.f6619f == i10 && (z11 || widgetRun3.f6615b != this.f6643a)) {
                if (!widgetRun3.f6621h.f6611j || !widgetRun3.f6622i.f6611j || (!(widgetRun3 instanceof c) && !widgetRun3.f6618e.f6611j)) {
                    this.f6643a.T0(dimensionBehaviourW);
                    this.f6643a.k1(dimensionBehaviourW2);
                    return z12;
                }
            }
        }
        z12 = true;
        this.f6643a.T0(dimensionBehaviourW);
        this.f6643a.k1(dimensionBehaviourW2);
        return z12;
    }

    public void j() {
        this.f6644b = true;
    }

    public void k() {
        this.f6645c = true;
    }

    public void m() {
        e eVar;
        for (ConstraintWidget constraintWidget : this.f6643a.V0) {
            if (!constraintWidget.f6547a) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f6550b0;
                boolean z10 = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i10 = constraintWidget.f6591w;
                int i11 = constraintWidget.f6593x;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z11 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i10 == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i11 == 1)) {
                    z10 = true;
                }
                e eVar2 = constraintWidget.f6555e.f6618e;
                boolean z12 = eVar2.f6611j;
                e eVar3 = constraintWidget.f6557f.f6618e;
                boolean z13 = eVar3.f6611j;
                if (z12 && z13) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    l(constraintWidget, dimensionBehaviour4, eVar2.f6608g, dimensionBehaviour4, eVar3.f6608g);
                    constraintWidget.f6547a = true;
                } else if (z12 && z10) {
                    l(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, eVar2.f6608g, dimensionBehaviour3, eVar3.f6608g);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.f6557f.f6618e.f6652m = constraintWidget.z();
                    } else {
                        constraintWidget.f6557f.f6618e.d(constraintWidget.z());
                        constraintWidget.f6547a = true;
                    }
                } else if (z13 && z11) {
                    l(constraintWidget, dimensionBehaviour3, eVar2.f6608g, ConstraintWidget.DimensionBehaviour.FIXED, eVar3.f6608g);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.f6555e.f6618e.f6652m = constraintWidget.Y();
                    } else {
                        constraintWidget.f6555e.f6618e.d(constraintWidget.Y());
                        constraintWidget.f6547a = true;
                    }
                }
                if (constraintWidget.f6547a && (eVar = constraintWidget.f6557f.f6667l) != null) {
                    eVar.d(constraintWidget.r());
                }
            }
        }
    }

    public void n(b.InterfaceC0052b interfaceC0052b) {
        this.f6649g = interfaceC0052b;
    }
}
