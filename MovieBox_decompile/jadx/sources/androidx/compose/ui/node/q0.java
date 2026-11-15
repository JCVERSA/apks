package androidx.compose.ui.node;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;

public final class q0 {

    private final LayoutNode f5124a;

    private final s f5125b;

    private NodeCoordinator f5126c;

    private final androidx.compose.ui.f.c f5127d;

    private androidx.compose.ui.f.c f5128e;

    private androidx.compose.runtime.collection.b f5129f;

    private androidx.compose.runtime.collection.b f5130g;

    private a f5131h;

    private final class a implements k {

        private androidx.compose.ui.f.c f5132a;

        private int f5133b;

        private androidx.compose.runtime.collection.b f5134c;

        private androidx.compose.runtime.collection.b f5135d;

        private boolean f5136e;

        public a(androidx.compose.ui.f.c cVar, int i10, androidx.compose.runtime.collection.b bVar, androidx.compose.runtime.collection.b bVar2, boolean z10) {
            this.f5132a = cVar;
            this.f5133b = i10;
            this.f5134c = bVar;
            this.f5135d = bVar2;
            this.f5136e = z10;
        }

        @Override
        public void a(int i10, int i11) {
            androidx.compose.ui.f.c cVarA1 = this.f5132a.a1();
            Intrinsics.e(cVarA1);
            q0.d(q0.this);
            if ((s0.a(2) & cVarA1.e1()) != 0) {
                NodeCoordinator nodeCoordinatorB1 = cVarA1.b1();
                Intrinsics.e(nodeCoordinatorB1);
                NodeCoordinator nodeCoordinatorZ1 = nodeCoordinatorB1.Z1();
                NodeCoordinator nodeCoordinatorY1 = nodeCoordinatorB1.Y1();
                Intrinsics.e(nodeCoordinatorY1);
                if (nodeCoordinatorZ1 != null) {
                    nodeCoordinatorZ1.C2(nodeCoordinatorY1);
                }
                nodeCoordinatorY1.D2(nodeCoordinatorZ1);
                q0.this.v(this.f5132a, nodeCoordinatorY1);
            }
            this.f5132a = q0.this.h(cVarA1);
        }

        @Override
        public boolean b(int i10, int i11) {
            return NodeChainKt.d((androidx.compose.ui.f.b) this.f5134c.m()[this.f5133b + i10], (androidx.compose.ui.f.b) this.f5135d.m()[this.f5133b + i11]) != 0;
        }

        @Override
        public void c(int i10) {
            int i11 = this.f5133b + i10;
            this.f5132a = q0.this.g((androidx.compose.ui.f.b) this.f5135d.m()[i11], this.f5132a);
            q0.d(q0.this);
            if (!this.f5136e) {
                this.f5132a.v1(true);
                return;
            }
            androidx.compose.ui.f.c cVarA1 = this.f5132a.a1();
            Intrinsics.e(cVarA1);
            NodeCoordinator nodeCoordinatorB1 = cVarA1.b1();
            Intrinsics.e(nodeCoordinatorB1);
            x xVarD = g.d(this.f5132a);
            if (xVarD != null) {
                y yVar = new y(q0.this.m(), xVarD);
                this.f5132a.B1(yVar);
                q0.this.v(this.f5132a, yVar);
                yVar.D2(nodeCoordinatorB1.Z1());
                yVar.C2(nodeCoordinatorB1);
                nodeCoordinatorB1.D2(yVar);
            } else {
                this.f5132a.B1(nodeCoordinatorB1);
            }
            this.f5132a.k1();
            this.f5132a.q1();
            t0.a(this.f5132a);
        }

        @Override
        public void d(int i10, int i11) {
            androidx.compose.ui.f.c cVarA1 = this.f5132a.a1();
            Intrinsics.e(cVarA1);
            this.f5132a = cVarA1;
            androidx.compose.runtime.collection.b bVar = this.f5134c;
            androidx.compose.ui.f.b bVar2 = (androidx.compose.ui.f.b) bVar.m()[this.f5133b + i10];
            androidx.compose.runtime.collection.b bVar3 = this.f5135d;
            androidx.compose.ui.f.b bVar4 = (androidx.compose.ui.f.b) bVar3.m()[this.f5133b + i11];
            if (Intrinsics.c(bVar2, bVar4)) {
                q0.d(q0.this);
            } else {
                q0.this.F(bVar2, bVar4, this.f5132a);
                q0.d(q0.this);
            }
        }

        public final void e(androidx.compose.runtime.collection.b bVar) {
            this.f5135d = bVar;
        }

        public final void f(androidx.compose.runtime.collection.b bVar) {
            this.f5134c = bVar;
        }

        public final void g(androidx.compose.ui.f.c cVar) {
            this.f5132a = cVar;
        }

        public final void h(int i10) {
            this.f5133b = i10;
        }

        public final void i(boolean z10) {
            this.f5136e = z10;
        }
    }

    public interface b {
    }

    public q0(LayoutNode layoutNode) {
        this.f5124a = layoutNode;
        s sVar = new s(layoutNode);
        this.f5125b = sVar;
        this.f5126c = sVar;
        l1 l1VarP2 = sVar.X1();
        this.f5127d = l1VarP2;
        this.f5128e = l1VarP2;
    }

    private final void A(int i10, androidx.compose.runtime.collection.b bVar, androidx.compose.runtime.collection.b bVar2, androidx.compose.ui.f.c cVar, boolean z10) {
        o0.e(bVar.n() - i10, bVar2.n() - i10, j(cVar, i10, bVar, bVar2, z10));
        B();
    }

    private final void B() {
        int iE1 = 0;
        for (androidx.compose.ui.f.c cVarG1 = this.f5127d.g1(); cVarG1 != null && cVarG1 != NodeChainKt.f5042a; cVarG1 = cVarG1.g1()) {
            iE1 |= cVarG1.e1();
            cVarG1.s1(iE1);
        }
    }

    private final androidx.compose.ui.f.c D(androidx.compose.ui.f.c cVar) {
        if (!(cVar == NodeChainKt.f5042a)) {
            g0.a.b("trimChain called on already trimmed chain");
        }
        androidx.compose.ui.f.c cVarA1 = NodeChainKt.f5042a.a1();
        if (cVarA1 == null) {
            cVarA1 = this.f5127d;
        }
        cVarA1.y1(null);
        NodeChainKt.f5042a.u1(null);
        NodeChainKt.f5042a.s1(-1);
        NodeChainKt.f5042a.B1(null);
        if (!(cVarA1 != NodeChainKt.f5042a)) {
            g0.a.b("trimChain did not update the head");
        }
        return cVarA1;
    }

    public final void F(androidx.compose.ui.f.b bVar, androidx.compose.ui.f.b bVar2, androidx.compose.ui.f.c cVar) {
        if ((bVar instanceof l0) && (bVar2 instanceof l0)) {
            NodeChainKt.f((l0) bVar2, cVar);
            if (cVar.j1()) {
                t0.e(cVar);
                return;
            } else {
                cVar.z1(true);
                return;
            }
        }
        if (!(cVar instanceof BackwardsCompatNode)) {
            throw new IllegalStateException("Unknown Modifier.Node type");
        }
        ((BackwardsCompatNode) cVar).G1(bVar2);
        if (cVar.j1()) {
            t0.e(cVar);
        } else {
            cVar.z1(true);
        }
    }

    public static final b d(q0 q0Var) {
        q0Var.getClass();
        return null;
    }

    public final androidx.compose.ui.f.c g(androidx.compose.ui.f.b bVar, androidx.compose.ui.f.c cVar) {
        androidx.compose.ui.f.c backwardsCompatNode;
        if (bVar instanceof l0) {
            backwardsCompatNode = ((l0) bVar).a();
            backwardsCompatNode.w1(t0.h(backwardsCompatNode));
        } else {
            backwardsCompatNode = new BackwardsCompatNode(bVar);
        }
        if (backwardsCompatNode.j1()) {
            g0.a.b("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        backwardsCompatNode.v1(true);
        return r(backwardsCompatNode, cVar);
    }

    public final androidx.compose.ui.f.c h(androidx.compose.ui.f.c cVar) {
        if (cVar.j1()) {
            t0.d(cVar);
            cVar.r1();
            cVar.l1();
        }
        return w(cVar);
    }

    public final int i() {
        return this.f5128e.Z0();
    }

    private final a j(androidx.compose.ui.f.c cVar, int i10, androidx.compose.runtime.collection.b bVar, androidx.compose.runtime.collection.b bVar2, boolean z10) {
        a aVar = this.f5131h;
        if (aVar == null) {
            a aVar2 = new a(cVar, i10, bVar, bVar2, z10);
            this.f5131h = aVar2;
            return aVar2;
        }
        aVar.g(cVar);
        aVar.h(i10);
        aVar.f(bVar);
        aVar.e(bVar2);
        aVar.i(z10);
        return aVar;
    }

    private final androidx.compose.ui.f.c r(androidx.compose.ui.f.c cVar, androidx.compose.ui.f.c cVar2) {
        androidx.compose.ui.f.c cVarA1 = cVar2.a1();
        if (cVarA1 != null) {
            cVarA1.y1(cVar);
            cVar.u1(cVarA1);
        }
        cVar2.u1(cVar);
        cVar.y1(cVar2);
        return cVar;
    }

    private final androidx.compose.ui.f.c u() {
        if (!(this.f5128e != NodeChainKt.f5042a)) {
            g0.a.b("padChain called on already padded chain");
        }
        androidx.compose.ui.f.c cVar = this.f5128e;
        cVar.y1(NodeChainKt.f5042a);
        NodeChainKt.f5042a.u1(cVar);
        return NodeChainKt.f5042a;
    }

    public final void v(androidx.compose.ui.f.c cVar, NodeCoordinator nodeCoordinator) {
        for (androidx.compose.ui.f.c cVarG1 = cVar.g1(); cVarG1 != null; cVarG1 = cVarG1.g1()) {
            if (cVarG1 == NodeChainKt.f5042a) {
                LayoutNode layoutNodeH0 = this.f5124a.h0();
                nodeCoordinator.D2(layoutNodeH0 != null ? layoutNodeH0.M() : null);
                this.f5126c = nodeCoordinator;
                return;
            } else {
                if ((s0.a(2) & cVarG1.e1()) != 0) {
                    return;
                }
                cVarG1.B1(nodeCoordinator);
            }
        }
    }

    private final androidx.compose.ui.f.c w(androidx.compose.ui.f.c cVar) {
        androidx.compose.ui.f.c cVarA1 = cVar.a1();
        androidx.compose.ui.f.c cVarG1 = cVar.g1();
        if (cVarA1 != null) {
            cVarA1.y1(cVarG1);
            cVar.u1(null);
        }
        if (cVarG1 != null) {
            cVarG1.u1(cVarA1);
            cVar.y1(null);
        }
        Intrinsics.e(cVarG1);
        return cVarG1;
    }

    public final void C() {
        NodeCoordinator yVar;
        NodeCoordinator nodeCoordinator = this.f5125b;
        for (androidx.compose.ui.f.c cVarG1 = this.f5127d.g1(); cVarG1 != null; cVarG1 = cVarG1.g1()) {
            x xVarD = g.d(cVarG1);
            if (xVarD != null) {
                if (cVarG1.b1() != null) {
                    NodeCoordinator nodeCoordinatorB1 = cVarG1.b1();
                    Intrinsics.f(nodeCoordinatorB1, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator");
                    yVar = (y) nodeCoordinatorB1;
                    x xVarQ2 = yVar.Q2();
                    yVar.T2(xVarD);
                    if (xVarQ2 != cVarG1) {
                        yVar.n2();
                    }
                } else {
                    yVar = new y(this.f5124a, xVarD);
                    cVarG1.B1(yVar);
                }
                nodeCoordinator.D2(yVar);
                yVar.C2(nodeCoordinator);
                nodeCoordinator = yVar;
            } else {
                cVarG1.B1(nodeCoordinator);
            }
        }
        LayoutNode layoutNodeH0 = this.f5124a.h0();
        nodeCoordinator.D2(layoutNodeH0 != null ? layoutNodeH0.M() : null);
        this.f5126c = nodeCoordinator;
    }

    public final void E(androidx.compose.ui.f fVar) {
        androidx.compose.ui.f.c cVarU = u();
        androidx.compose.runtime.collection.b bVar = this.f5129f;
        int i10 = 0;
        int iN = bVar != null ? bVar.n() : 0;
        androidx.compose.runtime.collection.b bVar2 = this.f5130g;
        if (bVar2 == null) {
            bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.b[16], 0);
        }
        androidx.compose.runtime.collection.b bVarE = NodeChainKt.e(fVar, bVar2);
        androidx.compose.runtime.collection.b bVar3 = null;
        if (bVarE.n() == iN) {
            androidx.compose.ui.f.c cVarA1 = cVarU.a1();
            int i11 = 0;
            while (cVarA1 != null && i11 < iN) {
                if (bVar == null) {
                    g0.a.c("expected prior modifier list to be non-empty");
                    throw new KotlinNothingValueException();
                }
                androidx.compose.ui.f.b bVar4 = (androidx.compose.ui.f.b) bVar.m()[i11];
                androidx.compose.ui.f.b bVar5 = (androidx.compose.ui.f.b) bVarE.m()[i11];
                int iD = NodeChainKt.d(bVar4, bVar5);
                if (iD == 0) {
                    cVarA1 = cVarA1.g1();
                    break;
                }
                if (iD == 1) {
                    F(bVar4, bVar5, cVarA1);
                }
                cVarA1 = cVarA1.a1();
                i11++;
            }
            androidx.compose.ui.f.c cVar = cVarA1;
            if (i11 < iN) {
                if (bVar == null) {
                    g0.a.c("expected prior modifier list to be non-empty");
                    throw new KotlinNothingValueException();
                }
                if (cVar == null) {
                    g0.a.c("structuralUpdate requires a non-null tail");
                    throw new KotlinNothingValueException();
                }
                A(i11, bVar, bVarE, cVar, !this.f5124a.A());
                i10 = 1;
            }
        } else {
            if (this.f5124a.A() && iN == 0) {
                androidx.compose.ui.f.c cVarG = cVarU;
                while (i10 < bVarE.n()) {
                    cVarG = g((androidx.compose.ui.f.b) bVarE.m()[i10], cVarG);
                    i10++;
                }
                B();
            } else if (bVarE.n() != 0) {
                if (bVar == null) {
                    bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.b[16], 0);
                }
                A(0, bVar, bVarE, cVarU, !this.f5124a.A());
            } else {
                if (bVar == null) {
                    g0.a.c("expected prior modifier list to be non-empty");
                    throw new KotlinNothingValueException();
                }
                androidx.compose.ui.f.c cVarA2 = cVarU.a1();
                for (int i12 = 0; cVarA2 != null && i12 < bVar.n(); i12++) {
                    cVarA2 = h(cVarA2).a1();
                }
                s sVar = this.f5125b;
                LayoutNode layoutNodeH0 = this.f5124a.h0();
                sVar.D2(layoutNodeH0 != null ? layoutNodeH0.M() : null);
                this.f5126c = this.f5125b;
            }
            i10 = 1;
        }
        this.f5129f = bVarE;
        if (bVar != null) {
            bVar.h();
            bVar3 = bVar;
        }
        this.f5130g = bVar3;
        this.f5128e = D(cVarU);
        if (i10 != 0) {
            C();
        }
    }

    public final androidx.compose.ui.f.c k() {
        return this.f5128e;
    }

    public final s l() {
        return this.f5125b;
    }

    public final LayoutNode m() {
        return this.f5124a;
    }

    public final NodeCoordinator n() {
        return this.f5126c;
    }

    public final androidx.compose.ui.f.c o() {
        return this.f5127d;
    }

    public final boolean p(int i10) {
        return (i10 & i()) != 0;
    }

    public final boolean q(int i10) {
        return (i10 & i()) != 0;
    }

    public final void s() {
        for (androidx.compose.ui.f.c cVarK = k(); cVarK != null; cVarK = cVarK.a1()) {
            cVarK.k1();
        }
    }

    public final void t() {
        for (androidx.compose.ui.f.c cVarO = o(); cVarO != null; cVarO = cVarO.g1()) {
            if (cVarO.j1()) {
                cVarO.l1();
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        if (this.f5128e == this.f5127d) {
            sb2.append("]");
        } else {
            for (androidx.compose.ui.f.c cVarK = k(); cVarK != null && cVarK != o(); cVarK = cVarK.a1()) {
                sb2.append(String.valueOf(cVarK));
                if (cVarK.a1() == this.f5127d) {
                    sb2.append("]");
                    break;
                }
                sb2.append(",");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final void x() {
        for (androidx.compose.ui.f.c cVarO = o(); cVarO != null; cVarO = cVarO.g1()) {
            if (cVarO.j1()) {
                cVarO.p1();
            }
        }
        z();
        t();
    }

    public final void y() {
        for (androidx.compose.ui.f.c cVarK = k(); cVarK != null; cVarK = cVarK.a1()) {
            cVarK.q1();
            if (cVarK.d1()) {
                t0.a(cVarK);
            }
            if (cVarK.i1()) {
                t0.e(cVarK);
            }
            cVarK.v1(false);
            cVarK.z1(false);
        }
    }

    public final void z() {
        for (androidx.compose.ui.f.c cVarO = o(); cVarO != null; cVarO = cVarO.g1()) {
            if (cVarO.j1()) {
                cVarO.r1();
            }
        }
    }
}
