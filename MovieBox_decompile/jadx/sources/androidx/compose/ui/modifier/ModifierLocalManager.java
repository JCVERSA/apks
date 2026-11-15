package androidx.compose.ui.modifier;

import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.y0;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

public final class ModifierLocalManager {

    private final y0 f4889a;

    private final androidx.compose.runtime.collection.b f4890b = new androidx.compose.runtime.collection.b(new BackwardsCompatNode[16], 0);

    private final androidx.compose.runtime.collection.b f4891c = new androidx.compose.runtime.collection.b(new c[16], 0);

    private final androidx.compose.runtime.collection.b f4892d = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);

    private final androidx.compose.runtime.collection.b f4893e = new androidx.compose.runtime.collection.b(new c[16], 0);

    private boolean f4894f;

    public ModifierLocalManager(y0 y0Var) {
        this.f4889a = y0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
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
    /* JADX WARN: Type inference failed for: r9v9 */
    private final void c(androidx.compose.ui.f.c cVar, c cVar2, Set set) {
        int iA = s0.a(32);
        if (!cVar.getNode().j1()) {
            g0.a.b("visitSubtreeIf called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarA1 = cVar.getNode().a1();
        if (cVarA1 == null) {
            androidx.compose.ui.node.g.c(bVar, cVar.getNode());
        } else {
            bVar.b(cVarA1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVar3 = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVar3.Z0() & iA) != 0) {
                androidx.compose.ui.f.c cVarA2 = cVar3;
                while (true) {
                    if (cVarA2 != null) {
                        if ((cVarA2.e1() & iA) != 0) {
                            ?? G = cVarA2;
                            ?? bVar2 = 0;
                            while (G != 0) {
                                if (G instanceof h) {
                                    h hVar = (h) G;
                                    if (hVar instanceof BackwardsCompatNode) {
                                        BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) hVar;
                                        if ((backwardsCompatNode.C1() instanceof d) && backwardsCompatNode.D1().contains(cVar2)) {
                                            set.add(hVar);
                                        }
                                    }
                                    if (hVar.V().a(cVar2)) {
                                        break;
                                    }
                                } else if ((G.e1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                                    androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) G).D1();
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
                                G = androidx.compose.ui.node.g.g(bVar2);
                            }
                        }
                        cVarA2 = cVarA2.a1();
                    }
                }
            }
            androidx.compose.ui.node.g.c(bVar, cVar3);
        }
    }

    public final void a(BackwardsCompatNode backwardsCompatNode, c cVar) {
        this.f4890b.b(backwardsCompatNode);
        this.f4891c.b(cVar);
        b();
    }

    public final void b() {
        if (this.f4894f) {
            return;
        }
        this.f4894f = true;
        this.f4889a.registerOnEndApplyChangesListener(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m120invoke();
                return Unit.f64096a;
            }

            public final void m120invoke() {
                this.this$0.e();
            }
        });
    }

    public final void d(BackwardsCompatNode backwardsCompatNode, c cVar) {
        this.f4892d.b(androidx.compose.ui.node.g.m(backwardsCompatNode));
        this.f4893e.b(cVar);
        b();
    }

    public final void e() {
        int i10 = 0;
        this.f4894f = false;
        HashSet hashSet = new HashSet();
        androidx.compose.runtime.collection.b bVar = this.f4892d;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                c cVar = (c) this.f4893e.m()[i11];
                if (layoutNode.e0().k().j1()) {
                    c(layoutNode.e0().k(), cVar, hashSet);
                }
                i11++;
            } while (i11 < iN);
        }
        this.f4892d.h();
        this.f4893e.h();
        androidx.compose.runtime.collection.b bVar2 = this.f4890b;
        int iN2 = bVar2.n();
        if (iN2 > 0) {
            Object[] objArrM2 = bVar2.m();
            do {
                BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) objArrM2[i10];
                c cVar2 = (c) this.f4891c.m()[i10];
                if (backwardsCompatNode.j1()) {
                    c(backwardsCompatNode, cVar2, hashSet);
                }
                i10++;
            } while (i10 < iN2);
        }
        this.f4890b.h();
        this.f4891c.h();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((BackwardsCompatNode) it.next()).I1();
        }
    }

    public final void f(BackwardsCompatNode backwardsCompatNode, c cVar) {
        this.f4890b.b(backwardsCompatNode);
        this.f4891c.b(cVar);
        b();
    }
}
