package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import java.util.HashMap;

public class a extends t0.b {
    private int X0 = 0;
    private boolean Y0 = true;
    private int Z0 = 0;

    boolean f6601a1 = false;

    public int A1() {
        return this.Z0;
    }

    public int B1() {
        int i10 = this.X0;
        if (i10 == 0 || i10 == 1) {
            return 0;
        }
        return (i10 == 2 || i10 == 3) ? 1 : -1;
    }

    protected void C1() {
        for (int i10 = 0; i10 < this.W0; i10++) {
            ConstraintWidget constraintWidget = this.V0[i10];
            if (this.Y0 || constraintWidget.h()) {
                int i11 = this.X0;
                if (i11 == 0 || i11 == 1) {
                    constraintWidget.W0(0, true);
                } else if (i11 == 2 || i11 == 3) {
                    constraintWidget.W0(1, true);
                }
            }
        }
    }

    public void D1(boolean z10) {
        this.Y0 = z10;
    }

    public void E1(int i10) {
        this.X0 = i10;
    }

    public void F1(int i10) {
        this.Z0 = i10;
    }

    @Override
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z11;
        int i10;
        int i11;
        int i12;
        ConstraintAnchor[] constraintAnchorArr2 = this.Y;
        constraintAnchorArr2[0] = this.Q;
        constraintAnchorArr2[2] = this.R;
        constraintAnchorArr2[1] = this.S;
        constraintAnchorArr2[3] = this.T;
        int i13 = 0;
        while (true) {
            constraintAnchorArr = this.Y;
            if (i13 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor = constraintAnchorArr[i13];
            constraintAnchor.f6545i = dVar.q(constraintAnchor);
            i13++;
        }
        int i14 = this.X0;
        if (i14 < 0 || i14 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i14];
        if (!this.f6601a1) {
            x1();
        }
        if (this.f6601a1) {
            this.f6601a1 = false;
            int i15 = this.X0;
            if (i15 == 0 || i15 == 1) {
                dVar.f(this.Q.f6545i, this.f6562h0);
                dVar.f(this.S.f6545i, this.f6562h0);
                return;
            } else {
                if (i15 == 2 || i15 == 3) {
                    dVar.f(this.R.f6545i, this.f6564i0);
                    dVar.f(this.T.f6545i, this.f6564i0);
                    return;
                }
                return;
            }
        }
        int i16 = 0;
        while (true) {
            if (i16 >= this.W0) {
                z11 = false;
                break;
            }
            ConstraintWidget constraintWidget = this.V0[i16];
            if ((this.Y0 || constraintWidget.h()) && ((((i11 = this.X0) == 0 || i11 == 1) && constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.Q.f6542f != null && constraintWidget.S.f6542f != null) || (((i12 = this.X0) == 2 || i12 == 3) && constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.R.f6542f != null && constraintWidget.T.f6542f != null))) {
                z11 = true;
                break;
            }
            i16++;
        }
        boolean z12 = this.Q.l() || this.S.l();
        boolean z13 = this.R.l() || this.T.l();
        int i17 = !(!z11 && (((i10 = this.X0) == 0 && z12) || ((i10 == 2 && z13) || ((i10 == 1 && z12) || (i10 == 3 && z13))))) ? 4 : 5;
        for (int i18 = 0; i18 < this.W0; i18++) {
            ConstraintWidget constraintWidget2 = this.V0[i18];
            if (this.Y0 || constraintWidget2.h()) {
                SolverVariable solverVariableQ = dVar.q(constraintWidget2.Y[this.X0]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.Y;
                int i19 = this.X0;
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr3[i19];
                constraintAnchor3.f6545i = solverVariableQ;
                ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6542f;
                int i20 = (constraintAnchor4 == null || constraintAnchor4.f6540d != this) ? 0 : constraintAnchor3.f6543g;
                if (i19 == 0 || i19 == 2) {
                    dVar.i(constraintAnchor2.f6545i, solverVariableQ, this.Z0 - i20, z11);
                } else {
                    dVar.g(constraintAnchor2.f6545i, solverVariableQ, this.Z0 + i20, z11);
                }
                dVar.e(constraintAnchor2.f6545i, solverVariableQ, this.Z0 + i20, i17);
            }
        }
        int i21 = this.X0;
        if (i21 == 0) {
            dVar.e(this.S.f6545i, this.Q.f6545i, 0, 8);
            dVar.e(this.Q.f6545i, this.f6552c0.S.f6545i, 0, 4);
            dVar.e(this.Q.f6545i, this.f6552c0.Q.f6545i, 0, 0);
            return;
        }
        if (i21 == 1) {
            dVar.e(this.Q.f6545i, this.S.f6545i, 0, 8);
            dVar.e(this.Q.f6545i, this.f6552c0.Q.f6545i, 0, 4);
            dVar.e(this.Q.f6545i, this.f6552c0.S.f6545i, 0, 0);
        } else if (i21 == 2) {
            dVar.e(this.T.f6545i, this.R.f6545i, 0, 8);
            dVar.e(this.R.f6545i, this.f6552c0.T.f6545i, 0, 4);
            dVar.e(this.R.f6545i, this.f6552c0.R.f6545i, 0, 0);
        } else if (i21 == 3) {
            dVar.e(this.R.f6545i, this.T.f6545i, 0, 8);
            dVar.e(this.R.f6545i, this.f6552c0.R.f6545i, 0, 4);
            dVar.e(this.R.f6545i, this.f6552c0.T.f6545i, 0, 0);
        }
    }

    @Override
    public boolean h() {
        return true;
    }

    @Override
    public void n(ConstraintWidget constraintWidget, HashMap map) {
        super.n(constraintWidget, map);
        a aVar = (a) constraintWidget;
        this.X0 = aVar.X0;
        this.Y0 = aVar.Y0;
        this.Z0 = aVar.Z0;
    }

    @Override
    public boolean p0() {
        return this.f6601a1;
    }

    @Override
    public boolean q0() {
        return this.f6601a1;
    }

    @Override
    public String toString() {
        String str = "[Barrier] " + v() + " {";
        for (int i10 = 0; i10 < this.W0; i10++) {
            ConstraintWidget constraintWidget = this.V0[i10];
            if (i10 > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.v();
        }
        return str + "}";
    }

    public boolean x1() {
        int i10;
        int i11;
        int i12;
        boolean z10 = true;
        int i13 = 0;
        while (true) {
            i10 = this.W0;
            if (i13 >= i10) {
                break;
            }
            ConstraintWidget constraintWidget = this.V0[i13];
            if ((this.Y0 || constraintWidget.h()) && ((((i11 = this.X0) == 0 || i11 == 1) && !constraintWidget.p0()) || (((i12 = this.X0) == 2 || i12 == 3) && !constraintWidget.q0()))) {
                z10 = false;
            }
            i13++;
        }
        if (!z10 || i10 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z11 = false;
        for (int i14 = 0; i14 < this.W0; i14++) {
            ConstraintWidget constraintWidget2 = this.V0[i14];
            if (this.Y0 || constraintWidget2.h()) {
                if (!z11) {
                    int i15 = this.X0;
                    if (i15 == 0) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.LEFT).e();
                    } else if (i15 == 1) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.RIGHT).e();
                    } else if (i15 == 2) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.TOP).e();
                    } else if (i15 == 3) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).e();
                    }
                    z11 = true;
                }
                int i16 = this.X0;
                if (i16 == 0) {
                    iMax = Math.min(iMax, constraintWidget2.q(ConstraintAnchor.Type.LEFT).e());
                } else if (i16 == 1) {
                    iMax = Math.max(iMax, constraintWidget2.q(ConstraintAnchor.Type.RIGHT).e());
                } else if (i16 == 2) {
                    iMax = Math.min(iMax, constraintWidget2.q(ConstraintAnchor.Type.TOP).e());
                } else if (i16 == 3) {
                    iMax = Math.max(iMax, constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).e());
                }
            }
        }
        int i17 = iMax + this.Z0;
        int i18 = this.X0;
        if (i18 == 0 || i18 == 1) {
            J0(i17, i17);
        } else {
            M0(i17, i17);
        }
        this.f6601a1 = true;
        return true;
    }

    public boolean y1() {
        return this.Y0;
    }

    public int z1() {
        return this.X0;
    }
}
