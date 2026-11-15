package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class LayoutNodeLayoutDelegate {

    private final LayoutNode f4958a;

    private boolean f4959b;

    private boolean f4961d;

    private boolean f4962e;

    private boolean f4963f;

    private boolean f4964g;

    private boolean f4965h;

    private boolean f4966i;

    private int f4967j;

    private int f4968k;

    private boolean f4969l;

    private boolean f4970m;

    private int f4971n;

    private boolean f4972o;

    private boolean f4973p;

    private int f4974q;

    private LookaheadPassDelegate f4976s;

    private LayoutNode.LayoutState f4960c = LayoutNode.LayoutState.Idle;

    private final MeasurePassDelegate f4975r = new MeasurePassDelegate();

    private long f4977t = o0.c.b(0, 0, 0, 0, 15, null);

    private final Function0 f4978u = new Function0<Unit>() {
        {
            super(0);
        }

        @Override
        public Object invoke() {
            m130invoke();
            return Unit.f64096a;
        }

        public final void m130invoke() {
            this.this$0.K().P(this.this$0.f4977t);
        }
    };

    public final class LookaheadPassDelegate extends androidx.compose.ui.layout.g0 implements androidx.compose.ui.layout.s, androidx.compose.ui.node.a, m0 {

        private boolean f4979f;

        private boolean f4983j;

        private boolean f4984k;

        private boolean f4985l;

        private o0.b f4986m;

        private float f4988o;

        private Function1 f4989p;

        private GraphicsLayer f4990q;

        private boolean f4991r;

        private boolean f4995v;

        private boolean f4998y;

        private boolean f4999z;

        private int f4980g = Integer.MAX_VALUE;

        private int f4981h = Integer.MAX_VALUE;

        private LayoutNode.UsageByParent f4982i = LayoutNode.UsageByParent.NotUsed;

        private long f4987n = o0.p.f67416b.a();

        private final AlignmentLines f4992s = new i0(this);

        private final androidx.compose.runtime.collection.b f4993t = new androidx.compose.runtime.collection.b(new LookaheadPassDelegate[16], 0);

        private boolean f4994u = true;

        private boolean f4996w = true;

        private Object f4997x = W0().G();

        public class a {

            public static final int[] f5000a;

            public static final int[] f5001b;

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
                    iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                f5000a = iArr;
                int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
                try {
                    iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
                } catch (NoSuchFieldError unused6) {
                }
                f5001b = iArr2;
            }
        }

        public LookaheadPassDelegate() {
        }

        public final void O0() {
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LookaheadPassDelegate lookaheadPassDelegateH = ((LayoutNode) objArrM[i10]).P().H();
                    Intrinsics.e(lookaheadPassDelegateH);
                    int i11 = lookaheadPassDelegateH.f4980g;
                    int i12 = lookaheadPassDelegateH.f4981h;
                    if (i11 != i12 && i12 == Integer.MAX_VALUE) {
                        lookaheadPassDelegateH.d1();
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        public final void Q0() {
            int i10 = 0;
            LayoutNodeLayoutDelegate.this.f4967j = 0;
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                do {
                    LookaheadPassDelegate lookaheadPassDelegateH = ((LayoutNode) objArrM[i10]).P().H();
                    Intrinsics.e(lookaheadPassDelegateH);
                    lookaheadPassDelegateH.f4980g = lookaheadPassDelegateH.f4981h;
                    lookaheadPassDelegateH.f4981h = Integer.MAX_VALUE;
                    if (lookaheadPassDelegateH.f4982i == LayoutNode.UsageByParent.InLayoutBlock) {
                        lookaheadPassDelegateH.f4982i = LayoutNode.UsageByParent.NotUsed;
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        private final void c1() {
            boolean zN = n();
            o1(true);
            if (!zN && LayoutNodeLayoutDelegate.this.G()) {
                LayoutNode.d1(LayoutNodeLayoutDelegate.this.f4958a, true, false, false, 6, null);
            }
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                    LookaheadPassDelegate lookaheadPassDelegateU = layoutNode.U();
                    if (lookaheadPassDelegateU == null) {
                        throw new IllegalArgumentException("Error: Child node's lookahead pass delegate cannot be null when in a lookahead scope.");
                    }
                    if (lookaheadPassDelegateU.f4981h != Integer.MAX_VALUE) {
                        lookaheadPassDelegateU.c1();
                        layoutNode.i1(layoutNode);
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        private final void d1() {
            if (n()) {
                int i10 = 0;
                o1(false);
                androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
                int iN = bVarP0.n();
                if (iN > 0) {
                    Object[] objArrM = bVarP0.m();
                    do {
                        LookaheadPassDelegate lookaheadPassDelegateH = ((LayoutNode) objArrM[i10]).P().H();
                        Intrinsics.e(lookaheadPassDelegateH);
                        lookaheadPassDelegateH.d1();
                        i10++;
                    } while (i10 < iN);
                }
            }
        }

        private final void f1() {
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                    if (layoutNode2.T() && layoutNode2.b0() == LayoutNode.UsageByParent.InMeasureBlock) {
                        LookaheadPassDelegate lookaheadPassDelegateH = layoutNode2.P().H();
                        Intrinsics.e(lookaheadPassDelegateH);
                        o0.b bVarZ = layoutNode2.P().z();
                        Intrinsics.e(bVarZ);
                        if (lookaheadPassDelegateH.j1(bVarZ.r())) {
                            LayoutNode.d1(layoutNodeLayoutDelegate.f4958a, false, false, false, 7, null);
                        }
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        private final void i1(final long j10, float f10, Function1 function1, GraphicsLayer graphicsLayer) {
            if (LayoutNodeLayoutDelegate.this.f4958a.E0()) {
                g0.a.a("place is called on a deactivated node");
            }
            LayoutNodeLayoutDelegate.this.f4960c = LayoutNode.LayoutState.LookaheadLayingOut;
            this.f4984k = true;
            this.f4999z = false;
            if (!o0.p.g(j10, this.f4987n)) {
                if (LayoutNodeLayoutDelegate.this.D() || LayoutNodeLayoutDelegate.this.E()) {
                    LayoutNodeLayoutDelegate.this.f4965h = true;
                }
                e1();
            }
            final y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f4958a);
            if (LayoutNodeLayoutDelegate.this.F() || !n()) {
                LayoutNodeLayoutDelegate.this.a0(false);
                v().r(false);
                OwnerSnapshotObserver snapshotObserver = y0VarB.getSnapshotObserver();
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
                final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
                OwnerSnapshotObserver.d(snapshotObserver, layoutNode, false, new Function0<Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m126invoke();
                        return Unit.f64096a;
                    }

                    public final void m126invoke() {
                        j0 j0VarT1;
                        androidx.compose.ui.layout.g0.a aVarC1 = null;
                        if (g0.a(layoutNodeLayoutDelegate.f4958a)) {
                            NodeCoordinator nodeCoordinatorZ1 = layoutNodeLayoutDelegate.K().Z1();
                            if (nodeCoordinatorZ1 != null) {
                                aVarC1 = nodeCoordinatorZ1.c1();
                            }
                        } else {
                            NodeCoordinator nodeCoordinatorZ2 = layoutNodeLayoutDelegate.K().Z1();
                            if (nodeCoordinatorZ2 != null && (j0VarT1 = nodeCoordinatorZ2.T1()) != null) {
                                aVarC1 = j0VarT1.c1();
                            }
                        }
                        if (aVarC1 == null) {
                            aVarC1 = y0VarB.getPlacementScope();
                        }
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNodeLayoutDelegate;
                        long j11 = j10;
                        j0 j0VarT2 = layoutNodeLayoutDelegate2.K().T1();
                        Intrinsics.e(j0VarT2);
                        androidx.compose.ui.layout.g0.a.j(aVarC1, j0VarT2, j11, 0.0f, 2, null);
                    }
                }, 2, null);
            } else {
                j0 j0VarT1 = LayoutNodeLayoutDelegate.this.K().T1();
                Intrinsics.e(j0VarT1);
                j0VarT1.y1(j10);
                h1();
            }
            this.f4987n = j10;
            this.f4988o = f10;
            this.f4989p = function1;
            this.f4990q = graphicsLayer;
            LayoutNodeLayoutDelegate.this.f4960c = LayoutNode.LayoutState.Idle;
        }

        private final void p1(LayoutNode layoutNode) {
            LayoutNode.UsageByParent usageByParent;
            LayoutNode layoutNodeH0 = layoutNode.h0();
            if (layoutNodeH0 == null) {
                this.f4982i = LayoutNode.UsageByParent.NotUsed;
                return;
            }
            if (!(this.f4982i == LayoutNode.UsageByParent.NotUsed || layoutNode.B())) {
                g0.a.b("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int i10 = a.f5000a[layoutNodeH0.R().ordinal()];
            if (i10 == 1 || i10 == 2) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (i10 != 3 && i10 != 4) {
                    throw new IllegalStateException("Measurable could be only measured from the parent's measure or layout block. Parents state is " + layoutNodeH0.R());
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.f4982i = usageByParent;
        }

        @Override
        public androidx.compose.ui.node.a D() {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            if (layoutNodeH0 == null || (layoutNodeLayoutDelegateP = layoutNodeH0.P()) == null) {
                return null;
            }
            return layoutNodeLayoutDelegateP.C();
        }

        @Override
        public Object G() {
            return this.f4997x;
        }

        @Override
        public void I() {
            this.f4995v = true;
            v().o();
            if (LayoutNodeLayoutDelegate.this.F()) {
                f1();
            }
            final j0 j0VarT1 = M().T1();
            Intrinsics.e(j0VarT1);
            if (LayoutNodeLayoutDelegate.this.f4966i || (!this.f4983j && !j0VarT1.i1() && LayoutNodeLayoutDelegate.this.F())) {
                LayoutNodeLayoutDelegate.this.f4965h = false;
                LayoutNode.LayoutState layoutStateB = LayoutNodeLayoutDelegate.this.B();
                LayoutNodeLayoutDelegate.this.f4960c = LayoutNode.LayoutState.LookaheadLayingOut;
                y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f4958a);
                LayoutNodeLayoutDelegate.this.b0(false);
                OwnerSnapshotObserver snapshotObserver = y0VarB.getSnapshotObserver();
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
                final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
                OwnerSnapshotObserver.f(snapshotObserver, layoutNode, false, new Function0<Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m125invoke();
                        return Unit.f64096a;
                    }

                    public final void m125invoke() {
                        this.this$0.Q0();
                        this.this$0.U(new Function1<a, Unit>() {
                            @Override
                            public Object invoke(Object obj) {
                                invoke((a) obj);
                                return Unit.f64096a;
                            }

                            public final void invoke(a aVar) {
                                aVar.v().t(false);
                            }
                        });
                        j0 j0VarT2 = this.this$0.M().T1();
                        if (j0VarT2 != null) {
                            boolean zI1 = j0VarT2.i1();
                            List listE = layoutNodeLayoutDelegate.f4958a.E();
                            int size = listE.size();
                            for (int i10 = 0; i10 < size; i10++) {
                                j0 j0VarT3 = ((LayoutNode) listE.get(i10)).f0().T1();
                                if (j0VarT3 != null) {
                                    j0VarT3.m1(zI1);
                                }
                            }
                        }
                        j0VarT1.a1().w();
                        j0 j0VarT4 = this.this$0.M().T1();
                        if (j0VarT4 != null) {
                            j0VarT4.i1();
                            List listE2 = layoutNodeLayoutDelegate.f4958a.E();
                            int size2 = listE2.size();
                            for (int i11 = 0; i11 < size2; i11++) {
                                j0 j0VarT5 = ((LayoutNode) listE2.get(i11)).f0().T1();
                                if (j0VarT5 != null) {
                                    j0VarT5.m1(false);
                                }
                            }
                        }
                        this.this$0.O0();
                        this.this$0.U(new Function1<a, Unit>() {
                            @Override
                            public Object invoke(Object obj) {
                                invoke((a) obj);
                                return Unit.f64096a;
                            }

                            public final void invoke(a aVar) {
                                aVar.v().q(aVar.v().l());
                            }
                        });
                    }
                }, 2, null);
                LayoutNodeLayoutDelegate.this.f4960c = layoutStateB;
                if (LayoutNodeLayoutDelegate.this.E() && j0VarT1.i1()) {
                    requestLayout();
                }
                LayoutNodeLayoutDelegate.this.f4966i = false;
            }
            if (v().l()) {
                v().q(true);
            }
            if (v().g() && v().k()) {
                v().n();
            }
            this.f4995v = false;
        }

        @Override
        public NodeCoordinator M() {
            return LayoutNodeLayoutDelegate.this.f4958a.M();
        }

        /* JADX WARN: Code duplicated, block: B:13:0x002b  */
        @Override
        public androidx.compose.ui.layout.g0 P(long j10) {
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            if ((layoutNodeH0 != null ? layoutNodeH0.R() : null) == LayoutNode.LayoutState.LookaheadMeasuring) {
                LayoutNodeLayoutDelegate.this.f4959b = false;
            } else {
                LayoutNode layoutNodeH1 = LayoutNodeLayoutDelegate.this.f4958a.h0();
                if ((layoutNodeH1 != null ? layoutNodeH1.R() : null) == LayoutNode.LayoutState.LookaheadLayingOut) {
                    LayoutNodeLayoutDelegate.this.f4959b = false;
                }
            }
            p1(LayoutNodeLayoutDelegate.this.f4958a);
            if (LayoutNodeLayoutDelegate.this.f4958a.O() == LayoutNode.UsageByParent.NotUsed) {
                LayoutNodeLayoutDelegate.this.f4958a.s();
            }
            j1(j10);
            return this;
        }

        public final List R0() {
            LayoutNodeLayoutDelegate.this.f4958a.E();
            if (!this.f4994u) {
                return this.f4993t.g();
            }
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
            androidx.compose.runtime.collection.b bVar = this.f4993t;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                    if (bVar.n() <= i10) {
                        LookaheadPassDelegate lookaheadPassDelegateH = layoutNode2.P().H();
                        Intrinsics.e(lookaheadPassDelegateH);
                        bVar.b(lookaheadPassDelegateH);
                    } else {
                        LookaheadPassDelegate lookaheadPassDelegateH2 = layoutNode2.P().H();
                        Intrinsics.e(lookaheadPassDelegateH2);
                        bVar.y(i10, lookaheadPassDelegateH2);
                    }
                    i10++;
                } while (i10 < iN);
            }
            bVar.w(layoutNode.E().size(), bVar.n());
            this.f4994u = false;
            return this.f4993t.g();
        }

        public final o0.b S0() {
            return this.f4986m;
        }

        @Override
        public void U(Function1 function1) {
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    androidx.compose.ui.node.a aVarC = ((LayoutNode) objArrM[i10]).P().C();
                    Intrinsics.e(aVarC);
                    function1.invoke(aVarC);
                    i10++;
                } while (i10 < iN);
            }
        }

        @Override
        public void V(boolean z10) {
            j0 j0VarT1;
            j0 j0VarT2 = LayoutNodeLayoutDelegate.this.K().T1();
            if (!Intrinsics.c(Boolean.valueOf(z10), j0VarT2 != null ? Boolean.valueOf(j0VarT2.h1()) : null) && (j0VarT1 = LayoutNodeLayoutDelegate.this.K().T1()) != null) {
                j0VarT1.V(z10);
            }
            this.f4998y = z10;
        }

        public final boolean V0() {
            return this.f4995v;
        }

        public final MeasurePassDelegate W0() {
            return LayoutNodeLayoutDelegate.this.I();
        }

        public final LayoutNode.UsageByParent Y0() {
            return this.f4982i;
        }

        @Override
        public void Z() {
            LayoutNode.d1(LayoutNodeLayoutDelegate.this.f4958a, false, false, false, 7, null);
        }

        public final boolean Z0() {
            return this.f4984k;
        }

        public final void a1(boolean z10) {
            LayoutNode layoutNode;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            LayoutNode.UsageByParent usageByParentO = LayoutNodeLayoutDelegate.this.f4958a.O();
            if (layoutNodeH0 == null || usageByParentO == LayoutNode.UsageByParent.NotUsed) {
                return;
            }
            do {
                layoutNode = layoutNodeH0;
                if (layoutNode.O() != usageByParentO) {
                    break;
                } else {
                    layoutNodeH0 = layoutNode.h0();
                }
            } while (layoutNodeH0 != null);
            int i10 = a.f5001b[usageByParentO.ordinal()];
            if (i10 == 1) {
                if (layoutNode.V() != null) {
                    LayoutNode.d1(layoutNode, z10, false, false, 6, null);
                    return;
                } else {
                    LayoutNode.h1(layoutNode, z10, false, false, 6, null);
                    return;
                }
            }
            if (i10 != 2) {
                throw new IllegalStateException("Intrinsics isn't used by the parent");
            }
            if (layoutNode.V() != null) {
                layoutNode.a1(z10);
            } else {
                layoutNode.e1(z10);
            }
        }

        public final void b1() {
            this.f4996w = true;
        }

        public final void e1() {
            androidx.compose.runtime.collection.b bVarP0;
            int iN;
            if (LayoutNodeLayoutDelegate.this.t() <= 0 || (iN = (bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0()).n()) <= 0) {
                return;
            }
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNode.P();
                if ((layoutNodeLayoutDelegateP.E() || layoutNodeLayoutDelegateP.D()) && !layoutNodeLayoutDelegateP.F()) {
                    LayoutNode.b1(layoutNode, false, 1, null);
                }
                LookaheadPassDelegate lookaheadPassDelegateH = layoutNodeLayoutDelegateP.H();
                if (lookaheadPassDelegateH != null) {
                    lookaheadPassDelegateH.e1();
                }
                i10++;
            } while (i10 < iN);
        }

        public final void g1() {
            this.f4981h = Integer.MAX_VALUE;
            this.f4980g = Integer.MAX_VALUE;
            o1(false);
        }

        public final void h1() {
            this.f4999z = true;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            if (!n()) {
                c1();
                if (this.f4979f && layoutNodeH0 != null) {
                    LayoutNode.b1(layoutNodeH0, false, 1, null);
                }
            }
            if (layoutNodeH0 == null) {
                this.f4981h = 0;
            } else if (!this.f4979f && (layoutNodeH0.R() == LayoutNode.LayoutState.LayingOut || layoutNodeH0.R() == LayoutNode.LayoutState.LookaheadLayingOut)) {
                if (!(this.f4981h == Integer.MAX_VALUE)) {
                    g0.a.b("Place was called on a node which was placed already");
                }
                this.f4981h = layoutNodeH0.P().f4967j;
                layoutNodeH0.P().f4967j++;
            }
            I();
        }

        public final boolean j1(long j10) {
            if (LayoutNodeLayoutDelegate.this.f4958a.E0()) {
                g0.a.a("measure is called on a deactivated node");
            }
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            LayoutNodeLayoutDelegate.this.f4958a.l1(LayoutNodeLayoutDelegate.this.f4958a.B() || (layoutNodeH0 != null && layoutNodeH0.B()));
            if (!LayoutNodeLayoutDelegate.this.f4958a.T()) {
                o0.b bVar = this.f4986m;
                if (bVar == null ? false : o0.b.f(bVar.r(), j10)) {
                    y0 y0VarG0 = LayoutNodeLayoutDelegate.this.f4958a.g0();
                    if (y0VarG0 != null) {
                        y0VarG0.forceMeasureTheSubtree(LayoutNodeLayoutDelegate.this.f4958a, true);
                    }
                    LayoutNodeLayoutDelegate.this.f4958a.k1();
                    return false;
                }
            }
            this.f4986m = o0.b.a(j10);
            E0(j10);
            v().s(false);
            U(new Function1<androidx.compose.ui.node.a, Unit>() {
                @Override
                public Object invoke(Object obj) {
                    invoke((a) obj);
                    return Unit.f64096a;
                }

                public final void invoke(a aVar) {
                    aVar.v().u(false);
                }
            });
            long jR0 = this.f4985l ? r0() : o0.u.a(Integer.MIN_VALUE, Integer.MIN_VALUE);
            this.f4985l = true;
            j0 j0VarT1 = LayoutNodeLayoutDelegate.this.K().T1();
            if (!(j0VarT1 != null)) {
                g0.a.b("Lookahead result from lookaheadRemeasure cannot be null");
            }
            LayoutNodeLayoutDelegate.this.T(j10);
            A0(o0.u.a(j0VarT1.u0(), j0VarT1.l0()));
            return (o0.t.g(jR0) == j0VarT1.u0() && o0.t.f(jR0) == j0VarT1.l0()) ? false : true;
        }

        public final void k1() {
            LayoutNode layoutNodeH0;
            try {
                this.f4979f = true;
                if (!this.f4984k) {
                    g0.a.b("replace() called on item that was not placed");
                }
                this.f4999z = false;
                boolean zN = n();
                i1(this.f4987n, 0.0f, this.f4989p, this.f4990q);
                if (zN && !this.f4999z && (layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0()) != null) {
                    LayoutNode.b1(layoutNodeH0, false, 1, null);
                }
            } finally {
                this.f4979f = false;
            }
        }

        public final void l1(boolean z10) {
            this.f4994u = z10;
        }

        public final void m1(LayoutNode.UsageByParent usageByParent) {
            this.f4982i = usageByParent;
        }

        @Override
        public boolean n() {
            return this.f4991r;
        }

        public final void n1(int i10) {
            this.f4981h = i10;
        }

        public void o1(boolean z10) {
            this.f4991r = z10;
        }

        public final boolean q1() {
            if (G() == null) {
                j0 j0VarT1 = LayoutNodeLayoutDelegate.this.K().T1();
                Intrinsics.e(j0VarT1);
                if (j0VarT1.G() == null) {
                    return false;
                }
            }
            if (!this.f4996w) {
                return false;
            }
            this.f4996w = false;
            j0 j0VarT2 = LayoutNodeLayoutDelegate.this.K().T1();
            Intrinsics.e(j0VarT2);
            this.f4997x = j0VarT2.G();
            return true;
        }

        @Override
        public void requestLayout() {
            LayoutNode.b1(LayoutNodeLayoutDelegate.this.f4958a, false, 1, null);
        }

        @Override
        public AlignmentLines v() {
            return this.f4992s;
        }

        @Override
        public void w0(long j10, float f10, GraphicsLayer graphicsLayer) {
            i1(j10, f10, null, graphicsLayer);
        }

        @Override
        public void y0(long j10, float f10, Function1 function1) {
            i1(j10, f10, function1, null);
        }

        @Override
        public Map z() {
            if (!this.f4983j) {
                if (LayoutNodeLayoutDelegate.this.B() == LayoutNode.LayoutState.LookaheadMeasuring) {
                    v().s(true);
                    if (v().g()) {
                        LayoutNodeLayoutDelegate.this.P();
                    }
                } else {
                    v().r(true);
                }
            }
            j0 j0VarT1 = M().T1();
            if (j0VarT1 != null) {
                j0VarT1.m1(true);
            }
            I();
            j0 j0VarT2 = M().T1();
            if (j0VarT2 != null) {
                j0VarT2.m1(false);
            }
            return v().h();
        }
    }

    public final class MeasurePassDelegate extends androidx.compose.ui.layout.g0 implements androidx.compose.ui.layout.s, androidx.compose.ui.node.a, m0 {
        private boolean A;
        private Function1 B;
        private GraphicsLayer C;
        private long D;
        private float E;
        private final Function0 F;
        private boolean G;
        private boolean H;

        private boolean f5002f;

        private boolean f5005i;

        private boolean f5006j;

        private boolean f5008l;

        private long f5009m;

        private Function1 f5010n;

        private GraphicsLayer f5011o;

        private float f5012p;

        private boolean f5013q;

        private Object f5014r;

        private boolean f5015s;

        private boolean f5016t;

        private final AlignmentLines f5017u;

        private final androidx.compose.runtime.collection.b f5018v;

        private boolean f5019w;

        private boolean f5020x;

        private final Function0 f5021y;

        private float f5022z;

        private int f5003g = Integer.MAX_VALUE;

        private int f5004h = Integer.MAX_VALUE;

        private LayoutNode.UsageByParent f5007k = LayoutNode.UsageByParent.NotUsed;

        public class a {

            public static final int[] f5023a;

            public static final int[] f5024b;

            static {
                int[] iArr = new int[LayoutNode.LayoutState.values().length];
                try {
                    iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f5023a = iArr;
                int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
                try {
                    iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
                } catch (NoSuchFieldError unused4) {
                }
                f5024b = iArr2;
            }
        }

        public MeasurePassDelegate() {
            o0.p.a aVar = o0.p.f67416b;
            this.f5009m = aVar.a();
            this.f5013q = true;
            this.f5017u = new c0(this);
            this.f5018v = new androidx.compose.runtime.collection.b(new MeasurePassDelegate[16], 0);
            this.f5019w = true;
            this.f5021y = new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m127invoke();
                    return Unit.f64096a;
                }

                public final void m127invoke() {
                    this.this$0.W0();
                    this.this$0.U(new Function1<a, Unit>() {
                        @Override
                        public Object invoke(Object obj) {
                            invoke((a) obj);
                            return Unit.f64096a;
                        }

                        public final void invoke(a aVar2) {
                            aVar2.v().t(false);
                        }
                    });
                    this.this$0.M().a1().w();
                    this.this$0.V0();
                    this.this$0.U(new Function1<a, Unit>() {
                        @Override
                        public Object invoke(Object obj) {
                            invoke((a) obj);
                            return Unit.f64096a;
                        }

                        public final void invoke(a aVar2) {
                            aVar2.v().q(aVar2.v().l());
                        }
                    });
                }
            };
            this.D = aVar.a();
            this.F = new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m128invoke();
                    return Unit.f64096a;
                }

                public final void m128invoke() {
                    androidx.compose.ui.layout.g0.a placementScope;
                    NodeCoordinator nodeCoordinatorZ1 = layoutNodeLayoutDelegate.K().Z1();
                    if (nodeCoordinatorZ1 == null || (placementScope = nodeCoordinatorZ1.c1()) == null) {
                        placementScope = f0.b(layoutNodeLayoutDelegate.f4958a).getPlacementScope();
                    }
                    androidx.compose.ui.layout.g0.a aVar2 = placementScope;
                    LayoutNodeLayoutDelegate.MeasurePassDelegate measurePassDelegate = this;
                    LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNodeLayoutDelegate;
                    Function1 function1 = measurePassDelegate.B;
                    GraphicsLayer graphicsLayer = measurePassDelegate.C;
                    if (graphicsLayer != null) {
                        aVar2.v(layoutNodeLayoutDelegate.K(), measurePassDelegate.D, graphicsLayer, measurePassDelegate.E);
                    } else if (function1 == null) {
                        aVar2.i(layoutNodeLayoutDelegate.K(), measurePassDelegate.D, measurePassDelegate.E);
                    } else {
                        aVar2.u(layoutNodeLayoutDelegate.K(), measurePassDelegate.D, measurePassDelegate.E, function1);
                    }
                }
            };
        }

        public final void V0() {
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                    if (layoutNode2.X().f5003g != layoutNode2.i0()) {
                        layoutNode.S0();
                        layoutNode.w0();
                        if (layoutNode2.i0() == Integer.MAX_VALUE) {
                            layoutNode2.X().j1();
                        }
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        public final void W0() {
            LayoutNodeLayoutDelegate.this.f4968k = 0;
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    MeasurePassDelegate measurePassDelegateX = ((LayoutNode) objArrM[i10]).X();
                    measurePassDelegateX.f5003g = measurePassDelegateX.f5004h;
                    measurePassDelegateX.f5004h = Integer.MAX_VALUE;
                    measurePassDelegateX.f5016t = false;
                    if (measurePassDelegateX.f5007k == LayoutNode.UsageByParent.InLayoutBlock) {
                        measurePassDelegateX.f5007k = LayoutNode.UsageByParent.NotUsed;
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        private final void i1() {
            boolean zN = n();
            u1(true);
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
            if (!zN) {
                if (layoutNode.Y()) {
                    LayoutNode.h1(layoutNode, true, false, false, 6, null);
                } else if (layoutNode.T()) {
                    LayoutNode.d1(layoutNode, true, false, false, 6, null);
                }
            }
            NodeCoordinator nodeCoordinatorY1 = layoutNode.M().Y1();
            for (NodeCoordinator nodeCoordinatorF0 = layoutNode.f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorY1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Y1()) {
                if (nodeCoordinatorF0.Q1()) {
                    nodeCoordinatorF0.i2();
                }
            }
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                    if (layoutNode2.i0() != Integer.MAX_VALUE) {
                        layoutNode2.X().i1();
                        layoutNode.i1(layoutNode2);
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        private final void j1() {
            if (n()) {
                int i10 = 0;
                u1(false);
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
                NodeCoordinator nodeCoordinatorY1 = layoutNode.M().Y1();
                for (NodeCoordinator nodeCoordinatorF0 = layoutNode.f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorY1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Y1()) {
                    nodeCoordinatorF0.y2();
                }
                androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
                int iN = bVarP0.n();
                if (iN > 0) {
                    Object[] objArrM = bVarP0.m();
                    do {
                        ((LayoutNode) objArrM[i10]).X().j1();
                        i10++;
                    } while (i10 < iN);
                }
            }
        }

        private final void l1() {
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                    if (layoutNode2.Y() && layoutNode2.a0() == LayoutNode.UsageByParent.InMeasureBlock && LayoutNode.W0(layoutNode2, null, 1, null)) {
                        LayoutNode.h1(layoutNodeLayoutDelegate.f4958a, false, false, false, 7, null);
                    }
                    i10++;
                } while (i10 < iN);
            }
        }

        private final void o1(long j10, float f10, Function1 function1, GraphicsLayer graphicsLayer) {
            if (LayoutNodeLayoutDelegate.this.f4958a.E0()) {
                g0.a.a("place is called on a deactivated node");
            }
            LayoutNodeLayoutDelegate.this.f4960c = LayoutNode.LayoutState.LayingOut;
            this.f5009m = j10;
            this.f5012p = f10;
            this.f5010n = function1;
            this.f5011o = graphicsLayer;
            this.f5006j = true;
            this.A = false;
            y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f4958a);
            if (LayoutNodeLayoutDelegate.this.A() || !n()) {
                v().r(false);
                LayoutNodeLayoutDelegate.this.Y(false);
                this.B = function1;
                this.D = j10;
                this.E = f10;
                this.C = graphicsLayer;
                y0VarB.getSnapshotObserver().c(LayoutNodeLayoutDelegate.this.f4958a, false, this.F);
            } else {
                LayoutNodeLayoutDelegate.this.K().v2(j10, f10, function1, graphicsLayer);
                n1();
            }
            LayoutNodeLayoutDelegate.this.f4960c = LayoutNode.LayoutState.Idle;
        }

        private final void p1(long j10, float f10, Function1 function1, GraphicsLayer graphicsLayer) {
            androidx.compose.ui.layout.g0.a placementScope;
            this.f5016t = true;
            if (!o0.p.g(j10, this.f5009m) || this.G) {
                if (LayoutNodeLayoutDelegate.this.u() || LayoutNodeLayoutDelegate.this.v() || this.G) {
                    LayoutNodeLayoutDelegate.this.f4962e = true;
                    this.G = false;
                }
                k1();
            }
            if (g0.a(LayoutNodeLayoutDelegate.this.f4958a)) {
                NodeCoordinator nodeCoordinatorZ1 = LayoutNodeLayoutDelegate.this.K().Z1();
                if (nodeCoordinatorZ1 == null || (placementScope = nodeCoordinatorZ1.c1()) == null) {
                    placementScope = f0.b(LayoutNodeLayoutDelegate.this.f4958a).getPlacementScope();
                }
                androidx.compose.ui.layout.g0.a aVar = placementScope;
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
                LookaheadPassDelegate lookaheadPassDelegateH = layoutNodeLayoutDelegate.H();
                Intrinsics.e(lookaheadPassDelegateH);
                LayoutNode layoutNodeH0 = layoutNodeLayoutDelegate.f4958a.h0();
                if (layoutNodeH0 != null) {
                    layoutNodeH0.P().f4967j = 0;
                }
                lookaheadPassDelegateH.n1(Integer.MAX_VALUE);
                androidx.compose.ui.layout.g0.a.h(aVar, lookaheadPassDelegateH, o0.p.h(j10), o0.p.i(j10), 0.0f, 4, null);
            }
            LookaheadPassDelegate lookaheadPassDelegateH2 = LayoutNodeLayoutDelegate.this.H();
            if ((lookaheadPassDelegateH2 == null || lookaheadPassDelegateH2.Z0()) ? false : true) {
                g0.a.b("Error: Placement happened before lookahead.");
            }
            o1(j10, f10, function1, graphicsLayer);
        }

        private final void v1(LayoutNode layoutNode) {
            LayoutNode.UsageByParent usageByParent;
            LayoutNode layoutNodeH0 = layoutNode.h0();
            if (layoutNodeH0 == null) {
                this.f5007k = LayoutNode.UsageByParent.NotUsed;
                return;
            }
            if (!(this.f5007k == LayoutNode.UsageByParent.NotUsed || layoutNode.B())) {
                g0.a.b("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int i10 = a.f5023a[layoutNodeH0.R().ordinal()];
            if (i10 == 1) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Measurable could be only measured from the parent's measure or layout block. Parents state is " + layoutNodeH0.R());
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.f5007k = usageByParent;
        }

        @Override
        public androidx.compose.ui.node.a D() {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            if (layoutNodeH0 == null || (layoutNodeLayoutDelegateP = layoutNodeH0.P()) == null) {
                return null;
            }
            return layoutNodeLayoutDelegateP.r();
        }

        @Override
        public Object G() {
            return this.f5014r;
        }

        @Override
        public void I() {
            this.f5020x = true;
            v().o();
            if (LayoutNodeLayoutDelegate.this.A()) {
                l1();
            }
            if (LayoutNodeLayoutDelegate.this.f4963f || (!this.f5008l && !M().i1() && LayoutNodeLayoutDelegate.this.A())) {
                LayoutNodeLayoutDelegate.this.f4962e = false;
                LayoutNode.LayoutState layoutStateB = LayoutNodeLayoutDelegate.this.B();
                LayoutNodeLayoutDelegate.this.f4960c = LayoutNode.LayoutState.LayingOut;
                LayoutNodeLayoutDelegate.this.Z(false);
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
                f0.b(layoutNode).getSnapshotObserver().e(layoutNode, false, this.f5021y);
                LayoutNodeLayoutDelegate.this.f4960c = layoutStateB;
                if (M().i1() && LayoutNodeLayoutDelegate.this.v()) {
                    requestLayout();
                }
                LayoutNodeLayoutDelegate.this.f4963f = false;
            }
            if (v().l()) {
                v().q(true);
            }
            if (v().g() && v().k()) {
                v().n();
            }
            this.f5020x = false;
        }

        @Override
        public NodeCoordinator M() {
            return LayoutNodeLayoutDelegate.this.f4958a.M();
        }

        @Override
        public androidx.compose.ui.layout.g0 P(long j10) {
            LayoutNode.UsageByParent usageByParentO = LayoutNodeLayoutDelegate.this.f4958a.O();
            LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
            if (usageByParentO == usageByParent) {
                LayoutNodeLayoutDelegate.this.f4958a.s();
            }
            if (g0.a(LayoutNodeLayoutDelegate.this.f4958a)) {
                LookaheadPassDelegate lookaheadPassDelegateH = LayoutNodeLayoutDelegate.this.H();
                Intrinsics.e(lookaheadPassDelegateH);
                lookaheadPassDelegateH.m1(usageByParent);
                lookaheadPassDelegateH.P(j10);
            }
            v1(LayoutNodeLayoutDelegate.this.f4958a);
            q1(j10);
            return this;
        }

        @Override
        public void U(Function1 function1) {
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    function1.invoke(((LayoutNode) objArrM[i10]).P().r());
                    i10++;
                } while (i10 < iN);
            }
        }

        @Override
        public void V(boolean z10) {
            boolean zH1 = LayoutNodeLayoutDelegate.this.K().h1();
            if (z10 != zH1) {
                LayoutNodeLayoutDelegate.this.K().V(zH1);
                this.G = true;
            }
            this.H = z10;
        }

        public final List Y0() {
            LayoutNodeLayoutDelegate.this.f4958a.u1();
            if (!this.f5019w) {
                return this.f5018v.g();
            }
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
            androidx.compose.runtime.collection.b bVar = this.f5018v;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i10 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i10];
                    if (bVar.n() <= i10) {
                        bVar.b(layoutNode2.P().I());
                    } else {
                        bVar.y(i10, layoutNode2.P().I());
                    }
                    i10++;
                } while (i10 < iN);
            }
            bVar.w(layoutNode.E().size(), bVar.n());
            this.f5019w = false;
            return this.f5018v.g();
        }

        @Override
        public void Z() {
            LayoutNode.h1(LayoutNodeLayoutDelegate.this.f4958a, false, false, false, 7, null);
        }

        public final o0.b Z0() {
            if (this.f5005i) {
                return o0.b.a(t0());
            }
            return null;
        }

        public final boolean a1() {
            return this.f5020x;
        }

        public final LayoutNode.UsageByParent b1() {
            return this.f5007k;
        }

        public final int c1() {
            return this.f5004h;
        }

        public final float d1() {
            return this.f5022z;
        }

        public final void e1(boolean z10) {
            LayoutNode layoutNode;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            LayoutNode.UsageByParent usageByParentO = LayoutNodeLayoutDelegate.this.f4958a.O();
            if (layoutNodeH0 == null || usageByParentO == LayoutNode.UsageByParent.NotUsed) {
                return;
            }
            do {
                layoutNode = layoutNodeH0;
                if (layoutNode.O() != usageByParentO) {
                    break;
                } else {
                    layoutNodeH0 = layoutNode.h0();
                }
            } while (layoutNodeH0 != null);
            int i10 = a.f5024b[usageByParentO.ordinal()];
            if (i10 == 1) {
                LayoutNode.h1(layoutNode, z10, false, false, 6, null);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Intrinsics isn't used by the parent");
                }
                layoutNode.e1(z10);
            }
        }

        public final void f1() {
            this.f5013q = true;
        }

        public final boolean g1() {
            return this.f5016t;
        }

        public final void h1() {
            LayoutNodeLayoutDelegate.this.f4959b = true;
        }

        public final void k1() {
            androidx.compose.runtime.collection.b bVarP0;
            int iN;
            if (LayoutNodeLayoutDelegate.this.s() <= 0 || (iN = (bVarP0 = LayoutNodeLayoutDelegate.this.f4958a.p0()).n()) <= 0) {
                return;
            }
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNode.P();
                if ((layoutNodeLayoutDelegateP.v() || layoutNodeLayoutDelegateP.u()) && !layoutNodeLayoutDelegateP.A()) {
                    LayoutNode.f1(layoutNode, false, 1, null);
                }
                layoutNodeLayoutDelegateP.I().k1();
                i10++;
            } while (i10 < iN);
        }

        public final void m1() {
            this.f5004h = Integer.MAX_VALUE;
            this.f5003g = Integer.MAX_VALUE;
            u1(false);
        }

        @Override
        public boolean n() {
            return this.f5015s;
        }

        public final void n1() {
            this.A = true;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            float fA2 = M().a2();
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f4958a;
            NodeCoordinator nodeCoordinatorF0 = layoutNode.f0();
            NodeCoordinator nodeCoordinatorM = layoutNode.M();
            while (nodeCoordinatorF0 != nodeCoordinatorM) {
                Intrinsics.f(nodeCoordinatorF0, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator");
                y yVar = (y) nodeCoordinatorF0;
                fA2 += yVar.a2();
                nodeCoordinatorF0 = yVar.Y1();
            }
            if (fA2 != this.f5022z) {
                this.f5022z = fA2;
                if (layoutNodeH0 != null) {
                    layoutNodeH0.S0();
                }
                if (layoutNodeH0 != null) {
                    layoutNodeH0.w0();
                }
            }
            if (!n()) {
                if (layoutNodeH0 != null) {
                    layoutNodeH0.w0();
                }
                i1();
                if (this.f5002f && layoutNodeH0 != null) {
                    LayoutNode.f1(layoutNodeH0, false, 1, null);
                }
            }
            if (layoutNodeH0 == null) {
                this.f5004h = 0;
            } else if (!this.f5002f && layoutNodeH0.R() == LayoutNode.LayoutState.LayingOut) {
                if (!(this.f5004h == Integer.MAX_VALUE)) {
                    g0.a.b("Place was called on a node which was placed already");
                }
                this.f5004h = layoutNodeH0.P().f4968k;
                layoutNodeH0.P().f4968k++;
            }
            I();
        }

        public final boolean q1(long j10) {
            if (LayoutNodeLayoutDelegate.this.f4958a.E0()) {
                g0.a.a("measure is called on a deactivated node");
            }
            y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f4958a);
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0();
            boolean z10 = true;
            LayoutNodeLayoutDelegate.this.f4958a.l1(LayoutNodeLayoutDelegate.this.f4958a.B() || (layoutNodeH0 != null && layoutNodeH0.B()));
            if (!LayoutNodeLayoutDelegate.this.f4958a.Y() && o0.b.f(t0(), j10)) {
                x0.b(y0VarB, LayoutNodeLayoutDelegate.this.f4958a, false, 2, null);
                LayoutNodeLayoutDelegate.this.f4958a.k1();
                return false;
            }
            v().s(false);
            U(new Function1<androidx.compose.ui.node.a, Unit>() {
                @Override
                public Object invoke(Object obj) {
                    invoke((a) obj);
                    return Unit.f64096a;
                }

                public final void invoke(a aVar) {
                    aVar.v().u(false);
                }
            });
            this.f5005i = true;
            long jK = LayoutNodeLayoutDelegate.this.K().k();
            E0(j10);
            LayoutNodeLayoutDelegate.this.U(j10);
            if (o0.t.e(LayoutNodeLayoutDelegate.this.K().k(), jK) && LayoutNodeLayoutDelegate.this.K().u0() == u0() && LayoutNodeLayoutDelegate.this.K().l0() == l0()) {
                z10 = false;
            }
            A0(o0.u.a(LayoutNodeLayoutDelegate.this.K().u0(), LayoutNodeLayoutDelegate.this.K().l0()));
            return z10;
        }

        public final void r1() {
            LayoutNode layoutNodeH0;
            try {
                this.f5002f = true;
                if (!this.f5006j) {
                    g0.a.b("replace called on unplaced item");
                }
                boolean zN = n();
                o1(this.f5009m, this.f5012p, this.f5010n, this.f5011o);
                if (zN && !this.A && (layoutNodeH0 = LayoutNodeLayoutDelegate.this.f4958a.h0()) != null) {
                    LayoutNode.f1(layoutNodeH0, false, 1, null);
                }
            } finally {
                this.f5002f = false;
            }
        }

        @Override
        public void requestLayout() {
            LayoutNode.f1(LayoutNodeLayoutDelegate.this.f4958a, false, 1, null);
        }

        public final void s1(boolean z10) {
            this.f5019w = z10;
        }

        public final void t1(LayoutNode.UsageByParent usageByParent) {
            this.f5007k = usageByParent;
        }

        public void u1(boolean z10) {
            this.f5015s = z10;
        }

        @Override
        public AlignmentLines v() {
            return this.f5017u;
        }

        @Override
        public void w0(long j10, float f10, GraphicsLayer graphicsLayer) {
            p1(j10, f10, null, graphicsLayer);
        }

        public final boolean w1() {
            if ((G() == null && LayoutNodeLayoutDelegate.this.K().G() == null) || !this.f5013q) {
                return false;
            }
            this.f5013q = false;
            this.f5014r = LayoutNodeLayoutDelegate.this.K().G();
            return true;
        }

        @Override
        public void y0(long j10, float f10, Function1 function1) {
            p1(j10, f10, function1, null);
        }

        @Override
        public Map z() {
            if (!this.f5008l) {
                if (LayoutNodeLayoutDelegate.this.B() == LayoutNode.LayoutState.Measuring) {
                    v().s(true);
                    if (v().g()) {
                        LayoutNodeLayoutDelegate.this.O();
                    }
                } else {
                    v().r(true);
                }
            }
            M().m1(true);
            I();
            M().m1(false);
            return v().h();
        }
    }

    public LayoutNodeLayoutDelegate(LayoutNode layoutNode) {
        this.f4958a = layoutNode;
    }

    public final void T(final long j10) {
        this.f4960c = LayoutNode.LayoutState.LookaheadMeasuring;
        this.f4964g = false;
        OwnerSnapshotObserver.h(f0.b(this.f4958a).getSnapshotObserver(), this.f4958a, false, new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m129invoke();
                return Unit.f64096a;
            }

            public final void m129invoke() {
                j0 j0VarT1 = this.this$0.K().T1();
                Intrinsics.e(j0VarT1);
                j0VarT1.P(j10);
            }
        }, 2, null);
        P();
        if (g0.a(this.f4958a)) {
            O();
        } else {
            R();
        }
        this.f4960c = LayoutNode.LayoutState.Idle;
    }

    public final void U(long j10) {
        LayoutNode.LayoutState layoutState = this.f4960c;
        LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Idle;
        if (!(layoutState == layoutState2)) {
            g0.a.b("layout state is not idle before measure starts");
        }
        LayoutNode.LayoutState layoutState3 = LayoutNode.LayoutState.Measuring;
        this.f4960c = layoutState3;
        this.f4961d = false;
        this.f4977t = j10;
        f0.b(this.f4958a).getSnapshotObserver().g(this.f4958a, false, this.f4978u);
        if (this.f4960c == layoutState3) {
            O();
            this.f4960c = layoutState2;
        }
    }

    public final boolean A() {
        return this.f4962e;
    }

    public final LayoutNode.LayoutState B() {
        return this.f4960c;
    }

    public final a C() {
        return this.f4976s;
    }

    public final boolean D() {
        return this.f4973p;
    }

    public final boolean E() {
        return this.f4972o;
    }

    public final boolean F() {
        return this.f4965h;
    }

    public final boolean G() {
        return this.f4964g;
    }

    public final LookaheadPassDelegate H() {
        return this.f4976s;
    }

    public final MeasurePassDelegate I() {
        return this.f4975r;
    }

    public final boolean J() {
        return this.f4961d;
    }

    public final NodeCoordinator K() {
        return this.f4958a.e0().n();
    }

    public final int L() {
        return this.f4975r.u0();
    }

    public final void M() {
        this.f4975r.f1();
        LookaheadPassDelegate lookaheadPassDelegate = this.f4976s;
        if (lookaheadPassDelegate != null) {
            lookaheadPassDelegate.b1();
        }
    }

    public final void N() {
        this.f4975r.s1(true);
        LookaheadPassDelegate lookaheadPassDelegate = this.f4976s;
        if (lookaheadPassDelegate != null) {
            lookaheadPassDelegate.l1(true);
        }
    }

    public final void O() {
        this.f4962e = true;
        this.f4963f = true;
    }

    public final void P() {
        this.f4965h = true;
        this.f4966i = true;
    }

    public final void Q() {
        this.f4964g = true;
    }

    public final void R() {
        this.f4961d = true;
    }

    public final void S() {
        LayoutNode.LayoutState layoutStateR = this.f4958a.R();
        if (layoutStateR == LayoutNode.LayoutState.LayingOut || layoutStateR == LayoutNode.LayoutState.LookaheadLayingOut) {
            if (this.f4975r.a1()) {
                Z(true);
            } else {
                Y(true);
            }
        }
        if (layoutStateR == LayoutNode.LayoutState.LookaheadLayingOut) {
            LookaheadPassDelegate lookaheadPassDelegate = this.f4976s;
            if (lookaheadPassDelegate == null || !lookaheadPassDelegate.V0()) {
                a0(true);
            } else {
                b0(true);
            }
        }
    }

    public final void V() {
        AlignmentLines alignmentLinesV;
        this.f4975r.v().p();
        LookaheadPassDelegate lookaheadPassDelegate = this.f4976s;
        if (lookaheadPassDelegate == null || (alignmentLinesV = lookaheadPassDelegate.v()) == null) {
            return;
        }
        alignmentLinesV.p();
    }

    public final void W(int i10) {
        int i11 = this.f4971n;
        this.f4971n = i10;
        if ((i11 == 0) != (i10 == 0)) {
            LayoutNode layoutNodeH0 = this.f4958a.h0();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNodeH0 != null ? layoutNodeH0.P() : null;
            if (layoutNodeLayoutDelegateP != null) {
                if (i10 == 0) {
                    layoutNodeLayoutDelegateP.W(layoutNodeLayoutDelegateP.f4971n - 1);
                } else {
                    layoutNodeLayoutDelegateP.W(layoutNodeLayoutDelegateP.f4971n + 1);
                }
            }
        }
    }

    public final void X(int i10) {
        int i11 = this.f4974q;
        this.f4974q = i10;
        if ((i11 == 0) != (i10 == 0)) {
            LayoutNode layoutNodeH0 = this.f4958a.h0();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNodeH0 != null ? layoutNodeH0.P() : null;
            if (layoutNodeLayoutDelegateP != null) {
                if (i10 == 0) {
                    layoutNodeLayoutDelegateP.X(layoutNodeLayoutDelegateP.f4974q - 1);
                } else {
                    layoutNodeLayoutDelegateP.X(layoutNodeLayoutDelegateP.f4974q + 1);
                }
            }
        }
    }

    public final void Y(boolean z10) {
        if (this.f4970m != z10) {
            this.f4970m = z10;
            if (z10 && !this.f4969l) {
                W(this.f4971n + 1);
            } else {
                if (z10 || this.f4969l) {
                    return;
                }
                W(this.f4971n - 1);
            }
        }
    }

    public final void Z(boolean z10) {
        if (this.f4969l != z10) {
            this.f4969l = z10;
            if (z10 && !this.f4970m) {
                W(this.f4971n + 1);
            } else {
                if (z10 || this.f4970m) {
                    return;
                }
                W(this.f4971n - 1);
            }
        }
    }

    public final void a0(boolean z10) {
        if (this.f4973p != z10) {
            this.f4973p = z10;
            if (z10 && !this.f4972o) {
                X(this.f4974q + 1);
            } else {
                if (z10 || this.f4972o) {
                    return;
                }
                X(this.f4974q - 1);
            }
        }
    }

    public final void b0(boolean z10) {
        if (this.f4972o != z10) {
            this.f4972o = z10;
            if (z10 && !this.f4973p) {
                X(this.f4974q + 1);
            } else {
                if (z10 || this.f4973p) {
                    return;
                }
                X(this.f4974q - 1);
            }
        }
    }

    public final void c0() {
        LayoutNode layoutNodeH0;
        if (this.f4975r.w1() && (layoutNodeH0 = this.f4958a.h0()) != null) {
            LayoutNode.h1(layoutNodeH0, false, false, false, 7, null);
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.f4976s;
        if (lookaheadPassDelegate == null || !lookaheadPassDelegate.q1()) {
            return;
        }
        if (g0.a(this.f4958a)) {
            LayoutNode layoutNodeH1 = this.f4958a.h0();
            if (layoutNodeH1 != null) {
                LayoutNode.h1(layoutNodeH1, false, false, false, 7, null);
                return;
            }
            return;
        }
        LayoutNode layoutNodeH2 = this.f4958a.h0();
        if (layoutNodeH2 != null) {
            LayoutNode.d1(layoutNodeH2, false, false, false, 7, null);
        }
    }

    public final void q() {
        if (this.f4976s == null) {
            this.f4976s = new LookaheadPassDelegate();
        }
    }

    public final a r() {
        return this.f4975r;
    }

    public final int s() {
        return this.f4971n;
    }

    public final int t() {
        return this.f4974q;
    }

    public final boolean u() {
        return this.f4970m;
    }

    public final boolean v() {
        return this.f4969l;
    }

    public final boolean w() {
        return this.f4959b;
    }

    public final int x() {
        return this.f4975r.l0();
    }

    public final o0.b y() {
        return this.f4975r.Z0();
    }

    public final o0.b z() {
        LookaheadPassDelegate lookaheadPassDelegate = this.f4976s;
        if (lookaheadPassDelegate != null) {
            return lookaheadPassDelegate.S0();
        }
        return null;
    }
}
