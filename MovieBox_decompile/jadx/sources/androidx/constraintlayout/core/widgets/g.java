package androidx.constraintlayout.core.widgets;

public class g {

    static boolean[] f6770a = new boolean[3];

    static void a(d dVar, androidx.constraintlayout.core.d dVar2, ConstraintWidget constraintWidget) {
        constraintWidget.f6585t = -1;
        constraintWidget.f6587u = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dVar.f6550b0[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.f6550b0[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i10 = constraintWidget.Q.f6543g;
            int iY = dVar.Y() - constraintWidget.S.f6543g;
            ConstraintAnchor constraintAnchor = constraintWidget.Q;
            constraintAnchor.f6545i = dVar2.q(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.S;
            constraintAnchor2.f6545i = dVar2.q(constraintAnchor2);
            dVar2.f(constraintWidget.Q.f6545i, i10);
            dVar2.f(constraintWidget.S.f6545i, iY);
            constraintWidget.f6585t = 2;
            constraintWidget.S0(i10, iY);
        }
        if (dVar.f6550b0[1] == dimensionBehaviour2 || constraintWidget.f6550b0[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i11 = constraintWidget.R.f6543g;
        int iZ = dVar.z() - constraintWidget.T.f6543g;
        ConstraintAnchor constraintAnchor3 = constraintWidget.R;
        constraintAnchor3.f6545i = dVar2.q(constraintAnchor3);
        ConstraintAnchor constraintAnchor4 = constraintWidget.T;
        constraintAnchor4.f6545i = dVar2.q(constraintAnchor4);
        dVar2.f(constraintWidget.R.f6545i, i11);
        dVar2.f(constraintWidget.T.f6545i, iZ);
        if (constraintWidget.f6574n0 > 0 || constraintWidget.X() == 8) {
            ConstraintAnchor constraintAnchor5 = constraintWidget.U;
            constraintAnchor5.f6545i = dVar2.q(constraintAnchor5);
            dVar2.f(constraintWidget.U.f6545i, constraintWidget.f6574n0 + i11);
        }
        constraintWidget.f6587u = 2;
        constraintWidget.j1(i11, iZ);
    }

    public static final boolean b(int i10, int i11) {
        return (i10 & i11) == i11;
    }
}
