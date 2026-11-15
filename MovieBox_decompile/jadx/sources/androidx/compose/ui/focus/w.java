package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class w {

    public class a {

        public static final int[] f3947a;

        public static final int[] f3948b;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f3947a = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            f3948b = iArr2;
        }
    }

    public static final FocusRequester a(FocusTargetNode focusTargetNode, int i10, LayoutDirection layoutDirection) {
        FocusRequester focusRequesterP;
        k kVarH1 = focusTargetNode.H1();
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.e())) {
            return kVarH1.k();
        }
        if (b.l(i10, aVar.f())) {
            return kVarH1.u();
        }
        if (b.l(i10, aVar.h())) {
            return kVarH1.n();
        }
        if (b.l(i10, aVar.a())) {
            return kVarH1.q();
        }
        if (b.l(i10, aVar.d())) {
            int i11 = a.f3947a[layoutDirection.ordinal()];
            if (i11 == 1) {
                focusRequesterP = kVarH1.j();
            } else {
                if (i11 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                focusRequesterP = kVarH1.p();
            }
            if (focusRequesterP == FocusRequester.f3914b.b()) {
                focusRequesterP = null;
            }
            if (focusRequesterP == null) {
                return kVarH1.i();
            }
        } else {
            if (!b.l(i10, aVar.g())) {
                if (b.l(i10, aVar.b())) {
                    return (FocusRequester) kVarH1.s().invoke(b.i(i10));
                }
                if (b.l(i10, aVar.c())) {
                    return (FocusRequester) kVarH1.o().invoke(b.i(i10));
                }
                throw new IllegalStateException("invalid FocusDirection");
            }
            int i12 = a.f3947a[layoutDirection.ordinal()];
            if (i12 == 1) {
                focusRequesterP = kVarH1.p();
            } else {
                if (i12 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                focusRequesterP = kVarH1.j();
            }
            if (focusRequesterP == FocusRequester.f3914b.b()) {
                focusRequesterP = null;
            }
            if (focusRequesterP == null) {
                return kVarH1.m();
            }
        }
        return focusRequesterP;
    }

    public static final FocusTargetNode b(FocusTargetNode focusTargetNode) {
        int i10 = a.f3948b[focusTargetNode.J1().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                int iA = s0.a(1024);
                if (!focusTargetNode.getNode().j1()) {
                    throw new IllegalStateException("visitChildren called on an unattached node");
                }
                androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                androidx.compose.ui.f.c cVarA1 = focusTargetNode.getNode().a1();
                if (cVarA1 == null) {
                    androidx.compose.ui.node.g.c(bVar, focusTargetNode.getNode());
                } else {
                    bVar.b(cVarA1);
                }
                while (bVar.q()) {
                    androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
                    if ((cVarG.Z0() & iA) == 0) {
                        androidx.compose.ui.node.g.c(bVar, cVarG);
                    } else {
                        while (cVarG != null) {
                            if ((cVarG.e1() & iA) != 0) {
                                androidx.compose.runtime.collection.b bVar2 = null;
                                while (cVarG != null) {
                                    if (cVarG instanceof FocusTargetNode) {
                                        FocusTargetNode focusTargetNodeB = b((FocusTargetNode) cVarG);
                                        if (focusTargetNodeB != null) {
                                            return focusTargetNodeB;
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
                                break;
                            }
                            cVarG = cVarG.a1();
                        }
                    }
                }
                return null;
            }
            if (i10 != 3) {
                if (i10 == 4) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
        }
        return focusTargetNode;
    }

    private static final FocusTargetNode c(FocusTargetNode focusTargetNode) {
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
                                if (focusTargetNode2.H1().t()) {
                                    return focusTargetNode2;
                                }
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
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
            cVarG1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        return null;
    }

    public static final y.i d(FocusTargetNode focusTargetNode) {
        y.i iVarO;
        NodeCoordinator nodeCoordinatorB1 = focusTargetNode.b1();
        return (nodeCoordinatorB1 == null || (iVarO = androidx.compose.ui.layout.m.d(nodeCoordinatorB1).O(nodeCoordinatorB1, false)) == null) ? y.i.f76004e.a() : iVarO;
    }

    public static final Boolean e(FocusTargetNode focusTargetNode, int i10, LayoutDirection layoutDirection, y.i iVar, Function1 function1) {
        int iG;
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.e()) ? true : b.l(i10, aVar.f())) {
            return Boolean.valueOf(OneDimensionalFocusSearchKt.f(focusTargetNode, i10, function1));
        }
        if (b.l(i10, aVar.d()) ? true : b.l(i10, aVar.g()) ? true : b.l(i10, aVar.h()) ? true : b.l(i10, aVar.a())) {
            return TwoDimensionalFocusSearchKt.t(focusTargetNode, i10, iVar, function1);
        }
        if (!b.l(i10, aVar.b())) {
            if (b.l(i10, aVar.c())) {
                FocusTargetNode focusTargetNodeB = b(focusTargetNode);
                FocusTargetNode focusTargetNodeC = focusTargetNodeB != null ? c(focusTargetNodeB) : null;
                return Boolean.valueOf((focusTargetNodeC == null || Intrinsics.c(focusTargetNodeC, focusTargetNode)) ? false : ((Boolean) function1.invoke(focusTargetNodeC)).booleanValue());
            }
            throw new IllegalStateException(("Focus search invoked with invalid FocusDirection " + ((Object) b.n(i10))).toString());
        }
        int i11 = a.f3947a[layoutDirection.ordinal()];
        if (i11 == 1) {
            iG = aVar.g();
        } else {
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            iG = aVar.d();
        }
        FocusTargetNode focusTargetNodeB2 = b(focusTargetNode);
        if (focusTargetNodeB2 != null) {
            return TwoDimensionalFocusSearchKt.t(focusTargetNodeB2, iG, iVar, function1);
        }
        return null;
    }

    public static final FocusTargetNode f(FocusTargetNode focusTargetNode) {
        if (!focusTargetNode.getNode().j1()) {
            return null;
        }
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = focusTargetNode.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar, focusTargetNode.getNode());
        } else {
            bVar.b(cVarA1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVarG.Z0() & iA) == 0) {
                androidx.compose.ui.node.g.c(bVar, cVarG);
            } else {
                while (cVarG != null) {
                    if ((cVarG.e1() & iA) != 0) {
                        androidx.compose.runtime.collection.b bVar2 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (focusTargetNode2.getNode().j1()) {
                                    int i10 = a.f3948b[focusTargetNode2.J1().ordinal()];
                                    if (i10 == 1 || i10 == 2 || i10 == 3) {
                                        return focusTargetNode2;
                                    }
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
                        break;
                    }
                    cVarG = cVarG.a1();
                }
            }
        }
        return null;
    }

    public static final boolean g(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNodeZ0;
        NodeCoordinator nodeCoordinatorB1;
        LayoutNode layoutNodeZ1;
        NodeCoordinator nodeCoordinatorB2 = focusTargetNode.b1();
        return (nodeCoordinatorB2 == null || (layoutNodeZ0 = nodeCoordinatorB2.Z0()) == null || !layoutNodeZ0.n() || (nodeCoordinatorB1 = focusTargetNode.b1()) == null || (layoutNodeZ1 = nodeCoordinatorB1.Z0()) == null || !layoutNodeZ1.D0()) ? false : true;
    }
}
