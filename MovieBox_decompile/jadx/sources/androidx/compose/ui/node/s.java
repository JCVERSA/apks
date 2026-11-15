package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class s extends NodeCoordinator {
    public static final a V = new a(null);
    private static final m4 W;
    private final l1 T;
    private j0 U;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final class b extends j0 {
        public b() {
            super(s.this);
        }

        @Override
        public int I0(androidx.compose.ui.layout.a aVar) {
            Integer num = (Integer) q1().z().get(aVar);
            int iIntValue = num != null ? num.intValue() : Integer.MIN_VALUE;
            s1().put(aVar, Integer.valueOf(iIntValue));
            return iIntValue;
        }

        @Override
        public androidx.compose.ui.layout.g0 P(long j10) {
            E0(j10);
            androidx.compose.runtime.collection.b bVarP0 = Z0().p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = ((LayoutNode) objArrM[i10]).U();
                    Intrinsics.e(lookaheadPassDelegateU);
                    lookaheadPassDelegateU.m1(LayoutNode.UsageByParent.NotUsed);
                    i10++;
                } while (i10 < iN);
            }
            B1(Z0().Z().c(this, Z0().C(), j10));
            return this;
        }

        @Override
        protected void w1() {
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = Z0().U();
            Intrinsics.e(lookaheadPassDelegateU);
            lookaheadPassDelegateU.h1();
        }
    }

    static {
        m4 m4VarA = androidx.compose.ui.graphics.t0.a();
        m4VarA.s(u1.f4349b.c());
        m4VarA.setStrokeWidth(1.0f);
        m4VarA.C(n4.f4299a.b());
        W = m4VarA;
    }

    public s(LayoutNode layoutNode) {
        super(layoutNode);
        this.T = new l1();
        X1().B1(this);
        this.U = layoutNode.V() != null ? new b() : null;
    }

    private final void Q2() {
        if (j1()) {
            return;
        }
        r2();
        Z0().X().n1();
    }

    @Override
    public int I0(androidx.compose.ui.layout.a aVar) {
        j0 j0VarT1 = T1();
        if (j0VarT1 != null) {
            return j0VarT1.I0(aVar);
        }
        Integer num = (Integer) O1().z().get(aVar);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    @Override
    public void J1() {
        if (T1() == null) {
            R2(new b());
        }
    }

    @Override
    public androidx.compose.ui.layout.g0 P(long j10) {
        if (P1()) {
            j0 j0VarT1 = T1();
            Intrinsics.e(j0VarT1);
            j10 = j0VarT1.t1();
        }
        E0(j10);
        androidx.compose.runtime.collection.b bVarP0 = Z0().p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                ((LayoutNode) objArrM[i10]).X().t1(LayoutNode.UsageByParent.NotUsed);
                i10++;
            } while (i10 < iN);
        }
        A2(Z0().Z().c(this, Z0().D(), j10));
        q2();
        return this;
    }

    @Override
    public l1 X1() {
        return this.T;
    }

    protected void R2(j0 j0Var) {
        this.U = j0Var;
    }

    @Override
    public j0 T1() {
        return this.U;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007a  */
    @Override
    public void h2(NodeCoordinator.d dVar, long j10, q qVar, boolean z10, boolean z11) {
        boolean z12;
        boolean z13 = false;
        if (dVar.d(Z0())) {
            if (O2(j10)) {
                z12 = z11;
            } else {
                if (z10) {
                    float fF1 = F1(j10, U1());
                    if (!Float.isInfinite(fF1) && !Float.isNaN(fF1)) {
                        z12 = false;
                    }
                }
                z12 = z11;
            }
            z13 = true;
        } else {
            z12 = z11;
        }
        if (z13) {
            int i10 = qVar.f5114c;
            androidx.compose.runtime.collection.b bVarO0 = Z0().o0();
            int iN = bVarO0.n();
            if (iN > 0) {
                Object[] objArrM = bVarO0.m();
                int i11 = iN - 1;
                do {
                    LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                    if (layoutNode.n()) {
                        dVar.c(layoutNode, j10, qVar, z10, z12);
                        if (!qVar.p()) {
                            i11--;
                        } else {
                            if (!qVar.n()) {
                                break;
                            }
                            qVar.a();
                            i11--;
                        }
                    } else {
                        i11--;
                    }
                } while (i11 >= 0);
            }
            qVar.f5114c = i10;
        }
    }

    @Override
    public void t2(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        y0 y0VarB = f0.b(Z0());
        androidx.compose.runtime.collection.b bVarO0 = Z0().o0();
        int iN = bVarO0.n();
        if (iN > 0) {
            Object[] objArrM = bVarO0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                if (layoutNode.n()) {
                    layoutNode.y(m1Var, graphicsLayer);
                }
                i10++;
            } while (i10 < iN);
        }
        if (y0VarB.getShowLayoutBounds()) {
            H1(m1Var, W);
        }
    }

    @Override
    public void w0(long j10, float f10, GraphicsLayer graphicsLayer) {
        super.w0(j10, f10, graphicsLayer);
        Q2();
    }

    @Override
    public void y0(long j10, float f10, Function1 function1) {
        super.y0(j10, f10, function1);
        Q2();
    }
}
