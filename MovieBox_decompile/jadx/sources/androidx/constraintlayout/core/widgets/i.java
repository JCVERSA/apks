package androidx.constraintlayout.core.widgets;

import java.util.HashSet;

public class i extends t0.b {
    private int X0 = 0;
    private int Y0 = 0;
    private int Z0 = 0;

    private int f6771a1 = 0;

    private int f6772b1 = 0;

    private int f6773c1 = 0;

    private int f6774d1 = 0;

    private int f6775e1 = 0;

    private boolean f6776f1 = false;

    private int f6777g1 = 0;

    private int f6778h1 = 0;

    protected androidx.constraintlayout.core.widgets.analyzer.b.a f6779i1 = new androidx.constraintlayout.core.widgets.analyzer.b.a();

    androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0052b f6780j1 = null;

    public int A1() {
        return this.f6778h1;
    }

    public int B1() {
        return this.f6777g1;
    }

    public int C1() {
        return this.Y0;
    }

    public int D1() {
        return this.f6774d1;
    }

    public int E1() {
        return this.f6775e1;
    }

    public int F1() {
        return this.X0;
    }

    protected void H1(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i10, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i11) {
        while (this.f6780j1 == null && M() != null) {
            this.f6780j1 = ((d) M()).N1();
        }
        androidx.constraintlayout.core.widgets.analyzer.b.a aVar = this.f6779i1;
        aVar.f6631a = dimensionBehaviour;
        aVar.f6632b = dimensionBehaviour2;
        aVar.f6633c = i10;
        aVar.f6634d = i11;
        this.f6780j1.b(constraintWidget, aVar);
        constraintWidget.o1(this.f6779i1.f6635e);
        constraintWidget.P0(this.f6779i1.f6636f);
        constraintWidget.O0(this.f6779i1.f6638h);
        constraintWidget.E0(this.f6779i1.f6637g);
    }

    protected boolean I1() {
        ConstraintWidget constraintWidget = this.f6552c0;
        androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0052b interfaceC0052bN1 = constraintWidget != null ? ((d) constraintWidget).N1() : null;
        if (interfaceC0052bN1 == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.W0; i10++) {
            ConstraintWidget constraintWidget2 = this.V0[i10];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof f)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget2.w(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget2.w(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourW != dimensionBehaviour || constraintWidget2.f6591w == 1 || dimensionBehaviourW2 != dimensionBehaviour || constraintWidget2.f6593x == 1) {
                    if (dimensionBehaviourW == dimensionBehaviour) {
                        dimensionBehaviourW = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviourW2 == dimensionBehaviour) {
                        dimensionBehaviourW2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    androidx.constraintlayout.core.widgets.analyzer.b.a aVar = this.f6779i1;
                    aVar.f6631a = dimensionBehaviourW;
                    aVar.f6632b = dimensionBehaviourW2;
                    aVar.f6633c = constraintWidget2.Y();
                    this.f6779i1.f6634d = constraintWidget2.z();
                    interfaceC0052bN1.b(constraintWidget2, this.f6779i1);
                    constraintWidget2.o1(this.f6779i1.f6635e);
                    constraintWidget2.P0(this.f6779i1.f6636f);
                    constraintWidget2.E0(this.f6779i1.f6637g);
                }
            }
        }
        return true;
    }

    public boolean J1() {
        return this.f6776f1;
    }

    protected void K1(boolean z10) {
        this.f6776f1 = z10;
    }

    public void L1(int i10, int i11) {
        this.f6777g1 = i10;
        this.f6778h1 = i11;
    }

    public void M1(int i10) {
        this.Z0 = i10;
        this.X0 = i10;
        this.f6771a1 = i10;
        this.Y0 = i10;
        this.f6772b1 = i10;
        this.f6773c1 = i10;
    }

    public void N1(int i10) {
        this.Y0 = i10;
    }

    public void O1(int i10) {
        this.f6773c1 = i10;
    }

    public void P1(int i10) {
        this.Z0 = i10;
        this.f6774d1 = i10;
    }

    public void Q1(int i10) {
        this.f6771a1 = i10;
        this.f6775e1 = i10;
    }

    public void R1(int i10) {
        this.f6772b1 = i10;
        this.f6774d1 = i10;
        this.f6775e1 = i10;
    }

    public void S1(int i10) {
        this.X0 = i10;
    }

    @Override
    public void c(d dVar) {
        y1();
    }

    public void x1(boolean z10) {
        int i10 = this.f6772b1;
        if (i10 > 0 || this.f6773c1 > 0) {
            if (z10) {
                this.f6774d1 = this.f6773c1;
                this.f6775e1 = i10;
            } else {
                this.f6774d1 = i10;
                this.f6775e1 = this.f6773c1;
            }
        }
    }

    public void y1() {
        for (int i10 = 0; i10 < this.W0; i10++) {
            ConstraintWidget constraintWidget = this.V0[i10];
            if (constraintWidget != null) {
                constraintWidget.Y0(true);
            }
        }
    }

    public boolean z1(HashSet hashSet) {
        for (int i10 = 0; i10 < this.W0; i10++) {
            if (hashSet.contains(this.V0[i10])) {
                return true;
            }
        }
        return false;
    }

    public void G1(int i10, int i11, int i12, int i13) {
    }
}
