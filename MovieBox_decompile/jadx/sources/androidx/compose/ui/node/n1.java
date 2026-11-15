package androidx.compose.ui.node;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class n1 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v6 */
    public static final m1 a(f fVar, Object obj) {
        q0 q0VarE0;
        int iA = s0.a(262144);
        if (!fVar.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = fVar.getNode().g1();
        LayoutNode layoutNodeM = g.m(fVar);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                while (cVarG1 != null) {
                    if ((cVarG1.e1() & iA) != 0) {
                        ?? G = cVarG1;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof m1) {
                                m1 m1Var = (m1) G;
                                if (Intrinsics.c(obj, m1Var.D())) {
                                    return m1Var;
                                }
                            } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                                androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                                int i10 = 0;
                                G = G;
                                bVar = bVar;
                                while (cVarD1 != null) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
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
                                if (i10 == 1) {
                                }
                            }
                            G = g.g(bVar);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public static final m1 b(m1 m1Var) {
        q0 q0VarE0;
        int iA = s0.a(262144);
        if (!m1Var.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = m1Var.getNode().g1();
        LayoutNode layoutNodeM = g.m(m1Var);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                while (cVarG1 != null) {
                    if ((cVarG1.e1() & iA) != 0) {
                        ?? G = cVarG1;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof m1) {
                                m1 m1Var2 = (m1) G;
                                if (Intrinsics.c(m1Var.D(), m1Var2.D()) && androidx.compose.ui.a.a(m1Var, m1Var2)) {
                                    return m1Var2;
                                }
                            } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                                androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                                int i10 = 0;
                                G = G;
                                bVar = bVar;
                                while (cVarD1 != null) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
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
                                if (i10 == 1) {
                                }
                            }
                            G = g.g(bVar);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public static final void c(f fVar, Object obj, Function1 function1) {
        q0 q0VarE0;
        int iA = s0.a(262144);
        if (!fVar.getNode().j1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarG1 = fVar.getNode().g1();
        LayoutNode layoutNodeM = g.m(fVar);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().Z0() & iA) != 0) {
                while (cVarG1 != null) {
                    if ((cVarG1.e1() & iA) != 0) {
                        ?? G = cVarG1;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof m1) {
                                m1 m1Var = (m1) G;
                                if (!(Intrinsics.c(obj, m1Var.D()) ? ((Boolean) function1.invoke(m1Var)).booleanValue() : true)) {
                                    return;
                                }
                            } else {
                                if (((G.e1() & iA) != 0) && (G instanceof i)) {
                                    androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                                    int i10 = 0;
                                    while (cVarD1 != null) {
                                        if ((cVarD1.e1() & iA) != 0) {
                                            G = G;
                                            bVar = bVar;
                                            i10++;
                                            if (i10 == 1) {
                                                G = G;
                                                bVar = bVar;
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
                                        } else {
                                            G = G;
                                            bVar = bVar;
                                            G = G;
                                            bVar = bVar;
                                        }
                                        cVarD1 = cVarD1.a1();
                                        G = G;
                                        bVar = bVar;
                                    }
                                    if (i10 == 1) {
                                        G = G;
                                        bVar = bVar;
                                    } else {
                                        G = G;
                                        bVar = bVar;
                                    }
                                }
                            }
                            G = g.g(bVar);
                        }
                    }
                    cVarG1 = cVarG1.g1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarG1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v8 */
    public static final void d(f fVar, Object obj, Function1 function1) {
        int iA = s0.a(262144);
        if (!fVar.getNode().j1()) {
            g0.a.b("visitSubtreeIf called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = fVar.getNode().a1();
        if (cVarA1 == null) {
            g.c(bVar, fVar.getNode());
        } else {
            bVar.b(cVarA1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVar = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVar.Z0() & iA) != 0) {
                androidx.compose.ui.f.c cVarA2 = cVar;
                while (true) {
                    if (cVarA2 != null) {
                        if ((cVarA2.e1() & iA) != 0) {
                            ?? G = cVarA2;
                            ?? bVar2 = 0;
                            while (G != 0) {
                                if (G instanceof m1) {
                                    m1 m1Var = (m1) G;
                                    TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = Intrinsics.c(obj, m1Var.D()) ? (TraversableNode$Companion$TraverseDescendantsAction) function1.invoke(m1Var) : TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                                    if (traversableNode$Companion$TraverseDescendantsAction != TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal) {
                                        if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal) {
                                            break;
                                        }
                                    } else {
                                        return;
                                    }
                                } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                                    androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                                    int i10 = 0;
                                    while (cVarD1 != null) {
                                        if ((cVarD1.e1() & iA) != 0) {
                                            i10++;
                                            if (i10 == 1) {
                                                G = G;
                                                bVar2 = bVar2;
                                                bVar2 = bVar2;
                                                G = cVarD1;
                                            } else {
                                                if (bVar2 == 0) {
                                                    bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                }
                                                if (G != 0) {
                                                    bVar2.b(G);
                                                    G = 0;
                                                }
                                                bVar2.b(cVarD1);
                                            }
                                        } else {
                                            G = G;
                                            bVar2 = bVar2;
                                        }
                                        cVarD1 = cVarD1.a1();
                                        G = G;
                                        bVar2 = bVar2;
                                    }
                                    if (i10 == 1) {
                                        G = G;
                                        bVar2 = bVar2;
                                    } else {
                                        G = G;
                                        bVar2 = bVar2;
                                    }
                                }
                                G = g.g(bVar2);
                            }
                        }
                        cVarA2 = cVarA2.a1();
                    }
                }
            }
            g.c(bVar, cVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r14v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.Object] */
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
    public static final void e(m1 m1Var, Function1 function1) {
        int iA = s0.a(262144);
        if (!m1Var.getNode().j1()) {
            g0.a.b("visitSubtreeIf called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = m1Var.getNode().a1();
        if (cVarA1 == null) {
            g.c(bVar, m1Var.getNode());
        } else {
            bVar.b(cVarA1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVar = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVar.Z0() & iA) != 0) {
                androidx.compose.ui.f.c cVarA2 = cVar;
                while (true) {
                    if (cVarA2 != null) {
                        if ((cVarA2.e1() & iA) != 0) {
                            ?? G = cVarA2;
                            ?? bVar2 = 0;
                            while (G != 0) {
                                if (G instanceof m1) {
                                    m1 m1Var2 = (m1) G;
                                    TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = (Intrinsics.c(m1Var.D(), m1Var2.D()) && androidx.compose.ui.a.a(m1Var, m1Var2)) ? (TraversableNode$Companion$TraverseDescendantsAction) function1.invoke(m1Var2) : TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                                    if (traversableNode$Companion$TraverseDescendantsAction != TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal) {
                                        if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal) {
                                            break;
                                        }
                                    } else {
                                        return;
                                    }
                                } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                                    androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
                                    int i10 = 0;
                                    while (cVarD1 != null) {
                                        if ((cVarD1.e1() & iA) != 0) {
                                            i10++;
                                            if (i10 == 1) {
                                                G = G;
                                                bVar2 = bVar2;
                                                bVar2 = bVar2;
                                                G = cVarD1;
                                            } else {
                                                if (bVar2 == 0) {
                                                    bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                }
                                                if (G != 0) {
                                                    bVar2.b(G);
                                                    G = 0;
                                                }
                                                bVar2.b(cVarD1);
                                            }
                                        } else {
                                            G = G;
                                            bVar2 = bVar2;
                                        }
                                        cVarD1 = cVarD1.a1();
                                        G = G;
                                        bVar2 = bVar2;
                                    }
                                    if (i10 == 1) {
                                        G = G;
                                        bVar2 = bVar2;
                                    } else {
                                        G = G;
                                        bVar2 = bVar2;
                                    }
                                }
                                G = g.g(bVar2);
                            }
                        }
                        cVarA2 = cVarA2.a1();
                    }
                }
            }
            g.c(bVar, cVar);
        }
    }
}
