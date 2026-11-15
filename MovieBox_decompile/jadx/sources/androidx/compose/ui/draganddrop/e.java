package androidx.compose.ui.draganddrop;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.layout.m;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.jvm.functions.Function1;
import o0.t;

public abstract class e {
    public static final boolean d(d dVar, long j10) {
        if (!dVar.getNode().j1()) {
            return false;
        }
        l lVarO = androidx.compose.ui.node.g.m(dVar).o();
        if (!lVarO.F()) {
            return false;
        }
        long jK = lVarO.k();
        int iG = t.g(jK);
        int iF = t.f(jK);
        long jE = m.e(lVarO);
        float fM = y.g.m(jE);
        float fN = y.g.n(jE);
        float f10 = iG + fM;
        float f11 = iF + fN;
        float fM2 = y.g.m(j10);
        if (fM > fM2 || fM2 > f10) {
            return false;
        }
        float fN2 = y.g.n(j10);
        return fN <= fN2 && fN2 <= f11;
    }

    public static final void e(f fVar, b bVar) {
        fVar.a0(bVar);
        fVar.C(bVar);
    }

    public static final void f(m1 m1Var, Function1 function1) {
        if (function1.invoke(m1Var) != TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal) {
            return;
        }
        n1.e(m1Var, function1);
    }
}
