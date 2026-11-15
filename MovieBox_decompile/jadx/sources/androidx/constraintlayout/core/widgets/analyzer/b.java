package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

public class b {

    private final ArrayList f6625a = new ArrayList();

    private a f6626b = new a();

    private androidx.constraintlayout.core.widgets.d f6627c;

    public static class a {

        public static int f6628k = 0;

        public static int f6629l = 1;

        public static int f6630m = 2;

        public ConstraintWidget.DimensionBehaviour f6631a;

        public ConstraintWidget.DimensionBehaviour f6632b;

        public int f6633c;

        public int f6634d;

        public int f6635e;

        public int f6636f;

        public int f6637g;

        public boolean f6638h;

        public boolean f6639i;

        public int f6640j;
    }

    public interface InterfaceC0052b {
        void a();

        void b(ConstraintWidget constraintWidget, a aVar);
    }

    public b(androidx.constraintlayout.core.widgets.d dVar) {
        this.f6627c = dVar;
    }

    private boolean a(InterfaceC0052b interfaceC0052b, ConstraintWidget constraintWidget, int i10) {
        this.f6626b.f6631a = constraintWidget.C();
        this.f6626b.f6632b = constraintWidget.V();
        this.f6626b.f6633c = constraintWidget.Y();
        this.f6626b.f6634d = constraintWidget.z();
        a aVar = this.f6626b;
        aVar.f6639i = false;
        aVar.f6640j = i10;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f6631a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z10 = dimensionBehaviour == dimensionBehaviour2;
        boolean z11 = aVar.f6632b == dimensionBehaviour2;
        boolean z12 = z10 && constraintWidget.f6558f0 > 0.0f;
        boolean z13 = z11 && constraintWidget.f6558f0 > 0.0f;
        if (z12 && constraintWidget.f6595y[0] == 4) {
            aVar.f6631a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z13 && constraintWidget.f6595y[1] == 4) {
            aVar.f6632b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        interfaceC0052b.b(constraintWidget, aVar);
        constraintWidget.o1(this.f6626b.f6635e);
        constraintWidget.P0(this.f6626b.f6636f);
        constraintWidget.O0(this.f6626b.f6638h);
        constraintWidget.E0(this.f6626b.f6637g);
        a aVar2 = this.f6626b;
        aVar2.f6640j = a.f6628k;
        return aVar2.f6639i;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0098 A[PHI: r10
      0x0098: PHI (r10v2 boolean) = (r10v1 boolean), (r10v1 boolean), (r10v1 boolean), (r10v4 boolean), (r10v4 boolean) binds: [B:32:0x0062, B:34:0x0068, B:36:0x006c, B:54:0x0095, B:52:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    private void b(androidx.constraintlayout.core.widgets.d dVar) {
        boolean z10;
        j jVar;
        l lVar;
        int size = dVar.V0.size();
        boolean zY1 = dVar.Y1(64);
        InterfaceC0052b interfaceC0052bN1 = dVar.N1();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) dVar.V0.get(i10);
            if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.f) && !(constraintWidget instanceof androidx.constraintlayout.core.widgets.a) && !constraintWidget.n0() && (!zY1 || (jVar = constraintWidget.f6555e) == null || (lVar = constraintWidget.f6557f) == null || !jVar.f6618e.f6611j || !lVar.f6618e.f6611j)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget.w(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget.w(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z11 = dimensionBehaviourW == dimensionBehaviour && constraintWidget.f6591w != 1 && dimensionBehaviourW2 == dimensionBehaviour && constraintWidget.f6593x != 1;
                if (!z11 && dVar.Y1(1) && !(constraintWidget instanceof androidx.constraintlayout.core.widgets.i)) {
                    if (dimensionBehaviourW == dimensionBehaviour && constraintWidget.f6591w == 0 && dimensionBehaviourW2 != dimensionBehaviour && !constraintWidget.k0()) {
                        z11 = true;
                    }
                    if (dimensionBehaviourW2 == dimensionBehaviour && constraintWidget.f6593x == 0 && dimensionBehaviourW != dimensionBehaviour && !constraintWidget.k0()) {
                        z11 = true;
                    }
                    z10 = (!(dimensionBehaviourW == dimensionBehaviour || dimensionBehaviourW2 == dimensionBehaviour) || constraintWidget.f6558f0 <= 0.0f) ? z11 : true;
                }
                if (!z10) {
                    a(interfaceC0052bN1, constraintWidget, a.f6628k);
                    androidx.constraintlayout.core.e eVar = dVar.f6707b1;
                    if (eVar != null) {
                        eVar.f6364a++;
                    }
                }
            }
        }
        interfaceC0052bN1.a();
    }

    private void c(androidx.constraintlayout.core.widgets.d dVar, String str, int i10, int i11, int i12) {
        int iK = dVar.K();
        int iJ = dVar.J();
        dVar.e1(0);
        dVar.d1(0);
        dVar.o1(i11);
        dVar.P0(i12);
        dVar.e1(iK);
        dVar.d1(iJ);
        this.f6627c.c2(i10);
        this.f6627c.w1();
    }

    public long d(androidx.constraintlayout.core.widgets.d dVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        boolean zL1;
        int i19;
        int i20;
        boolean z10;
        int i21;
        InterfaceC0052b interfaceC0052b;
        boolean z11;
        androidx.constraintlayout.core.e eVar;
        InterfaceC0052b interfaceC0052bN1 = dVar.N1();
        int size = dVar.V0.size();
        int iY = dVar.Y();
        int iZ = dVar.z();
        boolean zB = androidx.constraintlayout.core.widgets.g.b(i10, 128);
        boolean z12 = zB || androidx.constraintlayout.core.widgets.g.b(i10, 64);
        if (z12) {
            for (int i22 = 0; i22 < size; i22++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) dVar.V0.get(i22);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z13 = (dimensionBehaviourC == dimensionBehaviour) && (constraintWidget.V() == dimensionBehaviour) && constraintWidget.x() > 0.0f;
                if ((constraintWidget.k0() && z13) || ((constraintWidget.m0() && z13) || (constraintWidget instanceof androidx.constraintlayout.core.widgets.i) || constraintWidget.k0() || constraintWidget.m0())) {
                    z12 = false;
                    break;
                }
            }
        }
        if (z12 && (eVar = androidx.constraintlayout.core.d.f6343x) != null) {
            eVar.f6366c++;
        }
        boolean z14 = z12 & ((i13 == 1073741824 && i15 == 1073741824) || zB);
        int i23 = 2;
        if (z14) {
            int iMin = Math.min(dVar.I(), i14);
            int iMin2 = Math.min(dVar.H(), i16);
            if (i13 == 1073741824 && dVar.Y() != iMin) {
                dVar.o1(iMin);
                dVar.R1();
            }
            if (i15 == 1073741824 && dVar.z() != iMin2) {
                dVar.P0(iMin2);
                dVar.R1();
            }
            if (i13 == 1073741824 && i15 == 1073741824) {
                zL1 = dVar.J1(zB);
                i19 = 2;
            } else {
                boolean zK1 = dVar.K1(zB);
                if (i13 == 1073741824) {
                    zK1 &= dVar.L1(zB, 0);
                    i19 = 1;
                } else {
                    i19 = 0;
                }
                if (i15 == 1073741824) {
                    zL1 = dVar.L1(zB, 1) & zK1;
                    i19++;
                } else {
                    zL1 = zK1;
                }
            }
            if (zL1) {
                dVar.t1(i13 == 1073741824, i15 == 1073741824);
            }
        } else {
            zL1 = false;
            i19 = 0;
        }
        if (zL1 && i19 == 2) {
            return 0L;
        }
        int iO1 = dVar.O1();
        if (size > 0) {
            b(dVar);
        }
        e(dVar);
        int size2 = this.f6625a.size();
        if (size > 0) {
            c(dVar, "First pass", 0, iY, iZ);
        }
        if (size2 > 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC2 = dVar.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z15 = dimensionBehaviourC2 == dimensionBehaviour2;
            boolean z16 = dVar.V() == dimensionBehaviour2;
            int iMax = Math.max(dVar.Y(), this.f6627c.K());
            int iMax2 = Math.max(dVar.z(), this.f6627c.J());
            int i24 = 0;
            boolean zJ1 = false;
            while (i24 < size2) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.f6625a.get(i24);
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.i) {
                    int iY2 = constraintWidget2.Y();
                    int iZ2 = constraintWidget2.z();
                    boolean zA = a(interfaceC0052bN1, constraintWidget2, a.f6629l) | zJ1;
                    androidx.constraintlayout.core.e eVar2 = dVar.f6707b1;
                    if (eVar2 != null) {
                        eVar2.f6365b++;
                    }
                    int iY3 = constraintWidget2.Y();
                    int iZ3 = constraintWidget2.z();
                    if (iY3 != iY2) {
                        constraintWidget2.o1(iY3);
                        if (z15 && constraintWidget2.O() > iMax) {
                            iMax = Math.max(iMax, constraintWidget2.O() + constraintWidget2.q(ConstraintAnchor.Type.RIGHT).f());
                        }
                        z11 = true;
                    } else {
                        z11 = zA;
                    }
                    if (iZ3 != iZ2) {
                        constraintWidget2.P0(iZ3);
                        if (z16 && constraintWidget2.t() > iMax2) {
                            iMax2 = Math.max(iMax2, constraintWidget2.t() + constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).f());
                        }
                        z11 = true;
                    }
                    zJ1 = z11 | ((androidx.constraintlayout.core.widgets.i) constraintWidget2).J1();
                }
                i24++;
                iO1 = iO1;
                iZ = iZ;
                iY = iY;
                i23 = 2;
            }
            int i25 = iO1;
            int i26 = iY;
            int i27 = iZ;
            int i28 = i23;
            int i29 = 0;
            while (i29 < i28) {
                int i30 = 0;
                while (i30 < size2) {
                    ConstraintWidget constraintWidget3 = (ConstraintWidget) this.f6625a.get(i30);
                    if (((constraintWidget3 instanceof t0.a) && !(constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i)) || (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.f) || constraintWidget3.X() == 8 || ((z14 && constraintWidget3.f6555e.f6618e.f6611j && constraintWidget3.f6557f.f6618e.f6611j) || (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i))) {
                        z10 = z14;
                        i21 = size2;
                        interfaceC0052b = interfaceC0052bN1;
                    } else {
                        int iY4 = constraintWidget3.Y();
                        int iZ4 = constraintWidget3.z();
                        int iR = constraintWidget3.r();
                        int i31 = a.f6629l;
                        z10 = z14;
                        if (i29 == 1) {
                            i31 = a.f6630m;
                        }
                        boolean zA2 = a(interfaceC0052bN1, constraintWidget3, i31) | zJ1;
                        androidx.constraintlayout.core.e eVar3 = dVar.f6707b1;
                        i21 = size2;
                        interfaceC0052b = interfaceC0052bN1;
                        if (eVar3 != null) {
                            eVar3.f6365b++;
                        }
                        int iY5 = constraintWidget3.Y();
                        int iZ5 = constraintWidget3.z();
                        if (iY5 != iY4) {
                            constraintWidget3.o1(iY5);
                            if (z15 && constraintWidget3.O() > iMax) {
                                iMax = Math.max(iMax, constraintWidget3.O() + constraintWidget3.q(ConstraintAnchor.Type.RIGHT).f());
                            }
                            zA2 = true;
                        }
                        if (iZ5 != iZ4) {
                            constraintWidget3.P0(iZ5);
                            if (z16 && constraintWidget3.t() > iMax2) {
                                iMax2 = Math.max(iMax2, constraintWidget3.t() + constraintWidget3.q(ConstraintAnchor.Type.BOTTOM).f());
                            }
                            zA2 = true;
                        }
                        zJ1 = (!constraintWidget3.b0() || iR == constraintWidget3.r()) ? zA2 : true;
                    }
                    i30++;
                    interfaceC0052bN1 = interfaceC0052b;
                    z14 = z10;
                    size2 = i21;
                }
                boolean z17 = z14;
                int i32 = size2;
                InterfaceC0052b interfaceC0052b2 = interfaceC0052bN1;
                if (!zJ1) {
                    break;
                }
                i29++;
                c(dVar, "intermediate pass", i29, i26, i27);
                interfaceC0052bN1 = interfaceC0052b2;
                z14 = z17;
                size2 = i32;
                i28 = 2;
                zJ1 = false;
            }
            i20 = i25;
        } else {
            i20 = iO1;
        }
        dVar.b2(i20);
        return 0L;
    }

    public void e(androidx.constraintlayout.core.widgets.d dVar) {
        this.f6625a.clear();
        int size = dVar.V0.size();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) dVar.V0.get(i10);
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviourC == dimensionBehaviour || constraintWidget.V() == dimensionBehaviour) {
                this.f6625a.add(constraintWidget);
            }
        }
        dVar.R1();
    }
}
