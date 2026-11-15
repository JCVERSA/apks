package androidx.compose.ui.node;

import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;

public abstract class g {
    public static final void c(androidx.compose.runtime.collection.b bVar, androidx.compose.ui.f.c cVar) {
        androidx.compose.runtime.collection.b bVarP0 = m(cVar).p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            int i10 = iN - 1;
            Object[] objArrM = bVarP0.m();
            do {
                bVar.b(((LayoutNode) objArrM[i10]).e0().k());
                i10--;
            } while (i10 >= 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final x d(androidx.compose.ui.f.c cVar) {
        if ((s0.a(2) & cVar.e1()) != 0) {
            if (cVar instanceof x) {
                return (x) cVar;
            }
            if (cVar instanceof i) {
                androidx.compose.ui.f.c cVarD1 = ((i) cVar).D1();
                while (cVarD1 != 0) {
                    if (cVarD1 instanceof x) {
                        return (x) cVarD1;
                    }
                    cVarD1 = (!(cVarD1 instanceof i) || (s0.a(2) & cVarD1.e1()) == 0) ? cVarD1.a1() : ((i) cVarD1).D1();
                }
            }
        }
        return null;
    }

    public static final boolean e(f fVar, int i10) {
        return (fVar.getNode().Z0() & i10) != 0;
    }

    public static final boolean f(f fVar) {
        return fVar.getNode() == fVar;
    }

    public static final androidx.compose.ui.f.c g(androidx.compose.runtime.collection.b bVar) {
        if (bVar == null || bVar.p()) {
            return null;
        }
        return (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
    }

    public static final NodeCoordinator h(f fVar, int i10) {
        NodeCoordinator nodeCoordinatorB1 = fVar.getNode().b1();
        Intrinsics.e(nodeCoordinatorB1);
        if (nodeCoordinatorB1.X1() != fVar || !t0.i(i10)) {
            return nodeCoordinatorB1;
        }
        NodeCoordinator nodeCoordinatorY1 = nodeCoordinatorB1.Y1();
        Intrinsics.e(nodeCoordinatorY1);
        return nodeCoordinatorY1;
    }

    public static final o0.e i(f fVar) {
        return m(fVar).H();
    }

    public static final a4 j(f fVar) {
        return n(fVar).getGraphicsContext();
    }

    public static final androidx.compose.ui.layout.l k(f fVar) {
        if (!fVar.getNode().j1()) {
            g0.a.b("Cannot get LayoutCoordinates, Modifier.Node is not attached.");
        }
        androidx.compose.ui.layout.l lVarW0 = h(fVar, s0.a(2)).W0();
        if (!lVarW0.F()) {
            g0.a.b("LayoutCoordinates is not attached.");
        }
        return lVarW0;
    }

    public static final LayoutDirection l(f fVar) {
        return m(fVar).getLayoutDirection();
    }

    public static final LayoutNode m(f fVar) {
        NodeCoordinator nodeCoordinatorB1 = fVar.getNode().b1();
        if (nodeCoordinatorB1 != null) {
            return nodeCoordinatorB1.Z0();
        }
        g0.a.c("Cannot obtain node coordinator. Is the Modifier.Node attached?");
        throw new KotlinNothingValueException();
    }

    public static final y0 n(f fVar) {
        y0 y0VarG0 = m(fVar).g0();
        if (y0VarG0 != null) {
            return y0VarG0;
        }
        g0.a.c("This node does not have an owner.");
        throw new KotlinNothingValueException();
    }
}
