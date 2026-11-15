package androidx.compose.ui.focus;

import androidx.compose.ui.node.s0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class TwoDimensionalFocusSearchKt {

    public class a {

        public static final int[] f3927a;

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
            f3927a = iArr;
        }
    }

    private static final FocusTargetNode b(FocusTargetNode focusTargetNode) {
        if (focusTargetNode.J1() != FocusStateImpl.ActiveParent) {
            throw new IllegalStateException("Searching for active node in inactive hierarchy");
        }
        FocusTargetNode focusTargetNodeB = w.b(focusTargetNode);
        if (focusTargetNodeB != null) {
            return focusTargetNodeB;
        }
        throw new IllegalStateException("ActiveParent must have a focusedChild");
    }

    private static final boolean c(y.i iVar, y.i iVar2, y.i iVar3, int i10) {
        if (d(iVar3, i10, iVar) || !d(iVar2, i10, iVar)) {
            return false;
        }
        if (e(iVar3, i10, iVar)) {
            b.a aVar = b.f3928b;
            if (!b.l(i10, aVar.d()) && !b.l(i10, aVar.g()) && f(iVar2, i10, iVar) >= g(iVar3, i10, iVar)) {
                return false;
            }
        }
        return true;
    }

    private static final boolean d(y.i iVar, int i10, y.i iVar2) {
        b.a aVar = b.f3928b;
        if (!(b.l(i10, aVar.d()) ? true : b.l(i10, aVar.g()))) {
            if (!(b.l(i10, aVar.h()) ? true : b.l(i10, aVar.a()))) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            if (iVar.g() > iVar2.f() && iVar.f() < iVar2.g()) {
                return true;
            }
        } else if (iVar.c() > iVar2.i() && iVar.i() < iVar2.c()) {
            return true;
        }
        return false;
    }

    private static final boolean e(y.i iVar, int i10, y.i iVar2) {
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.d())) {
            if (iVar2.f() < iVar.g()) {
                return false;
            }
        } else if (b.l(i10, aVar.g())) {
            if (iVar2.g() > iVar.f()) {
                return false;
            }
        } else if (b.l(i10, aVar.h())) {
            if (iVar2.i() < iVar.c()) {
                return false;
            }
        } else {
            if (!b.l(i10, aVar.a())) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            if (iVar2.c() > iVar.i()) {
                return false;
            }
        }
        return true;
    }

    private static final float f(y.i iVar, int i10, y.i iVar2) {
        float fI;
        float fC;
        float fI2;
        float fC2;
        float f10;
        b.a aVar = b.f3928b;
        if (!b.l(i10, aVar.d())) {
            if (b.l(i10, aVar.g())) {
                fI = iVar.f();
                fC = iVar2.g();
            } else if (b.l(i10, aVar.h())) {
                fI2 = iVar2.i();
                fC2 = iVar.c();
            } else {
                if (!b.l(i10, aVar.a())) {
                    throw new IllegalStateException("This function should only be used for 2-D focus search");
                }
                fI = iVar.i();
                fC = iVar2.c();
            }
            f10 = fI - fC;
            return Math.max(0.0f, f10);
        }
        fI2 = iVar2.f();
        fC2 = iVar.g();
        f10 = fI2 - fC2;
        return Math.max(0.0f, f10);
    }

    private static final float g(y.i iVar, int i10, y.i iVar2) {
        float fC;
        float fC2;
        float fI;
        float fI2;
        float f10;
        b.a aVar = b.f3928b;
        if (!b.l(i10, aVar.d())) {
            if (b.l(i10, aVar.g())) {
                fC = iVar.g();
                fC2 = iVar2.g();
            } else if (b.l(i10, aVar.h())) {
                fI = iVar2.i();
                fI2 = iVar.i();
            } else {
                if (!b.l(i10, aVar.a())) {
                    throw new IllegalStateException("This function should only be used for 2-D focus search");
                }
                fC = iVar.c();
                fC2 = iVar2.c();
            }
            f10 = fC - fC2;
            return Math.max(1.0f, f10);
        }
        fI = iVar2.f();
        fI2 = iVar.f();
        f10 = fI - fI2;
        return Math.max(1.0f, f10);
    }

    private static final y.i h(y.i iVar) {
        return new y.i(iVar.g(), iVar.c(), iVar.g(), iVar.c());
    }

    private static final void i(androidx.compose.ui.node.f fVar, androidx.compose.runtime.collection.b bVar) {
        int iA = s0.a(1024);
        if (!fVar.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = fVar.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar2, fVar.getNode());
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
                                FocusTargetNode focusTargetNode = (FocusTargetNode) cVarG;
                                if (focusTargetNode.j1() && !androidx.compose.ui.node.g.m(focusTargetNode).E0()) {
                                    if (focusTargetNode.H1().t()) {
                                        bVar.b(focusTargetNode);
                                    } else {
                                        i(focusTargetNode, bVar);
                                    }
                                }
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
    }

    private static final FocusTargetNode j(androidx.compose.runtime.collection.b bVar, y.i iVar, int i10) {
        y.i iVarP;
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.d())) {
            iVarP = iVar.p(iVar.k() + 1, 0.0f);
        } else if (b.l(i10, aVar.g())) {
            iVarP = iVar.p(-(iVar.k() + 1), 0.0f);
        } else if (b.l(i10, aVar.h())) {
            iVarP = iVar.p(0.0f, iVar.e() + 1);
        } else {
            if (!b.l(i10, aVar.a())) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            iVarP = iVar.p(0.0f, -(iVar.e() + 1));
        }
        int iN = bVar.n();
        FocusTargetNode focusTargetNode = null;
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i11 = 0;
            do {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArrM[i11];
                if (w.g(focusTargetNode2)) {
                    y.i iVarD = w.d(focusTargetNode2);
                    if (m(iVarD, iVarP, iVar, i10)) {
                        focusTargetNode = focusTargetNode2;
                        iVarP = iVarD;
                    }
                }
                i11++;
            } while (i11 < iN);
        }
        return focusTargetNode;
    }

    public static final boolean k(FocusTargetNode focusTargetNode, int i10, Function1 function1) {
        y.i iVarH;
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        i(focusTargetNode, bVar);
        if (bVar.n() <= 1) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) (bVar.p() ? null : bVar.m()[0]);
            if (focusTargetNode2 != null) {
                return ((Boolean) function1.invoke(focusTargetNode2)).booleanValue();
            }
            return false;
        }
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.b())) {
            i10 = aVar.g();
        }
        if (b.l(i10, aVar.g()) ? true : b.l(i10, aVar.a())) {
            iVarH = s(w.d(focusTargetNode));
        } else {
            if (!(b.l(i10, aVar.d()) ? true : b.l(i10, aVar.h()))) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            iVarH = h(w.d(focusTargetNode));
        }
        FocusTargetNode focusTargetNodeJ = j(bVar, iVarH, i10);
        if (focusTargetNodeJ != null) {
            return ((Boolean) function1.invoke(focusTargetNodeJ)).booleanValue();
        }
        return false;
    }

    private static final boolean l(final FocusTargetNode focusTargetNode, final y.i iVar, final int i10, final Function1 function1) {
        if (r(focusTargetNode, iVar, i10, function1)) {
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
                boolean zR = TwoDimensionalFocusSearchKt.r(focusTargetNode, iVar, i10, function1);
                Boolean boolValueOf = Boolean.valueOf(zR);
                if (zR || !aVar.a()) {
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

    private static final boolean m(y.i iVar, y.i iVar2, y.i iVar3, int i10) {
        if (n(iVar, i10, iVar3)) {
            return !n(iVar2, i10, iVar3) || c(iVar3, iVar, iVar2, i10) || (!c(iVar3, iVar2, iVar, i10) && q(i10, iVar3, iVar) < q(i10, iVar3, iVar2));
        }
        return false;
    }

    private static final boolean n(y.i iVar, int i10, y.i iVar2) {
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.d())) {
            if ((iVar2.g() <= iVar.g() && iVar2.f() < iVar.g()) || iVar2.f() <= iVar.f()) {
                return false;
            }
        } else if (b.l(i10, aVar.g())) {
            if ((iVar2.f() >= iVar.f() && iVar2.g() > iVar.f()) || iVar2.g() >= iVar.g()) {
                return false;
            }
        } else if (b.l(i10, aVar.h())) {
            if ((iVar2.c() <= iVar.c() && iVar2.i() < iVar.c()) || iVar2.i() <= iVar.i()) {
                return false;
            }
        } else {
            if (!b.l(i10, aVar.a())) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            if ((iVar2.i() >= iVar.i() && iVar2.c() > iVar.i()) || iVar2.c() >= iVar.c()) {
                return false;
            }
        }
        return true;
    }

    private static final float o(y.i iVar, int i10, y.i iVar2) {
        float fI;
        float fC;
        float fI2;
        float fC2;
        float f10;
        b.a aVar = b.f3928b;
        if (!b.l(i10, aVar.d())) {
            if (b.l(i10, aVar.g())) {
                fI = iVar.f();
                fC = iVar2.g();
            } else if (b.l(i10, aVar.h())) {
                fI2 = iVar2.i();
                fC2 = iVar.c();
            } else {
                if (!b.l(i10, aVar.a())) {
                    throw new IllegalStateException("This function should only be used for 2-D focus search");
                }
                fI = iVar.i();
                fC = iVar2.c();
            }
            f10 = fI - fC;
            return Math.max(0.0f, f10);
        }
        fI2 = iVar2.f();
        fC2 = iVar.g();
        f10 = fI2 - fC2;
        return Math.max(0.0f, f10);
    }

    private static final float p(y.i iVar, int i10, y.i iVar2) {
        float f10;
        float f11;
        float f12;
        float fK;
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.d()) ? true : b.l(i10, aVar.g())) {
            f10 = 2;
            f11 = iVar2.i() + (iVar2.e() / f10);
            f12 = iVar.i();
            fK = iVar.e();
        } else {
            if (!(b.l(i10, aVar.h()) ? true : b.l(i10, aVar.a()))) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            f10 = 2;
            f11 = iVar2.f() + (iVar2.k() / f10);
            f12 = iVar.f();
            fK = iVar.k();
        }
        return f11 - (f12 + (fK / f10));
    }

    private static final long q(int i10, y.i iVar, y.i iVar2) {
        long jAbs = (long) Math.abs(o(iVar2, i10, iVar));
        long jAbs2 = (long) Math.abs(p(iVar2, i10, iVar));
        return (((long) 13) * jAbs * jAbs) + (jAbs2 * jAbs2);
    }

    public static final boolean r(FocusTargetNode focusTargetNode, y.i iVar, int i10, Function1 function1) {
        FocusTargetNode focusTargetNodeJ;
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
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (focusTargetNode2.j1()) {
                                    bVar.b(focusTargetNode2);
                                }
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
        while (bVar.q() && (focusTargetNodeJ = j(bVar, iVar, i10)) != null) {
            if (focusTargetNodeJ.H1().t()) {
                return ((Boolean) function1.invoke(focusTargetNodeJ)).booleanValue();
            }
            if (l(focusTargetNodeJ, iVar, i10, function1)) {
                return true;
            }
            bVar.t(focusTargetNodeJ);
        }
        return false;
    }

    private static final y.i s(y.i iVar) {
        return new y.i(iVar.f(), iVar.i(), iVar.f(), iVar.i());
    }

    public static final Boolean t(FocusTargetNode focusTargetNode, int i10, y.i iVar, Function1 function1) {
        FocusStateImpl focusStateImplJ1 = focusTargetNode.J1();
        int[] iArr = a.f3927a;
        int i11 = iArr[focusStateImplJ1.ordinal()];
        if (i11 != 1) {
            if (i11 == 2 || i11 == 3) {
                return Boolean.valueOf(k(focusTargetNode, i10, function1));
            }
            if (i11 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            if (focusTargetNode.H1().t()) {
                return (Boolean) function1.invoke(focusTargetNode);
            }
            return iVar == null ? Boolean.valueOf(k(focusTargetNode, i10, function1)) : Boolean.valueOf(r(focusTargetNode, iVar, i10, function1));
        }
        FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
        if (focusTargetNodeF == null) {
            throw new IllegalStateException("ActiveParent must have a focusedChild");
        }
        int i12 = iArr[focusTargetNodeF.J1().ordinal()];
        if (i12 == 1) {
            Boolean boolT = t(focusTargetNodeF, i10, iVar, function1);
            if (!Intrinsics.c(boolT, Boolean.FALSE)) {
                return boolT;
            }
            if (iVar == null) {
                iVar = w.d(b(focusTargetNodeF));
            }
            return Boolean.valueOf(l(focusTargetNode, iVar, i10, function1));
        }
        if (i12 == 2 || i12 == 3) {
            if (iVar == null) {
                iVar = w.d(focusTargetNodeF);
            }
            return Boolean.valueOf(l(focusTargetNode, iVar, i10, function1));
        }
        if (i12 != 4) {
            throw new NoWhenBranchMatchedException();
        }
        throw new IllegalStateException("ActiveParent must have a focusedChild");
    }
}
