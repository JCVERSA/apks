package androidx.compose.ui.node;

import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.x4;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements androidx.compose.ui.layout.s, androidx.compose.ui.layout.l, z0 {
    public static final c L = new c(null);
    private static final Function1 M = new Function1<NodeCoordinator, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((NodeCoordinator) obj);
            return Unit.f64096a;
        }

        public final void invoke(NodeCoordinator nodeCoordinator) {
            if (nodeCoordinator.isValidOwnerScope()) {
                u uVar = nodeCoordinator.F;
                if (uVar == null) {
                    NodeCoordinator.N2(nodeCoordinator, false, 1, null);
                    return;
                }
                NodeCoordinator.P.b(uVar);
                NodeCoordinator.N2(nodeCoordinator, false, 1, null);
                if (NodeCoordinator.P.c(uVar)) {
                    return;
                }
                LayoutNode layoutNodeZ0 = nodeCoordinator.Z0();
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNodeZ0.P();
                if (layoutNodeLayoutDelegateP.s() > 0) {
                    if (layoutNodeLayoutDelegateP.u() || layoutNodeLayoutDelegateP.v()) {
                        LayoutNode.f1(layoutNodeZ0, false, 1, null);
                    }
                    layoutNodeLayoutDelegateP.I().k1();
                }
                y0 y0VarG0 = layoutNodeZ0.g0();
                if (y0VarG0 != null) {
                    y0VarG0.requestOnPositionedCallback(layoutNodeZ0);
                }
            }
        }
    };
    private static final Function1 N = new Function1<NodeCoordinator, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((NodeCoordinator) obj);
            return Unit.f64096a;
        }

        public final void invoke(NodeCoordinator nodeCoordinator) {
            w0 w0VarS1 = nodeCoordinator.S1();
            if (w0VarS1 != null) {
                w0VarS1.invalidate();
            }
        }
    };
    private static final x4 O = new x4();
    private static final u P = new u();
    private static final float[] Q = i4.c(null, 1, null);
    private static final d R = new a();
    private static final d S = new b();
    private androidx.compose.ui.layout.v A;
    private Map B;
    private float D;
    private y.e E;
    private u F;
    private boolean I;
    private w0 J;
    private GraphicsLayer K;

    private final LayoutNode f5043p;

    private boolean f5044q;

    private boolean f5045r;

    private NodeCoordinator f5046s;

    private NodeCoordinator f5047t;

    private boolean f5048u;

    private boolean f5049v;

    private Function1 f5050w;

    private o0.e f5051x = Z0().H();

    private LayoutDirection f5052y = Z0().getLayoutDirection();

    private float f5053z = 0.8f;
    private long C = o0.p.f67416b.a();
    private final Function2 G = new Function2<androidx.compose.ui.graphics.m1, GraphicsLayer, Unit>() {
        {
            super(2);
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((androidx.compose.ui.graphics.m1) obj, (GraphicsLayer) obj2);
            return Unit.f64096a;
        }

        public final void invoke(final androidx.compose.ui.graphics.m1 m1Var, final GraphicsLayer graphicsLayer) {
            if (!this.this$0.Z0().n()) {
                this.this$0.I = true;
                return;
            }
            OwnerSnapshotObserver ownerSnapshotObserverW1 = this.this$0.W1();
            NodeCoordinator nodeCoordinator = this.this$0;
            Function1 function1 = NodeCoordinator.N;
            final NodeCoordinator nodeCoordinator2 = this.this$0;
            ownerSnapshotObserverW1.i(nodeCoordinator, function1, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m132invoke();
                    return Unit.f64096a;
                }

                public final void m132invoke() {
                    nodeCoordinator2.I1(m1Var, graphicsLayer);
                }
            });
            this.this$0.I = false;
        }
    };
    private final Function0 H = new Function0<Unit>() {
        {
            super(0);
        }

        @Override
        public Object invoke() {
            m135invoke();
            return Unit.f64096a;
        }

        public final void m135invoke() {
            NodeCoordinator nodeCoordinatorZ1 = this.this$0.Z1();
            if (nodeCoordinatorZ1 != null) {
                nodeCoordinatorZ1.i2();
            }
        }
    };

    public static final class a implements d {
        a() {
        }

        @Override
        public int a() {
            return s0.a(16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.ui.f$c] */
        /* JADX WARN: Type inference failed for: r10v1, types: [androidx.compose.ui.f$c] */
        /* JADX WARN: Type inference failed for: r10v10 */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v12 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5, types: [androidx.compose.ui.f$c] */
        /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r10v8 */
        /* JADX WARN: Type inference failed for: r10v9 */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.b] */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.b] */
        /* JADX WARN: Type inference failed for: r3v8 */
        /* JADX WARN: Type inference failed for: r3v9 */
        /* JADX WARN: Type inference failed for: r5v4 */
        @Override
        public boolean b(androidx.compose.ui.f.c cVar) {
            int iA = s0.a(16);
            ?? bVar = 0;
            while (cVar != 0) {
                if (cVar instanceof e1) {
                    if (((e1) cVar).R()) {
                        return true;
                    }
                } else if ((cVar.e1() & iA) != 0 && (cVar instanceof i)) {
                    androidx.compose.ui.f.c cVarD1 = ((i) cVar).D1();
                    int i10 = 0;
                    while (cVarD1 != null) {
                        if ((cVarD1.e1() & iA) != 0) {
                            i10++;
                            if (i10 == 1) {
                                bVar = bVar;
                                cVar = cVar;
                                bVar = bVar;
                                cVar = cVarD1;
                            } else {
                                if (bVar == 0) {
                                    bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                }
                                if (cVar != 0) {
                                    bVar.b(cVar);
                                    cVar = 0;
                                }
                                bVar.b(cVarD1);
                            }
                        } else {
                            bVar = bVar;
                            cVar = cVar;
                        }
                        cVarD1 = cVarD1.a1();
                        bVar = bVar;
                        cVar = cVar;
                    }
                    if (i10 == 1) {
                        bVar = bVar;
                        cVar = cVar;
                    } else {
                        bVar = bVar;
                        cVar = cVar;
                    }
                }
                cVar = g.g(bVar);
            }
            return false;
        }

        @Override
        public void c(LayoutNode layoutNode, long j10, q qVar, boolean z10, boolean z11) {
            layoutNode.q0(j10, qVar, z10, z11);
        }

        @Override
        public boolean d(LayoutNode layoutNode) {
            return true;
        }
    }

    public static final class b implements d {
        b() {
        }

        @Override
        public int a() {
            return s0.a(8);
        }

        @Override
        public boolean b(androidx.compose.ui.f.c cVar) {
            return false;
        }

        @Override
        public void c(LayoutNode layoutNode, long j10, q qVar, boolean z10, boolean z11) {
            layoutNode.s0(j10, qVar, z10, z11);
        }

        @Override
        public boolean d(LayoutNode layoutNode) {
            androidx.compose.ui.semantics.i iVarF = layoutNode.F();
            boolean z10 = false;
            if (iVarF != null && iVarF.n()) {
                z10 = true;
            }
            return !z10;
        }
    }

    public static final class c {
        public c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return NodeCoordinator.R;
        }

        public final d b() {
            return NodeCoordinator.S;
        }

        private c() {
        }
    }

    public interface d {
        int a();

        boolean b(androidx.compose.ui.f.c cVar);

        void c(LayoutNode layoutNode, long j10, q qVar, boolean z10, boolean z11);

        boolean d(LayoutNode layoutNode);
    }

    public NodeCoordinator(LayoutNode layoutNode) {
        this.f5043p = layoutNode;
    }

    private final void C1(NodeCoordinator nodeCoordinator, y.e eVar, boolean z10) {
        if (nodeCoordinator == this) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.f5047t;
        if (nodeCoordinator2 != null) {
            nodeCoordinator2.C1(nodeCoordinator, eVar, z10);
        }
        N1(eVar, z10);
    }

    private final long D1(NodeCoordinator nodeCoordinator, long j10, boolean z10) {
        if (nodeCoordinator == this) {
            return j10;
        }
        NodeCoordinator nodeCoordinator2 = this.f5047t;
        return (nodeCoordinator2 == null || Intrinsics.c(nodeCoordinator, nodeCoordinator2)) ? L1(j10, z10) : L1(nodeCoordinator2.D1(nodeCoordinator, j10, z10), z10);
    }

    public final void F2(final androidx.compose.ui.f.c cVar, final d dVar, final long j10, final q qVar, final boolean z10, final boolean z11, final float f10) {
        if (cVar == null) {
            h2(dVar, j10, qVar, z10, z11);
        } else if (dVar.b(cVar)) {
            qVar.w(cVar, f10, z11, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m136invoke();
                    return Unit.f64096a;
                }

                public final void m136invoke() {
                    this.this$0.F2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j10, qVar, z10, z11, f10);
                }
            });
        } else {
            F2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j10, qVar, z10, z11, f10);
        }
    }

    private final NodeCoordinator G2(androidx.compose.ui.layout.l lVar) {
        NodeCoordinator nodeCoordinatorA;
        androidx.compose.ui.layout.q qVar = lVar instanceof androidx.compose.ui.layout.q ? (androidx.compose.ui.layout.q) lVar : null;
        if (qVar != null && (nodeCoordinatorA = qVar.a()) != null) {
            return nodeCoordinatorA;
        }
        Intrinsics.f(lVar, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator");
        return (NodeCoordinator) lVar;
    }

    public final void I1(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        androidx.compose.ui.f.c cVarC2 = c2(s0.a(4));
        if (cVarC2 == null) {
            t2(m1Var, graphicsLayer);
        } else {
            Z0().W().n(m1Var, o0.u.d(k()), this, cVarC2, graphicsLayer);
        }
    }

    public static long I2(NodeCoordinator nodeCoordinator, long j10, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toParentPosition-8S9VItk");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return nodeCoordinator.H2(j10, z10);
    }

    public static void L2(NodeCoordinator nodeCoordinator, Function1 function1, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerBlock");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        nodeCoordinator.K2(function1, z10);
    }

    public static long M1(NodeCoordinator nodeCoordinator, long j10, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fromParentPosition-8S9VItk");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return nodeCoordinator.L1(j10, z10);
    }

    private final void M2(boolean z10) {
        y0 y0VarG0;
        if (this.K != null) {
            return;
        }
        w0 w0Var = this.J;
        if (w0Var == null) {
            if (this.f5050w == null) {
                return;
            }
            g0.a.b("null layer with a non-null layerBlock");
            return;
        }
        final Function1 function1 = this.f5050w;
        if (function1 == null) {
            g0.a.c("updateLayerParameters requires a non-null layerBlock");
            throw new KotlinNothingValueException();
        }
        x4 x4Var = O;
        x4Var.P();
        x4Var.R(Z0().H());
        x4Var.U(Z0().getLayoutDirection());
        x4Var.V(o0.u.d(k()));
        W1().i(this, M, new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m137invoke();
                return Unit.f64096a;
            }

            public final void m137invoke() {
                function1.invoke(NodeCoordinator.O);
                NodeCoordinator.O.Y();
            }
        });
        u uVar = this.F;
        if (uVar == null) {
            uVar = new u();
            this.F = uVar;
        }
        uVar.a(x4Var);
        w0Var.updateLayerProperties(x4Var);
        this.f5049v = x4Var.z();
        this.f5053z = x4Var.n();
        if (!z10 || (y0VarG0 = Z0().g0()) == null) {
            return;
        }
        y0VarG0.onLayoutChange(Z0());
    }

    private final void N1(y.e eVar, boolean z10) {
        float fH = o0.p.h(d1());
        eVar.i(eVar.b() - fH);
        eVar.j(eVar.c() - fH);
        float fI = o0.p.i(d1());
        eVar.k(eVar.d() - fI);
        eVar.h(eVar.a() - fI);
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.mapBounds(eVar, true);
            if (this.f5049v && z10) {
                eVar.e(0.0f, 0.0f, o0.t.g(k()), o0.t.f(k()));
                eVar.f();
            }
        }
    }

    static void N2(NodeCoordinator nodeCoordinator, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerParameters");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        nodeCoordinator.M2(z10);
    }

    public final OwnerSnapshotObserver W1() {
        return f0.b(Z0()).getSnapshotObserver();
    }

    private final boolean b2(int i10) {
        androidx.compose.ui.f.c cVarD2 = d2(t0.i(i10));
        return cVarD2 != null && g.e(cVarD2, i10);
    }

    public final androidx.compose.ui.f.c d2(boolean z10) {
        androidx.compose.ui.f.c cVarX1;
        if (Z0().f0() == this) {
            return Z0().e0().k();
        }
        if (z10) {
            NodeCoordinator nodeCoordinator = this.f5047t;
            if (nodeCoordinator != null && (cVarX1 = nodeCoordinator.X1()) != null) {
                return cVarX1.a1();
            }
        } else {
            NodeCoordinator nodeCoordinator2 = this.f5047t;
            if (nodeCoordinator2 != null) {
                return nodeCoordinator2.X1();
            }
        }
        return null;
    }

    public final void e2(final androidx.compose.ui.f.c cVar, final d dVar, final long j10, final q qVar, final boolean z10, final boolean z11) {
        if (cVar == null) {
            h2(dVar, j10, qVar, z10, z11);
        } else {
            qVar.q(cVar, z11, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m133invoke();
                    return Unit.f64096a;
                }

                public final void m133invoke() {
                    this.this$0.e2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j10, qVar, z10, z11);
                }
            });
        }
    }

    public final void f2(final androidx.compose.ui.f.c cVar, final d dVar, final long j10, final q qVar, final boolean z10, final boolean z11, final float f10) {
        if (cVar == null) {
            h2(dVar, j10, qVar, z10, z11);
        } else {
            qVar.r(cVar, f10, z11, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m134invoke();
                    return Unit.f64096a;
                }

                public final void m134invoke() {
                    this.this$0.f2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j10, qVar, z10, z11, f10);
                }
            });
        }
    }

    private final long l2(long j10) {
        float fM = y.g.m(j10);
        float fMax = Math.max(0.0f, fM < 0.0f ? -fM : fM - s0());
        float fN = y.g.n(j10);
        return y.h.a(fMax, Math.max(0.0f, fN < 0.0f ? -fN : fN - o0()));
    }

    private final void u2(long j10, float f10, Function1 function1, GraphicsLayer graphicsLayer) {
        if (graphicsLayer != null) {
            if (!(function1 == null)) {
                g0.a.a("both ways to create layers shouldn't be used together");
            }
            if (this.K != graphicsLayer) {
                this.K = null;
                L2(this, null, false, 2, null);
                this.K = graphicsLayer;
            }
            if (this.J == null) {
                w0 w0VarCreateLayer = f0.b(Z0()).createLayer(this.G, this.H, graphicsLayer);
                w0VarCreateLayer.mo141resizeozmzZPI(r0());
                w0VarCreateLayer.mo140movegyyYBs(j10);
                this.J = w0VarCreateLayer;
                Z0().m1(true);
                this.H.invoke();
            }
        } else {
            if (this.K != null) {
                this.K = null;
                L2(this, null, false, 2, null);
            }
            L2(this, function1, false, 2, null);
        }
        if (!o0.p.g(d1(), j10)) {
            B2(j10);
            Z0().P().I().k1();
            w0 w0Var = this.J;
            if (w0Var != null) {
                w0Var.mo140movegyyYBs(j10);
            } else {
                NodeCoordinator nodeCoordinator = this.f5047t;
                if (nodeCoordinator != null) {
                    nodeCoordinator.i2();
                }
            }
            f1(this);
            y0 y0VarG0 = Z0().g0();
            if (y0VarG0 != null) {
                y0VarG0.onLayoutChange(Z0());
            }
        }
        this.D = f10;
        if (i1()) {
            return;
        }
        Q0(a1());
    }

    public static void x2(NodeCoordinator nodeCoordinator, y.e eVar, boolean z10, boolean z11, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rectInParent");
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        nodeCoordinator.w2(eVar, z10, z11);
    }

    public void A2(androidx.compose.ui.layout.v vVar) {
        androidx.compose.ui.layout.v vVar2 = this.A;
        if (vVar != vVar2) {
            this.A = vVar;
            if (vVar2 == null || vVar.getWidth() != vVar2.getWidth() || vVar.getHeight() != vVar2.getHeight()) {
                p2(vVar.getWidth(), vVar.getHeight());
            }
            Map map = this.B;
            if (((map == null || map.isEmpty()) && vVar.v().isEmpty()) || Intrinsics.c(vVar.v(), this.B)) {
                return;
            }
            O1().v().m();
            Map linkedHashMap = this.B;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                this.B = linkedHashMap;
            }
            linkedHashMap.clear();
            linkedHashMap.putAll(vVar.v());
        }
    }

    @Override
    public long B(androidx.compose.ui.layout.l lVar, long j10, boolean z10) {
        if (lVar instanceof androidx.compose.ui.layout.q) {
            ((androidx.compose.ui.layout.q) lVar).a().m2();
            return y.g.u(lVar.B(this, y.g.u(j10), z10));
        }
        NodeCoordinator nodeCoordinatorG2 = G2(lVar);
        nodeCoordinatorG2.m2();
        NodeCoordinator nodeCoordinatorK1 = K1(nodeCoordinatorG2);
        while (nodeCoordinatorG2 != nodeCoordinatorK1) {
            j10 = nodeCoordinatorG2.H2(j10, z10);
            nodeCoordinatorG2 = nodeCoordinatorG2.f5047t;
            Intrinsics.e(nodeCoordinatorG2);
        }
        return D1(nodeCoordinatorK1, j10, z10);
    }

    @Override
    public float B0() {
        return Z0().H().B0();
    }

    protected void B2(long j10) {
        this.C = j10;
    }

    @Override
    public long C(androidx.compose.ui.layout.l lVar, long j10) {
        return B(lVar, j10, true);
    }

    public final void C2(NodeCoordinator nodeCoordinator) {
        this.f5046s = nodeCoordinator;
    }

    public final void D2(NodeCoordinator nodeCoordinator) {
        this.f5047t = nodeCoordinator;
    }

    protected final long E1(long j10) {
        return y.n.a(Math.max(0.0f, (y.m.i(j10) - s0()) / 2.0f), Math.max(0.0f, (y.m.g(j10) - o0()) / 2.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public final boolean E2() {
        androidx.compose.ui.f.c cVarD2 = d2(t0.i(s0.a(16)));
        if (cVarD2 != null && cVarD2.j1()) {
            int iA = s0.a(16);
            if (!cVarD2.getNode().j1()) {
                g0.a.b("visitLocalDescendants called on an unattached node");
            }
            androidx.compose.ui.f.c node = cVarD2.getNode();
            if ((node.Z0() & iA) != 0) {
                while (node != null) {
                    if ((node.e1() & iA) != 0) {
                        ?? G = node;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof e1) {
                                if (((e1) G).O0()) {
                                    return true;
                                }
                            } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                                androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                                int i10 = 0;
                                while (cVarD1 != null) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
                                            G = G;
                                            bVar = bVar;
                                            bVar = bVar;
                                            G = cVarD1;
                                        } else {
                                            if (bVar == 0) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (G != 0) {
                                                bVar.b(G);
                                                G = 0;
                                            }
                                            bVar.b(cVarD1);
                                        }
                                    } else {
                                        G = G;
                                        bVar = bVar;
                                    }
                                    cVarD1 = cVarD1.a1();
                                    G = G;
                                    bVar = bVar;
                                }
                                if (i10 == 1) {
                                    G = G;
                                    bVar = bVar;
                                } else {
                                    G = G;
                                    bVar = bVar;
                                }
                            }
                            G = g.g(bVar);
                        }
                    }
                    node = node.a1();
                }
            }
        }
        return false;
    }

    @Override
    public boolean F() {
        return X1().j1();
    }

    protected final float F1(long j10, long j11) {
        if (s0() >= y.m.i(j11) && o0() >= y.m.g(j11)) {
            return Float.POSITIVE_INFINITY;
        }
        long jE1 = E1(j11);
        float fI = y.m.i(jE1);
        float fG = y.m.g(jE1);
        long jL2 = l2(j10);
        if ((fI > 0.0f || fG > 0.0f) && y.g.m(jL2) <= fI && y.g.n(jL2) <= fG) {
            return y.g.l(jL2);
        }
        return Float.POSITIVE_INFINITY;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override
    public Object G() {
        if (!Z0().e0().q(s0.a(64))) {
            return null;
        }
        X1();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        for (androidx.compose.ui.f.c cVarO = Z0().e0().o(); cVarO != null; cVarO = cVarO.g1()) {
            if ((s0.a(64) & cVarO.e1()) != 0) {
                int iA = s0.a(64);
                ?? bVar = 0;
                ?? G = cVarO;
                while (G != 0) {
                    if (G instanceof a1) {
                        objectRef.element = ((a1) G).v0(Z0().H(), objectRef.element);
                    } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                        androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                        int i10 = 0;
                        G = G;
                        bVar = bVar;
                        while (cVarD1 != null) {
                            if ((cVarD1.e1() & iA) != 0) {
                                i10++;
                                if (i10 == 1) {
                                    bVar = bVar;
                                    G = cVarD1;
                                } else {
                                    if (bVar == 0) {
                                        bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                    }
                                    if (G != 0) {
                                        bVar.b(G);
                                        G = 0;
                                    }
                                    bVar.b(cVarD1);
                                }
                            }
                            cVarD1 = cVarD1.a1();
                            G = G;
                            bVar = bVar;
                        }
                        if (i10 == 1) {
                        }
                    }
                    G = g.g(bVar);
                }
            }
        }
        return objectRef.element;
    }

    public final void G1(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.drawLayer(m1Var, graphicsLayer);
            return;
        }
        float fH = o0.p.h(d1());
        float fI = o0.p.i(d1());
        m1Var.c(fH, fI);
        I1(m1Var, graphicsLayer);
        m1Var.c(-fH, -fI);
    }

    protected final void H1(androidx.compose.ui.graphics.m1 m1Var, m4 m4Var) {
        m1Var.i(new y.i(0.5f, 0.5f, o0.t.g(r0()) - 0.5f, o0.t.f(r0()) - 0.5f), m4Var);
    }

    public long H2(long j10, boolean z10) {
        w0 w0Var = this.J;
        if (w0Var != null) {
            j10 = w0Var.mo139mapOffset8S9VItk(j10, false);
        }
        return (z10 || !h1()) ? o0.q.c(j10, d1()) : j10;
    }

    public abstract void J1();

    public final y.i J2() {
        if (!F()) {
            return y.i.f76004e.a();
        }
        androidx.compose.ui.layout.l lVarD = androidx.compose.ui.layout.m.d(this);
        y.e eVarV1 = V1();
        long jE1 = E1(U1());
        eVarV1.i(-y.m.i(jE1));
        eVarV1.k(-y.m.g(jE1));
        eVarV1.j(s0() + y.m.i(jE1));
        eVarV1.h(o0() + y.m.g(jE1));
        NodeCoordinator nodeCoordinator = this;
        while (nodeCoordinator != lVarD) {
            nodeCoordinator.w2(eVarV1, false, true);
            if (eVarV1.f()) {
                return y.i.f76004e.a();
            }
            nodeCoordinator = nodeCoordinator.f5047t;
            Intrinsics.e(nodeCoordinator);
        }
        return y.f.a(eVarV1);
    }

    public final NodeCoordinator K1(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNodeZ0 = nodeCoordinator.Z0();
        LayoutNode layoutNodeZ1 = Z0();
        if (layoutNodeZ0 == layoutNodeZ1) {
            androidx.compose.ui.f.c cVarX1 = nodeCoordinator.X1();
            androidx.compose.ui.f.c cVarX2 = X1();
            int iA = s0.a(2);
            if (!cVarX2.getNode().j1()) {
                g0.a.b("visitLocalAncestors called on an unattached node");
            }
            for (androidx.compose.ui.f.c cVarG1 = cVarX2.getNode().g1(); cVarG1 != null; cVarG1 = cVarG1.g1()) {
                if ((cVarG1.e1() & iA) != 0 && cVarG1 == cVarX1) {
                    return nodeCoordinator;
                }
            }
            return this;
        }
        while (layoutNodeZ0.I() > layoutNodeZ1.I()) {
            layoutNodeZ0 = layoutNodeZ0.h0();
            Intrinsics.e(layoutNodeZ0);
        }
        while (layoutNodeZ1.I() > layoutNodeZ0.I()) {
            layoutNodeZ1 = layoutNodeZ1.h0();
            Intrinsics.e(layoutNodeZ1);
        }
        while (layoutNodeZ0 != layoutNodeZ1) {
            layoutNodeZ0 = layoutNodeZ0.h0();
            layoutNodeZ1 = layoutNodeZ1.h0();
            if (layoutNodeZ0 == null || layoutNodeZ1 == null) {
                throw new IllegalArgumentException("layouts are not part of the same hierarchy");
            }
        }
        if (layoutNodeZ1 == Z0()) {
            return this;
        }
        return layoutNodeZ0 == nodeCoordinator.Z0() ? nodeCoordinator : layoutNodeZ0.M();
    }

    public final void K2(Function1 function1, boolean z10) {
        y0 y0VarG0;
        if (!(function1 == null || this.K == null)) {
            g0.a.a("layerBlock can't be provided when explicitLayer is provided");
        }
        LayoutNode layoutNodeZ0 = Z0();
        boolean z11 = (!z10 && this.f5050w == function1 && Intrinsics.c(this.f5051x, layoutNodeZ0.H()) && this.f5052y == layoutNodeZ0.getLayoutDirection()) ? false : true;
        this.f5051x = layoutNodeZ0.H();
        this.f5052y = layoutNodeZ0.getLayoutDirection();
        if (!layoutNodeZ0.D0() || function1 == null) {
            this.f5050w = null;
            w0 w0Var = this.J;
            if (w0Var != null) {
                w0Var.destroy();
                layoutNodeZ0.m1(true);
                this.H.invoke();
                if (F() && (y0VarG0 = layoutNodeZ0.g0()) != null) {
                    y0VarG0.onLayoutChange(layoutNodeZ0);
                }
            }
            this.J = null;
            this.I = false;
            return;
        }
        this.f5050w = function1;
        if (this.J != null) {
            if (z11) {
                N2(this, false, 1, null);
                return;
            }
            return;
        }
        w0 w0VarA = x0.a(f0.b(layoutNodeZ0), this.G, this.H, null, 4, null);
        w0VarA.mo141resizeozmzZPI(r0());
        w0VarA.mo140movegyyYBs(d1());
        this.J = w0VarA;
        N2(this, false, 1, null);
        layoutNodeZ0.m1(true);
        this.H.invoke();
    }

    @Override
    public long L(long j10) {
        return f0.b(Z0()).mo142calculatePositionInWindowMKHz9U(Y(j10));
    }

    public long L1(long j10, boolean z10) {
        if (z10 || !h1()) {
            j10 = o0.q.b(j10, d1());
        }
        w0 w0Var = this.J;
        return w0Var != null ? w0Var.mo139mapOffset8S9VItk(j10, true) : j10;
    }

    @Override
    public y.i O(androidx.compose.ui.layout.l lVar, boolean z10) {
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!lVar.F()) {
            g0.a.b("LayoutCoordinates " + lVar + " is not attached!");
        }
        NodeCoordinator nodeCoordinatorG2 = G2(lVar);
        nodeCoordinatorG2.m2();
        NodeCoordinator nodeCoordinatorK1 = K1(nodeCoordinatorG2);
        y.e eVarV1 = V1();
        eVarV1.i(0.0f);
        eVarV1.k(0.0f);
        eVarV1.j(o0.t.g(lVar.k()));
        eVarV1.h(o0.t.f(lVar.k()));
        while (nodeCoordinatorG2 != nodeCoordinatorK1) {
            x2(nodeCoordinatorG2, eVarV1, z10, false, 4, null);
            if (eVarV1.f()) {
                return y.i.f76004e.a();
            }
            nodeCoordinatorG2 = nodeCoordinatorG2.f5047t;
            Intrinsics.e(nodeCoordinatorG2);
        }
        C1(nodeCoordinatorK1, eVarV1, z10);
        return y.f.a(eVarV1);
    }

    public androidx.compose.ui.node.a O1() {
        return Z0().P().r();
    }

    protected final boolean O2(long j10) {
        if (!y.h.b(j10)) {
            return false;
        }
        w0 w0Var = this.J;
        return w0Var == null || !this.f5049v || w0Var.mo138isInLayerk4lQ0M(j10);
    }

    public final boolean P1() {
        return this.f5045r;
    }

    public final boolean Q1() {
        return this.I;
    }

    @Override
    public final androidx.compose.ui.layout.l R() {
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        m2();
        return Z0().f0().f5047t;
    }

    public final long R1() {
        return t0();
    }

    public final w0 S1() {
        return this.J;
    }

    public abstract j0 T1();

    public final long U1() {
        return this.f5051x.P0(Z0().l0().d());
    }

    @Override
    public LookaheadCapablePlaceable V0() {
        return this.f5046s;
    }

    protected final y.e V1() {
        y.e eVar = this.E;
        if (eVar != null) {
            return eVar;
        }
        y.e eVar2 = new y.e(0.0f, 0.0f, 0.0f, 0.0f);
        this.E = eVar2;
        return eVar2;
    }

    public abstract androidx.compose.ui.f.c X1();

    @Override
    public long Y(long j10) {
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        m2();
        long jI2 = j10;
        for (NodeCoordinator nodeCoordinator = this; nodeCoordinator != null; nodeCoordinator = nodeCoordinator.f5047t) {
            jI2 = I2(nodeCoordinator, jI2, false, 2, null);
        }
        return jI2;
    }

    @Override
    public boolean Y0() {
        return this.A != null;
    }

    public final NodeCoordinator Y1() {
        return this.f5046s;
    }

    @Override
    public LayoutNode Z0() {
        return this.f5043p;
    }

    public final NodeCoordinator Z1() {
        return this.f5047t;
    }

    @Override
    public androidx.compose.ui.layout.v a1() {
        androidx.compose.ui.layout.v vVar = this.A;
        if (vVar != null) {
            return vVar;
        }
        throw new IllegalStateException("Asking for measurement result of unmeasured layout modifier");
    }

    public final float a2() {
        return this.D;
    }

    @Override
    public LookaheadCapablePlaceable b1() {
        return this.f5047t;
    }

    public final androidx.compose.ui.f.c c2(int i10) {
        boolean zI = t0.i(i10);
        androidx.compose.ui.f.c cVarX1 = X1();
        if (!zI && (cVarX1 = cVarX1.g1()) == null) {
            return null;
        }
        for (androidx.compose.ui.f.c cVarD2 = d2(zI); cVarD2 != null && (cVarD2.Z0() & i10) != 0; cVarD2 = cVarD2.a1()) {
            if ((cVarD2.e1() & i10) != 0) {
                return cVarD2;
            }
            if (cVarD2 == cVarX1) {
                return null;
            }
        }
        return null;
    }

    @Override
    public long d1() {
        return this.C;
    }

    public final void g2(d dVar, long j10, q qVar, boolean z10, boolean z11) {
        androidx.compose.ui.f.c cVarC2 = c2(dVar.a());
        if (!O2(j10)) {
            if (z10) {
                float fF1 = F1(j10, U1());
                if (Float.isInfinite(fF1) || Float.isNaN(fF1) || !qVar.t(fF1, false)) {
                    return;
                }
                f2(cVarC2, dVar, j10, qVar, z10, false, fF1);
                return;
            }
            return;
        }
        if (cVarC2 == null) {
            h2(dVar, j10, qVar, z10, z11);
            return;
        }
        if (j2(j10)) {
            e2(cVarC2, dVar, j10, qVar, z10, z11);
            return;
        }
        float fF2 = !z10 ? Float.POSITIVE_INFINITY : F1(j10, U1());
        if (!Float.isInfinite(fF2) && !Float.isNaN(fF2)) {
            if (qVar.t(fF2, z11)) {
                f2(cVarC2, dVar, j10, qVar, z10, z11, fF2);
                return;
            }
        }
        F2(cVarC2, dVar, j10, qVar, z10, z11, fF2);
    }

    @Override
    public float getDensity() {
        return Z0().H().getDensity();
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return Z0().getLayoutDirection();
    }

    public void h2(d dVar, long j10, q qVar, boolean z10, boolean z11) {
        NodeCoordinator nodeCoordinator = this.f5046s;
        if (nodeCoordinator != null) {
            nodeCoordinator.g2(dVar, M1(nodeCoordinator, j10, false, 2, null), qVar, z10, z11);
        }
    }

    public void i2() {
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.invalidate();
            return;
        }
        NodeCoordinator nodeCoordinator = this.f5047t;
        if (nodeCoordinator != null) {
            nodeCoordinator.i2();
        }
    }

    @Override
    public boolean isValidOwnerScope() {
        return (this.J == null || this.f5048u || !Z0().D0()) ? false : true;
    }

    protected final boolean j2(long j10) {
        float fM = y.g.m(j10);
        float fN = y.g.n(j10);
        return fM >= 0.0f && fN >= 0.0f && fM < ((float) s0()) && fN < ((float) o0());
    }

    @Override
    public final long k() {
        return r0();
    }

    public final boolean k2() {
        if (this.J != null && this.f5053z <= 0.0f) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.f5047t;
        if (nodeCoordinator != null) {
            return nodeCoordinator.k2();
        }
        return false;
    }

    @Override
    public void l1() {
        GraphicsLayer graphicsLayer = this.K;
        if (graphicsLayer != null) {
            w0(d1(), this.D, graphicsLayer);
        } else {
            y0(d1(), this.D, this.f5050w);
        }
    }

    public final void m2() {
        Z0().P().S();
    }

    public void n2() {
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.invalidate();
        }
    }

    public final void o2() {
        K2(this.f5050w, true);
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v4 */
    protected void p2(int i10, int i11) {
        NodeCoordinator nodeCoordinator;
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.mo141resizeozmzZPI(o0.u.a(i10, i11));
        } else if (Z0().n() && (nodeCoordinator = this.f5047t) != null) {
            nodeCoordinator.i2();
        }
        A0(o0.u.a(i10, i11));
        if (this.f5050w != null) {
            M2(false);
        }
        int iA = s0.a(4);
        boolean zI = t0.i(iA);
        androidx.compose.ui.f.c cVarX1 = X1();
        if (zI || (cVarX1 = cVarX1.g1()) != null) {
            for (androidx.compose.ui.f.c cVarD2 = d2(zI); cVarD2 != null && (cVarD2.Z0() & iA) != 0; cVarD2 = cVarD2.a1()) {
                if ((cVarD2.e1() & iA) != 0) {
                    ?? G = cVarD2;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof n) {
                            ((n) G).w0();
                        } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                            androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                            int i12 = 0;
                            G = G;
                            bVar = bVar;
                            while (cVarD1 != null) {
                                if ((cVarD1.e1() & iA) != 0) {
                                    i12++;
                                    if (i12 == 1) {
                                        bVar = bVar;
                                        G = cVarD1;
                                    } else {
                                        if (bVar == 0) {
                                            bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                        }
                                        if (G != 0) {
                                            bVar.b(G);
                                            G = 0;
                                        }
                                        bVar.b(cVarD1);
                                    }
                                }
                                cVarD1 = cVarD1.a1();
                                G = G;
                                bVar = bVar;
                            }
                            if (i12 == 1) {
                            }
                        }
                        G = g.g(bVar);
                    }
                }
                if (cVarD2 == cVarX1) {
                    break;
                }
            }
        }
        y0 y0VarG0 = Z0().g0();
        if (y0VarG0 != null) {
            y0VarG0.onLayoutChange(Z0());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.lang.Object] */
    public final void q2() {
        androidx.compose.ui.f.c cVarG1;
        if (b2(s0.a(128))) {
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            try {
                int iA = s0.a(128);
                boolean zI = t0.i(iA);
                if (!zI) {
                    cVarG1 = X1().g1();
                    if (cVarG1 == null) {
                    }
                    Unit unit = Unit.f64096a;
                }
                cVarG1 = X1();
                for (androidx.compose.ui.f.c cVarD2 = d2(zI); cVarD2 != null && (cVarD2.Z0() & iA) != 0; cVarD2 = cVarD2.a1()) {
                    if ((cVarD2.e1() & iA) != 0) {
                        ?? bVar = 0;
                        ?? G = cVarD2;
                        while (G != 0) {
                            if (G instanceof w) {
                                ((w) G).F(r0());
                            } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                                androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                                int i10 = 0;
                                while (cVarD1 != null) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
                                            G = G;
                                            bVar = bVar;
                                            bVar = bVar;
                                            G = cVarD1;
                                        } else {
                                            if (bVar == 0) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (G != 0) {
                                                bVar.b(G);
                                                G = 0;
                                            }
                                            bVar.b(cVarD1);
                                        }
                                    } else {
                                        G = G;
                                        bVar = bVar;
                                    }
                                    cVarD1 = cVarD1.a1();
                                    G = G;
                                    bVar = bVar;
                                }
                                if (i10 == 1) {
                                    G = G;
                                    bVar = bVar;
                                } else {
                                    G = G;
                                    bVar = bVar;
                                }
                            }
                            G = g.g(bVar);
                        }
                    }
                    if (cVarD2 == cVarG1) {
                        break;
                    }
                }
                Unit unit2 = Unit.f64096a;
            } finally {
                aVar.m(jVarD, jVarF, function1H);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v4 */
    public final void r2() {
        int iA = s0.a(128);
        boolean zI = t0.i(iA);
        androidx.compose.ui.f.c cVarX1 = X1();
        if (!zI && (cVarX1 = cVarX1.g1()) == null) {
            return;
        }
        for (androidx.compose.ui.f.c cVarD2 = d2(zI); cVarD2 != null && (cVarD2.Z0() & iA) != 0; cVarD2 = cVarD2.a1()) {
            if ((cVarD2.e1() & iA) != 0) {
                ?? G = cVarD2;
                ?? bVar = 0;
                while (G != 0) {
                    if (G instanceof w) {
                        ((w) G).I(this);
                    } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                        androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                        int i10 = 0;
                        G = G;
                        bVar = bVar;
                        while (cVarD1 != null) {
                            if ((cVarD1.e1() & iA) != 0) {
                                i10++;
                                if (i10 == 1) {
                                    bVar = bVar;
                                    G = cVarD1;
                                } else {
                                    if (bVar == 0) {
                                        bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                    }
                                    if (G != 0) {
                                        bVar.b(G);
                                        G = 0;
                                    }
                                    bVar.b(cVarD1);
                                }
                            }
                            cVarD1 = cVarD1.a1();
                            G = G;
                            bVar = bVar;
                        }
                        if (i10 == 1) {
                        }
                    }
                    G = g.g(bVar);
                }
            }
            if (cVarD2 == cVarX1) {
                return;
            }
        }
    }

    public final void s2() {
        this.f5048u = true;
        this.H.invoke();
        y2();
    }

    public abstract void t2(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer);

    public final void v2(long j10, float f10, Function1 function1, GraphicsLayer graphicsLayer) {
        u2(o0.p.l(j10, k0()), f10, function1, graphicsLayer);
    }

    @Override
    public void w0(long j10, float f10, GraphicsLayer graphicsLayer) {
        if (!this.f5044q) {
            u2(j10, f10, null, graphicsLayer);
            return;
        }
        j0 j0VarT1 = T1();
        Intrinsics.e(j0VarT1);
        u2(j0VarT1.d1(), f10, null, graphicsLayer);
    }

    public final void w2(y.e eVar, boolean z10, boolean z11) {
        w0 w0Var = this.J;
        if (w0Var != null) {
            if (this.f5049v) {
                if (z11) {
                    long jU1 = U1();
                    float fI = y.m.i(jU1) / 2.0f;
                    float fG = y.m.g(jU1) / 2.0f;
                    eVar.e(-fI, -fG, o0.t.g(k()) + fI, o0.t.f(k()) + fG);
                } else if (z10) {
                    eVar.e(0.0f, 0.0f, o0.t.g(k()), o0.t.f(k()));
                }
                if (eVar.f()) {
                    return;
                }
            }
            w0Var.mapBounds(eVar, false);
        }
        float fH = o0.p.h(d1());
        eVar.i(eVar.b() + fH);
        eVar.j(eVar.c() + fH);
        float fI2 = o0.p.i(d1());
        eVar.k(eVar.d() + fI2);
        eVar.h(eVar.a() + fI2);
    }

    @Override
    public void y0(long j10, float f10, Function1 function1) {
        if (!this.f5044q) {
            u2(j10, f10, function1, null);
            return;
        }
        j0 j0VarT1 = T1();
        Intrinsics.e(j0VarT1);
        u2(j0VarT1.d1(), f10, function1, null);
    }

    public final void y2() {
        if (this.J != null) {
            if (this.K != null) {
                this.K = null;
            }
            L2(this, null, false, 2, null);
            LayoutNode.f1(Z0(), false, 1, null);
        }
    }

    public final void z2(boolean z10) {
        this.f5044q = z10;
    }

    @Override
    public androidx.compose.ui.layout.l W0() {
        return this;
    }
}
