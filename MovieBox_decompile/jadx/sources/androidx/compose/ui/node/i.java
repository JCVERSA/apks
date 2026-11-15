package androidx.compose.ui.node;

import kotlin.jvm.internal.Intrinsics;

public abstract class i extends androidx.compose.ui.f.c {

    private final int f5081n = t0.g(this);

    private androidx.compose.ui.f.c f5082o;

    private final void G1(int i10, boolean z10) {
        androidx.compose.ui.f.c cVarA1;
        int iE1 = e1();
        w1(i10);
        if (iE1 != i10) {
            if (g.f(this)) {
                s1(i10);
            }
            if (j1()) {
                androidx.compose.ui.f.c node = getNode();
                androidx.compose.ui.f.c cVarG1 = this;
                while (cVarG1 != null) {
                    i10 |= cVarG1.e1();
                    cVarG1.w1(i10);
                    if (cVarG1 == node) {
                        break;
                    } else {
                        cVarG1 = cVarG1.g1();
                    }
                }
                if (z10 && cVarG1 == node) {
                    i10 = t0.h(node);
                    node.w1(i10);
                }
                int iZ0 = i10 | ((cVarG1 == null || (cVarA1 = cVarG1.a1()) == null) ? 0 : cVarA1.Z0());
                while (cVarG1 != null) {
                    iZ0 |= cVarG1.e1();
                    cVarG1.s1(iZ0);
                    cVarG1 = cVarG1.g1();
                }
            }
        }
    }

    private final void H1(int i10, androidx.compose.ui.f.c cVar) {
        int iE1 = e1();
        if ((i10 & s0.a(2)) == 0 || (s0.a(2) & iE1) == 0 || (this instanceof x)) {
            return;
        }
        g0.a.b("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + cVar);
    }

    @Override
    public void B1(NodeCoordinator nodeCoordinator) {
        super.B1(nodeCoordinator);
        for (androidx.compose.ui.f.c cVarD1 = D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            cVarD1.B1(nodeCoordinator);
        }
    }

    protected final f C1(f fVar) {
        androidx.compose.ui.f.c node = fVar.getNode();
        if (node != fVar) {
            androidx.compose.ui.f.c cVar = fVar instanceof androidx.compose.ui.f.c ? (androidx.compose.ui.f.c) fVar : null;
            androidx.compose.ui.f.c cVarG1 = cVar != null ? cVar.g1() : null;
            if (node == getNode() && Intrinsics.c(cVarG1, this)) {
                return fVar;
            }
            throw new IllegalStateException("Cannot delegate to an already delegated node");
        }
        if (node.j1()) {
            g0.a.b("Cannot delegate to an already attached node");
        }
        node.t1(getNode());
        int iE1 = e1();
        int iH = t0.h(node);
        node.w1(iH);
        H1(iH, node);
        node.u1(this.f5082o);
        this.f5082o = node;
        node.y1(this);
        G1(e1() | iH, false);
        if (j1()) {
            if ((iH & s0.a(2)) == 0 || (iE1 & s0.a(2)) != 0) {
                B1(b1());
            } else {
                q0 q0VarE0 = g.m(this).e0();
                getNode().B1(null);
                q0VarE0.C();
            }
            node.k1();
            node.q1();
            t0.a(node);
        }
        return fVar;
    }

    public final androidx.compose.ui.f.c D1() {
        return this.f5082o;
    }

    public final int E1() {
        return this.f5081n;
    }

    protected final void F1(f fVar) {
        androidx.compose.ui.f.c cVar = null;
        for (androidx.compose.ui.f.c cVarA1 = this.f5082o; cVarA1 != null; cVarA1 = cVarA1.a1()) {
            if (cVarA1 == fVar) {
                if (cVarA1.j1()) {
                    t0.d(cVarA1);
                    cVarA1.r1();
                    cVarA1.l1();
                }
                cVarA1.t1(cVarA1);
                cVarA1.s1(0);
                if (cVar == null) {
                    this.f5082o = cVarA1.a1();
                } else {
                    cVar.u1(cVarA1.a1());
                }
                cVarA1.u1(null);
                cVarA1.y1(null);
                int iE1 = e1();
                int iH = t0.h(this);
                G1(iH, true);
                if (j1() && (iE1 & s0.a(2)) != 0 && (s0.a(2) & iH) == 0) {
                    q0 q0VarE0 = g.m(this).e0();
                    getNode().B1(null);
                    q0VarE0.C();
                    return;
                }
                return;
            }
            cVar = cVarA1;
        }
        throw new IllegalStateException(("Could not find delegate: " + fVar).toString());
    }

    @Override
    public void k1() {
        super.k1();
        for (androidx.compose.ui.f.c cVarD1 = D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            cVarD1.B1(b1());
            if (!cVarD1.j1()) {
                cVarD1.k1();
            }
        }
    }

    @Override
    public void l1() {
        for (androidx.compose.ui.f.c cVarD1 = D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            cVarD1.l1();
        }
        super.l1();
    }

    @Override
    public void p1() {
        super.p1();
        for (androidx.compose.ui.f.c cVarD1 = D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            cVarD1.p1();
        }
    }

    @Override
    public void q1() {
        for (androidx.compose.ui.f.c cVarD1 = D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            cVarD1.q1();
        }
        super.q1();
    }

    @Override
    public void r1() {
        super.r1();
        for (androidx.compose.ui.f.c cVarD1 = D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            cVarD1.r1();
        }
    }

    @Override
    public void t1(androidx.compose.ui.f.c cVar) {
        super.t1(cVar);
        for (androidx.compose.ui.f.c cVarD1 = D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            cVarD1.t1(cVar);
        }
    }
}
