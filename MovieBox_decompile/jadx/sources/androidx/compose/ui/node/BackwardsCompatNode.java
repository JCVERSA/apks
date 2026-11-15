package androidx.compose.ui.node;

import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.HashSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class BackwardsCompatNode extends androidx.compose.ui.f.c implements x, n, i1, e1, androidx.compose.ui.modifier.h, androidx.compose.ui.modifier.k, a1, w, p, androidx.compose.ui.focus.c, androidx.compose.ui.focus.m, androidx.compose.ui.focus.q, z0, androidx.compose.ui.draw.a {

    private androidx.compose.ui.f.b f4907n;

    private boolean f4908o;

    private androidx.compose.ui.modifier.a f4909p;

    private HashSet f4910q;

    private androidx.compose.ui.layout.l f4911r;

    public BackwardsCompatNode(androidx.compose.ui.f.b bVar) {
        w1(t0.f(bVar));
        this.f4907n = bVar;
        this.f4908o = true;
        this.f4910q = new HashSet();
    }

    private final void E1(boolean z10) {
        if (!j1()) {
            g0.a.b("initializeModifier called on unattached node");
        }
        androidx.compose.ui.f.b bVar = this.f4907n;
        if ((s0.a(32) & e1()) != 0) {
            if (bVar instanceof androidx.compose.ui.modifier.d) {
                A1(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m121invoke();
                        return Unit.f64096a;
                    }

                    public final void m121invoke() {
                        this.this$0.I1();
                    }
                });
            }
            if (bVar instanceof androidx.compose.ui.modifier.j) {
                J1((androidx.compose.ui.modifier.j) bVar);
            }
        }
        if ((s0.a(4) & e1()) != 0 && !z10) {
            a0.a(this);
        }
        if ((s0.a(2) & e1()) != 0) {
            if (BackwardsCompatNodeKt.d(this)) {
                NodeCoordinator nodeCoordinatorB1 = b1();
                Intrinsics.e(nodeCoordinatorB1);
                ((y) nodeCoordinatorB1).T2(this);
                nodeCoordinatorB1.n2();
            }
            if (!z10) {
                a0.a(this);
                g.m(this).y0();
            }
        }
        if (bVar instanceof androidx.compose.ui.layout.i0) {
            ((androidx.compose.ui.layout.i0) bVar).d(g.m(this));
        }
        s0.a(128);
        e1();
        if ((s0.a(256) & e1()) != 0 && (bVar instanceof androidx.compose.ui.layout.b0) && BackwardsCompatNodeKt.d(this)) {
            g.m(this).y0();
        }
        if ((s0.a(16) & e1()) != 0 && (bVar instanceof androidx.compose.ui.input.pointer.d0)) {
            ((androidx.compose.ui.input.pointer.d0) bVar).g().f(b1());
        }
        if ((s0.a(8) & e1()) != 0) {
            g.n(this).onSemanticsChange();
        }
    }

    private final void H1() {
        if (!j1()) {
            g0.a.b("unInitializeModifier called on unattached node");
        }
        androidx.compose.ui.f.b bVar = this.f4907n;
        if ((s0.a(32) & e1()) != 0) {
            if (bVar instanceof androidx.compose.ui.modifier.j) {
                g.n(this).getModifierLocalManager().d(this, ((androidx.compose.ui.modifier.j) bVar).getKey());
            }
            if (bVar instanceof androidx.compose.ui.modifier.d) {
                ((androidx.compose.ui.modifier.d) bVar).f(BackwardsCompatNodeKt.f4912a);
            }
        }
        if ((s0.a(8) & e1()) != 0) {
            g.n(this).onSemanticsChange();
        }
    }

    private final void J1(androidx.compose.ui.modifier.j jVar) {
        androidx.compose.ui.modifier.a aVar = this.f4909p;
        if (aVar != null && aVar.a(jVar.getKey())) {
            aVar.c(jVar);
            g.n(this).getModifierLocalManager().f(this, jVar.getKey());
        } else {
            this.f4909p = new androidx.compose.ui.modifier.a(jVar);
            if (BackwardsCompatNodeKt.d(this)) {
                g.n(this).getModifierLocalManager().a(this, jVar.getKey());
            }
        }
    }

    public final androidx.compose.ui.f.b C1() {
        return this.f4907n;
    }

    public final HashSet D1() {
        return this.f4910q;
    }

    public final void F1() {
        this.f4908o = true;
        o.a(this);
    }

    public final void G1(androidx.compose.ui.f.b bVar) {
        if (j1()) {
            H1();
        }
        this.f4907n = bVar;
        w1(t0.f(bVar));
        if (j1()) {
            E1(false);
        }
    }

    @Override
    public void I(androidx.compose.ui.layout.l lVar) {
        this.f4911r = lVar;
    }

    public final void I1() {
        if (j1()) {
            this.f4910q.clear();
            g.n(this).getSnapshotObserver().i(this, BackwardsCompatNodeKt.f4914c, new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m122invoke();
                    return Unit.f64096a;
                }

                public final void m122invoke() {
                    androidx.compose.ui.f.b bVarC1 = this.this$0.C1();
                    Intrinsics.f(bVarC1, "null cannot be cast to non-null type androidx.compose.ui.modifier.ModifierLocalConsumer");
                    ((androidx.compose.ui.modifier.d) bVarC1).f(this.this$0);
                }
            });
        }
    }

    @Override
    public void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j10) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        ((androidx.compose.ui.input.pointer.d0) bVar).g().e(oVar, pointerEventPass, j10);
    }

    @Override
    public boolean O() {
        return h1.a(this);
    }

    @Override
    public boolean O0() {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        return ((androidx.compose.ui.input.pointer.d0) bVar).g().c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v9 */
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
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override
    public Object P(androidx.compose.ui.modifier.c cVar) {
        q0 q0VarE0;
        this.f4910q.add(cVar);
        int iA = s0.a(32);
        if (!getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = getNode().g1();
        LayoutNode layoutNodeM = g.m(this);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                while (cVarG1 != null) {
                    if ((cVarG1.e1() & iA) != 0) {
                        ?? G = cVarG1;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof androidx.compose.ui.modifier.h) {
                                androidx.compose.ui.modifier.h hVar = (androidx.compose.ui.modifier.h) G;
                                if (hVar.V().a(cVar)) {
                                    return hVar.V().b(cVar);
                                }
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
                    cVarG1 = cVarG1.g1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarG1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        return cVar.a().invoke();
    }

    @Override
    public void Q0(androidx.compose.ui.semantics.n nVar) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier");
        androidx.compose.ui.semantics.i iVarH = ((androidx.compose.ui.semantics.j) bVar).h();
        Intrinsics.f(nVar, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration");
        ((androidx.compose.ui.semantics.i) nVar).c(iVarH);
    }

    @Override
    public boolean R() {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        return ((androidx.compose.ui.input.pointer.d0) bVar).g().a();
    }

    @Override
    public void R0(androidx.compose.ui.focus.r rVar) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        g0.a.b("onFocusEvent called on wrong node");
        android.support.v4.media.session.c.a(bVar);
        throw null;
    }

    @Override
    public void S0() {
        d1.c(this);
    }

    @Override
    public androidx.compose.ui.modifier.f V() {
        androidx.compose.ui.modifier.a aVar = this.f4909p;
        return aVar != null ? aVar : androidx.compose.ui.modifier.i.a();
    }

    @Override
    public boolean V0() {
        return h1.b(this);
    }

    @Override
    public o0.e getDensity() {
        return g.m(this).H();
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return g.m(this).getLayoutDirection();
    }

    @Override
    public long i() {
        return o0.u.d(g.h(this, s0.a(128)).k());
    }

    @Override
    public boolean isValidOwnerScope() {
        return j1();
    }

    @Override
    public void m1() {
        E1(true);
    }

    @Override
    public void n(z.c cVar) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier");
        ((androidx.compose.ui.draw.f) bVar).n(cVar);
    }

    @Override
    public void n1() {
        H1();
    }

    @Override
    public void r0(androidx.compose.ui.focus.k kVar) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        g0.a.b("applyFocusProperties called on wrong node");
        android.support.v4.media.session.c.a(bVar);
        new androidx.compose.ui.focus.h(kVar);
        throw null;
    }

    @Override
    public void t0() {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        ((androidx.compose.ui.input.pointer.d0) bVar).g().d();
    }

    public String toString() {
        return this.f4907n.toString();
    }

    @Override
    public void v(androidx.compose.ui.layout.l lVar) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier");
        ((androidx.compose.ui.layout.b0) bVar).v(lVar);
    }

    @Override
    public Object v0(o0.e eVar, Object obj) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier");
        android.support.v4.media.session.c.a(bVar);
        throw null;
    }

    @Override
    public void w0() {
        this.f4908o = true;
        o.a(this);
    }

    @Override
    public void y0() {
        d1.b(this);
    }

    @Override
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        androidx.compose.ui.f.b bVar = this.f4907n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier");
        return ((androidx.compose.ui.layout.o) bVar).z(xVar, sVar, j10);
    }

    @Override
    public void F(long j10) {
    }
}
