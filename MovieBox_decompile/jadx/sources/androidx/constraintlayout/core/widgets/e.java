package androidx.constraintlayout.core.widgets;

import java.util.ArrayList;
import java.util.HashMap;

public class e extends i {
    private ConstraintWidget[] H1;

    private int f6732k1 = -1;

    private int f6733l1 = -1;

    private int f6734m1 = -1;

    private int f6735n1 = -1;

    private int f6736o1 = -1;

    private int f6737p1 = -1;

    private float f6738q1 = 0.5f;

    private float f6739r1 = 0.5f;

    private float f6740s1 = 0.5f;

    private float f6741t1 = 0.5f;

    private float f6742u1 = 0.5f;

    private float f6743v1 = 0.5f;

    private int f6744w1 = 0;

    private int f6745x1 = 0;

    private int f6746y1 = 2;

    private int f6747z1 = 2;
    private int A1 = 0;
    private int B1 = -1;
    private int C1 = 0;
    private ArrayList D1 = new ArrayList();
    private ConstraintWidget[] E1 = null;
    private ConstraintWidget[] F1 = null;
    private int[] G1 = null;
    private int I1 = 0;

    private class a {

        private int f6748a;

        private ConstraintAnchor f6751d;

        private ConstraintAnchor f6752e;

        private ConstraintAnchor f6753f;

        private ConstraintAnchor f6754g;

        private int f6755h;

        private int f6756i;

        private int f6757j;

        private int f6758k;

        private int f6764q;

        private ConstraintWidget f6749b = null;

        int f6750c = 0;

        private int f6759l = 0;

        private int f6760m = 0;

        private int f6761n = 0;

        private int f6762o = 0;

        private int f6763p = 0;

        public a(int i10, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i11) {
            this.f6755h = 0;
            this.f6756i = 0;
            this.f6757j = 0;
            this.f6758k = 0;
            this.f6764q = 0;
            this.f6748a = i10;
            this.f6751d = constraintAnchor;
            this.f6752e = constraintAnchor2;
            this.f6753f = constraintAnchor3;
            this.f6754g = constraintAnchor4;
            this.f6755h = e.this.D1();
            this.f6756i = e.this.F1();
            this.f6757j = e.this.E1();
            this.f6758k = e.this.C1();
            this.f6764q = i11;
        }

        private void h() {
            this.f6759l = 0;
            this.f6760m = 0;
            this.f6749b = null;
            this.f6750c = 0;
            int i10 = this.f6762o;
            for (int i11 = 0; i11 < i10 && this.f6761n + i11 < e.this.I1; i11++) {
                ConstraintWidget constraintWidget = e.this.H1[this.f6761n + i11];
                if (this.f6748a == 0) {
                    int iY = constraintWidget.Y();
                    int i12 = e.this.f6744w1;
                    if (constraintWidget.X() == 8) {
                        i12 = 0;
                    }
                    this.f6759l += iY + i12;
                    int iO2 = e.this.o2(constraintWidget, this.f6764q);
                    if (this.f6749b == null || this.f6750c < iO2) {
                        this.f6749b = constraintWidget;
                        this.f6750c = iO2;
                        this.f6760m = iO2;
                    }
                } else {
                    int iP2 = e.this.p2(constraintWidget, this.f6764q);
                    int iO3 = e.this.o2(constraintWidget, this.f6764q);
                    int i13 = e.this.f6745x1;
                    if (constraintWidget.X() == 8) {
                        i13 = 0;
                    }
                    this.f6760m += iO3 + i13;
                    if (this.f6749b == null || this.f6750c < iP2) {
                        this.f6749b = constraintWidget;
                        this.f6750c = iP2;
                        this.f6759l = iP2;
                    }
                }
            }
        }

        public void b(ConstraintWidget constraintWidget) {
            if (this.f6748a == 0) {
                int iP2 = e.this.p2(constraintWidget, this.f6764q);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f6763p++;
                    iP2 = 0;
                }
                this.f6759l += iP2 + (constraintWidget.X() != 8 ? e.this.f6744w1 : 0);
                int iO2 = e.this.o2(constraintWidget, this.f6764q);
                if (this.f6749b == null || this.f6750c < iO2) {
                    this.f6749b = constraintWidget;
                    this.f6750c = iO2;
                    this.f6760m = iO2;
                }
            } else {
                int iP3 = e.this.p2(constraintWidget, this.f6764q);
                int iO3 = e.this.o2(constraintWidget, this.f6764q);
                if (constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f6763p++;
                    iO3 = 0;
                }
                this.f6760m += iO3 + (constraintWidget.X() != 8 ? e.this.f6745x1 : 0);
                if (this.f6749b == null || this.f6750c < iP3) {
                    this.f6749b = constraintWidget;
                    this.f6750c = iP3;
                    this.f6759l = iP3;
                }
            }
            this.f6762o++;
        }

        public void c() {
            this.f6750c = 0;
            this.f6749b = null;
            this.f6759l = 0;
            this.f6760m = 0;
            this.f6761n = 0;
            this.f6762o = 0;
            this.f6763p = 0;
        }

        public void d(boolean z10, int i10, boolean z11) {
            ConstraintWidget constraintWidget;
            char c10;
            float f10;
            float f11;
            int i11 = this.f6762o;
            for (int i12 = 0; i12 < i11 && this.f6761n + i12 < e.this.I1; i12++) {
                ConstraintWidget constraintWidget2 = e.this.H1[this.f6761n + i12];
                if (constraintWidget2 != null) {
                    constraintWidget2.x0();
                }
            }
            if (i11 == 0 || this.f6749b == null) {
                return;
            }
            boolean z12 = z11 && i10 == 0;
            int i13 = -1;
            int i14 = -1;
            for (int i15 = 0; i15 < i11; i15++) {
                int i16 = z10 ? (i11 - 1) - i15 : i15;
                if (this.f6761n + i16 >= e.this.I1) {
                    break;
                }
                ConstraintWidget constraintWidget3 = e.this.H1[this.f6761n + i16];
                if (constraintWidget3 != null && constraintWidget3.X() == 0) {
                    if (i13 == -1) {
                        i13 = i15;
                    }
                    i14 = i15;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.f6748a != 0) {
                ConstraintWidget constraintWidget5 = this.f6749b;
                constraintWidget5.R0(e.this.f6732k1);
                int i17 = this.f6755h;
                if (i10 > 0) {
                    i17 += e.this.f6744w1;
                }
                if (z10) {
                    constraintWidget5.S.a(this.f6753f, i17);
                    if (z11) {
                        constraintWidget5.Q.a(this.f6751d, this.f6757j);
                    }
                    if (i10 > 0) {
                        this.f6753f.f6540d.Q.a(constraintWidget5.S, 0);
                    }
                } else {
                    constraintWidget5.Q.a(this.f6751d, i17);
                    if (z11) {
                        constraintWidget5.S.a(this.f6753f, this.f6757j);
                    }
                    if (i10 > 0) {
                        this.f6751d.f6540d.S.a(constraintWidget5.Q, 0);
                    }
                }
                for (int i18 = 0; i18 < i11 && this.f6761n + i18 < e.this.I1; i18++) {
                    ConstraintWidget constraintWidget6 = e.this.H1[this.f6761n + i18];
                    if (constraintWidget6 != null) {
                        if (i18 == 0) {
                            constraintWidget6.l(constraintWidget6.R, this.f6752e, this.f6756i);
                            int i19 = e.this.f6733l1;
                            float f12 = e.this.f6739r1;
                            if (this.f6761n == 0 && e.this.f6735n1 != -1) {
                                i19 = e.this.f6735n1;
                                f12 = e.this.f6741t1;
                            } else if (z11 && e.this.f6737p1 != -1) {
                                i19 = e.this.f6737p1;
                                f12 = e.this.f6743v1;
                            }
                            constraintWidget6.i1(i19);
                            constraintWidget6.h1(f12);
                        }
                        if (i18 == i11 - 1) {
                            constraintWidget6.l(constraintWidget6.T, this.f6754g, this.f6758k);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.R.a(constraintWidget4.T, e.this.f6745x1);
                            if (i18 == i13) {
                                constraintWidget6.R.u(this.f6756i);
                            }
                            constraintWidget4.T.a(constraintWidget6.R, 0);
                            if (i18 == i14 + 1) {
                                constraintWidget4.T.u(this.f6758k);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (z10) {
                                int i20 = e.this.f6746y1;
                                if (i20 == 0) {
                                    constraintWidget6.S.a(constraintWidget5.S, 0);
                                } else if (i20 == 1) {
                                    constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                } else if (i20 == 2) {
                                    constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                    constraintWidget6.S.a(constraintWidget5.S, 0);
                                }
                            } else {
                                int i21 = e.this.f6746y1;
                                if (i21 == 0) {
                                    constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                } else if (i21 == 1) {
                                    constraintWidget6.S.a(constraintWidget5.S, 0);
                                } else if (i21 == 2) {
                                    if (z12) {
                                        constraintWidget6.Q.a(this.f6751d, this.f6755h);
                                        constraintWidget6.S.a(this.f6753f, this.f6757j);
                                    } else {
                                        constraintWidget6.Q.a(constraintWidget5.Q, 0);
                                        constraintWidget6.S.a(constraintWidget5.S, 0);
                                    }
                                }
                            }
                        }
                        constraintWidget4 = constraintWidget6;
                    }
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.f6749b;
            constraintWidget7.i1(e.this.f6733l1);
            int i22 = this.f6756i;
            if (i10 > 0) {
                i22 += e.this.f6745x1;
            }
            constraintWidget7.R.a(this.f6752e, i22);
            if (z11) {
                constraintWidget7.T.a(this.f6754g, this.f6758k);
            }
            if (i10 > 0) {
                this.f6752e.f6540d.T.a(constraintWidget7.R, 0);
            }
            char c11 = 3;
            if (e.this.f6747z1 != 3 || constraintWidget7.b0()) {
                constraintWidget = constraintWidget7;
                break;
            }
            int i23 = 0;
            while (true) {
                if (i23 < i11) {
                    int i24 = z10 ? (i11 - 1) - i23 : i23;
                    if (this.f6761n + i24 < e.this.I1) {
                        constraintWidget = e.this.H1[this.f6761n + i24];
                        if (constraintWidget.b0()) {
                            break;
                        } else {
                            i23++;
                        }
                    }
                }
                constraintWidget = constraintWidget7;
                break;
            }
            int i25 = 0;
            while (i25 < i11) {
                int i26 = z10 ? (i11 - 1) - i25 : i25;
                if (this.f6761n + i26 >= e.this.I1) {
                    return;
                }
                ConstraintWidget constraintWidget8 = e.this.H1[this.f6761n + i26];
                if (constraintWidget8 == null) {
                    constraintWidget8 = constraintWidget4;
                    c10 = c11;
                } else {
                    if (i25 == 0) {
                        constraintWidget8.l(constraintWidget8.Q, this.f6751d, this.f6755h);
                    }
                    if (i26 == 0) {
                        int i27 = e.this.f6732k1;
                        float f13 = e.this.f6738q1;
                        if (z10) {
                            f13 = 1.0f - f13;
                        }
                        if (this.f6761n == 0 && e.this.f6734m1 != -1) {
                            i27 = e.this.f6734m1;
                            if (z10) {
                                f11 = e.this.f6740s1;
                                f10 = 1.0f - f11;
                            } else {
                                f10 = e.this.f6740s1;
                            }
                            f13 = f10;
                        } else if (z11 && e.this.f6736o1 != -1) {
                            i27 = e.this.f6736o1;
                            if (z10) {
                                f11 = e.this.f6742u1;
                                f10 = 1.0f - f11;
                            } else {
                                f10 = e.this.f6742u1;
                            }
                            f13 = f10;
                        }
                        constraintWidget8.R0(i27);
                        constraintWidget8.Q0(f13);
                    }
                    if (i25 == i11 - 1) {
                        constraintWidget8.l(constraintWidget8.S, this.f6753f, this.f6757j);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.Q.a(constraintWidget4.S, e.this.f6744w1);
                        if (i25 == i13) {
                            constraintWidget8.Q.u(this.f6755h);
                        }
                        constraintWidget4.S.a(constraintWidget8.Q, 0);
                        if (i25 == i14 + 1) {
                            constraintWidget4.S.u(this.f6757j);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        c10 = 3;
                        if (e.this.f6747z1 == 3 && constraintWidget.b0() && constraintWidget8 != constraintWidget && constraintWidget8.b0()) {
                            constraintWidget8.U.a(constraintWidget.U, 0);
                        } else {
                            int i28 = e.this.f6747z1;
                            if (i28 == 0) {
                                constraintWidget8.R.a(constraintWidget7.R, 0);
                            } else if (i28 == 1) {
                                constraintWidget8.T.a(constraintWidget7.T, 0);
                            } else if (z12) {
                                constraintWidget8.R.a(this.f6752e, this.f6756i);
                                constraintWidget8.T.a(this.f6754g, this.f6758k);
                            } else {
                                constraintWidget8.R.a(constraintWidget7.R, 0);
                                constraintWidget8.T.a(constraintWidget7.T, 0);
                            }
                        }
                    } else {
                        c10 = 3;
                    }
                }
                i25++;
                c11 = c10;
                constraintWidget4 = constraintWidget8;
            }
        }

        public int e() {
            return this.f6748a == 1 ? this.f6760m - e.this.f6745x1 : this.f6760m;
        }

        public int f() {
            return this.f6748a == 0 ? this.f6759l - e.this.f6744w1 : this.f6759l;
        }

        public void g(int i10) {
            int i11 = this.f6763p;
            if (i11 == 0) {
                return;
            }
            int i12 = this.f6762o;
            int i13 = i10 / i11;
            for (int i14 = 0; i14 < i12 && this.f6761n + i14 < e.this.I1; i14++) {
                ConstraintWidget constraintWidget = e.this.H1[this.f6761n + i14];
                if (this.f6748a == 0) {
                    if (constraintWidget != null && constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f6591w == 0) {
                        e.this.H1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i13, constraintWidget.V(), constraintWidget.z());
                    }
                } else if (constraintWidget != null && constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f6593x == 0) {
                    e.this.H1(constraintWidget, constraintWidget.C(), constraintWidget.Y(), ConstraintWidget.DimensionBehaviour.FIXED, i13);
                }
            }
            h();
        }

        public void i(int i10) {
            this.f6761n = i10;
        }

        public void j(int i10, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i11, int i12, int i13, int i14, int i15) {
            this.f6748a = i10;
            this.f6751d = constraintAnchor;
            this.f6752e = constraintAnchor2;
            this.f6753f = constraintAnchor3;
            this.f6754g = constraintAnchor4;
            this.f6755h = i11;
            this.f6756i = i12;
            this.f6757j = i13;
            this.f6758k = i14;
            this.f6764q = i15;
        }
    }

    private void n2(boolean z10) {
        ConstraintWidget constraintWidget;
        float f10;
        int i10;
        if (this.G1 == null || this.F1 == null || this.E1 == null) {
            return;
        }
        for (int i11 = 0; i11 < this.I1; i11++) {
            this.H1[i11].x0();
        }
        int[] iArr = this.G1;
        int i12 = iArr[0];
        int i13 = iArr[1];
        float f11 = this.f6738q1;
        ConstraintWidget constraintWidget2 = null;
        int i14 = 0;
        while (i14 < i12) {
            if (z10) {
                i10 = (i12 - i14) - 1;
                f10 = 1.0f - this.f6738q1;
            } else {
                f10 = f11;
                i10 = i14;
            }
            ConstraintWidget constraintWidget3 = this.F1[i10];
            if (constraintWidget3 != null && constraintWidget3.X() != 8) {
                if (i14 == 0) {
                    constraintWidget3.l(constraintWidget3.Q, this.Q, D1());
                    constraintWidget3.R0(this.f6732k1);
                    constraintWidget3.Q0(f10);
                }
                if (i14 == i12 - 1) {
                    constraintWidget3.l(constraintWidget3.S, this.S, E1());
                }
                if (i14 > 0 && constraintWidget2 != null) {
                    constraintWidget3.l(constraintWidget3.Q, constraintWidget2.S, this.f6744w1);
                    constraintWidget2.l(constraintWidget2.S, constraintWidget3.Q, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            i14++;
            f11 = f10;
        }
        for (int i15 = 0; i15 < i13; i15++) {
            ConstraintWidget constraintWidget4 = this.E1[i15];
            if (constraintWidget4 != null && constraintWidget4.X() != 8) {
                if (i15 == 0) {
                    constraintWidget4.l(constraintWidget4.R, this.R, F1());
                    constraintWidget4.i1(this.f6733l1);
                    constraintWidget4.h1(this.f6739r1);
                }
                if (i15 == i13 - 1) {
                    constraintWidget4.l(constraintWidget4.T, this.T, C1());
                }
                if (i15 > 0 && constraintWidget2 != null) {
                    constraintWidget4.l(constraintWidget4.R, constraintWidget2.T, this.f6745x1);
                    constraintWidget2.l(constraintWidget2.T, constraintWidget4.R, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int i16 = 0; i16 < i12; i16++) {
            for (int i17 = 0; i17 < i13; i17++) {
                int i18 = (i17 * i12) + i16;
                if (this.C1 == 1) {
                    i18 = (i16 * i13) + i17;
                }
                ConstraintWidget[] constraintWidgetArr = this.H1;
                if (i18 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i18]) != null && constraintWidget.X() != 8) {
                    ConstraintWidget constraintWidget5 = this.F1[i16];
                    ConstraintWidget constraintWidget6 = this.E1[i17];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.l(constraintWidget.Q, constraintWidget5.Q, 0);
                        constraintWidget.l(constraintWidget.S, constraintWidget5.S, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.l(constraintWidget.R, constraintWidget6.R, 0);
                        constraintWidget.l(constraintWidget.T, constraintWidget6.T, 0);
                    }
                }
            }
        }
    }

    public final int o2(ConstraintWidget constraintWidget, int i10) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i11 = constraintWidget.f6593x;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (constraintWidget.E * i10);
                if (i12 != constraintWidget.z()) {
                    constraintWidget.c1(true);
                    H1(constraintWidget, constraintWidget.C(), constraintWidget.Y(), ConstraintWidget.DimensionBehaviour.FIXED, i12);
                }
                return i12;
            }
            if (i11 == 1) {
                return constraintWidget.z();
            }
            if (i11 == 3) {
                return (int) ((constraintWidget.Y() * constraintWidget.f6558f0) + 0.5f);
            }
        }
        return constraintWidget.z();
    }

    public final int p2(ConstraintWidget constraintWidget, int i10) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i11 = constraintWidget.f6591w;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (constraintWidget.B * i10);
                if (i12 != constraintWidget.Y()) {
                    constraintWidget.c1(true);
                    H1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i12, constraintWidget.V(), constraintWidget.z());
                }
                return i12;
            }
            if (i11 == 1) {
                return constraintWidget.Y();
            }
            if (i11 == 3) {
                return (int) ((constraintWidget.z() * constraintWidget.f6558f0) + 0.5f);
            }
        }
        return constraintWidget.Y();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:106:0x010f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:109:0x0117 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:117:0x011d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x0059 A[ADDED_TO_REGION, EDGE_INSN: B:119:0x0059->B:42:0x0059 BREAK  A[LOOP:1: B:44:0x005c->B:124:0x005c], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x010d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x0059 A[ADDED_TO_REGION, EDGE_INSN: B:122:0x0059->B:42:0x0059 BREAK  A[LOOP:1: B:44:0x005c->B:124:0x005c], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x00d3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0060  */
    /* JADX WARN: Code duplicated, block: B:47:0x006a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0078  */
    /* JADX WARN: Code duplicated, block: B:54:0x0080  */
    /* JADX WARN: Code duplicated, block: B:57:0x0088  */
    /* JADX WARN: Code duplicated, block: B:61:0x0090  */
    /* JADX WARN: Code duplicated, block: B:64:0x0097  */
    /* JADX WARN: Code duplicated, block: B:66:0x009a  */
    /* JADX WARN: Code duplicated, block: B:68:0x009f  */
    /* JADX WARN: Code duplicated, block: B:72:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:82:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:89:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:91:0x00e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:97:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:99:0x00fa A[DONT_INVERT] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x010d -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x010f -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0115 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0117 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:45:0x005e
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private void q2(androidx.constraintlayout.core.widgets.ConstraintWidget[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.e.q2(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    private void r2(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14;
        int i15;
        ConstraintAnchor constraintAnchor;
        int iE1;
        ConstraintAnchor constraintAnchor2;
        int iC1;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.D1.clear();
        a aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
        this.D1.add(aVar);
        if (i11 == 0) {
            i13 = 0;
            int i17 = 0;
            int i18 = 0;
            while (i18 < i10) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i18];
                int iP2 = p2(constraintWidget, i12);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i19 = i13;
                boolean z10 = (i17 == i12 || (this.f6744w1 + i17) + iP2 > i12) && aVar.f6749b != null;
                if (!z10 && i18 > 0 && (i16 = this.B1) > 0 && i18 % i16 == 0) {
                    z10 = true;
                }
                if (z10) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i18);
                    this.D1.add(aVar);
                } else {
                    if (i18 > 0) {
                        i17 += this.f6744w1 + iP2;
                    }
                    aVar.b(constraintWidget);
                    i18++;
                    i13 = i19;
                }
                i17 = iP2;
                aVar.b(constraintWidget);
                i18++;
                i13 = i19;
            }
        } else {
            i13 = 0;
            int i20 = 0;
            int i21 = 0;
            while (i21 < i10) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i21];
                int iO2 = o2(constraintWidget2, i12);
                if (constraintWidget2.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i22 = i13;
                boolean z11 = (i20 == i12 || (this.f6745x1 + i20) + iO2 > i12) && aVar.f6749b != null;
                if (!z11 && i21 > 0 && (i14 = this.B1) > 0 && i21 % i14 == 0) {
                    z11 = true;
                }
                if (z11) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i21);
                    this.D1.add(aVar);
                } else {
                    if (i21 > 0) {
                        i20 += this.f6745x1 + iO2;
                    }
                    aVar.b(constraintWidget2);
                    i21++;
                    i13 = i22;
                }
                i20 = iO2;
                aVar.b(constraintWidget2);
                i21++;
                i13 = i22;
            }
        }
        int size = this.D1.size();
        ConstraintAnchor constraintAnchor3 = this.Q;
        ConstraintAnchor constraintAnchor4 = this.R;
        ConstraintAnchor constraintAnchor5 = this.S;
        ConstraintAnchor constraintAnchor6 = this.T;
        int iD1 = D1();
        int iF1 = F1();
        int iE2 = E1();
        int iC2 = C1();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z12 = dimensionBehaviourC == dimensionBehaviour || V() == dimensionBehaviour;
        if (i13 > 0 && z12) {
            for (int i23 = 0; i23 < size; i23++) {
                a aVar2 = (a) this.D1.get(i23);
                if (i11 == 0) {
                    aVar2.g(i12 - aVar2.f());
                } else {
                    aVar2.g(i12 - aVar2.e());
                }
            }
        }
        int i24 = iF1;
        int i25 = iE2;
        int iE = 0;
        int iF = 0;
        int i26 = 0;
        int i27 = iD1;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i28 = iC2;
        while (i26 < size) {
            a aVar3 = (a) this.D1.get(i26);
            if (i11 == 0) {
                if (i26 < size - 1) {
                    constraintAnchor2 = ((a) this.D1.get(i26 + 1)).f6749b.R;
                    iC1 = 0;
                } else {
                    constraintAnchor2 = this.T;
                    iC1 = C1();
                }
                ConstraintAnchor constraintAnchor9 = aVar3.f6749b.T;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i29 = iE;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i30 = iF;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i15 = i26;
                aVar3.j(i11, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i27, i24, i25, iC1, i12);
                int iMax = Math.max(i30, aVar3.f());
                iE = i29 + aVar3.e();
                if (i15 > 0) {
                    iE += this.f6745x1;
                }
                constraintAnchor8 = constraintAnchor11;
                iF = iMax;
                i24 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i31 = iC1;
                constraintAnchor6 = constraintAnchor2;
                i28 = i31;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i32 = iE;
                int i33 = iF;
                i15 = i26;
                if (i15 < size - 1) {
                    constraintAnchor = ((a) this.D1.get(i15 + 1)).f6749b.Q;
                    iE1 = 0;
                } else {
                    constraintAnchor = this.S;
                    iE1 = E1();
                }
                ConstraintAnchor constraintAnchor16 = aVar3.f6749b.S;
                aVar3.j(i11, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i27, i24, iE1, i28, i12);
                iF = i33 + aVar3.f();
                int iMax2 = Math.max(i32, aVar3.e());
                if (i15 > 0) {
                    iF += this.f6744w1;
                }
                iE = iMax2;
                i27 = 0;
                i25 = iE1;
                constraintAnchor8 = constraintAnchor16;
            }
            i26 = i15 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void s2(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14;
        int i15;
        ConstraintAnchor constraintAnchor;
        int iE1;
        ConstraintAnchor constraintAnchor2;
        int iC1;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.D1.clear();
        a aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
        this.D1.add(aVar);
        if (i11 == 0) {
            int i17 = 0;
            i13 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i19 < i10) {
                int i20 = i17 + 1;
                ConstraintWidget constraintWidget = constraintWidgetArr[i19];
                int iP2 = p2(constraintWidget, i12);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i21 = i13;
                boolean z10 = (i18 == i12 || (this.f6744w1 + i18) + iP2 > i12) && aVar.f6749b != null;
                if (!z10 && i19 > 0 && (i16 = this.B1) > 0 && i20 > i16) {
                    z10 = true;
                }
                if (z10) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i19);
                    this.D1.add(aVar);
                    i17 = i20;
                    i18 = iP2;
                } else {
                    i18 = i19 > 0 ? i18 + this.f6744w1 + iP2 : iP2;
                    i17 = 0;
                }
                aVar.b(constraintWidget);
                i19++;
                i13 = i21;
            }
        } else {
            int i22 = 0;
            i13 = 0;
            int i23 = 0;
            while (i23 < i10) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i23];
                int iO2 = o2(constraintWidget2, i12);
                if (constraintWidget2.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i24 = i13;
                boolean z11 = (i22 == i12 || (this.f6745x1 + i22) + iO2 > i12) && aVar.f6749b != null;
                if (!z11 && i23 > 0 && (i14 = this.B1) > 0 && i14 < 0) {
                    z11 = true;
                }
                if (z11) {
                    aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
                    aVar.i(i23);
                    this.D1.add(aVar);
                } else {
                    if (i23 > 0) {
                        i22 += this.f6745x1 + iO2;
                    }
                    aVar.b(constraintWidget2);
                    i23++;
                    i13 = i24;
                }
                i22 = iO2;
                aVar.b(constraintWidget2);
                i23++;
                i13 = i24;
            }
        }
        int size = this.D1.size();
        ConstraintAnchor constraintAnchor3 = this.Q;
        ConstraintAnchor constraintAnchor4 = this.R;
        ConstraintAnchor constraintAnchor5 = this.S;
        ConstraintAnchor constraintAnchor6 = this.T;
        int iD1 = D1();
        int iF1 = F1();
        int iE2 = E1();
        int iC2 = C1();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z12 = dimensionBehaviourC == dimensionBehaviour || V() == dimensionBehaviour;
        if (i13 > 0 && z12) {
            for (int i25 = 0; i25 < size; i25++) {
                a aVar2 = (a) this.D1.get(i25);
                if (i11 == 0) {
                    aVar2.g(i12 - aVar2.f());
                } else {
                    aVar2.g(i12 - aVar2.e());
                }
            }
        }
        int i26 = iF1;
        int i27 = iE2;
        int iE = 0;
        int iF = 0;
        int i28 = 0;
        int i29 = iD1;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i30 = iC2;
        while (i28 < size) {
            a aVar3 = (a) this.D1.get(i28);
            if (i11 == 0) {
                if (i28 < size - 1) {
                    constraintAnchor2 = ((a) this.D1.get(i28 + 1)).f6749b.R;
                    iC1 = 0;
                } else {
                    constraintAnchor2 = this.T;
                    iC1 = C1();
                }
                ConstraintAnchor constraintAnchor9 = aVar3.f6749b.T;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i31 = iE;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i32 = iF;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i15 = i28;
                aVar3.j(i11, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i29, i26, i27, iC1, i12);
                int iMax = Math.max(i32, aVar3.f());
                iE = i31 + aVar3.e();
                if (i15 > 0) {
                    iE += this.f6745x1;
                }
                constraintAnchor8 = constraintAnchor11;
                iF = iMax;
                i26 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i33 = iC1;
                constraintAnchor6 = constraintAnchor2;
                i30 = i33;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i34 = iE;
                int i35 = iF;
                i15 = i28;
                if (i15 < size - 1) {
                    constraintAnchor = ((a) this.D1.get(i15 + 1)).f6749b.Q;
                    iE1 = 0;
                } else {
                    constraintAnchor = this.S;
                    iE1 = E1();
                }
                ConstraintAnchor constraintAnchor16 = aVar3.f6749b.S;
                aVar3.j(i11, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i29, i26, iE1, i30, i12);
                iF = i35 + aVar3.f();
                int iMax2 = Math.max(i34, aVar3.e());
                if (i15 > 0) {
                    iF += this.f6744w1;
                }
                iE = iMax2;
                i29 = 0;
                i27 = iE1;
                constraintAnchor8 = constraintAnchor16;
            }
            i28 = i15 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void t2(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        a aVar;
        if (i10 == 0) {
            return;
        }
        if (this.D1.size() == 0) {
            aVar = new a(i11, this.Q, this.R, this.S, this.T, i12);
            this.D1.add(aVar);
        } else {
            a aVar2 = (a) this.D1.get(0);
            aVar2.c();
            aVar = aVar2;
            aVar.j(i11, this.Q, this.R, this.S, this.T, D1(), F1(), E1(), C1(), i12);
        }
        for (int i13 = 0; i13 < i10; i13++) {
            aVar.b(constraintWidgetArr[i13]);
        }
        iArr[0] = aVar.f();
        iArr[1] = aVar.e();
    }

    public void A2(int i10) {
        this.f6744w1 = i10;
    }

    public void B2(int i10) {
        this.f6732k1 = i10;
    }

    public void C2(float f10) {
        this.f6742u1 = f10;
    }

    public void D2(int i10) {
        this.f6736o1 = i10;
    }

    public void E2(float f10) {
        this.f6743v1 = f10;
    }

    public void F2(int i10) {
        this.f6737p1 = i10;
    }

    @Override
    public void G1(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        boolean z10;
        if (this.W0 > 0 && !I1()) {
            L1(0, 0);
            K1(false);
            return;
        }
        int iD1 = D1();
        int iE1 = E1();
        int iF1 = F1();
        int iC1 = C1();
        int[] iArr = new int[2];
        int i16 = (i11 - iD1) - iE1;
        int i17 = this.C1;
        if (i17 == 1) {
            i16 = (i13 - iF1) - iC1;
        }
        int i18 = i16;
        if (i17 == 0) {
            if (this.f6732k1 == -1) {
                this.f6732k1 = 0;
            }
            if (this.f6733l1 == -1) {
                this.f6733l1 = 0;
            }
        } else {
            if (this.f6732k1 == -1) {
                this.f6732k1 = 0;
            }
            if (this.f6733l1 == -1) {
                this.f6733l1 = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.V0;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i14 = this.W0;
            if (i19 >= i14) {
                break;
            }
            if (this.V0[i19].X() == 8) {
                i20++;
            }
            i19++;
        }
        if (i20 > 0) {
            constraintWidgetArr = new ConstraintWidget[i14 - i20];
            int i21 = 0;
            for (int i22 = 0; i22 < this.W0; i22++) {
                ConstraintWidget constraintWidget = this.V0[i22];
                if (constraintWidget.X() != 8) {
                    constraintWidgetArr[i21] = constraintWidget;
                    i21++;
                }
            }
            i15 = i21;
        } else {
            i15 = i14;
        }
        this.H1 = constraintWidgetArr;
        this.I1 = i15;
        int i23 = this.A1;
        if (i23 == 0) {
            z10 = true;
            t2(constraintWidgetArr, i15, this.C1, i18, iArr);
        } else if (i23 == 1) {
            z10 = true;
            r2(constraintWidgetArr, i15, this.C1, i18, iArr);
        } else if (i23 == 2) {
            z10 = true;
            q2(constraintWidgetArr, i15, this.C1, i18, iArr);
        } else if (i23 != 3) {
            z10 = true;
        } else {
            z10 = true;
            s2(constraintWidgetArr, i15, this.C1, i18, iArr);
        }
        int iMin = iArr[0] + iD1 + iE1;
        int iMin2 = iArr[z10 ? 1 : 0] + iF1 + iC1;
        if (i10 == 1073741824) {
            iMin = i11;
        } else if (i10 == Integer.MIN_VALUE) {
            iMin = Math.min(iMin, i11);
        } else if (i10 != 0) {
            iMin = 0;
        }
        if (i12 == 1073741824) {
            iMin2 = i13;
        } else if (i12 == Integer.MIN_VALUE) {
            iMin2 = Math.min(iMin2, i13);
        } else if (i12 != 0) {
            iMin2 = 0;
        }
        L1(iMin, iMin2);
        o1(iMin);
        P0(iMin2);
        if (this.W0 <= 0) {
            z10 = false;
        }
        K1(z10);
    }

    public void G2(int i10) {
        this.B1 = i10;
    }

    public void H2(int i10) {
        this.C1 = i10;
    }

    public void I2(int i10) {
        this.f6747z1 = i10;
    }

    public void J2(float f10) {
        this.f6739r1 = f10;
    }

    public void K2(int i10) {
        this.f6745x1 = i10;
    }

    public void L2(int i10) {
        this.f6733l1 = i10;
    }

    public void M2(int i10) {
        this.A1 = i10;
    }

    @Override
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        super.g(dVar, z10);
        boolean z11 = M() != null && ((d) M()).U1();
        int i10 = this.A1;
        if (i10 != 0) {
            if (i10 == 1) {
                int size = this.D1.size();
                int i11 = 0;
                while (i11 < size) {
                    ((a) this.D1.get(i11)).d(z11, i11, i11 == size + (-1));
                    i11++;
                }
            } else if (i10 == 2) {
                n2(z11);
            } else if (i10 == 3) {
                int size2 = this.D1.size();
                int i12 = 0;
                while (i12 < size2) {
                    ((a) this.D1.get(i12)).d(z11, i12, i12 == size2 + (-1));
                    i12++;
                }
            }
        } else if (this.D1.size() > 0) {
            ((a) this.D1.get(0)).d(z11, 0, true);
        }
        K1(false);
    }

    @Override
    public void n(ConstraintWidget constraintWidget, HashMap map) {
        super.n(constraintWidget, map);
        e eVar = (e) constraintWidget;
        this.f6732k1 = eVar.f6732k1;
        this.f6733l1 = eVar.f6733l1;
        this.f6734m1 = eVar.f6734m1;
        this.f6735n1 = eVar.f6735n1;
        this.f6736o1 = eVar.f6736o1;
        this.f6737p1 = eVar.f6737p1;
        this.f6738q1 = eVar.f6738q1;
        this.f6739r1 = eVar.f6739r1;
        this.f6740s1 = eVar.f6740s1;
        this.f6741t1 = eVar.f6741t1;
        this.f6742u1 = eVar.f6742u1;
        this.f6743v1 = eVar.f6743v1;
        this.f6744w1 = eVar.f6744w1;
        this.f6745x1 = eVar.f6745x1;
        this.f6746y1 = eVar.f6746y1;
        this.f6747z1 = eVar.f6747z1;
        this.A1 = eVar.A1;
        this.B1 = eVar.B1;
        this.C1 = eVar.C1;
    }

    public void u2(float f10) {
        this.f6740s1 = f10;
    }

    public void v2(int i10) {
        this.f6734m1 = i10;
    }

    public void w2(float f10) {
        this.f6741t1 = f10;
    }

    public void x2(int i10) {
        this.f6735n1 = i10;
    }

    public void y2(int i10) {
        this.f6746y1 = i10;
    }

    public void z2(float f10) {
        this.f6738q1 = f10;
    }
}
