package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.n2;
import androidx.compose.ui.platform.o2;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class LayoutNode implements androidx.compose.runtime.h, androidx.compose.ui.layout.h0, z0, androidx.compose.ui.layout.n, ComposeUiNode, y0.b {
    public static final c K = new c(null);
    public static final int L = 8;
    private static final d M = new b();
    private static final Function0 N = new Function0<LayoutNode>() {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final LayoutNode invoke() {
            return new LayoutNode(false, 0 == true ? 1 : 0, 3, null);
        }
    };
    private static final o2 O = new a();
    private static final Comparator P = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return LayoutNode.k((LayoutNode) obj, (LayoutNode) obj2);
        }
    };
    private final LayoutNodeLayoutDelegate A;
    private LayoutNodeSubcompositionsState B;
    private NodeCoordinator C;
    private boolean D;
    private androidx.compose.ui.f E;
    private androidx.compose.ui.f F;
    private Function1 G;
    private Function1 H;
    private boolean I;
    private boolean J;

    private final boolean f4930a;

    private int f4931b;

    private int f4932c;

    private boolean f4933d;

    private LayoutNode f4934e;

    private int f4935f;

    private final n0 f4936g;

    private androidx.compose.runtime.collection.b f4937h;

    private boolean f4938i;

    private LayoutNode f4939j;

    private y0 f4940k;

    private AndroidViewHolder f4941l;

    private int f4942m;

    private boolean f4943n;

    private androidx.compose.ui.semantics.i f4944o;

    private final androidx.compose.runtime.collection.b f4945p;

    private boolean f4946q;

    private androidx.compose.ui.layout.t f4947r;

    private o0.e f4948s;

    private LayoutDirection f4949t;

    private o2 f4950u;

    private androidx.compose.runtime.s f4951v;

    private UsageByParent f4952w;

    private UsageByParent f4953x;

    private boolean f4954y;

    private final q0 f4955z;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$LayoutState;", "", "(Ljava/lang/String;I)V", "Measuring", "LookaheadMeasuring", "LayingOut", "LookaheadLayingOut", "Idle", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum LayoutState {
        Measuring,
        LookaheadMeasuring,
        LayingOut,
        LookaheadLayingOut,
        Idle
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$UsageByParent;", "", "(Ljava/lang/String;I)V", "InMeasureBlock", "InLayoutBlock", "NotUsed", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum UsageByParent {
        InMeasureBlock,
        InLayoutBlock,
        NotUsed
    }

    public static final class a implements o2 {
        a() {
        }

        @Override
        public long a() {
            return 300L;
        }

        @Override
        public long b() {
            return 40L;
        }

        @Override
        public long c() {
            return 400L;
        }

        @Override
        public long d() {
            return o0.l.f67413a.a();
        }

        @Override
        public float e() {
            return n2.a(this);
        }

        @Override
        public float f() {
            return 16.0f;
        }
    }

    public static final class b extends d {
        b() {
            super("Undefined intrinsics block and it is required");
        }

        public Void a(androidx.compose.ui.layout.x xVar, List list, long j10) {
            throw new IllegalStateException("Undefined measure and it is required");
        }

        @Override
        public androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j10) {
            return (androidx.compose.ui.layout.v) a(xVar, list, j10);
        }
    }

    public static final class c {
        public c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Function0 a() {
            return LayoutNode.N;
        }

        public final Comparator b() {
            return LayoutNode.P;
        }

        private c() {
        }
    }

    public static abstract class d implements androidx.compose.ui.layout.t {

        private final String f4956a;

        public d(String str) {
            this.f4956a = str;
        }
    }

    public class e {

        public static final int[] f4957a;

        static {
            int[] iArr = new int[LayoutState.values().length];
            try {
                iArr[LayoutState.Idle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f4957a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LayoutNode() {
        this(false, 0 == true ? 1 : 0, 3, null);
    }

    private final void C0() {
        LayoutNode layoutNode;
        if (this.f4935f > 0) {
            this.f4938i = true;
        }
        if (!this.f4930a || (layoutNode = this.f4939j) == null) {
            return;
        }
        layoutNode.C0();
    }

    public static boolean J0(LayoutNode layoutNode, o0.b bVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bVar = layoutNode.A.z();
        }
        return layoutNode.I0(bVar);
    }

    private final NodeCoordinator N() {
        if (this.D) {
            NodeCoordinator nodeCoordinatorM = M();
            NodeCoordinator nodeCoordinatorZ1 = f0().Z1();
            this.C = null;
            while (!Intrinsics.c(nodeCoordinatorM, nodeCoordinatorZ1)) {
                if ((nodeCoordinatorM != null ? nodeCoordinatorM.S1() : null) != null) {
                    this.C = nodeCoordinatorM;
                    break;
                }
                nodeCoordinatorM = nodeCoordinatorM != null ? nodeCoordinatorM.Z1() : null;
            }
        }
        NodeCoordinator nodeCoordinator = this.C;
        if (nodeCoordinator == null || nodeCoordinator.S1() != null) {
            return nodeCoordinator;
        }
        g0.a.c("layer was not set");
        throw new KotlinNothingValueException();
    }

    private final void Q0(LayoutNode layoutNode) {
        if (layoutNode.A.s() > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.A;
            layoutNodeLayoutDelegate.W(layoutNodeLayoutDelegate.s() - 1);
        }
        if (this.f4940k != null) {
            layoutNode.w();
        }
        layoutNode.f4939j = null;
        layoutNode.f0().D2(null);
        if (layoutNode.f4930a) {
            this.f4935f--;
            androidx.compose.runtime.collection.b bVarF = layoutNode.f4936g.f();
            int iN = bVarF.n();
            if (iN > 0) {
                Object[] objArrM = bVarF.m();
                int i10 = 0;
                do {
                    ((LayoutNode) objArrM[i10]).f0().D2(null);
                    i10++;
                } while (i10 < iN);
            }
        }
        C0();
        S0();
    }

    private final void R0() {
        y0();
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 != null) {
            layoutNodeH0.w0();
        }
        x0();
    }

    private final void U0() {
        if (this.f4938i) {
            int i10 = 0;
            this.f4938i = false;
            androidx.compose.runtime.collection.b bVar = this.f4937h;
            if (bVar == null) {
                bVar = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);
                this.f4937h = bVar;
            }
            bVar.h();
            androidx.compose.runtime.collection.b bVarF = this.f4936g.f();
            int iN = bVarF.n();
            if (iN > 0) {
                Object[] objArrM = bVarF.m();
                do {
                    LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                    if (layoutNode.f4930a) {
                        bVar.c(bVar.n(), layoutNode.p0());
                    } else {
                        bVar.b(layoutNode);
                    }
                    i10++;
                } while (i10 < iN);
            }
            this.A.N();
        }
    }

    public static boolean W0(LayoutNode layoutNode, o0.b bVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bVar = layoutNode.A.y();
        }
        return layoutNode.V0(bVar);
    }

    public static void b1(LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        layoutNode.a1(z10);
    }

    public static void d1(LayoutNode layoutNode, boolean z10, boolean z11, boolean z12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        if ((i10 & 4) != 0) {
            z12 = true;
        }
        layoutNode.c1(z10, z11, z12);
    }

    public static void f1(LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        layoutNode.e1(z10);
    }

    public static void h1(LayoutNode layoutNode, boolean z10, boolean z11, boolean z12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        if ((i10 & 4) != 0) {
            z12 = true;
        }
        layoutNode.g1(z10, z11, z12);
    }

    private final void j1() {
        this.f4955z.x();
    }

    public static final int k(LayoutNode layoutNode, LayoutNode layoutNode2) {
        return layoutNode.n0() == layoutNode2.n0() ? Intrinsics.j(layoutNode.i0(), layoutNode2.i0()) : Float.compare(layoutNode.n0(), layoutNode2.n0());
    }

    private final float n0() {
        return X().d1();
    }

    private final void o1(LayoutNode layoutNode) {
        if (Intrinsics.c(layoutNode, this.f4934e)) {
            return;
        }
        this.f4934e = layoutNode;
        if (layoutNode != null) {
            this.A.q();
            NodeCoordinator nodeCoordinatorY1 = M().Y1();
            for (NodeCoordinator nodeCoordinatorF0 = f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorY1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Y1()) {
                nodeCoordinatorF0.J1();
            }
        }
        y0();
    }

    private final void q(androidx.compose.ui.f fVar) {
        this.E = fVar;
        this.f4955z.E(fVar);
        this.A.c0();
        if (this.f4934e == null && this.f4955z.q(s0.a(512))) {
            o1(this);
        }
    }

    public static void r0(LayoutNode layoutNode, long j10, q qVar, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        boolean z12 = z10;
        if ((i10 & 8) != 0) {
            z11 = true;
        }
        layoutNode.q0(j10, qVar, z12, z11);
    }

    private final void t() {
        this.f4953x = this.f4952w;
        this.f4952w = UsageByParent.NotUsed;
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                if (layoutNode.f4952w == UsageByParent.InLayoutBlock) {
                    layoutNode.t();
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final String u(int i10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("  ");
        }
        sb2.append("|-");
        sb2.append(toString());
        sb2.append('\n');
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i12 = 0;
            do {
                sb2.append(((LayoutNode) objArrM[i12]).u(i10 + 1));
                i12++;
            } while (i12 < iN);
        }
        String string = sb2.toString();
        if (i10 != 0) {
            return string;
        }
        String strSubstring = string.substring(0, string.length() - 1);
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    static String v(LayoutNode layoutNode, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return layoutNode.u(i10);
    }

    private final void v0() {
        if (this.f4955z.p(s0.a(1024) | s0.a(2048) | s0.a(4096))) {
            for (androidx.compose.ui.f.c cVarK = this.f4955z.k(); cVarK != null; cVarK = cVarK.a1()) {
                if (((s0.a(1024) & cVarK.e1()) != 0) | ((s0.a(2048) & cVarK.e1()) != 0) | ((s0.a(4096) & cVarK.e1()) != 0)) {
                    t0.a(cVarK);
                }
            }
        }
    }

    public final boolean A() {
        return this.F != null;
    }

    public final void A0() {
        this.A.M();
    }

    public final boolean B() {
        return this.f4954y;
    }

    public final void B0() {
        this.f4944o = null;
        f0.b(this).onSemanticsChange();
    }

    public final List C() {
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        Intrinsics.e(lookaheadPassDelegateU);
        return lookaheadPassDelegateU.R0();
    }

    public final List D() {
        return X().Y0();
    }

    public boolean D0() {
        return this.f4940k != null;
    }

    public final List E() {
        return p0().g();
    }

    public boolean E0() {
        return this.J;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.compose.ui.semantics.i] */
    public final androidx.compose.ui.semantics.i F() {
        if (!D0() || E0()) {
            return null;
        }
        if (!this.f4955z.q(s0.a(8)) || this.f4944o != null) {
            return this.f4944o;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new androidx.compose.ui.semantics.i();
        f0.b(this).getSnapshotObserver().j(this, new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m124invoke();
                return Unit.f64096a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v0 */
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
            /* JADX WARN: Type inference failed for: r6v11 */
            /* JADX WARN: Type inference failed for: r6v7, types: [T, androidx.compose.ui.semantics.i] */
            public final void m124invoke() {
                q0 q0VarE0 = this.this$0.e0();
                int iA = s0.a(8);
                Ref.ObjectRef<androidx.compose.ui.semantics.i> objectRef2 = objectRef;
                if ((q0VarE0.i() & iA) != 0) {
                    for (androidx.compose.ui.f.c cVarO = q0VarE0.o(); cVarO != null; cVarO = cVarO.g1()) {
                        if ((cVarO.e1() & iA) != 0) {
                            ?? G = cVarO;
                            ?? bVar = 0;
                            while (G != 0) {
                                if (G instanceof i1) {
                                    i1 i1Var = (i1) G;
                                    if (i1Var.O()) {
                                        ?? iVar = new androidx.compose.ui.semantics.i();
                                        objectRef2.element = iVar;
                                        iVar.q(true);
                                    }
                                    if (i1Var.V0()) {
                                        objectRef2.element.r(true);
                                    }
                                    i1Var.Q0(objectRef2.element);
                                } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                                    androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
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
                                G = g.g(bVar);
                            }
                        }
                    }
                }
            }
        });
        T t10 = objectRef.element;
        this.f4944o = (androidx.compose.ui.semantics.i) t10;
        return (androidx.compose.ui.semantics.i) t10;
    }

    public final boolean F0() {
        return X().g1();
    }

    public androidx.compose.runtime.s G() {
        return this.f4951v;
    }

    public final Boolean G0() {
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        if (lookaheadPassDelegateU != null) {
            return Boolean.valueOf(lookaheadPassDelegateU.n());
        }
        return null;
    }

    public o0.e H() {
        return this.f4948s;
    }

    public final boolean H0() {
        return this.f4933d;
    }

    public final int I() {
        return this.f4942m;
    }

    public final boolean I0(o0.b bVar) {
        if (bVar == null || this.f4934e == null) {
            return false;
        }
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        Intrinsics.e(lookaheadPassDelegateU);
        return lookaheadPassDelegateU.j1(bVar.r());
    }

    public final List J() {
        return this.f4936g.b();
    }

    public final boolean K() {
        long jR1 = M().R1();
        return o0.b.j(jR1) && o0.b.i(jR1);
    }

    public final void K0() {
        if (this.f4952w == UsageByParent.NotUsed) {
            t();
        }
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        Intrinsics.e(lookaheadPassDelegateU);
        lookaheadPassDelegateU.k1();
    }

    public int L() {
        return this.A.x();
    }

    public final void L0() {
        this.A.O();
    }

    public final NodeCoordinator M() {
        return this.f4955z.l();
    }

    public final void M0() {
        this.A.P();
    }

    public final void N0() {
        this.A.Q();
    }

    public final UsageByParent O() {
        return this.f4952w;
    }

    public final void O0() {
        this.A.R();
    }

    public final LayoutNodeLayoutDelegate P() {
        return this.A;
    }

    public final void P0(int i10, int i11, int i12) {
        if (i10 == i11) {
            return;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            this.f4936g.a(i10 > i11 ? i11 + i13 : (i11 + i12) - 2, (LayoutNode) this.f4936g.g(i10 > i11 ? i10 + i13 : i10));
        }
        S0();
        C0();
        y0();
    }

    public final boolean Q() {
        return this.A.A();
    }

    public final LayoutState R() {
        return this.A.B();
    }

    public final boolean S() {
        return this.A.F();
    }

    public final void S0() {
        if (!this.f4930a) {
            this.f4946q = true;
            return;
        }
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 != null) {
            layoutNodeH0.S0();
        }
    }

    public final boolean T() {
        return this.A.G();
    }

    public final void T0(int i10, int i11) {
        androidx.compose.ui.layout.g0.a placementScope;
        NodeCoordinator nodeCoordinatorM;
        if (this.f4952w == UsageByParent.NotUsed) {
            t();
        }
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 == null || (nodeCoordinatorM = layoutNodeH0.M()) == null || (placementScope = nodeCoordinatorM.c1()) == null) {
            placementScope = f0.b(this).getPlacementScope();
        }
        androidx.compose.ui.layout.g0.a.l(placementScope, X(), i10, i11, 0.0f, 4, null);
    }

    public final LayoutNodeLayoutDelegate.LookaheadPassDelegate U() {
        return this.A.H();
    }

    public final LayoutNode V() {
        return this.f4934e;
    }

    public final boolean V0(o0.b bVar) {
        if (bVar == null) {
            return false;
        }
        if (this.f4952w == UsageByParent.NotUsed) {
            s();
        }
        return X().q1(bVar.r());
    }

    public final d0 W() {
        return f0.b(this).getSharedDrawScope();
    }

    public final LayoutNodeLayoutDelegate.MeasurePassDelegate X() {
        return this.A.I();
    }

    public final void X0() {
        int iE = this.f4936g.e();
        while (true) {
            iE--;
            if (-1 >= iE) {
                this.f4936g.c();
                return;
            }
            Q0((LayoutNode) this.f4936g.d(iE));
        }
    }

    public final boolean Y() {
        return this.A.J();
    }

    public final void Y0(int i10, int i11) {
        if (!(i11 >= 0)) {
            g0.a.a("count (" + i11 + ") must be greater than 0");
        }
        int i12 = (i11 + i10) - 1;
        if (i10 > i12) {
            return;
        }
        while (true) {
            Q0((LayoutNode) this.f4936g.d(i12));
            if (i12 == i10) {
                return;
            } else {
                i12--;
            }
        }
    }

    public androidx.compose.ui.layout.t Z() {
        return this.f4947r;
    }

    public final void Z0() {
        if (this.f4952w == UsageByParent.NotUsed) {
            t();
        }
        X().r1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v5 */
    @Override
    public void a(LayoutDirection layoutDirection) {
        if (this.f4949t != layoutDirection) {
            this.f4949t = layoutDirection;
            R0();
            q0 q0Var = this.f4955z;
            int iA = s0.a(4);
            if ((q0Var.i() & iA) != 0) {
                for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.a1()) {
                    if ((cVarK.e1() & iA) != 0) {
                        ?? G = cVarK;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof n) {
                                n nVar = (n) G;
                                if (nVar instanceof androidx.compose.ui.draw.b) {
                                    ((androidx.compose.ui.draw.b) nVar).o0();
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
                    if ((cVarK.Z0() & iA) == 0) {
                        return;
                    }
                }
            }
        }
    }

    public final UsageByParent a0() {
        return X().b1();
    }

    public final void a1(boolean z10) {
        y0 y0Var;
        if (this.f4930a || (y0Var = this.f4940k) == null) {
            return;
        }
        y0Var.onRequestRelayout(this, true, z10);
    }

    @Override
    public void b(o0.e eVar) {
        if (Intrinsics.c(this.f4948s, eVar)) {
            return;
        }
        this.f4948s = eVar;
        R0();
        for (androidx.compose.ui.f.c cVarK = this.f4955z.k(); cVarK != null; cVarK = cVarK.a1()) {
            if ((s0.a(16) & cVarK.e1()) != 0) {
                ((e1) cVarK).y0();
            } else if (cVarK instanceof androidx.compose.ui.draw.b) {
                ((androidx.compose.ui.draw.b) cVarK).o0();
            }
        }
    }

    public final UsageByParent b0() {
        UsageByParent usageByParentY0;
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        return (lookaheadPassDelegateU == null || (usageByParentY0 = lookaheadPassDelegateU.Y0()) == null) ? UsageByParent.NotUsed : usageByParentY0;
    }

    @Override
    public void c(int i10) {
        this.f4932c = i10;
    }

    public androidx.compose.ui.f c0() {
        return this.E;
    }

    public final void c1(boolean z10, boolean z11, boolean z12) {
        if (!(this.f4934e != null)) {
            g0.a.b("Lookahead measure cannot be requested on a node that is not a part of theLookaheadScope");
        }
        y0 y0Var = this.f4940k;
        if (y0Var == null || this.f4943n || this.f4930a) {
            return;
        }
        y0Var.onRequestMeasure(this, true, z10, z11);
        if (z12) {
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
            Intrinsics.e(lookaheadPassDelegateU);
            lookaheadPassDelegateU.a1(z10);
        }
    }

    @Override
    public void d() {
        if (this.f4934e != null) {
            d1(this, false, false, false, 5, null);
        } else {
            h1(this, false, false, false, 5, null);
        }
        o0.b bVarY = this.A.y();
        if (bVarY != null) {
            y0 y0Var = this.f4940k;
            if (y0Var != null) {
                y0Var.mo143measureAndLayout0kLqBqw(this, bVarY.r());
                return;
            }
            return;
        }
        y0 y0Var2 = this.f4940k;
        if (y0Var2 != null) {
            x0.c(y0Var2, false, 1, null);
        }
    }

    public final boolean d0() {
        return this.I;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
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
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override
    public void e(o2 o2Var) {
        if (Intrinsics.c(this.f4950u, o2Var)) {
            return;
        }
        this.f4950u = o2Var;
        q0 q0Var = this.f4955z;
        int iA = s0.a(16);
        if ((q0Var.i() & iA) != 0) {
            for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.a1()) {
                if ((cVarK.e1() & iA) != 0) {
                    ?? G = cVarK;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof e1) {
                            ((e1) G).S0();
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
                if ((cVarK.Z0() & iA) == 0) {
                    return;
                }
            }
        }
    }

    public final q0 e0() {
        return this.f4955z;
    }

    public final void e1(boolean z10) {
        y0 y0Var;
        if (this.f4930a || (y0Var = this.f4940k) == null) {
            return;
        }
        x0.e(y0Var, this, false, z10, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
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
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override
    public void f() {
        NodeCoordinator nodeCoordinatorM = M();
        int iA = s0.a(128);
        boolean zI = t0.i(iA);
        androidx.compose.ui.f.c cVarX1 = nodeCoordinatorM.X1();
        if (!zI && (cVarX1 = cVarX1.g1()) == null) {
            return;
        }
        for (androidx.compose.ui.f.c cVarD2 = nodeCoordinatorM.d2(zI); cVarD2 != null && (cVarD2.Z0() & iA) != 0; cVarD2 = cVarD2.a1()) {
            if ((cVarD2.e1() & iA) != 0) {
                ?? G = cVarD2;
                ?? bVar = 0;
                while (G != 0) {
                    if (G instanceof w) {
                        ((w) G).I(M());
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
            if (cVarD2 == cVarX1) {
                return;
            }
        }
    }

    public final NodeCoordinator f0() {
        return this.f4955z.n();
    }

    @Override
    public void g(androidx.compose.ui.layout.t tVar) {
        if (Intrinsics.c(this.f4947r, tVar)) {
            return;
        }
        this.f4947r = tVar;
        y0();
    }

    public final y0 g0() {
        return this.f4940k;
    }

    public final void g1(boolean z10, boolean z11, boolean z12) {
        y0 y0Var;
        if (this.f4943n || this.f4930a || (y0Var = this.f4940k) == null) {
            return;
        }
        x0.d(y0Var, this, false, z10, z11, 2, null);
        if (z12) {
            X().e1(z10);
        }
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return this.f4949t;
    }

    @Override
    public void h(androidx.compose.ui.f fVar) {
        if (!(!this.f4930a || c0() == androidx.compose.ui.f.f3869a)) {
            g0.a.a("Modifiers are not supported on virtual LayoutNodes");
        }
        if (E0()) {
            g0.a.a("modifier is updated when deactivated");
        }
        if (D0()) {
            q(fVar);
        } else {
            this.F = fVar;
        }
    }

    public final LayoutNode h0() {
        LayoutNode layoutNode = this.f4939j;
        while (layoutNode != null && layoutNode.f4930a) {
            layoutNode = layoutNode.f4939j;
        }
        return layoutNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v5 */
    @Override
    public void i(androidx.compose.runtime.s sVar) {
        this.f4951v = sVar;
        b((o0.e) sVar.a(CompositionLocalsKt.c()));
        a((LayoutDirection) sVar.a(CompositionLocalsKt.g()));
        e((o2) sVar.a(CompositionLocalsKt.j()));
        q0 q0Var = this.f4955z;
        int iA = s0.a(32768);
        if ((q0Var.i() & iA) != 0) {
            for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.a1()) {
                if ((cVarK.e1() & iA) != 0) {
                    ?? G = cVarK;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof androidx.compose.ui.node.d) {
                            androidx.compose.ui.f.c node = ((androidx.compose.ui.node.d) G).getNode();
                            if (node.j1()) {
                                t0.e(node);
                            } else {
                                node.z1(true);
                            }
                        } else if ((G.e1() & iA) != 0 && (G instanceof i)) {
                            androidx.compose.ui.f.c cVarD1 = ((i) G).D1();
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
                        G = g.g(bVar);
                    }
                }
                if ((cVarK.Z0() & iA) == 0) {
                    return;
                }
            }
        }
    }

    public final int i0() {
        return X().c1();
    }

    public final void i1(LayoutNode layoutNode) {
        if (e.f4957a[layoutNode.R().ordinal()] != 1) {
            throw new IllegalStateException("Unexpected state " + layoutNode.R());
        }
        if (layoutNode.T()) {
            d1(layoutNode, true, false, false, 6, null);
            return;
        }
        if (layoutNode.S()) {
            layoutNode.a1(true);
        }
        if (layoutNode.Y()) {
            h1(layoutNode, true, false, false, 6, null);
        } else if (layoutNode.Q()) {
            layoutNode.e1(true);
        }
    }

    @Override
    public boolean isValidOwnerScope() {
        return D0();
    }

    public int j0() {
        return this.f4931b;
    }

    public final LayoutNodeSubcompositionsState k0() {
        return this.B;
    }

    public final void k1() {
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                UsageByParent usageByParent = layoutNode.f4953x;
                layoutNode.f4952w = usageByParent;
                if (usageByParent != UsageByParent.NotUsed) {
                    layoutNode.k1();
                }
                i10++;
            } while (i10 < iN);
        }
    }

    public o2 l0() {
        return this.f4950u;
    }

    public final void l1(boolean z10) {
        this.f4954y = z10;
    }

    public int m0() {
        return this.A.L();
    }

    public final void m1(boolean z10) {
        this.D = z10;
    }

    @Override
    public boolean n() {
        return X().n();
    }

    public final void n1(AndroidViewHolder androidViewHolder) {
        this.f4941l = androidViewHolder;
    }

    @Override
    public androidx.compose.ui.layout.l o() {
        return M();
    }

    public final androidx.compose.runtime.collection.b o0() {
        if (this.f4946q) {
            this.f4945p.h();
            androidx.compose.runtime.collection.b bVar = this.f4945p;
            bVar.c(bVar.n(), p0());
            this.f4945p.A(P);
            this.f4946q = false;
        }
        return this.f4945p;
    }

    @Override
    public void onDeactivate() {
        AndroidViewHolder androidViewHolder = this.f4941l;
        if (androidViewHolder != null) {
            androidViewHolder.onDeactivate();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.B;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.onDeactivate();
        }
        this.J = true;
        j1();
        if (D0()) {
            B0();
        }
    }

    @Override
    public void onRelease() {
        AndroidViewHolder androidViewHolder = this.f4941l;
        if (androidViewHolder != null) {
            androidViewHolder.onRelease();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.B;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.onRelease();
        }
        NodeCoordinator nodeCoordinatorY1 = M().Y1();
        for (NodeCoordinator nodeCoordinatorF0 = f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorY1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Y1()) {
            nodeCoordinatorF0.s2();
        }
    }

    @Override
    public void onReuse() {
        if (!D0()) {
            g0.a.a("onReuse is only expected on attached node");
        }
        AndroidViewHolder androidViewHolder = this.f4941l;
        if (androidViewHolder != null) {
            androidViewHolder.onReuse();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.B;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.onReuse();
        }
        if (E0()) {
            this.J = false;
            B0();
        } else {
            j1();
        }
        s1(androidx.compose.ui.semantics.k.a());
        this.f4955z.s();
        this.f4955z.y();
        i1(this);
    }

    public final androidx.compose.runtime.collection.b p0() {
        u1();
        if (this.f4935f == 0) {
            return this.f4936g.f();
        }
        androidx.compose.runtime.collection.b bVar = this.f4937h;
        Intrinsics.e(bVar);
        return bVar;
    }

    public final void p1(boolean z10) {
        this.I = z10;
    }

    public final void q0(long j10, q qVar, boolean z10, boolean z11) {
        f0().g2(NodeCoordinator.L.a(), NodeCoordinator.M1(f0(), j10, false, 2, null), qVar, z10, z11);
    }

    public final void q1(Function1 function1) {
        this.G = function1;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003f  */
    public final void r(y0 y0Var) {
        boolean z10;
        LayoutNode layoutNode;
        int i10 = 0;
        if (!(this.f4940k == null)) {
            g0.a.b("Cannot attach " + this + " as it already is attached.  Tree: " + v(this, 0, 1, null));
        }
        LayoutNode layoutNode2 = this.f4939j;
        if (layoutNode2 == null) {
            z10 = true;
        } else if (Intrinsics.c(layoutNode2 != null ? layoutNode2.f4940k : null, y0Var)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Attaching to a different owner(");
            sb2.append(y0Var);
            sb2.append(") than the parent's owner(");
            LayoutNode layoutNodeH0 = h0();
            sb2.append(layoutNodeH0 != null ? layoutNodeH0.f4940k : null);
            sb2.append("). This tree: ");
            sb2.append(v(this, 0, 1, null));
            sb2.append(" Parent tree: ");
            LayoutNode layoutNode3 = this.f4939j;
            sb2.append(layoutNode3 != null ? v(layoutNode3, 0, 1, null) : null);
            g0.a.b(sb2.toString());
        }
        LayoutNode layoutNodeH1 = h0();
        if (layoutNodeH1 == null) {
            X().u1(true);
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
            if (lookaheadPassDelegateU != null) {
                lookaheadPassDelegateU.o1(true);
            }
        }
        f0().D2(layoutNodeH1 != null ? layoutNodeH1.M() : null);
        this.f4940k = y0Var;
        this.f4942m = (layoutNodeH1 != null ? layoutNodeH1.f4942m : -1) + 1;
        androidx.compose.ui.f fVar = this.F;
        if (fVar != null) {
            q(fVar);
        }
        this.F = null;
        if (this.f4955z.q(s0.a(8))) {
            B0();
        }
        y0Var.onAttach(this);
        if (this.f4933d) {
            o1(this);
        } else {
            LayoutNode layoutNode4 = this.f4939j;
            if (layoutNode4 == null || (layoutNode = layoutNode4.f4934e) == null) {
                layoutNode = this.f4934e;
            }
            o1(layoutNode);
            if (this.f4934e == null && this.f4955z.q(s0.a(512))) {
                o1(this);
            }
        }
        if (!E0()) {
            this.f4955z.s();
        }
        androidx.compose.runtime.collection.b bVarF = this.f4936g.f();
        int iN = bVarF.n();
        if (iN > 0) {
            Object[] objArrM = bVarF.m();
            do {
                ((LayoutNode) objArrM[i10]).r(y0Var);
                i10++;
            } while (i10 < iN);
        }
        if (!E0()) {
            this.f4955z.y();
        }
        y0();
        if (layoutNodeH1 != null) {
            layoutNodeH1.y0();
        }
        NodeCoordinator nodeCoordinatorY1 = M().Y1();
        for (NodeCoordinator nodeCoordinatorF0 = f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorY1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Y1()) {
            nodeCoordinatorF0.o2();
        }
        Function1 function1 = this.G;
        if (function1 != null) {
            function1.invoke(y0Var);
        }
        this.A.c0();
        if (E0()) {
            return;
        }
        v0();
    }

    public final void r1(Function1 function1) {
        this.H = function1;
    }

    public final void s() {
        this.f4953x = this.f4952w;
        this.f4952w = UsageByParent.NotUsed;
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i10];
                if (layoutNode.f4952w != UsageByParent.NotUsed) {
                    layoutNode.s();
                }
                i10++;
            } while (i10 < iN);
        }
    }

    public final void s0(long j10, q qVar, boolean z10, boolean z11) {
        f0().g2(NodeCoordinator.L.b(), NodeCoordinator.M1(f0(), j10, false, 2, null), qVar, true, z11);
    }

    public void s1(int i10) {
        this.f4931b = i10;
    }

    public final void t1(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState) {
        this.B = layoutNodeSubcompositionsState;
    }

    public String toString() {
        return androidx.compose.ui.platform.c1.a(this, null) + " children: " + E().size() + " measurePolicy: " + Z();
    }

    public final void u0(int i10, LayoutNode layoutNode) {
        if (!(layoutNode.f4939j == null)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot insert ");
            sb2.append(layoutNode);
            sb2.append(" because it already has a parent. This tree: ");
            sb2.append(v(this, 0, 1, null));
            sb2.append(" Other tree: ");
            LayoutNode layoutNode2 = layoutNode.f4939j;
            sb2.append(layoutNode2 != null ? v(layoutNode2, 0, 1, null) : null);
            g0.a.b(sb2.toString());
        }
        if (!(layoutNode.f4940k == null)) {
            g0.a.b("Cannot insert " + layoutNode + " because it already has an owner. This tree: " + v(this, 0, 1, null) + " Other tree: " + v(layoutNode, 0, 1, null));
        }
        layoutNode.f4939j = this;
        this.f4936g.a(i10, layoutNode);
        S0();
        if (layoutNode.f4930a) {
            this.f4935f++;
        }
        C0();
        y0 y0Var = this.f4940k;
        if (y0Var != null) {
            layoutNode.r(y0Var);
        }
        if (layoutNode.A.s() > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.A;
            layoutNodeLayoutDelegate.W(layoutNodeLayoutDelegate.s() + 1);
        }
    }

    public final void u1() {
        if (this.f4935f > 0) {
            U0();
        }
    }

    public final void w() {
        y0 y0Var = this.f4940k;
        if (y0Var == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot detach node that is already detached!  Tree: ");
            LayoutNode layoutNodeH0 = h0();
            sb2.append(layoutNodeH0 != null ? v(layoutNodeH0, 0, 1, null) : null);
            g0.a.c(sb2.toString());
            throw new KotlinNothingValueException();
        }
        LayoutNode layoutNodeH1 = h0();
        if (layoutNodeH1 != null) {
            layoutNodeH1.w0();
            layoutNodeH1.y0();
            LayoutNodeLayoutDelegate.MeasurePassDelegate measurePassDelegateX = X();
            UsageByParent usageByParent = UsageByParent.NotUsed;
            measurePassDelegateX.t1(usageByParent);
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
            if (lookaheadPassDelegateU != null) {
                lookaheadPassDelegateU.m1(usageByParent);
            }
        }
        this.A.V();
        Function1 function1 = this.H;
        if (function1 != null) {
            function1.invoke(y0Var);
        }
        if (this.f4955z.q(s0.a(8))) {
            B0();
        }
        this.f4955z.z();
        this.f4943n = true;
        androidx.compose.runtime.collection.b bVarF = this.f4936g.f();
        int iN = bVarF.n();
        if (iN > 0) {
            Object[] objArrM = bVarF.m();
            int i10 = 0;
            do {
                ((LayoutNode) objArrM[i10]).w();
                i10++;
            } while (i10 < iN);
        }
        this.f4943n = false;
        this.f4955z.t();
        y0Var.onDetach(this);
        this.f4940k = null;
        o1(null);
        this.f4942m = 0;
        X().m1();
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU2 = U();
        if (lookaheadPassDelegateU2 != null) {
            lookaheadPassDelegateU2.g1();
        }
    }

    public final void w0() {
        NodeCoordinator nodeCoordinatorN = N();
        if (nodeCoordinatorN != null) {
            nodeCoordinatorN.i2();
            return;
        }
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 != null) {
            layoutNodeH0.w0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
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
    /* JADX WARN: Type inference failed for: r6v6 */
    public final void x() {
        if (R() != LayoutState.Idle || Q() || Y() || E0() || !n()) {
            return;
        }
        q0 q0Var = this.f4955z;
        int iA = s0.a(256);
        if ((q0Var.i() & iA) != 0) {
            for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.a1()) {
                if ((cVarK.e1() & iA) != 0) {
                    ?? G = cVarK;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof p) {
                            p pVar = (p) G;
                            pVar.v(g.h(pVar, s0.a(256)));
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
                if ((cVarK.Z0() & iA) == 0) {
                    return;
                }
            }
        }
    }

    public final void x0() {
        NodeCoordinator nodeCoordinatorF0 = f0();
        NodeCoordinator nodeCoordinatorM = M();
        while (nodeCoordinatorF0 != nodeCoordinatorM) {
            Intrinsics.f(nodeCoordinatorF0, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator");
            y yVar = (y) nodeCoordinatorF0;
            w0 w0VarS1 = yVar.S1();
            if (w0VarS1 != null) {
                w0VarS1.invalidate();
            }
            nodeCoordinatorF0 = yVar.Y1();
        }
        w0 w0VarS2 = M().S1();
        if (w0VarS2 != null) {
            w0VarS2.invalidate();
        }
    }

    public final void y(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        f0().G1(m1Var, graphicsLayer);
    }

    public final void y0() {
        if (this.f4934e != null) {
            d1(this, false, false, false, 7, null);
        } else {
            h1(this, false, false, false, 7, null);
        }
    }

    public final boolean z() {
        AlignmentLines alignmentLinesV;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.A;
        if (layoutNodeLayoutDelegate.r().v().k()) {
            return true;
        }
        androidx.compose.ui.node.a aVarC = layoutNodeLayoutDelegate.C();
        return (aVarC == null || (alignmentLinesV = aVarC.v()) == null || !alignmentLinesV.k()) ? false : true;
    }

    public final void z0() {
        if (Q() || Y() || this.I) {
            return;
        }
        f0.b(this).requestOnPositionedCallback(this);
    }

    public LayoutNode(boolean z10, int i10) {
        this.f4930a = z10;
        this.f4931b = i10;
        this.f4936g = new n0(new androidx.compose.runtime.collection.b(new LayoutNode[16], 0), new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m123invoke();
                return Unit.f64096a;
            }

            public final void m123invoke() {
                this.this$0.P().N();
            }
        });
        this.f4945p = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);
        this.f4946q = true;
        this.f4947r = M;
        this.f4948s = f0.f5077a;
        this.f4949t = LayoutDirection.Ltr;
        this.f4950u = O;
        this.f4951v = androidx.compose.runtime.s.Y0.a();
        UsageByParent usageByParent = UsageByParent.NotUsed;
        this.f4952w = usageByParent;
        this.f4953x = usageByParent;
        this.f4955z = new q0(this);
        this.A = new LayoutNodeLayoutDelegate(this);
        this.D = true;
        this.E = androidx.compose.ui.f.f3869a;
    }

    public LayoutNode(boolean z10, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? androidx.compose.ui.semantics.k.a() : i10);
    }
}
