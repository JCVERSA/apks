package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.LayoutNode;

public final class a0 {

    private final LayoutNode f4665a;

    private final f f4666b;

    private final x f4667c = new x();

    private final androidx.compose.ui.node.q f4668d = new androidx.compose.ui.node.q();

    private boolean f4669e;

    public a0(LayoutNode layoutNode) {
        this.f4665a = layoutNode;
        this.f4666b = new f(layoutNode.o());
    }

    public final void a() {
        this.f4666b.b();
    }

    public final int b(y yVar, i0 i0Var, boolean z10) {
        int i10;
        boolean z11;
        if (this.f4669e) {
            return b0.a(false, false);
        }
        boolean z12 = true;
        try {
            this.f4669e = true;
            g gVarB = this.f4667c.b(yVar, i0Var);
            int iN = gVarB.b().n();
            while (true) {
                if (i10 >= iN) {
                    z11 = true;
                    break;
                }
                w wVar = (w) gVarB.b().o(i10);
                i10 = (wVar.i() || wVar.l()) ? 0 : i10 + 1;
                z11 = false;
                break;
            }
            int iN2 = gVarB.b().n();
            for (int i11 = 0; i11 < iN2; i11++) {
                w wVar2 = (w) gVarB.b().o(i11);
                if (z11 || p.b(wVar2)) {
                    LayoutNode.r0(this.f4665a, wVar2.h(), this.f4668d, h0.g(wVar2.n(), h0.f4689a.d()), false, 8, null);
                    if (!this.f4668d.isEmpty()) {
                        this.f4666b.a(wVar2.f(), this.f4668d, p.b(wVar2));
                        this.f4668d.clear();
                    }
                }
            }
            this.f4666b.e();
            boolean zC = this.f4666b.c(gVarB, z10);
            if (gVarB.d()) {
                z12 = false;
                break;
            }
            int iN3 = gVarB.b().n();
            int i12 = 0;
            while (true) {
                if (i12 >= iN3) {
                    z12 = false;
                    break;
                }
                w wVar3 = (w) gVarB.b().o(i12);
                if (p.j(wVar3) && wVar3.p()) {
                    break;
                }
                i12++;
            }
            return b0.a(zC, z12);
        } finally {
            this.f4669e = false;
        }
    }

    public final void c() {
        if (this.f4669e) {
            return;
        }
        this.f4667c.a();
        this.f4666b.d();
    }
}
