package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusTargetNode;

public abstract class t0 {

    private static final androidx.collection.k0 f5141a = androidx.collection.q0.b();

    public static final void a(androidx.compose.ui.f.c cVar) {
        if (!cVar.j1()) {
            g0.a.b("autoInvalidateInsertedNode called on unattached node");
        }
        b(cVar, -1, 1);
    }

    public static final void b(androidx.compose.ui.f.c cVar, int i10, int i11) {
        if (!(cVar instanceof i)) {
            c(cVar, i10 & cVar.e1(), i11);
            return;
        }
        i iVar = (i) cVar;
        c(cVar, iVar.E1() & i10, i11);
        int i12 = (~iVar.E1()) & i10;
        for (androidx.compose.ui.f.c cVarD1 = iVar.D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            b(cVarD1, i12, i11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void c(androidx.compose.ui.f.c cVar, int i10, int i11) {
        if (i11 != 0 || cVar.h1()) {
            if ((s0.a(2) & i10) != 0 && (cVar instanceof x)) {
                a0.b((x) cVar);
                if (i11 == 2) {
                    g.h(cVar, s0.a(2)).s2();
                }
            }
            if ((s0.a(128) & i10) != 0 && (cVar instanceof w) && i11 != 2) {
                g.m(cVar).y0();
            }
            if ((s0.a(256) & i10) != 0 && (cVar instanceof p) && i11 != 2) {
                g.m(cVar).z0();
            }
            if ((s0.a(4) & i10) != 0 && (cVar instanceof n)) {
                o.a((n) cVar);
            }
            if ((s0.a(8) & i10) != 0 && (cVar instanceof i1)) {
                j1.b((i1) cVar);
            }
            if ((s0.a(64) & i10) != 0 && (cVar instanceof a1)) {
                b1.a((a1) cVar);
            }
            if ((s0.a(1024) & i10) != 0 && (cVar instanceof FocusTargetNode) && i11 != 2) {
                androidx.compose.ui.focus.u.c((FocusTargetNode) cVar);
            }
            if ((s0.a(2048) & i10) != 0 && (cVar instanceof androidx.compose.ui.focus.m)) {
                androidx.compose.ui.focus.m mVar = (androidx.compose.ui.focus.m) cVar;
                if (k(mVar)) {
                    if (i11 == 2) {
                        j(mVar);
                    } else {
                        androidx.compose.ui.focus.n.a(mVar);
                    }
                }
            }
            if ((i10 & s0.a(4096)) == 0 || !(cVar instanceof androidx.compose.ui.focus.c)) {
                return;
            }
            androidx.compose.ui.focus.d.b((androidx.compose.ui.focus.c) cVar);
        }
    }

    public static final void d(androidx.compose.ui.f.c cVar) {
        if (!cVar.j1()) {
            g0.a.b("autoInvalidateRemovedNode called on unattached node");
        }
        b(cVar, -1, 2);
    }

    public static final void e(androidx.compose.ui.f.c cVar) {
        if (!cVar.j1()) {
            g0.a.b("autoInvalidateUpdatedNode called on unattached node");
        }
        b(cVar, -1, 0);
    }

    public static final int f(androidx.compose.ui.f.b bVar) {
        int iA = s0.a(1);
        if (bVar instanceof androidx.compose.ui.layout.o) {
            iA |= s0.a(2);
        }
        if (bVar instanceof androidx.compose.ui.draw.f) {
            iA |= s0.a(4);
        }
        if (bVar instanceof androidx.compose.ui.semantics.j) {
            iA |= s0.a(8);
        }
        if (bVar instanceof androidx.compose.ui.input.pointer.d0) {
            iA |= s0.a(16);
        }
        if ((bVar instanceof androidx.compose.ui.modifier.d) || (bVar instanceof androidx.compose.ui.modifier.j)) {
            iA |= s0.a(32);
        }
        return bVar instanceof androidx.compose.ui.layout.b0 ? iA | s0.a(256) : iA;
    }

    public static final int g(androidx.compose.ui.f.c cVar) {
        if (cVar.e1() != 0) {
            return cVar.e1();
        }
        androidx.collection.k0 k0Var = f5141a;
        Object objB = androidx.compose.ui.a.b(cVar);
        int iA = k0Var.a(objB);
        if (iA >= 0) {
            return k0Var.f2007c[iA];
        }
        int iA2 = s0.a(1);
        if (cVar instanceof x) {
            iA2 |= s0.a(2);
        }
        if (cVar instanceof n) {
            iA2 |= s0.a(4);
        }
        if (cVar instanceof i1) {
            iA2 |= s0.a(8);
        }
        if (cVar instanceof e1) {
            iA2 |= s0.a(16);
        }
        if (cVar instanceof androidx.compose.ui.modifier.h) {
            iA2 |= s0.a(32);
        }
        if (cVar instanceof a1) {
            iA2 |= s0.a(64);
        }
        if (cVar instanceof w) {
            iA2 |= s0.a(128);
        }
        if (cVar instanceof p) {
            iA2 |= s0.a(256);
        }
        if (cVar instanceof FocusTargetNode) {
            iA2 |= s0.a(1024);
        }
        if (cVar instanceof androidx.compose.ui.focus.m) {
            iA2 |= s0.a(2048);
        }
        if (cVar instanceof androidx.compose.ui.focus.c) {
            iA2 |= s0.a(4096);
        }
        if (cVar instanceof d0.e) {
            iA2 |= s0.a(8192);
        }
        if (cVar instanceof f0.a) {
            iA2 |= s0.a(16384);
        }
        if (cVar instanceof d) {
            iA2 |= s0.a(32768);
        }
        int iA3 = cVar instanceof m1 ? s0.a(262144) | iA2 : iA2;
        k0Var.r(objB, iA3);
        return iA3;
    }

    public static final int h(androidx.compose.ui.f.c cVar) {
        if (!(cVar instanceof i)) {
            return g(cVar);
        }
        i iVar = (i) cVar;
        int iE1 = iVar.E1();
        for (androidx.compose.ui.f.c cVarD1 = iVar.D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
            iE1 |= h(cVarD1);
        }
        return iE1;
    }

    public static final boolean i(int i10) {
        return (i10 & s0.a(128)) != 0;
    }

    private static final void j(androidx.compose.ui.focus.m mVar) {
        int iA = s0.a(1024);
        if (!mVar.getNode().j1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = mVar.getNode().a1();
        if (cVarA1 == null) {
            g.c(bVar, mVar.getNode());
        } else {
            bVar.b(cVarA1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVarG.Z0() & iA) == 0) {
                g.c(bVar, cVarG);
            } else {
                while (cVarG != null) {
                    if ((cVarG.e1() & iA) != 0) {
                        androidx.compose.runtime.collection.b bVar2 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                androidx.compose.ui.focus.u.c((FocusTargetNode) cVarG);
                            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof i)) {
                                int i10 = 0;
                                for (androidx.compose.ui.f.c cVarD1 = ((i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                    if ((cVarD1.e1() & iA) != 0) {
                                        i10++;
                                        if (i10 == 1) {
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
                                if (i10 == 1) {
                                }
                            }
                            cVarG = g.g(bVar2);
                        }
                        break;
                    }
                    cVarG = cVarG.a1();
                }
            }
        }
    }

    private static final boolean k(androidx.compose.ui.focus.m mVar) {
        b bVar = b.f5071a;
        bVar.b();
        mVar.r0(bVar);
        return bVar.a();
    }
}
