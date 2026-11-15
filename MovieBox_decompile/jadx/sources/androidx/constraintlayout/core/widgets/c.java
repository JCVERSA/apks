package androidx.constraintlayout.core.widgets;

import java.util.ArrayList;

public class c {

    protected ConstraintWidget f6684a;

    protected ConstraintWidget f6685b;

    protected ConstraintWidget f6686c;

    protected ConstraintWidget f6687d;

    protected ConstraintWidget f6688e;

    protected ConstraintWidget f6689f;

    protected ConstraintWidget f6690g;

    protected ArrayList f6691h;

    protected int f6692i;

    protected int f6693j;

    protected float f6694k = 0.0f;

    int f6695l;

    int f6696m;

    int f6697n;

    boolean f6698o;

    private int f6699p;

    private boolean f6700q;

    protected boolean f6701r;

    protected boolean f6702s;

    protected boolean f6703t;

    protected boolean f6704u;

    private boolean f6705v;

    public c(ConstraintWidget constraintWidget, int i10, boolean z10) {
        this.f6684a = constraintWidget;
        this.f6699p = i10;
        this.f6700q = z10;
    }

    private void b() {
        int i10 = this.f6699p * 2;
        ConstraintWidget constraintWidget = this.f6684a;
        this.f6698o = true;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z10 = false;
        while (!z10) {
            this.f6692i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.P0;
            int i11 = this.f6699p;
            ConstraintWidget constraintWidget3 = null;
            constraintWidgetArr[i11] = null;
            constraintWidget.O0[i11] = null;
            if (constraintWidget.X() != 8) {
                this.f6695l++;
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget.w(this.f6699p);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourW != dimensionBehaviour) {
                    this.f6696m += constraintWidget.G(this.f6699p);
                }
                int iF = this.f6696m + constraintWidget.Y[i10].f();
                this.f6696m = iF;
                int i12 = i10 + 1;
                this.f6696m = iF + constraintWidget.Y[i12].f();
                int iF2 = this.f6697n + constraintWidget.Y[i10].f();
                this.f6697n = iF2;
                this.f6697n = iF2 + constraintWidget.Y[i12].f();
                if (this.f6685b == null) {
                    this.f6685b = constraintWidget;
                }
                this.f6687d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f6550b0;
                int i13 = this.f6699p;
                if (dimensionBehaviourArr[i13] == dimensionBehaviour) {
                    int i14 = constraintWidget.f6595y[i13];
                    if (i14 == 0 || i14 == 3 || i14 == 2) {
                        this.f6693j++;
                        float f10 = constraintWidget.N0[i13];
                        if (f10 > 0.0f) {
                            this.f6694k += f10;
                        }
                        if (c(constraintWidget, i13)) {
                            if (f10 < 0.0f) {
                                this.f6701r = true;
                            } else {
                                this.f6702s = true;
                            }
                            if (this.f6691h == null) {
                                this.f6691h = new ArrayList();
                            }
                            this.f6691h.add(constraintWidget);
                        }
                        if (this.f6689f == null) {
                            this.f6689f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget4 = this.f6690g;
                        if (constraintWidget4 != null) {
                            constraintWidget4.O0[this.f6699p] = constraintWidget;
                        }
                        this.f6690g = constraintWidget;
                    }
                    if (this.f6699p == 0) {
                        if (constraintWidget.f6591w != 0 || constraintWidget.f6597z != 0 || constraintWidget.A != 0) {
                            this.f6698o = false;
                        }
                    } else if (constraintWidget.f6593x != 0 || constraintWidget.C != 0 || constraintWidget.D != 0) {
                        this.f6698o = false;
                    }
                    if (constraintWidget.f6558f0 != 0.0f) {
                        this.f6698o = false;
                        this.f6704u = true;
                    }
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.P0[this.f6699p] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.Y[i10 + 1].f6542f;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget5 = constraintAnchor.f6540d;
                ConstraintAnchor constraintAnchor2 = constraintWidget5.Y[i10].f6542f;
                if (constraintAnchor2 != null && constraintAnchor2.f6540d == constraintWidget) {
                    constraintWidget3 = constraintWidget5;
                }
            }
            if (constraintWidget3 == null) {
                constraintWidget3 = constraintWidget;
                z10 = true;
            }
            constraintWidget2 = constraintWidget;
            constraintWidget = constraintWidget3;
        }
        ConstraintWidget constraintWidget6 = this.f6685b;
        if (constraintWidget6 != null) {
            this.f6696m -= constraintWidget6.Y[i10].f();
        }
        ConstraintWidget constraintWidget7 = this.f6687d;
        if (constraintWidget7 != null) {
            this.f6696m -= constraintWidget7.Y[i10 + 1].f();
        }
        this.f6686c = constraintWidget;
        if (this.f6699p == 0 && this.f6700q) {
            this.f6688e = constraintWidget;
        } else {
            this.f6688e = this.f6684a;
        }
        this.f6703t = this.f6702s && this.f6701r;
    }

    private static boolean c(ConstraintWidget constraintWidget, int i10) {
        int i11;
        return constraintWidget.X() != 8 && constraintWidget.f6550b0[i10] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && ((i11 = constraintWidget.f6595y[i10]) == 0 || i11 == 3);
    }

    public void a() {
        if (!this.f6705v) {
            b();
        }
        this.f6705v = true;
    }
}
