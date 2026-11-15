package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.node.s0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import o0.t;

public final class SemanticsNode {

    private final androidx.compose.ui.f.c f5602a;

    private final boolean f5603b;

    private final LayoutNode f5604c;

    private final i f5605d;

    private boolean f5606e;

    private SemanticsNode f5607f;

    private final int f5608g;

    public static final class a extends androidx.compose.ui.f.c implements i1 {

        final Function1 f5609n;

        a(Function1 function1) {
            this.f5609n = function1;
        }

        @Override
        public boolean O() {
            return h1.a(this);
        }

        @Override
        public void Q0(n nVar) {
            this.f5609n.invoke(nVar);
        }

        @Override
        public boolean V0() {
            return h1.b(this);
        }
    }

    public SemanticsNode(androidx.compose.ui.f.c cVar, boolean z10, LayoutNode layoutNode, i iVar) {
        this.f5602a = cVar;
        this.f5603b = z10;
        this.f5604c = layoutNode;
        this.f5605d = iVar;
        this.f5608g = layoutNode.j0();
    }

    private final void B(i iVar) {
        if (this.f5605d.n()) {
            return;
        }
        List listD = D(this, false, false, 3, null);
        int size = listD.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode = (SemanticsNode) listD.get(i10);
            if (!semanticsNode.y()) {
                iVar.p(semanticsNode.f5605d);
                semanticsNode.B(iVar);
            }
        }
    }

    public static List D(SemanticsNode semanticsNode, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        return semanticsNode.C(z10, z11);
    }

    private final void b(List list) {
        final f fVarH = l.h(this);
        if (fVarH != null && this.f5605d.o() && !list.isEmpty()) {
            list.add(c(fVarH, new Function1<n, Unit>() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((n) obj);
                    return Unit.f64096a;
                }

                public final void invoke(n nVar) {
                    SemanticsPropertiesKt.B(nVar, fVarH.n());
                }
            }));
        }
        i iVar = this.f5605d;
        SemanticsProperties semanticsProperties = SemanticsProperties.f5610a;
        if (iVar.e(semanticsProperties.d()) && !list.isEmpty() && this.f5605d.o()) {
            List list2 = (List) SemanticsConfigurationKt.a(this.f5605d, semanticsProperties.d());
            final String str = list2 != null ? (String) CollectionsKt.k0(list2) : null;
            if (str != null) {
                list.add(0, c(null, new Function1<n, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((n) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(n nVar) {
                        SemanticsPropertiesKt.v(nVar, str);
                    }
                }));
            }
        }
    }

    private final SemanticsNode c(f fVar, Function1 function1) {
        i iVar = new i();
        iVar.r(false);
        iVar.q(false);
        function1.invoke(iVar);
        SemanticsNode semanticsNode = new SemanticsNode(new a(function1), false, new LayoutNode(true, fVar != null ? l.i(this) : l.e(this)), iVar);
        semanticsNode.f5606e = true;
        semanticsNode.f5607f = this;
        return semanticsNode;
    }

    private final void d(LayoutNode layoutNode, List list, boolean z10) {
        androidx.compose.runtime.collection.b bVarO0 = layoutNode.o0();
        int iN = bVarO0.n();
        if (iN > 0) {
            Object[] objArrM = bVarO0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                if (layoutNode2.D0() && (z10 || !layoutNode2.E0())) {
                    if (layoutNode2.e0().q(s0.a(8))) {
                        list.add(l.a(layoutNode2, this.f5603b));
                    } else {
                        d(layoutNode2, list, z10);
                    }
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final List f(List list) {
        List listD = D(this, false, false, 3, null);
        int size = listD.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode = (SemanticsNode) listD.get(i10);
            if (semanticsNode.y()) {
                list.add(semanticsNode);
            } else if (!semanticsNode.f5605d.n()) {
                semanticsNode.f(list);
            }
        }
        return list;
    }

    static List g(SemanticsNode semanticsNode, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        return semanticsNode.f(list);
    }

    public static List m(SemanticsNode semanticsNode, boolean z10, boolean z11, boolean z12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = !semanticsNode.f5603b;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        if ((i10 & 4) != 0) {
            z12 = false;
        }
        return semanticsNode.l(z10, z11, z12);
    }

    private final boolean y() {
        return this.f5603b && this.f5605d.o();
    }

    public final boolean A() {
        return !this.f5606e && t().isEmpty() && l.f(this.f5604c, new Function1<LayoutNode, Boolean>() {
            @Override
            public final Boolean invoke(LayoutNode layoutNode) {
                i iVarF = layoutNode.F();
                boolean z10 = false;
                if (iVarF != null && iVarF.o()) {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
        }) == null;
    }

    public final List C(boolean z10, boolean z11) {
        if (this.f5606e) {
            return CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        d(this.f5604c, arrayList, z11);
        if (z10) {
            b(arrayList);
        }
        return arrayList;
    }

    public final SemanticsNode a() {
        return new SemanticsNode(this.f5602a, true, this.f5604c, this.f5605d);
    }

    public final NodeCoordinator e() {
        if (this.f5606e) {
            SemanticsNode semanticsNodeR = r();
            if (semanticsNodeR != null) {
                return semanticsNodeR.e();
            }
            return null;
        }
        androidx.compose.ui.node.f fVarG = l.g(this.f5604c);
        if (fVarG == null) {
            fVarG = this.f5602a;
        }
        return androidx.compose.ui.node.g.h(fVarG, s0.a(8));
    }

    public final y.i h() {
        androidx.compose.ui.layout.l lVarW0;
        SemanticsNode semanticsNodeR = r();
        if (semanticsNodeR == null) {
            return y.i.f76004e.a();
        }
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null && (lVarW0 = nodeCoordinatorE.W0()) != null) {
                return androidx.compose.ui.layout.k.a(androidx.compose.ui.node.g.h(semanticsNodeR.f5602a, s0.a(8)), lVarW0, false, 2, null);
            }
        }
        return y.i.f76004e.a();
    }

    public final y.i i() {
        y.i iVarB;
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null && (iVarB = androidx.compose.ui.layout.m.b(nodeCoordinatorE)) != null) {
                return iVarB;
            }
        }
        return y.i.f76004e.a();
    }

    public final y.i j() {
        y.i iVarC;
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null && (iVarC = androidx.compose.ui.layout.m.c(nodeCoordinatorE)) != null) {
                return iVarC;
            }
        }
        return y.i.f76004e.a();
    }

    public final List k() {
        return m(this, false, false, false, 7, null);
    }

    public final List l(boolean z10, boolean z11, boolean z12) {
        if (z10 || !this.f5605d.n()) {
            return y() ? g(this, null, 1, null) : C(z11, z12);
        }
        return CollectionsKt.l();
    }

    public final i n() {
        if (!y()) {
            return this.f5605d;
        }
        i iVarI = this.f5605d.i();
        B(iVarI);
        return iVarI;
    }

    public final int o() {
        return this.f5608g;
    }

    public final androidx.compose.ui.layout.n p() {
        return this.f5604c;
    }

    public final LayoutNode q() {
        return this.f5604c;
    }

    public final SemanticsNode r() {
        SemanticsNode semanticsNode = this.f5607f;
        if (semanticsNode != null) {
            return semanticsNode;
        }
        LayoutNode layoutNodeF = this.f5603b ? l.f(this.f5604c, new Function1<LayoutNode, Boolean>() {
            @Override
            public final Boolean invoke(LayoutNode layoutNode) {
                i iVarF = layoutNode.F();
                boolean z10 = false;
                if (iVarF != null && iVarF.o()) {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
        }) : null;
        if (layoutNodeF == null) {
            layoutNodeF = l.f(this.f5604c, new Function1<LayoutNode, Boolean>() {
                @Override
                public final Boolean invoke(LayoutNode layoutNode) {
                    return Boolean.valueOf(layoutNode.e0().q(s0.a(8)));
                }
            });
        }
        if (layoutNodeF == null) {
            return null;
        }
        return l.a(layoutNodeF, this.f5603b);
    }

    public final long s() {
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null) {
                return androidx.compose.ui.layout.m.e(nodeCoordinatorE);
            }
        }
        return y.g.f75999b.c();
    }

    public final List t() {
        return m(this, false, true, false, 4, null);
    }

    public final long u() {
        NodeCoordinator nodeCoordinatorE = e();
        return nodeCoordinatorE != null ? nodeCoordinatorE.k() : t.f67425b.a();
    }

    public final y.i v() {
        androidx.compose.ui.node.f fVarG;
        if (!this.f5605d.o() || (fVarG = l.g(this.f5604c)) == null) {
            fVarG = this.f5602a;
        }
        return j1.c(fVarG.getNode(), j1.a(this.f5605d));
    }

    public final i w() {
        return this.f5605d;
    }

    public final boolean x() {
        return this.f5606e;
    }

    public final boolean z() {
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            return nodeCoordinatorE.k2();
        }
        return false;
    }
}
