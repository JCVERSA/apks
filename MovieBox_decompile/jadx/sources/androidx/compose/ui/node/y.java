package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class y extends NodeCoordinator {
    public static final a X = new a(null);
    private static final m4 Y;
    private x T;
    private o0.b U;
    private j0 V;
    private androidx.compose.ui.layout.c W;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final class b extends j0 {
        public b() {
            super(y.this);
        }

        @Override
        public int I0(androidx.compose.ui.layout.a aVar) {
            int iB = z.b(this, aVar);
            s1().put(aVar, Integer.valueOf(iB));
            return iB;
        }

        @Override
        public androidx.compose.ui.layout.g0 P(long j10) {
            y yVar = y.this;
            E0(j10);
            yVar.U2(o0.b.a(j10));
            x xVarQ2 = yVar.Q2();
            j0 j0VarT1 = yVar.R2().T1();
            Intrinsics.e(j0VarT1);
            B1(xVarQ2.z(this, j0VarT1, j10));
            return this;
        }
    }

    static {
        m4 m4VarA = androidx.compose.ui.graphics.t0.a();
        m4VarA.s(u1.f4349b.b());
        m4VarA.setStrokeWidth(1.0f);
        m4VarA.C(n4.f4299a.b());
        Y = m4VarA;
    }

    public y(LayoutNode layoutNode, x xVar) {
        super(layoutNode);
        this.T = xVar;
        androidx.compose.ui.layout.c cVar = null;
        this.V = layoutNode.V() != null ? new b() : null;
        if ((xVar.getNode().e1() & s0.a(512)) != 0) {
            Intrinsics.f(xVar, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode");
            android.support.v4.media.session.c.a(xVar);
            cVar = new androidx.compose.ui.layout.c(this, null);
        }
        this.W = cVar;
    }

    private final void S2() {
        if (j1()) {
            return;
        }
        r2();
        androidx.compose.ui.layout.c cVar = this.W;
        if (cVar == null) {
            a1().w();
            R2().z2(false);
            return;
        }
        cVar.n();
        c1();
        j0 j0VarT1 = T1();
        Intrinsics.e(j0VarT1);
        j0VarT1.v1();
        throw null;
    }

    @Override
    public int I0(androidx.compose.ui.layout.a aVar) {
        j0 j0VarT1 = T1();
        return j0VarT1 != null ? j0VarT1.r1(aVar) : z.b(this, aVar);
    }

    @Override
    public void J1() {
        if (T1() == null) {
            V2(new b());
        }
    }

    @Override
    public androidx.compose.ui.layout.g0 P(long j10) {
        if (P1()) {
            o0.b bVar = this.U;
            if (bVar == null) {
                throw new IllegalArgumentException("Lookahead constraints cannot be null in approach pass.");
            }
            j10 = bVar.r();
        }
        E0(j10);
        androidx.compose.ui.layout.c cVar = this.W;
        if (cVar == null) {
            A2(Q2().z(this, R2(), j10));
            q2();
            return this;
        }
        cVar.n();
        cVar.z();
        throw null;
    }

    public final x Q2() {
        return this.T;
    }

    public final NodeCoordinator R2() {
        NodeCoordinator nodeCoordinatorY1 = Y1();
        Intrinsics.e(nodeCoordinatorY1);
        return nodeCoordinatorY1;
    }

    @Override
    public j0 T1() {
        return this.V;
    }

    public final void T2(x xVar) {
        if (!Intrinsics.c(xVar, this.T)) {
            androidx.compose.ui.f.c node = xVar.getNode();
            if ((node.e1() & s0.a(512)) != 0) {
                Intrinsics.f(xVar, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode");
                android.support.v4.media.session.c.a(xVar);
                androidx.compose.ui.layout.c cVar = this.W;
                if (cVar != null) {
                    android.support.v4.media.session.c.a(xVar);
                    cVar.B(null);
                } else {
                    android.support.v4.media.session.c.a(xVar);
                    cVar = new androidx.compose.ui.layout.c(this, null);
                }
                this.W = cVar;
            } else {
                this.W = null;
            }
        }
        this.T = xVar;
    }

    public final void U2(o0.b bVar) {
        this.U = bVar;
    }

    protected void V2(j0 j0Var) {
        this.V = j0Var;
    }

    @Override
    public androidx.compose.ui.f.c X1() {
        return this.T.getNode();
    }

    @Override
    public void t2(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        R2().G1(m1Var, graphicsLayer);
        if (f0.b(Z0()).getShowLayoutBounds()) {
            H1(m1Var, Y);
        }
    }

    @Override
    public void w0(long j10, float f10, GraphicsLayer graphicsLayer) {
        super.w0(j10, f10, graphicsLayer);
        S2();
    }

    @Override
    public void y0(long j10, float f10, Function1 function1) {
        super.y0(j10, f10, function1);
        S2();
    }
}
