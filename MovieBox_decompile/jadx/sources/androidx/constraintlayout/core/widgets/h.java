package androidx.constraintlayout.core.widgets;

public class h extends i {
    @Override
    public void G1(int i10, int i11, int i12, int i13) {
        int iD1 = D1() + E1();
        int iF1 = F1() + C1();
        if (this.W0 > 0) {
            iD1 += this.V0[0].Y();
            iF1 += this.V0[0].z();
        }
        int iMax = Math.max(K(), iD1);
        int iMax2 = Math.max(J(), iF1);
        if (i10 != 1073741824) {
            if (i10 == Integer.MIN_VALUE) {
                i11 = Math.min(iMax, i11);
            } else {
                i11 = i10 == 0 ? iMax : 0;
            }
        }
        if (i12 != 1073741824) {
            if (i12 == Integer.MIN_VALUE) {
                i13 = Math.min(iMax2, i13);
            } else {
                i13 = i12 == 0 ? iMax2 : 0;
            }
        }
        L1(i11, i13);
        o1(i11);
        P0(i13);
        K1(this.W0 > 0);
    }

    @Override
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        super.g(dVar, z10);
        if (this.W0 > 0) {
            ConstraintWidget constraintWidget = this.V0[0];
            constraintWidget.w0();
            ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
            constraintWidget.j(type, this, type);
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
            constraintWidget.j(type2, this, type2);
            ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
            constraintWidget.j(type3, this, type3);
            ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
            constraintWidget.j(type4, this, type4);
        }
    }
}
