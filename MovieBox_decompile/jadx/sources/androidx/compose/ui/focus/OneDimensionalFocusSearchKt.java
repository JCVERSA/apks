package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

public abstract class OneDimensionalFocusSearchKt {

    public class a {

        public static final int[] f3926a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f3926a = iArr;
        }
    }

    private static final boolean b(FocusTargetNode focusTargetNode, Function1 function1) {
        FocusStateImpl focusStateImplJ1 = focusTargetNode.J1();
        int[] iArr = a.f3926a;
        int i10 = iArr[focusStateImplJ1.ordinal()];
        if (i10 == 1) {
            FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
            if (focusTargetNodeF == null) {
                throw new IllegalStateException("ActiveParent must have a focusedChild");
            }
            int i11 = iArr[focusTargetNodeF.J1().ordinal()];
            if (i11 != 1) {
                if (i11 == 2 || i11 == 3) {
                    return d(focusTargetNode, focusTargetNodeF, b.f3928b.f(), function1);
                }
                if (i11 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                throw new IllegalStateException("ActiveParent must have a focusedChild");
            }
            if (!b(focusTargetNodeF, function1) && !d(focusTargetNode, focusTargetNodeF, b.f3928b.f(), function1) && (!focusTargetNodeF.H1().t() || !((Boolean) function1.invoke(focusTargetNodeF)).booleanValue())) {
                return false;
            }
        } else {
            if (i10 == 2 || i10 == 3) {
                return g(focusTargetNode, function1);
            }
            if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            if (!g(focusTargetNode, function1)) {
                if (!(focusTargetNode.H1().t() ? ((Boolean) function1.invoke(focusTargetNode)).booleanValue() : false)) {
                    return false;
                }
            }
        }
        return true;
    }

    private static final boolean c(FocusTargetNode focusTargetNode, Function1 function1) {
        int i10 = a.f3926a[focusTargetNode.J1().ordinal()];
        if (i10 == 1) {
            FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
            if (focusTargetNodeF != null) {
                return c(focusTargetNodeF, function1) || d(focusTargetNode, focusTargetNodeF, b.f3928b.e(), function1);
            }
            throw new IllegalStateException("ActiveParent must have a focusedChild");
        }
        if (i10 == 2 || i10 == 3) {
            return h(focusTargetNode, function1);
        }
        if (i10 == 4) {
            return focusTargetNode.H1().t() ? ((Boolean) function1.invoke(focusTargetNode)).booleanValue() : h(focusTargetNode, function1);
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final boolean d(final FocusTargetNode focusTargetNode, final FocusTargetNode focusTargetNode2, final int i10, final Function1 function1) {
        if (i(focusTargetNode, focusTargetNode2, i10, function1)) {
            return true;
        }
        Boolean bool = (Boolean) androidx.compose.ui.focus.a.a(focusTargetNode, i10, new Function1<androidx.compose.ui.layout.d.a, Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(androidx.compose.ui.layout.d.a aVar) {
                boolean zI = OneDimensionalFocusSearchKt.i(focusTargetNode, focusTargetNode2, i10, function1);
                Boolean boolValueOf = Boolean.valueOf(zI);
                if (zI || !aVar.a()) {
                    return boolValueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static final boolean e(FocusTargetNode focusTargetNode) {
        androidx.compose.ui.f.c cVar;
        q0 q0VarE0;
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = focusTargetNode.getNode().g1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        loop0: while (true) {
            cVar = null;
            if (layoutNodeM == null) {
                break;
            }
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
        return cVar == null;
    }

    public static final boolean f(FocusTargetNode focusTargetNode, int i10, Function1 function1) {
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.e())) {
            return c(focusTargetNode, function1);
        }
        if (b.l(i10, aVar.f())) {
            return b(focusTargetNode, function1);
        }
        throw new IllegalStateException("This function should only be used for 1-D focus search");
    }

    private static final boolean g(FocusTargetNode focusTargetNode, Function1 function1) {
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = focusTargetNode.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar2, focusTargetNode.getNode());
        } else {
            bVar2.b(cVarA1);
        }
        while (bVar2.q()) {
            androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar2.v(bVar2.n() - 1);
            if ((cVarG.Z0() & iA) == 0) {
                androidx.compose.ui.node.g.c(bVar2, cVarG);
            } else {
                while (cVarG != null) {
                    if ((cVarG.e1() & iA) != 0) {
                        androidx.compose.runtime.collection.b bVar3 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                bVar.b((FocusTargetNode) cVarG);
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i10 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
                                            cVarG = cVarD1;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarD1);
                                        }
                                    }
                                }
                                if (i10 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar3);
                        }
                        break;
                    }
                    cVarG = cVarG.a1();
                }
            }
        }
        bVar.A(FocusableChildrenComparator.INSTANCE);
        int iN = bVar.n();
        if (iN > 0) {
            int i11 = iN - 1;
            Object[] objArrM = bVar.m();
            do {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArrM[i11];
                if (w.g(focusTargetNode2) && b(focusTargetNode2, function1)) {
                    return true;
                }
                i11--;
            } while (i11 >= 0);
        }
        return false;
    }

    private static final boolean h(FocusTargetNode focusTargetNode, Function1 function1) {
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = focusTargetNode.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar2, focusTargetNode.getNode());
        } else {
            bVar2.b(cVarA1);
        }
        while (bVar2.q()) {
            androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar2.v(bVar2.n() - 1);
            if ((cVarG.Z0() & iA) == 0) {
                androidx.compose.ui.node.g.c(bVar2, cVarG);
            } else {
                while (cVarG != null) {
                    if ((cVarG.e1() & iA) != 0) {
                        androidx.compose.runtime.collection.b bVar3 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                bVar.b((FocusTargetNode) cVarG);
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i10 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
                                            cVarG = cVarD1;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarD1);
                                        }
                                    }
                                }
                                if (i10 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar3);
                        }
                        break;
                    }
                    cVarG = cVarG.a1();
                }
            }
        }
        bVar.A(FocusableChildrenComparator.INSTANCE);
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i11 = 0;
        do {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArrM[i11];
            if (w.g(focusTargetNode2) && c(focusTargetNode2, function1)) {
                return true;
            }
            i11++;
        } while (i11 < iN);
        return false;
    }

    public static final boolean i(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i10, Function1 function1) {
        if (focusTargetNode.J1() != FocusStateImpl.ActiveParent) {
            throw new IllegalStateException("This function should only be used within a parent that has focus.");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = focusTargetNode.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar2, focusTargetNode.getNode());
        } else {
            bVar2.b(cVarA1);
        }
        while (bVar2.q()) {
            androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar2.v(bVar2.n() - 1);
            if ((cVarG.Z0() & iA) == 0) {
                androidx.compose.ui.node.g.c(bVar2, cVarG);
            } else {
                while (cVarG != null) {
                    if ((cVarG.e1() & iA) != 0) {
                        androidx.compose.runtime.collection.b bVar3 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                bVar.b((FocusTargetNode) cVarG);
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            cVarG = cVarD1;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarD1);
                                        }
                                    }
                                }
                                if (i11 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar3);
                        }
                        break;
                    }
                    cVarG = cVarG.a1();
                }
            }
        }
        bVar.A(FocusableChildrenComparator.INSTANCE);
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.e())) {
            IntRange intRange = new IntRange(0, bVar.n() - 1);
            int first = intRange.getFirst();
            int last = intRange.getLast();
            if (first <= last) {
                boolean z10 = false;
                while (true) {
                    if (z10) {
                        FocusTargetNode focusTargetNode3 = (FocusTargetNode) bVar.m()[first];
                        if (w.g(focusTargetNode3) && c(focusTargetNode3, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.c(bVar.m()[first], focusTargetNode2)) {
                        z10 = true;
                    }
                    if (first == last) {
                        break;
                    }
                    first++;
                }
            }
        } else {
            if (!b.l(i10, aVar.f())) {
                throw new IllegalStateException("This function should only be used for 1-D focus search");
            }
            IntRange intRange2 = new IntRange(0, bVar.n() - 1);
            int first2 = intRange2.getFirst();
            int last2 = intRange2.getLast();
            if (first2 <= last2) {
                boolean z11 = false;
                while (true) {
                    if (z11) {
                        FocusTargetNode focusTargetNode4 = (FocusTargetNode) bVar.m()[last2];
                        if (w.g(focusTargetNode4) && b(focusTargetNode4, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.c(bVar.m()[last2], focusTargetNode2)) {
                        z11 = true;
                    }
                    if (last2 == first2) {
                        break;
                    }
                    last2--;
                }
            }
        }
        if (b.l(i10, b.f3928b.e()) || !focusTargetNode.H1().t() || e(focusTargetNode)) {
            return false;
        }
        return ((Boolean) function1.invoke(focusTargetNode)).booleanValue();
    }
}
