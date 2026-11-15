package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {
    public static final Object a(FocusTargetNode focusTargetNode, int i10, Function1 function1) {
        androidx.compose.ui.f.c cVarG;
        androidx.compose.ui.layout.d dVarI1;
        int iC;
        q0 q0VarE0;
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
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
        if ((focusTargetNode2 != null && Intrinsics.c(focusTargetNode2.I1(), focusTargetNode.I1())) || (dVarI1 = focusTargetNode.I1()) == null) {
            return null;
        }
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.h())) {
            iC = androidx.compose.ui.layout.d.b.f4859a.a();
        } else if (b.l(i10, aVar.a())) {
            iC = androidx.compose.ui.layout.d.b.f4859a.d();
        } else if (b.l(i10, aVar.d())) {
            iC = androidx.compose.ui.layout.d.b.f4859a.e();
        } else if (b.l(i10, aVar.g())) {
            iC = androidx.compose.ui.layout.d.b.f4859a.f();
        } else if (b.l(i10, aVar.e())) {
            iC = androidx.compose.ui.layout.d.b.f4859a.b();
        } else {
            if (!b.l(i10, aVar.f())) {
                throw new IllegalStateException("Unsupported direction for beyond bounds layout");
            }
            iC = androidx.compose.ui.layout.d.b.f4859a.c();
        }
        return dVarI1.a(iC, function1);
    }
}
