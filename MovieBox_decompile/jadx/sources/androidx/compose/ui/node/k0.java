package androidx.compose.ui.node;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class k0 {

    private final LayoutNode f5091a;

    private final j f5092b;

    private boolean f5093c;

    private boolean f5094d;

    private final OnPositionedDispatcher f5095e;

    private final androidx.compose.runtime.collection.b f5096f;

    private long f5097g;

    private final androidx.compose.runtime.collection.b f5098h;

    private o0.b f5099i;

    private final h0 f5100j;

    public static final class a {

        private final LayoutNode f5101a;

        private final boolean f5102b;

        private final boolean f5103c;

        public a(LayoutNode layoutNode, boolean z10, boolean z11) {
            this.f5101a = layoutNode;
            this.f5102b = z10;
            this.f5103c = z11;
        }

        public final LayoutNode a() {
            return this.f5101a;
        }

        public final boolean b() {
            return this.f5103c;
        }

        public final boolean c() {
            return this.f5102b;
        }
    }

    public class b {

        public static final int[] f5104a;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            try {
                iArr[LayoutNode.LayoutState.LookaheadMeasuring.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LayoutNode.LayoutState.Idle.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f5104a = iArr;
        }
    }

    public k0(LayoutNode layoutNode) {
        this.f5091a = layoutNode;
        y0.a aVar = y0.f5152d1;
        j jVar = new j(aVar.a());
        this.f5092b = jVar;
        this.f5095e = new OnPositionedDispatcher();
        this.f5096f = new androidx.compose.runtime.collection.b(new y0.b[16], 0);
        this.f5097g = 1L;
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new a[16], 0);
        this.f5098h = bVar;
        this.f5100j = aVar.a() ? new h0(layoutNode, jVar, bVar.g()) : null;
    }

    private final void A(LayoutNode layoutNode) {
        androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                if (o(layoutNode2)) {
                    if (g0.a(layoutNode2)) {
                        B(layoutNode2, true);
                    } else {
                        A(layoutNode2);
                    }
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final void B(LayoutNode layoutNode, boolean z10) {
        o0.b bVar;
        if (layoutNode.E0()) {
            return;
        }
        if (layoutNode == this.f5091a) {
            bVar = this.f5099i;
            Intrinsics.e(bVar);
        } else {
            bVar = null;
        }
        if (z10) {
            e(layoutNode, bVar);
        } else {
            f(layoutNode, bVar);
        }
    }

    public static boolean H(k0 k0Var, LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return k0Var.G(layoutNode, z10);
    }

    private final void b() {
        androidx.compose.runtime.collection.b bVar = this.f5096f;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i10 = 0;
            do {
                ((y0.b) objArrM[i10]).f();
                i10++;
            } while (i10 < iN);
        }
        this.f5096f.h();
    }

    public static void d(k0 k0Var, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        k0Var.c(z10);
    }

    private final boolean e(LayoutNode layoutNode, o0.b bVar) {
        if (layoutNode.V() == null) {
            return false;
        }
        boolean zI0 = bVar != null ? layoutNode.I0(bVar) : LayoutNode.J0(layoutNode, null, 1, null);
        LayoutNode layoutNodeH0 = layoutNode.h0();
        if (zI0 && layoutNodeH0 != null) {
            if (layoutNodeH0.V() == null) {
                LayoutNode.h1(layoutNodeH0, false, false, false, 3, null);
            } else if (layoutNode.b0() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.d1(layoutNodeH0, false, false, false, 3, null);
            } else if (layoutNode.b0() == LayoutNode.UsageByParent.InLayoutBlock) {
                LayoutNode.b1(layoutNodeH0, false, 1, null);
            }
        }
        return zI0;
    }

    private final boolean f(LayoutNode layoutNode, o0.b bVar) {
        boolean zV0 = bVar != null ? layoutNode.V0(bVar) : LayoutNode.W0(layoutNode, null, 1, null);
        LayoutNode layoutNodeH0 = layoutNode.h0();
        if (zV0 && layoutNodeH0 != null) {
            if (layoutNode.a0() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.h1(layoutNodeH0, false, false, false, 3, null);
            } else if (layoutNode.a0() == LayoutNode.UsageByParent.InLayoutBlock) {
                LayoutNode.f1(layoutNodeH0, false, 1, null);
            }
        }
        return zV0;
    }

    private final void g() {
        if (this.f5098h.q()) {
            androidx.compose.runtime.collection.b bVar = this.f5098h;
            int iN = bVar.n();
            if (iN > 0) {
                Object[] objArrM = bVar.m();
                int i10 = 0;
                do {
                    a aVar = (a) objArrM[i10];
                    if (aVar.a().D0()) {
                        if (aVar.c()) {
                            LayoutNode.d1(aVar.a(), aVar.b(), false, false, 2, null);
                        } else {
                            LayoutNode.h1(aVar.a(), aVar.b(), false, false, 2, null);
                        }
                    }
                    i10++;
                } while (i10 < iN);
            }
            this.f5098h.h();
        }
    }

    private final void h(LayoutNode layoutNode) {
        androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                if (Intrinsics.c(layoutNode2.G0(), Boolean.TRUE) && !layoutNode2.E0()) {
                    if (this.f5092b.e(layoutNode2, true)) {
                        layoutNode2.K0();
                    }
                    h(layoutNode2);
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final void j(LayoutNode layoutNode, boolean z10) {
        androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                if ((!z10 && o(layoutNode2)) || (z10 && p(layoutNode2))) {
                    if (g0.a(layoutNode2) && !z10) {
                        if (layoutNode2.T() && this.f5092b.e(layoutNode2, true)) {
                            y(layoutNode2, true, false);
                        } else {
                            i(layoutNode2, true);
                        }
                    }
                    w(layoutNode2, z10);
                    if (!u(layoutNode2, z10)) {
                        j(layoutNode2, z10);
                    }
                }
                i10++;
            } while (i10 < iN);
        }
        w(layoutNode, z10);
    }

    private final boolean k(LayoutNode layoutNode) {
        return layoutNode.Y() && o(layoutNode);
    }

    private final boolean l(LayoutNode layoutNode) {
        return layoutNode.T() && p(layoutNode);
    }

    private final boolean o(LayoutNode layoutNode) {
        return layoutNode.a0() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode.P().r().v().k();
    }

    private final boolean p(LayoutNode layoutNode) {
        AlignmentLines alignmentLinesV;
        if (layoutNode.b0() == LayoutNode.UsageByParent.InMeasureBlock) {
            return true;
        }
        androidx.compose.ui.node.a aVarC = layoutNode.P().C();
        return (aVarC == null || (alignmentLinesV = aVarC.v()) == null || !alignmentLinesV.k()) ? false : true;
    }

    private final boolean u(LayoutNode layoutNode, boolean z10) {
        return z10 ? layoutNode.T() : layoutNode.Y();
    }

    private final void w(LayoutNode layoutNode, boolean z10) {
        if (u(layoutNode, z10) && this.f5092b.e(layoutNode, z10)) {
            y(layoutNode, z10, false);
        }
    }

    private final boolean y(LayoutNode layoutNode, boolean z10, boolean z11) {
        o0.b bVar;
        LayoutNode layoutNodeH0;
        boolean zE = false;
        if (layoutNode.E0()) {
            return false;
        }
        if (layoutNode.n() || layoutNode.F0() || k(layoutNode) || Intrinsics.c(layoutNode.G0(), Boolean.TRUE) || l(layoutNode) || layoutNode.z()) {
            if (layoutNode == this.f5091a) {
                bVar = this.f5099i;
                Intrinsics.e(bVar);
            } else {
                bVar = null;
            }
            if (z10) {
                zE = layoutNode.T() ? e(layoutNode, bVar) : false;
                if (z11 && ((zE || layoutNode.S()) && Intrinsics.c(layoutNode.G0(), Boolean.TRUE))) {
                    layoutNode.K0();
                }
            } else {
                boolean zF = layoutNode.Y() ? f(layoutNode, bVar) : false;
                if (z11 && layoutNode.Q() && (layoutNode == this.f5091a || ((layoutNodeH0 = layoutNode.h0()) != null && layoutNodeH0.n() && layoutNode.F0()))) {
                    if (layoutNode == this.f5091a) {
                        layoutNode.T0(0, 0);
                    } else {
                        layoutNode.Z0();
                    }
                    this.f5095e.d(layoutNode);
                    h0 h0Var = this.f5100j;
                    if (h0Var != null) {
                        h0Var.a();
                    }
                }
                zE = zF;
            }
            g();
        }
        return zE;
    }

    static boolean z(k0 k0Var, LayoutNode layoutNode, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            z11 = true;
        }
        return k0Var.y(layoutNode, z10, z11);
    }

    public final boolean C(LayoutNode layoutNode, boolean z10) {
        int i10 = b.f5104a[layoutNode.R().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4 && i10 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                }
            }
            if ((layoutNode.T() || layoutNode.S()) && !z10) {
                h0 h0Var = this.f5100j;
                if (h0Var == null) {
                    return false;
                }
                h0Var.a();
                return false;
            }
            layoutNode.M0();
            layoutNode.L0();
            if (layoutNode.E0()) {
                return false;
            }
            LayoutNode layoutNodeH0 = layoutNode.h0();
            if (Intrinsics.c(layoutNode.G0(), Boolean.TRUE) && ((layoutNodeH0 == null || !layoutNodeH0.T()) && (layoutNodeH0 == null || !layoutNodeH0.S()))) {
                this.f5092b.c(layoutNode, true);
            } else if (layoutNode.n() && ((layoutNodeH0 == null || !layoutNodeH0.Q()) && (layoutNodeH0 == null || !layoutNodeH0.Y()))) {
                this.f5092b.c(layoutNode, false);
            }
            return !this.f5094d;
        }
        h0 h0Var2 = this.f5100j;
        if (h0Var2 == null) {
            return false;
        }
        h0Var2.a();
        return false;
    }

    public final boolean D(LayoutNode layoutNode, boolean z10) {
        LayoutNode layoutNodeH0;
        LayoutNode layoutNodeH1;
        if (!(layoutNode.V() != null)) {
            g0.a.b("Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope");
        }
        int i10 = b.f5104a[layoutNode.R().ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 == 2 || i10 == 3 || i10 == 4) {
            this.f5098h.b(new a(layoutNode, true, z10));
            h0 h0Var = this.f5100j;
            if (h0Var == null) {
                return false;
            }
            h0Var.a();
            return false;
        }
        if (i10 != 5) {
            throw new NoWhenBranchMatchedException();
        }
        if (layoutNode.T() && !z10) {
            return false;
        }
        layoutNode.N0();
        layoutNode.O0();
        if (layoutNode.E0()) {
            return false;
        }
        if ((Intrinsics.c(layoutNode.G0(), Boolean.TRUE) || l(layoutNode)) && ((layoutNodeH0 = layoutNode.h0()) == null || !layoutNodeH0.T())) {
            this.f5092b.c(layoutNode, true);
        } else if ((layoutNode.n() || k(layoutNode)) && ((layoutNodeH1 = layoutNode.h0()) == null || !layoutNodeH1.Y())) {
            this.f5092b.c(layoutNode, false);
        }
        return !this.f5094d;
    }

    public final void E(LayoutNode layoutNode) {
        this.f5095e.d(layoutNode);
    }

    public final boolean F(LayoutNode layoutNode, boolean z10) {
        int i10 = b.f5104a[layoutNode.R().ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
            h0 h0Var = this.f5100j;
            if (h0Var != null) {
                h0Var.a();
            }
        } else {
            if (i10 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            if (!z10 && layoutNode.n() == layoutNode.F0() && (layoutNode.Y() || layoutNode.Q())) {
                h0 h0Var2 = this.f5100j;
                if (h0Var2 != null) {
                    h0Var2.a();
                }
            } else {
                layoutNode.L0();
                if (!layoutNode.E0() && layoutNode.F0()) {
                    LayoutNode layoutNodeH0 = layoutNode.h0();
                    if ((layoutNodeH0 == null || !layoutNodeH0.Q()) && (layoutNodeH0 == null || !layoutNodeH0.Y())) {
                        this.f5092b.c(layoutNode, false);
                    }
                    if (!this.f5094d) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean G(LayoutNode layoutNode, boolean z10) {
        int i10 = b.f5104a[layoutNode.R().ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3 || i10 == 4) {
                this.f5098h.b(new a(layoutNode, false, z10));
                h0 h0Var = this.f5100j;
                if (h0Var != null) {
                    h0Var.a();
                }
            } else {
                if (i10 != 5) {
                    throw new NoWhenBranchMatchedException();
                }
                if (!layoutNode.Y() || z10) {
                    layoutNode.O0();
                    if (!layoutNode.E0() && (layoutNode.n() || k(layoutNode))) {
                        LayoutNode layoutNodeH0 = layoutNode.h0();
                        if (layoutNodeH0 == null || !layoutNodeH0.Y()) {
                            this.f5092b.c(layoutNode, false);
                        }
                        if (!this.f5094d) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final void I(long j10) {
        o0.b bVar = this.f5099i;
        if (bVar == null ? false : o0.b.f(bVar.r(), j10)) {
            return;
        }
        if (this.f5093c) {
            g0.a.a("updateRootConstraints called while measuring");
        }
        this.f5099i = o0.b.a(j10);
        if (this.f5091a.V() != null) {
            this.f5091a.N0();
        }
        this.f5091a.O0();
        j jVar = this.f5092b;
        LayoutNode layoutNode = this.f5091a;
        jVar.c(layoutNode, layoutNode.V() != null);
    }

    public final void c(boolean z10) {
        if (z10) {
            this.f5095e.e(this.f5091a);
        }
        this.f5095e.a();
    }

    public final void i(LayoutNode layoutNode, boolean z10) {
        if (this.f5092b.g(z10)) {
            return;
        }
        if (!this.f5093c) {
            g0.a.b("forceMeasureTheSubtree should be executed during the measureAndLayout pass");
        }
        if (u(layoutNode, z10)) {
            g0.a.a("node not yet measured");
        }
        j(layoutNode, z10);
    }

    public final boolean m() {
        return this.f5092b.h();
    }

    public final boolean n() {
        return this.f5095e.c();
    }

    public final long q() {
        if (!this.f5093c) {
            g0.a.a("measureIteration should be only used during the measure/layout pass");
        }
        return this.f5097g;
    }

    public final boolean r(Function0 function0) {
        boolean z10;
        if (!this.f5091a.D0()) {
            g0.a.a("performMeasureAndLayout called with unattached root");
        }
        if (!this.f5091a.n()) {
            g0.a.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.f5093c) {
            g0.a.a("performMeasureAndLayout called during measure layout");
        }
        boolean z11 = false;
        if (this.f5099i != null) {
            this.f5093c = true;
            this.f5094d = true;
            try {
                if (this.f5092b.h()) {
                    j jVar = this.f5092b;
                    z10 = false;
                    while (jVar.h()) {
                        boolean zD = jVar.f5083a.d();
                        boolean z12 = !zD;
                        LayoutNode layoutNodeE = (!zD ? jVar.f5083a : jVar.f5084b).e();
                        boolean z13 = z(this, layoutNodeE, z12, false, 4, null);
                        if (layoutNodeE == this.f5091a && z13) {
                            z10 = true;
                        }
                    }
                    if (function0 != null) {
                        function0.invoke();
                    }
                } else {
                    z10 = false;
                }
                this.f5093c = false;
                this.f5094d = false;
                h0 h0Var = this.f5100j;
                if (h0Var != null) {
                    h0Var.a();
                }
                z11 = z10;
            } catch (Throwable th2) {
                this.f5093c = false;
                this.f5094d = false;
                throw th2;
            }
        }
        b();
        return z11;
    }

    public final void s(LayoutNode layoutNode, long j10) {
        if (layoutNode.E0()) {
            return;
        }
        if (Intrinsics.c(layoutNode, this.f5091a)) {
            g0.a.a("measureAndLayout called on root");
        }
        if (!this.f5091a.D0()) {
            g0.a.a("performMeasureAndLayout called with unattached root");
        }
        if (!this.f5091a.n()) {
            g0.a.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.f5093c) {
            g0.a.a("performMeasureAndLayout called during measure layout");
        }
        if (this.f5099i != null) {
            this.f5093c = true;
            this.f5094d = false;
            try {
                this.f5092b.i(layoutNode);
                if (e(layoutNode, o0.b.a(j10)) || layoutNode.S()) {
                    if (Intrinsics.c(layoutNode.G0(), Boolean.TRUE)) {
                        layoutNode.K0();
                    }
                }
                h(layoutNode);
                f(layoutNode, o0.b.a(j10));
                if (layoutNode.Q() && layoutNode.n()) {
                    layoutNode.Z0();
                    this.f5095e.d(layoutNode);
                }
                g();
                this.f5093c = false;
                this.f5094d = false;
                h0 h0Var = this.f5100j;
                if (h0Var != null) {
                    h0Var.a();
                }
            } catch (Throwable th2) {
                this.f5093c = false;
                this.f5094d = false;
                throw th2;
            }
        }
        b();
    }

    public final void t() {
        if (this.f5092b.h()) {
            if (!this.f5091a.D0()) {
                g0.a.a("performMeasureAndLayout called with unattached root");
            }
            if (!this.f5091a.n()) {
                g0.a.a("performMeasureAndLayout called with unplaced root");
            }
            if (this.f5093c) {
                g0.a.a("performMeasureAndLayout called during measure layout");
            }
            if (this.f5099i != null) {
                this.f5093c = true;
                this.f5094d = false;
                try {
                    if (!this.f5092b.g(true)) {
                        if (this.f5091a.V() != null) {
                            B(this.f5091a, true);
                        } else {
                            A(this.f5091a);
                        }
                    }
                    B(this.f5091a, false);
                    this.f5093c = false;
                    this.f5094d = false;
                    h0 h0Var = this.f5100j;
                    if (h0Var != null) {
                        h0Var.a();
                    }
                } catch (Throwable th2) {
                    this.f5093c = false;
                    this.f5094d = false;
                    throw th2;
                }
            }
        }
    }

    public final void v(LayoutNode layoutNode) {
        this.f5092b.i(layoutNode);
        this.f5095e.f(layoutNode);
    }

    public final void x(y0.b bVar) {
        this.f5096f.b(bVar);
    }
}
