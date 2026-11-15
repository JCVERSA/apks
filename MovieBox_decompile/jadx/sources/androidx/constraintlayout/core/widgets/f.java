package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import java.util.HashMap;

public class f extends ConstraintWidget {
    protected float V0 = -1.0f;
    protected int W0 = -1;
    protected int X0 = -1;
    protected boolean Y0 = true;
    private ConstraintAnchor Z0 = this.R;

    private int f6766a1 = 0;

    private int f6767b1 = 0;

    private boolean f6768c1;

    static class a {

        static final int[] f6769a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f6769a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6769a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6769a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6769a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6769a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6769a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6769a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6769a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6769a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public f() {
        this.Z.clear();
        this.Z.add(this.Z0);
        int length = this.Y.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.Y[i10] = this.Z0;
        }
    }

    public void A1(int i10) {
        this.Z0.t(i10);
        this.f6768c1 = true;
    }

    public void B1(int i10) {
        if (i10 > -1) {
            this.V0 = -1.0f;
            this.W0 = i10;
            this.X0 = -1;
        }
    }

    public void C1(int i10) {
        if (i10 > -1) {
            this.V0 = -1.0f;
            this.W0 = -1;
            this.X0 = i10;
        }
    }

    public void D1(float f10) {
        if (f10 > -1.0f) {
            this.V0 = f10;
            this.W0 = -1;
            this.X0 = -1;
        }
    }

    public void E1(int i10) {
        if (this.f6766a1 == i10) {
            return;
        }
        this.f6766a1 = i10;
        this.Z.clear();
        if (this.f6766a1 == 1) {
            this.Z0 = this.Q;
        } else {
            this.Z0 = this.R;
        }
        this.Z.add(this.Z0);
        int length = this.Y.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.Y[i11] = this.Z0;
        }
    }

    @Override
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        d dVar2 = (d) M();
        if (dVar2 == null) {
            return;
        }
        ConstraintAnchor constraintAnchorQ = dVar2.q(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor constraintAnchorQ2 = dVar2.q(ConstraintAnchor.Type.RIGHT);
        ConstraintWidget constraintWidget = this.f6552c0;
        boolean z11 = constraintWidget != null && constraintWidget.f6550b0[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (this.f6766a1 == 0) {
            constraintAnchorQ = dVar2.q(ConstraintAnchor.Type.TOP);
            constraintAnchorQ2 = dVar2.q(ConstraintAnchor.Type.BOTTOM);
            ConstraintWidget constraintWidget2 = this.f6552c0;
            z11 = constraintWidget2 != null && constraintWidget2.f6550b0[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        if (this.f6768c1 && this.Z0.n()) {
            SolverVariable solverVariableQ = dVar.q(this.Z0);
            dVar.f(solverVariableQ, this.Z0.e());
            if (this.W0 != -1) {
                if (z11) {
                    dVar.h(dVar.q(constraintAnchorQ2), solverVariableQ, 0, 5);
                }
            } else if (this.X0 != -1 && z11) {
                SolverVariable solverVariableQ2 = dVar.q(constraintAnchorQ2);
                dVar.h(solverVariableQ, dVar.q(constraintAnchorQ), 0, 5);
                dVar.h(solverVariableQ2, solverVariableQ, 0, 5);
            }
            this.f6768c1 = false;
            return;
        }
        if (this.W0 != -1) {
            SolverVariable solverVariableQ3 = dVar.q(this.Z0);
            dVar.e(solverVariableQ3, dVar.q(constraintAnchorQ), this.W0, 8);
            if (z11) {
                dVar.h(dVar.q(constraintAnchorQ2), solverVariableQ3, 0, 5);
                return;
            }
            return;
        }
        if (this.X0 == -1) {
            if (this.V0 != -1.0f) {
                dVar.d(androidx.constraintlayout.core.d.s(dVar, dVar.q(this.Z0), dVar.q(constraintAnchorQ2), this.V0));
                return;
            }
            return;
        }
        SolverVariable solverVariableQ4 = dVar.q(this.Z0);
        SolverVariable solverVariableQ5 = dVar.q(constraintAnchorQ2);
        dVar.e(solverVariableQ4, solverVariableQ5, -this.X0, 8);
        if (z11) {
            dVar.h(solverVariableQ4, dVar.q(constraintAnchorQ), 0, 5);
            dVar.h(solverVariableQ5, solverVariableQ4, 0, 5);
        }
    }

    @Override
    public boolean h() {
        return true;
    }

    @Override
    public void n(ConstraintWidget constraintWidget, HashMap map) {
        super.n(constraintWidget, map);
        f fVar = (f) constraintWidget;
        this.V0 = fVar.V0;
        this.W0 = fVar.W0;
        this.X0 = fVar.X0;
        this.Y0 = fVar.Y0;
        E1(fVar.f6766a1);
    }

    @Override
    public boolean p0() {
        return this.f6768c1;
    }

    @Override
    public ConstraintAnchor q(ConstraintAnchor.Type type) {
        int i10 = a.f6769a[type.ordinal()];
        if (i10 == 1 || i10 == 2) {
            if (this.f6766a1 == 1) {
                return this.Z0;
            }
            return null;
        }
        if ((i10 == 3 || i10 == 4) && this.f6766a1 == 0) {
            return this.Z0;
        }
        return null;
    }

    @Override
    public boolean q0() {
        return this.f6768c1;
    }

    @Override
    public void u1(androidx.constraintlayout.core.d dVar, boolean z10) {
        if (M() == null) {
            return;
        }
        int iY = dVar.y(this.Z0);
        if (this.f6766a1 == 1) {
            q1(iY);
            r1(0);
            P0(M().z());
            o1(0);
            return;
        }
        q1(0);
        r1(iY);
        o1(M().Y());
        P0(0);
    }

    public ConstraintAnchor v1() {
        return this.Z0;
    }

    public int w1() {
        return this.f6766a1;
    }

    public int x1() {
        return this.W0;
    }

    public int y1() {
        return this.X0;
    }

    public float z1() {
        return this.V0;
    }
}
