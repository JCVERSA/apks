package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;

public abstract class d {

    public class a {

        public static final int[] f3938a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 2;
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
            f3938a = iArr;
        }
    }

    public static final r a(c cVar) {
        int iA = s0.a(1024);
        androidx.compose.ui.f.c node = cVar.getNode();
        androidx.compose.runtime.collection.b bVar = null;
        while (node != null) {
            if (node instanceof FocusTargetNode) {
                FocusStateImpl focusStateImplJ1 = ((FocusTargetNode) node).J1();
                int i10 = a.f3938a[focusStateImplJ1.ordinal()];
                if (i10 == 1 || i10 == 2 || i10 == 3) {
                    return focusStateImplJ1;
                }
            } else if ((node.e1() & iA) != 0 && (node instanceof androidx.compose.ui.node.i)) {
                int i11 = 0;
                for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) node).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                    if ((cVarD1.e1() & iA) != 0) {
                        i11++;
                        if (i11 == 1) {
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
                if (i11 == 1) {
                }
            }
            node = androidx.compose.ui.node.g.g(bVar);
        }
        if (!cVar.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = cVar.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar2, cVar.getNode());
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
                                FocusStateImpl focusStateImplJ2 = ((FocusTargetNode) cVarG).J1();
                                int i12 = a.f3938a[focusStateImplJ2.ordinal()];
                                if (i12 == 1 || i12 == 2 || i12 == 3) {
                                    return focusStateImplJ2;
                                }
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i13 = 0;
                                for (androidx.compose.ui.f.c cVarD2 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD2 != null; cVarD2 = cVarD2.a1()) {
                                    if ((cVarD2.e1() & iA) != 0) {
                                        i13++;
                                        if (i13 == 1) {
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
                                if (i13 == 1) {
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
        return FocusStateImpl.Inactive;
    }

    public static final void b(c cVar) {
        androidx.compose.ui.node.g.n(cVar).getFocusOwner().a(cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v5 */
    public static final void c(FocusTargetNode focusTargetNode) {
        q0 q0VarE0;
        int iA = s0.a(4096);
        int iA2 = s0.a(1024);
        androidx.compose.ui.f.c node = focusTargetNode.getNode();
        int i10 = iA | iA2;
        if (!focusTargetNode.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c node2 = focusTargetNode.getNode();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().Z0() & i10) != 0) {
                while (node2 != null) {
                    if ((node2.e1() & i10) != 0) {
                        if (node2 != node && (node2.e1() & iA2) != 0) {
                            return;
                        }
                        if ((node2.e1() & iA) != 0) {
                            ?? G = node2;
                            ?? bVar = 0;
                            while (G != 0) {
                                if (G instanceof c) {
                                    c cVar = (c) G;
                                    cVar.R0(a(cVar));
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
    }
}
