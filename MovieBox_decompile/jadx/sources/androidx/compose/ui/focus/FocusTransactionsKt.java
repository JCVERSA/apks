package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.v0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class FocusTransactionsKt {

    public class a {

        public static final int[] f3924a;

        public static final int[] f3925b;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f3924a = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f3925b = iArr2;
        }
    }

    private static final boolean a(FocusTargetNode focusTargetNode, boolean z10, boolean z11) {
        FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
        if (focusTargetNodeF != null) {
            return c(focusTargetNodeF, z10, z11);
        }
        return true;
    }

    static boolean b(FocusTargetNode focusTargetNode, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        return a(focusTargetNode, z10, z11);
    }

    public static final boolean c(FocusTargetNode focusTargetNode, boolean z10, boolean z11) {
        int i10 = a.f3925b[focusTargetNode.J1().ordinal()];
        if (i10 == 1) {
            focusTargetNode.P1(FocusStateImpl.Inactive);
            if (z11) {
                d.c(focusTargetNode);
            }
        } else {
            if (i10 == 2) {
                if (!z10) {
                    return z10;
                }
                focusTargetNode.P1(FocusStateImpl.Inactive);
                if (!z11) {
                    return z10;
                }
                d.c(focusTargetNode);
                return z10;
            }
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                if (!a(focusTargetNode, z10, z11)) {
                    return false;
                }
                focusTargetNode.P1(FocusStateImpl.Inactive);
                if (z11) {
                    d.c(focusTargetNode);
                }
            }
        }
        return true;
    }

    private static final boolean d(final FocusTargetNode focusTargetNode) {
        v0.a(focusTargetNode, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m111invoke();
                return Unit.f64096a;
            }

            public final void m111invoke() {
                focusTargetNode.H1();
            }
        });
        int i10 = a.f3925b[focusTargetNode.J1().ordinal()];
        if (i10 != 3 && i10 != 4) {
            return true;
        }
        focusTargetNode.P1(FocusStateImpl.Active);
        return true;
    }

    public static final CustomDestinationResult e(FocusTargetNode focusTargetNode, int i10) {
        int i11 = a.f3925b[focusTargetNode.J1().ordinal()];
        if (i11 != 1) {
            if (i11 == 2) {
                return CustomDestinationResult.Cancelled;
            }
            if (i11 == 3) {
                CustomDestinationResult customDestinationResultE = e(n(focusTargetNode), i10);
                if (customDestinationResultE == CustomDestinationResult.None) {
                    customDestinationResultE = null;
                }
                return customDestinationResultE == null ? g(focusTargetNode, i10) : customDestinationResultE;
            }
            if (i11 != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return CustomDestinationResult.None;
    }

    private static final CustomDestinationResult f(FocusTargetNode focusTargetNode, int i10) {
        if (!focusTargetNode.f3920o) {
            focusTargetNode.f3920o = true;
            try {
                FocusRequester focusRequester = (FocusRequester) focusTargetNode.H1().s().invoke(b.i(i10));
                FocusRequester.a aVar = FocusRequester.f3914b;
                if (focusRequester != aVar.b()) {
                    if (focusRequester == aVar.a()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    return focusRequester.d() ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.f3920o = false;
            }
        }
        return CustomDestinationResult.None;
    }

    private static final CustomDestinationResult g(FocusTargetNode focusTargetNode, int i10) {
        if (!focusTargetNode.f3919n) {
            focusTargetNode.f3919n = true;
            try {
                FocusRequester focusRequester = (FocusRequester) focusTargetNode.H1().o().invoke(b.i(i10));
                FocusRequester.a aVar = FocusRequester.f3914b;
                if (focusRequester != aVar.b()) {
                    if (focusRequester == aVar.a()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    return focusRequester.d() ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.f3919n = false;
            }
        }
        return CustomDestinationResult.None;
    }

    public static final CustomDestinationResult h(FocusTargetNode focusTargetNode, int i10) {
        androidx.compose.ui.f.c cVarG;
        q0 q0VarE0;
        int i11 = a.f3925b[focusTargetNode.J1().ordinal()];
        if (i11 == 1 || i11 == 2) {
            return CustomDestinationResult.None;
        }
        if (i11 == 3) {
            return e(n(focusTargetNode), i10);
        }
        if (i11 != 4) {
            throw new NoWhenBranchMatchedException();
        }
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = focusTargetNode.getNode().g1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        loop0: while (true) {
            if (layoutNodeM == null) {
                cVarG = null;
                break;
            }
            if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                while (cVarG1 != null) {
                    if ((cVarG1.e1() & iA) != 0) {
                        cVarG = cVarG1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i12 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i12++;
                                        if (i12 == 1) {
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
                                if (i12 == 1) {
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
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
        if (focusTargetNode2 == null) {
            return CustomDestinationResult.None;
        }
        int i13 = a.f3925b[focusTargetNode2.J1().ordinal()];
        if (i13 == 1) {
            return f(focusTargetNode2, i10);
        }
        if (i13 == 2) {
            return CustomDestinationResult.Cancelled;
        }
        if (i13 == 3) {
            return h(focusTargetNode2, i10);
        }
        if (i13 != 4) {
            throw new NoWhenBranchMatchedException();
        }
        CustomDestinationResult customDestinationResultH = h(focusTargetNode2, i10);
        CustomDestinationResult customDestinationResult = customDestinationResultH != CustomDestinationResult.None ? customDestinationResultH : null;
        return customDestinationResult == null ? f(focusTargetNode2, i10) : customDestinationResult;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00da  */
    public static final boolean i(FocusTargetNode focusTargetNode) {
        q0 q0VarE0;
        int i10 = a.f3925b[focusTargetNode.J1().ordinal()];
        boolean zL = true;
        if (i10 != 1 && i10 != 2) {
            androidx.compose.ui.f.c cVar = null;
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                int iA = s0.a(1024);
                if (!focusTargetNode.getNode().j1()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                androidx.compose.ui.f.c cVarG1 = focusTargetNode.getNode().g1();
                LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
                loop0: while (layoutNodeM != null) {
                    if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                        while (cVarG1 != null) {
                            if ((cVarG1.e1() & iA) != 0) {
                                androidx.compose.ui.f.c cVarG = cVarG1;
                                androidx.compose.runtime.collection.b bVar = null;
                                while (cVarG != null) {
                                    if (cVarG instanceof FocusTargetNode) {
                                        cVar = cVarG;
                                        break loop0;
                                    }
                                    if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
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
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVar;
                if (focusTargetNode2 != null) {
                    FocusStateImpl focusStateImplJ1 = focusTargetNode2.J1();
                    zL = l(focusTargetNode2, focusTargetNode);
                    if (zL && focusStateImplJ1 != focusTargetNode2.J1()) {
                        d.c(focusTargetNode2);
                    }
                } else if (!m(focusTargetNode) || !d(focusTargetNode)) {
                    zL = false;
                }
            } else if (!b(focusTargetNode, false, false, 3, null) || !d(focusTargetNode)) {
                zL = false;
            }
        }
        if (zL) {
            d.c(focusTargetNode);
        }
        return zL;
    }

    public static final boolean j(FocusTargetNode focusTargetNode) {
        Boolean boolK = k(focusTargetNode, b.f3928b.b());
        if (boolK != null) {
            return boolK.booleanValue();
        }
        return false;
    }

    public static final Boolean k(final FocusTargetNode focusTargetNode, int i10) {
        Boolean boolValueOf;
        v vVarD = u.d(focusTargetNode);
        Function0<Unit> function0 = new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m112invoke();
                return Unit.f64096a;
            }

            public final void m112invoke() {
                if (focusTargetNode.getNode().j1()) {
                    d.c(focusTargetNode);
                }
            }
        };
        try {
            if (vVarD.f3946c) {
                vVarD.g();
            }
            vVarD.f();
            vVarD.f3945b.b(function0);
            int i11 = a.f3924a[h(focusTargetNode, i10).ordinal()];
            if (i11 == 1) {
                boolValueOf = Boolean.valueOf(i(focusTargetNode));
            } else if (i11 != 2) {
                if (i11 != 3 && i11 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.TRUE;
            }
            vVarD.h();
            return boolValueOf;
        } catch (Throwable th2) {
            vVarD.h();
            throw th2;
        }
    }

    private static final boolean l(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        androidx.compose.ui.f.c cVar;
        androidx.compose.ui.f.c cVarG;
        q0 q0VarE0;
        q0 q0VarE1;
        int iA = s0.a(1024);
        if (!focusTargetNode2.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = focusTargetNode2.getNode().g1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode2);
        loop0: while (true) {
            cVar = null;
            if (layoutNodeM == null) {
                cVarG = null;
                break;
            }
            if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                while (cVarG1 != null) {
                    if ((cVarG1.e1() & iA) != 0) {
                        cVarG = cVarG1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i10 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
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
                                if (i10 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar);
                        }
                    }
                    cVarG1 = cVarG1.g1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarG1 = (layoutNodeM == null || (q0VarE1 = layoutNodeM.e0()) == null) ? null : q0VarE1.o();
        }
        if (!Intrinsics.c(cVarG, focusTargetNode)) {
            throw new IllegalStateException("Non child node cannot request focus.");
        }
        int i11 = a.f3925b[focusTargetNode.J1().ordinal()];
        if (i11 == 1) {
            boolean zD = d(focusTargetNode2);
            if (!zD) {
                return zD;
            }
            focusTargetNode.P1(FocusStateImpl.ActiveParent);
            return zD;
        }
        if (i11 != 2) {
            if (i11 == 3) {
                n(focusTargetNode);
                if (b(focusTargetNode, false, false, 3, null) && d(focusTargetNode2)) {
                    return true;
                }
            } else {
                if (i11 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                int iA2 = s0.a(1024);
                if (!focusTargetNode.getNode().j1()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                androidx.compose.ui.f.c cVarG2 = focusTargetNode.getNode().g1();
                LayoutNode layoutNodeM2 = androidx.compose.ui.node.g.m(focusTargetNode);
                loop4: while (layoutNodeM2 != null) {
                    if ((layoutNodeM2.e0().k().Z0() & iA2) != 0) {
                        while (cVarG2 != null) {
                            if ((cVarG2.e1() & iA2) != 0) {
                                androidx.compose.ui.f.c cVarG3 = cVarG2;
                                androidx.compose.runtime.collection.b bVar2 = null;
                                while (cVarG3 != null) {
                                    if (cVarG3 instanceof FocusTargetNode) {
                                        cVar = cVarG3;
                                        break loop4;
                                    }
                                    if ((cVarG3.e1() & iA2) != 0 && (cVarG3 instanceof androidx.compose.ui.node.i)) {
                                        int i12 = 0;
                                        for (androidx.compose.ui.f.c cVarD2 = ((androidx.compose.ui.node.i) cVarG3).D1(); cVarD2 != null; cVarD2 = cVarD2.a1()) {
                                            if ((cVarD2.e1() & iA2) != 0) {
                                                i12++;
                                                if (i12 == 1) {
                                                    cVarG3 = cVarD2;
                                                } else {
                                                    if (bVar2 == null) {
                                                        bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                    }
                                                    if (cVarG3 != null) {
                                                        bVar2.b(cVarG3);
                                                        cVarG3 = null;
                                                    }
                                                    bVar2.b(cVarD2);
                                                }
                                            }
                                        }
                                        if (i12 == 1) {
                                        }
                                    }
                                    cVarG3 = androidx.compose.ui.node.g.g(bVar2);
                                }
                            }
                            cVarG2 = cVarG2.g1();
                        }
                    }
                    layoutNodeM2 = layoutNodeM2.h0();
                    cVarG2 = (layoutNodeM2 == null || (q0VarE0 = layoutNodeM2.e0()) == null) ? null : q0VarE0.o();
                }
                FocusTargetNode focusTargetNode3 = (FocusTargetNode) cVar;
                if (focusTargetNode3 == null && m(focusTargetNode)) {
                    boolean zD2 = d(focusTargetNode2);
                    if (!zD2) {
                        return zD2;
                    }
                    focusTargetNode.P1(FocusStateImpl.ActiveParent);
                    return zD2;
                }
                if (focusTargetNode3 != null && l(focusTargetNode3, focusTargetNode)) {
                    boolean zL = l(focusTargetNode, focusTargetNode2);
                    if (focusTargetNode.J1() != FocusStateImpl.ActiveParent) {
                        throw new IllegalStateException("Deactivated node is focused");
                    }
                    if (!zL) {
                        return zL;
                    }
                    d.c(focusTargetNode3);
                    return zL;
                }
            }
        }
        return false;
    }

    private static final boolean m(FocusTargetNode focusTargetNode) {
        return androidx.compose.ui.node.g.n(focusTargetNode).getFocusOwner().b(null, null);
    }

    private static final FocusTargetNode n(FocusTargetNode focusTargetNode) {
        FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
        if (focusTargetNodeF != null) {
            return focusTargetNodeF;
        }
        throw new IllegalArgumentException("ActiveParent with no focused child");
    }
}
