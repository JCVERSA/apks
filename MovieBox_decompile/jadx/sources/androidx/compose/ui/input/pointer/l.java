package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.e1;
import androidx.compose.ui.node.f1;
import androidx.compose.ui.node.s0;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class l extends m {

    private final androidx.compose.ui.f.c f4697c;

    private androidx.compose.ui.layout.l f4700f;

    private o f4701g;

    private boolean f4702h;

    private final e0.b f4698d = new e0.b();

    private final androidx.collection.x f4699e = new androidx.collection.x(2);

    private boolean f4703i = true;

    private boolean f4704j = true;

    public l(androidx.compose.ui.f.c cVar) {
        this.f4697c = cVar;
    }

    private final void j() {
        this.f4699e.b();
        this.f4700f = null;
    }

    private final boolean m(o oVar, o oVar2) {
        if (oVar == null || oVar.b().size() != oVar2.b().size()) {
            return true;
        }
        int size = oVar2.b().size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!y.g.j(((w) oVar.b().get(i10)).h(), ((w) oVar2.b().get(i10)).h())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0258  */
    /* JADX WARN: Code duplicated, block: B:105:0x0266  */
    /* JADX WARN: Code duplicated, block: B:85:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:93:0x022b  */
    /* JADX WARN: Code duplicated, block: B:94:0x0230  */
    /* JADX WARN: Code duplicated, block: B:96:0x0238  */
    /* JADX WARN: Code duplicated, block: B:98:0x0248  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.ui.f$c] */
    @Override
    public boolean a(androidx.collection.x xVar, androidx.compose.ui.layout.l lVar, g gVar, boolean z10) {
        Object obj;
        boolean z11;
        boolean z12;
        int iE;
        q.a aVar;
        int iE2;
        q.a aVar2;
        int iB;
        boolean z13;
        int i10;
        boolean zA = super.a(xVar, lVar, gVar, z10);
        if (!this.f4697c.j1()) {
            return true;
        }
        ?? G = this.f4697c;
        int iA = s0.a(16);
        ?? bVar = 0;
        while (G != 0) {
            if (G instanceof e1) {
                this.f4700f = f1.a((e1) G);
            } else if ((G.e1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) G).D1();
                int i11 = 0;
                while (cVarD1 != null) {
                    if ((cVarD1.e1() & iA) != 0) {
                        i11++;
                        if (i11 == 1) {
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
                    }
                    cVarD1 = cVarD1.a1();
                    G = G;
                    bVar = bVar;
                }
                if (i11 == 1) {
                    G = G;
                    bVar = bVar;
                } else {
                    G = G;
                    bVar = bVar;
                }
            }
            G = androidx.compose.ui.node.g.g(bVar);
        }
        int iN = xVar.n();
        int i12 = 0;
        while (i12 < iN) {
            long j10 = xVar.j(i12);
            w wVar = (w) xVar.o(i12);
            if (this.f4698d.d(j10)) {
                long jK = wVar.k();
                i10 = i12;
                long jH = wVar.h();
                if (y.g.p(jK) && y.g.p(jH)) {
                    ArrayList arrayList = new ArrayList(wVar.e().size());
                    List listE = wVar.e();
                    int size = listE.size();
                    int i13 = 0;
                    while (i13 < size) {
                        e eVar = (e) listE.get(i13);
                        boolean z14 = zA;
                        long jB = eVar.b();
                        if (y.g.p(jB)) {
                            long jC = eVar.c();
                            androidx.compose.ui.layout.l lVar2 = this.f4700f;
                            Intrinsics.e(lVar2);
                            arrayList.add(new e(jC, lVar2.C(lVar, jB), eVar.a(), null));
                        }
                        i13++;
                        listE = listE;
                        size = size;
                        zA = z14;
                    }
                    z13 = zA;
                    androidx.collection.x xVar2 = this.f4699e;
                    androidx.compose.ui.layout.l lVar3 = this.f4700f;
                    Intrinsics.e(lVar3);
                    long jC2 = lVar3.C(lVar, jK);
                    androidx.compose.ui.layout.l lVar4 = this.f4700f;
                    Intrinsics.e(lVar4);
                    xVar2.k(j10, wVar.b((731 & 1) != 0 ? wVar.f4747a : 0L, (731 & 2) != 0 ? wVar.f4748b : 0L, (731 & 4) != 0 ? wVar.f4749c : lVar4.C(lVar, jH), (731 & 8) != 0 ? wVar.f4750d : false, (731 & 16) != 0 ? wVar.f4752f : 0L, (731 & 32) != 0 ? wVar.f4753g : jC2, (731 & 64) != 0 ? wVar.f4754h : false, (731 & 128) != 0 ? wVar.f4755i : 0, arrayList, (731 & 512) != 0 ? wVar.f4756j : 0L));
                } else {
                    z13 = zA;
                }
            } else {
                z13 = zA;
                i10 = i12;
            }
            i12 = i10 + 1;
            iN = iN;
            zA = z13;
        }
        boolean z15 = zA;
        if (this.f4699e.i()) {
            this.f4698d.c();
            g().h();
            return true;
        }
        for (int iF = this.f4698d.f() - 1; -1 < iF; iF--) {
            if (!xVar.d(this.f4698d.e(iF))) {
                this.f4698d.j(iF);
            }
        }
        ArrayList arrayList2 = new ArrayList(this.f4699e.n());
        int iN2 = this.f4699e.n();
        for (int i14 = 0; i14 < iN2; i14++) {
            arrayList2.add(this.f4699e.o(i14));
        }
        o oVar = new o(arrayList2, gVar);
        List listB = oVar.b();
        int size2 = listB.size();
        int i15 = 0;
        while (true) {
            if (i15 >= size2) {
                obj = null;
                break;
            }
            Object obj2 = listB.get(i15);
            if (gVar.a(((w) obj2).f())) {
                obj = obj2;
                break;
            }
            i15++;
        }
        w wVar2 = (w) obj;
        if (wVar2 != null) {
            if (z10) {
                z11 = false;
                if (!this.f4703i && (wVar2.i() || wVar2.l())) {
                    androidx.compose.ui.layout.l lVar5 = this.f4700f;
                    Intrinsics.e(lVar5);
                    z12 = true;
                    this.f4703i = !p.e(wVar2, lVar5.k());
                }
                if (this.f4703i != this.f4702h) {
                    iE2 = oVar.e();
                    aVar2 = q.f4714a;
                    if (!q.i(iE2, aVar2.c()) || q.i(oVar.e(), aVar2.a()) || q.i(oVar.e(), aVar2.b())) {
                        if (this.f4703i) {
                            iB = aVar2.a();
                        } else {
                            iB = aVar2.b();
                        }
                        oVar.f(iB);
                    } else {
                        iE = oVar.e();
                        aVar = q.f4714a;
                        if (!q.i(iE, aVar.a()) && this.f4702h && !this.f4704j) {
                            oVar.f(aVar.c());
                        } else if (q.i(oVar.e(), aVar.b()) && this.f4703i && wVar2.i()) {
                            oVar.f(aVar.c());
                        }
                    }
                } else {
                    iE = oVar.e();
                    aVar = q.f4714a;
                    if (!q.i(iE, aVar.a())) {
                        if (q.i(oVar.e(), aVar.b())) {
                            oVar.f(aVar.c());
                        }
                    } else if (q.i(oVar.e(), aVar.b())) {
                        oVar.f(aVar.c());
                    }
                }
            } else {
                z11 = false;
                this.f4703i = false;
            }
            z12 = true;
            if (this.f4703i != this.f4702h) {
                iE2 = oVar.e();
                aVar2 = q.f4714a;
                if (q.i(iE2, aVar2.c())) {
                }
                if (this.f4703i) {
                    iB = aVar2.a();
                } else {
                    iB = aVar2.b();
                }
                oVar.f(iB);
            } else {
                iE = oVar.e();
                aVar = q.f4714a;
                if (!q.i(iE, aVar.a())) {
                    if (q.i(oVar.e(), aVar.b())) {
                        oVar.f(aVar.c());
                    }
                } else if (q.i(oVar.e(), aVar.b())) {
                    oVar.f(aVar.c());
                }
            }
        } else {
            z11 = false;
            z12 = true;
        }
        boolean z16 = (z15 || !q.i(oVar.e(), q.f4714a.c()) || m(this.f4701g, oVar)) ? z12 : z11;
        this.f4701g = oVar;
        return z16;
    }

    @Override
    public void b(g gVar) {
        super.b(gVar);
        o oVar = this.f4701g;
        if (oVar == null) {
            return;
        }
        this.f4702h = this.f4703i;
        List listB = oVar.b();
        int size = listB.size();
        for (int i10 = 0; i10 < size; i10++) {
            w wVar = (w) listB.get(i10);
            boolean zI = wVar.i();
            boolean zA = gVar.a(wVar.f());
            boolean z10 = this.f4703i;
            if ((!zI && !zA) || (!zI && !z10)) {
                this.f4698d.i(wVar.f());
            }
        }
        this.f4703i = false;
        this.f4704j = q.i(oVar.e(), q.f4714a.b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override
    public void d() {
        androidx.compose.runtime.collection.b bVarG = g();
        int iN = bVarG.n();
        if (iN > 0) {
            Object[] objArrM = bVarG.m();
            int i10 = 0;
            do {
                ((l) objArrM[i10]).d();
                i10++;
            } while (i10 < iN);
        }
        ?? G = this.f4697c;
        int iA = s0.a(16);
        ?? bVar = 0;
        while (G != 0) {
            if (G instanceof e1) {
                ((e1) G).t0();
            } else if ((G.e1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) G).D1();
                int i11 = 0;
                while (cVarD1 != null) {
                    if ((cVarD1.e1() & iA) != 0) {
                        i11++;
                        if (i11 == 1) {
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
                    }
                    cVarD1 = cVarD1.a1();
                    G = G;
                    bVar = bVar;
                }
                if (i11 == 1) {
                    G = G;
                    bVar = bVar;
                } else {
                    G = G;
                    bVar = bVar;
                }
            }
            G = androidx.compose.ui.node.g.g(bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
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
    @Override
    public boolean e(g gVar) {
        androidx.compose.runtime.collection.b bVarG;
        int iN;
        boolean z10 = false;
        int i10 = 0;
        z10 = false;
        if (!this.f4699e.i() && this.f4697c.j1()) {
            o oVar = this.f4701g;
            Intrinsics.e(oVar);
            androidx.compose.ui.layout.l lVar = this.f4700f;
            Intrinsics.e(lVar);
            long jK = lVar.k();
            ?? G = this.f4697c;
            int iA = s0.a(16);
            ?? bVar = 0;
            while (G != 0) {
                if (G instanceof e1) {
                    ((e1) G).M(oVar, PointerEventPass.Final, jK);
                } else if ((G.e1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                    androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) G).D1();
                    int i11 = 0;
                    while (cVarD1 != null) {
                        if ((cVarD1.e1() & iA) != 0) {
                            i11++;
                            if (i11 == 1) {
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
                        }
                        cVarD1 = cVarD1.a1();
                        G = G;
                        bVar = bVar;
                    }
                    if (i11 == 1) {
                        G = G;
                        bVar = bVar;
                    } else {
                        G = G;
                        bVar = bVar;
                    }
                }
                G = androidx.compose.ui.node.g.g(bVar);
            }
            if (this.f4697c.j1() && (iN = (bVarG = g()).n()) > 0) {
                Object[] objArrM = bVarG.m();
                do {
                    ((l) objArrM[i10]).e(gVar);
                    i10++;
                } while (i10 < iN);
            }
            z10 = true;
        }
        b(gVar);
        j();
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v3, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r14v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r14v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override
    public boolean f(androidx.collection.x xVar, androidx.compose.ui.layout.l lVar, g gVar, boolean z10) {
        androidx.compose.runtime.collection.b bVarG;
        int iN;
        if (this.f4699e.i() || !this.f4697c.j1()) {
            return false;
        }
        o oVar = this.f4701g;
        Intrinsics.e(oVar);
        androidx.compose.ui.layout.l lVar2 = this.f4700f;
        Intrinsics.e(lVar2);
        long jK = lVar2.k();
        ?? G = this.f4697c;
        int iA = s0.a(16);
        ?? bVar = 0;
        while (G != 0) {
            if (G instanceof e1) {
                ((e1) G).M(oVar, PointerEventPass.Initial, jK);
            } else if ((G.e1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) G).D1();
                int i10 = 0;
                while (cVarD1 != null) {
                    if ((cVarD1.e1() & iA) != 0) {
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
            G = androidx.compose.ui.node.g.g(bVar);
        }
        if (this.f4697c.j1() && (iN = (bVarG = g()).n()) > 0) {
            Object[] objArrM = bVarG.m();
            int i11 = 0;
            do {
                l lVar3 = (l) objArrM[i11];
                androidx.collection.x xVar2 = this.f4699e;
                androidx.compose.ui.layout.l lVar4 = this.f4700f;
                Intrinsics.e(lVar4);
                lVar3.f(xVar2, lVar4, gVar, z10);
                i11++;
            } while (i11 < iN);
        }
        if (this.f4697c.j1()) {
            ?? G2 = this.f4697c;
            int iA2 = s0.a(16);
            ?? bVar2 = 0;
            while (G2 != 0) {
                if (G2 instanceof e1) {
                    ((e1) G2).M(oVar, PointerEventPass.Main, jK);
                } else if ((G2.e1() & iA2) != 0 && (G2 instanceof androidx.compose.ui.node.i)) {
                    androidx.compose.ui.f.c cVarD2 = ((androidx.compose.ui.node.i) G2).D1();
                    int i12 = 0;
                    while (cVarD2 != null) {
                        if ((cVarD2.e1() & iA2) != 0) {
                            i12++;
                            if (i12 == 1) {
                                bVar2 = bVar2;
                                G2 = G2;
                                bVar2 = bVar2;
                                G2 = cVarD2;
                            } else {
                                if (bVar2 == 0) {
                                    bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                }
                                if (G2 != 0) {
                                    bVar2.b(G2);
                                    G2 = 0;
                                }
                                bVar2.b(cVarD2);
                            }
                        } else {
                            bVar2 = bVar2;
                            G2 = G2;
                        }
                        cVarD2 = cVarD2.a1();
                        bVar2 = bVar2;
                        G2 = G2;
                    }
                    if (i12 == 1) {
                        bVar2 = bVar2;
                        G2 = G2;
                    } else {
                        bVar2 = bVar2;
                        G2 = G2;
                    }
                }
                G2 = androidx.compose.ui.node.g.g(bVar2);
            }
        }
        return true;
    }

    @Override
    public void i(long j10, androidx.collection.l0 l0Var) {
        if (this.f4698d.d(j10) && !l0Var.a(this)) {
            this.f4698d.h(j10);
            this.f4699e.l(j10);
        }
        androidx.compose.runtime.collection.b bVarG = g();
        int iN = bVarG.n();
        if (iN > 0) {
            Object[] objArrM = bVarG.m();
            int i10 = 0;
            do {
                ((l) objArrM[i10]).i(j10, l0Var);
                i10++;
            } while (i10 < iN);
        }
    }

    public final androidx.compose.ui.f.c k() {
        return this.f4697c;
    }

    public final e0.b l() {
        return this.f4698d;
    }

    public final void n() {
        this.f4703i = true;
    }

    public String toString() {
        return "Node(pointerInputFilter=" + this.f4697c + ", children=" + g() + ", pointerIds=" + this.f4698d + ')';
    }
}
