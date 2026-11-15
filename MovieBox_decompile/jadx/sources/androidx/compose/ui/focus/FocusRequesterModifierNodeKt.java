package androidx.compose.ui.focus;

import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function1;

public abstract class FocusRequesterModifierNodeKt {
    public static final boolean a(q qVar) {
        int iA = s0.a(1024);
        androidx.compose.ui.f.c node = qVar.getNode();
        androidx.compose.runtime.collection.b bVar = null;
        while (node != null) {
            if (node instanceof FocusTargetNode) {
                FocusTargetNode focusTargetNode = (FocusTargetNode) node;
                return focusTargetNode.H1().t() ? FocusTransactionsKt.j(focusTargetNode) : TwoDimensionalFocusSearchKt.k(focusTargetNode, b.f3928b.b(), new Function1<FocusTargetNode, Boolean>() {
                    @Override
                    public final Boolean invoke(FocusTargetNode focusTargetNode2) {
                        return Boolean.valueOf(FocusTransactionsKt.j(focusTargetNode2));
                    }
                });
            }
            if ((node.e1() & iA) != 0 && (node instanceof androidx.compose.ui.node.i)) {
                int i10 = 0;
                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) node).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                    if ((cVarD1.e1() & iA) != 0) {
                        i10++;
                        if (i10 == 1) {
                            node = cVarD1;
                        } else {
                            if (bVar == null) {
                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                            }
                            if (node != null) {
                                bVar.b(node);
                                node = null;
                            }
                            bVar.b(cVarD1);
                        }
                    }
                }
                if (i10 == 1) {
                }
            }
            node = androidx.compose.ui.node.g.g(bVar);
        }
        if (!qVar.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = qVar.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar2, qVar.getNode());
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
                                return focusTargetNode2.H1().t() ? FocusTransactionsKt.j(focusTargetNode2) : TwoDimensionalFocusSearchKt.k(focusTargetNode2, b.f3928b.b(), new Function1<FocusTargetNode, Boolean>() {
                                    @Override
                                    public final Boolean invoke(FocusTargetNode focusTargetNode3) {
                                        return Boolean.valueOf(FocusTransactionsKt.j(focusTargetNode3));
                                    }
                                });
                            }
                            if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarD2 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD2 != null; cVarD2 = cVarD2.a1()) {
                                    if ((cVarD2.e1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            cVarG = cVarD2;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarD2);
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
        return false;
    }
}
