package androidx.compose.ui.focus;

import androidx.compose.ui.layout.BeyondBoundsLayoutKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class FocusTargetNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, s, u0, androidx.compose.ui.modifier.h {

    private boolean f3919n;

    private boolean f3920o;

    private FocusStateImpl f3921p;

    private final boolean f3922q;

    public class a {

        public static final int[] f3923a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f3923a = iArr;
        }
    }

    private final void K1() {
        if (N1(this)) {
            throw new IllegalStateException("Re-initializing focus target node.");
        }
        v vVarD = u.d(this);
        try {
            if (vVarD.f3946c) {
                vVarD.g();
            }
            vVarD.f();
            P1((M1(this) && L1(this)) ? FocusStateImpl.ActiveParent : FocusStateImpl.Inactive);
            Unit unit = Unit.f64096a;
        } finally {
            vVarD.h();
        }
    }

    private static final boolean L1(FocusTargetNode focusTargetNode) {
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            g0.a.b("visitSubtreeIf called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = focusTargetNode.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar, focusTargetNode.getNode());
        } else {
            bVar.b(cVarA1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVar = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVar.Z0() & iA) != 0) {
                for (androidx.compose.ui.f.c cVarA2 = cVar; cVarA2 != null; cVarA2 = cVarA2.a1()) {
                    if ((cVarA2.e1() & iA) != 0) {
                        androidx.compose.ui.f.c cVarG = cVarA2;
                        androidx.compose.runtime.collection.b bVar2 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (N1(focusTargetNode2)) {
                                    int i10 = a.f3923a[focusTargetNode2.J1().ordinal()];
                                    if (i10 == 1 || i10 == 2 || i10 == 3) {
                                        return true;
                                    }
                                    if (i10 == 4) {
                                        return false;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            cVarG = cVarD1;
                                        } else {
                                            if (bVar2 == null) {
                                                bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar2.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar2.b(cVarD1);
                                        }
                                    }
                                }
                                if (i11 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar2);
                        }
                    }
                }
            }
            androidx.compose.ui.node.g.c(bVar, cVar);
        }
        return false;
    }

    private static final boolean M1(FocusTargetNode focusTargetNode) {
        q0 q0VarE0;
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = focusTargetNode.getNode().g1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                while (cVarG1 != null) {
                    if ((cVarG1.e1() & iA) != 0) {
                        androidx.compose.ui.f.c cVarG = cVarG1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (N1(focusTargetNode2)) {
                                    int i10 = a.f3923a[focusTargetNode2.J1().ordinal()];
                                    if (i10 == 1 || i10 == 2) {
                                        return false;
                                    }
                                    if (i10 == 3) {
                                        return true;
                                    }
                                    if (i10 == 4) {
                                        return false;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            cVarG = cVarD1;
                                        } else {
                                            if (bVar == null) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar.b(cVarD1);
                                        }
                                    }
                                }
                                if (i11 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar);
                        }
                    }
                    cVarG1 = cVarG1.g1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarG1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        return false;
    }

    private static final boolean N1(FocusTargetNode focusTargetNode) {
        return focusTargetNode.f3921p != null;
    }

    public final void G1() {
        FocusStateImpl focusStateImplI = u.d(this).i(this);
        if (focusStateImplI != null) {
            this.f3921p = focusStateImplI;
        } else {
            g0.a.c("committing a node that was not updated in the current transaction");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public final k H1() {
        q0 q0VarE0;
        FocusPropertiesImpl focusPropertiesImpl = new FocusPropertiesImpl();
        int iA = s0.a(2048);
        int iA2 = s0.a(1024);
        androidx.compose.ui.f.c node = getNode();
        int i10 = iA | iA2;
        if (!getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c node2 = getNode();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(this);
        loop0: while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().Z0() & i10) != 0) {
                while (node2 != null) {
                    if ((node2.e1() & i10) != 0) {
                        if (node2 != node && (node2.e1() & iA2) != 0) {
                            break loop0;
                        }
                        if ((node2.e1() & iA) != 0) {
                            ?? G = node2;
                            ?? bVar = 0;
                            while (G != 0) {
                                if (G instanceof m) {
                                    ((m) G).r0(focusPropertiesImpl);
                                } else if ((G.e1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                                    androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) G).D1();
                                    int i11 = 0;
                                    G = G;
                                    bVar = bVar;
                                    while (cVarD1 != null) {
                                        if ((cVarD1.e1() & iA) != 0) {
                                            i11++;
                                            if (i11 == 1) {
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
                                    if (i11 == 1) {
                                    }
                                }
                                G = androidx.compose.ui.node.g.g(bVar);
                            }
                        }
                    }
                    node2 = node2.g1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            node2 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        return focusPropertiesImpl;
    }

    public final androidx.compose.ui.layout.d I1() {
        return (androidx.compose.ui.layout.d) P(BeyondBoundsLayoutKt.a());
    }

    public FocusStateImpl J1() {
        FocusStateImpl focusStateImplI;
        v vVarB = u.b(this);
        if (vVarB != null && (focusStateImplI = vVarB.i(this)) != null) {
            return focusStateImplI;
        }
        FocusStateImpl focusStateImpl = this.f3921p;
        return focusStateImpl == null ? FocusStateImpl.Inactive : focusStateImpl;
    }

    public final void O1() {
        k kVar;
        if (this.f3921p == null) {
            K1();
        }
        int i10 = a.f3923a[J1().ordinal()];
        if (i10 == 1 || i10 == 2) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            v0.a(this, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m110invoke();
                    return Unit.f64096a;
                }

                /* JADX WARN: Type inference failed for: r1v1, types: [T, androidx.compose.ui.focus.k] */
                public final void m110invoke() {
                    objectRef.element = this.H1();
                }
            });
            T t10 = objectRef.element;
            if (t10 == 0) {
                Intrinsics.y("focusProperties");
                kVar = null;
            } else {
                kVar = (k) t10;
            }
            if (kVar.t()) {
                return;
            }
            androidx.compose.ui.node.g.n(this).getFocusOwner().o(true);
        }
    }

    @Override
    public Object P(androidx.compose.ui.modifier.c cVar) {
        return androidx.compose.ui.modifier.g.a(this, cVar);
    }

    public void P1(FocusStateImpl focusStateImpl) {
        u.d(this).j(this, focusStateImpl);
    }

    @Override
    public androidx.compose.ui.modifier.f V() {
        return androidx.compose.ui.modifier.g.b(this);
    }

    @Override
    public void Z() {
        FocusStateImpl focusStateImplJ1 = J1();
        O1();
        if (focusStateImplJ1 != J1()) {
            d.c(this);
        }
    }

    @Override
    public boolean h1() {
        return this.f3922q;
    }

    @Override
    public void n1() {
        int i10 = a.f3923a[J1().ordinal()];
        if (i10 == 1 || i10 == 2) {
            androidx.compose.ui.node.g.n(this).getFocusOwner().j(true, true, false, b.f3928b.c());
            u.c(this);
        } else if (i10 == 3) {
            v vVarD = u.d(this);
            try {
                if (vVarD.f3946c) {
                    vVarD.g();
                }
                vVarD.f();
                P1(FocusStateImpl.Inactive);
                Unit unit = Unit.f64096a;
                vVarD.h();
            } catch (Throwable th2) {
                vVarD.h();
                throw th2;
            }
        }
        this.f3921p = null;
    }
}
