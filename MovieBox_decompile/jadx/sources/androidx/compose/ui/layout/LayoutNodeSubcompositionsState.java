package androidx.compose.ui.layout;

import androidx.compose.runtime.d2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.n1;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.platform.b3;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.ViewCompat;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class LayoutNodeSubcompositionsState implements androidx.compose.runtime.h {

    private final LayoutNode f4790a;

    private androidx.compose.runtime.m f4791b;

    private p0 f4792c;

    private int f4793d;

    private int f4794e;

    private int f4803n;

    private int f4804o;

    private final HashMap f4795f = new HashMap();

    private final HashMap f4796g = new HashMap();

    private final c f4797h = new c();

    private final b f4798i = new b();

    private final HashMap f4799j = new HashMap();

    private final p0.a f4800k = new p0.a(null, 1, null);

    private final Map f4801l = new LinkedHashMap();

    private final androidx.compose.runtime.collection.b f4802m = new androidx.compose.runtime.collection.b(new Object[16], 0);

    private final String f4805p = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";

    private final class b implements o0, x {

        private final c f4812a;

        public b() {
            this.f4812a = LayoutNodeSubcompositionsState.this.f4797h;
        }

        @Override
        public float B0() {
            return this.f4812a.B0();
        }

        @Override
        public float D0(float f10) {
            return this.f4812a.D0(f10);
        }

        @Override
        public List E(Object obj, Function2 function2) {
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f4796g.get(obj);
            List listD = layoutNode != null ? layoutNode.D() : null;
            return listD != null ? listD : LayoutNodeSubcompositionsState.this.C(obj, function2);
        }

        @Override
        public long H(float f10) {
            return this.f4812a.H(f10);
        }

        @Override
        public float J(long j10) {
            return this.f4812a.J(j10);
        }

        @Override
        public v L0(int i10, int i11, Map map, Function1 function1, Function1 function2) {
            return this.f4812a.L0(i10, i11, map, function1, function2);
        }

        @Override
        public long P0(long j10) {
            return this.f4812a.P0(j10);
        }

        @Override
        public long Q(float f10) {
            return this.f4812a.Q(f10);
        }

        @Override
        public boolean W() {
            return this.f4812a.W();
        }

        @Override
        public int c0(float f10) {
            return this.f4812a.c0(f10);
        }

        @Override
        public float getDensity() {
            return this.f4812a.getDensity();
        }

        @Override
        public LayoutDirection getLayoutDirection() {
            return this.f4812a.getLayoutDirection();
        }

        @Override
        public float h0(long j10) {
            return this.f4812a.h0(j10);
        }

        @Override
        public v p0(int i10, int i11, Map map, Function1 function1) {
            return this.f4812a.p0(i10, i11, map, function1);
        }

        @Override
        public float x0(float f10) {
            return this.f4812a.x0(f10);
        }
    }

    private final class c implements o0 {

        private LayoutDirection f4814a = LayoutDirection.Rtl;

        private float f4815b;

        private float f4816c;

        public static final class a implements v {

            final int f4818a;

            final int f4819b;

            final Map f4820c;

            final Function1 f4821d;

            final c f4822e;

            final LayoutNodeSubcompositionsState f4823f;

            final Function1 f4824g;

            a(int i10, int i11, Map map, Function1 function1, c cVar, LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, Function1 function2) {
                this.f4818a = i10;
                this.f4819b = i11;
                this.f4820c = map;
                this.f4821d = function1;
                this.f4822e = cVar;
                this.f4823f = layoutNodeSubcompositionsState;
                this.f4824g = function2;
            }

            @Override
            public int getHeight() {
                return this.f4819b;
            }

            @Override
            public int getWidth() {
                return this.f4818a;
            }

            @Override
            public Map v() {
                return this.f4820c;
            }

            @Override
            public void w() {
                androidx.compose.ui.node.j0 j0VarT1;
                if (!this.f4822e.W() || (j0VarT1 = this.f4823f.f4790a.M().T1()) == null) {
                    this.f4824g.invoke(this.f4823f.f4790a.M().c1());
                } else {
                    this.f4824g.invoke(j0VarT1.c1());
                }
            }

            @Override
            public Function1 x() {
                return this.f4821d;
            }
        }

        public c() {
        }

        @Override
        public float B0() {
            return this.f4816c;
        }

        @Override
        public float D0(float f10) {
            return o0.d.d(this, f10);
        }

        @Override
        public List E(Object obj, Function2 function2) {
            return LayoutNodeSubcompositionsState.this.H(obj, function2);
        }

        @Override
        public long H(float f10) {
            return o0.m.b(this, f10);
        }

        @Override
        public float J(long j10) {
            return o0.m.a(this, j10);
        }

        @Override
        public v L0(int i10, int i11, Map map, Function1 function1, Function1 function2) {
            if (!((i10 & ViewCompat.MEASURED_STATE_MASK) == 0 && ((-16777216) & i11) == 0)) {
                g0.a.b("Size(" + i10 + " x " + i11 + ") is out of range. Each dimension must be between 0 and 16777215.");
            }
            return new a(i10, i11, map, function1, this, LayoutNodeSubcompositionsState.this, function2);
        }

        @Override
        public long P0(long j10) {
            return o0.d.e(this, j10);
        }

        @Override
        public long Q(float f10) {
            return o0.d.f(this, f10);
        }

        @Override
        public boolean W() {
            return LayoutNodeSubcompositionsState.this.f4790a.R() == LayoutNode.LayoutState.LookaheadLayingOut || LayoutNodeSubcompositionsState.this.f4790a.R() == LayoutNode.LayoutState.LookaheadMeasuring;
        }

        @Override
        public int c0(float f10) {
            return o0.d.a(this, f10);
        }

        @Override
        public float getDensity() {
            return this.f4815b;
        }

        @Override
        public LayoutDirection getLayoutDirection() {
            return this.f4814a;
        }

        @Override
        public float h0(long j10) {
            return o0.d.c(this, j10);
        }

        public void n(float f10) {
            this.f4815b = f10;
        }

        @Override
        public v p0(int i10, int i11, Map map, Function1 function1) {
            return w.a(this, i10, i11, map, function1);
        }

        public void v(float f10) {
            this.f4816c = f10;
        }

        @Override
        public float x0(float f10) {
            return o0.d.b(this, f10);
        }

        public void z(LayoutDirection layoutDirection) {
            this.f4814a = layoutDirection;
        }
    }

    public static final class d extends LayoutNode.d {

        final Function2 f4826c;

        public static final class a implements v {

            private final v f4827a;

            final LayoutNodeSubcompositionsState f4828b;

            final int f4829c;

            final v f4830d;

            public a(v vVar, LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i10, v vVar2) {
                this.f4828b = layoutNodeSubcompositionsState;
                this.f4829c = i10;
                this.f4830d = vVar2;
                this.f4827a = vVar;
            }

            @Override
            public int getHeight() {
                return this.f4827a.getHeight();
            }

            @Override
            public int getWidth() {
                return this.f4827a.getWidth();
            }

            @Override
            public Map v() {
                return this.f4827a.v();
            }

            @Override
            public void w() {
                this.f4828b.f4794e = this.f4829c;
                this.f4830d.w();
                this.f4828b.v();
            }

            @Override
            public Function1 x() {
                return this.f4827a.x();
            }
        }

        public static final class b implements v {

            private final v f4831a;

            final LayoutNodeSubcompositionsState f4832b;

            final int f4833c;

            final v f4834d;

            public b(v vVar, LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i10, v vVar2) {
                this.f4832b = layoutNodeSubcompositionsState;
                this.f4833c = i10;
                this.f4834d = vVar2;
                this.f4831a = vVar;
            }

            @Override
            public int getHeight() {
                return this.f4831a.getHeight();
            }

            @Override
            public int getWidth() {
                return this.f4831a.getWidth();
            }

            @Override
            public Map v() {
                return this.f4831a.v();
            }

            @Override
            public void w() {
                this.f4832b.f4793d = this.f4833c;
                this.f4834d.w();
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.f4832b;
                layoutNodeSubcompositionsState.u(layoutNodeSubcompositionsState.f4793d);
            }

            @Override
            public Function1 x() {
                return this.f4831a.x();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Function2 function2, String str) {
            super(str);
            this.f4826c = function2;
        }

        @Override
        public v c(x xVar, List list, long j10) {
            LayoutNodeSubcompositionsState.this.f4797h.z(xVar.getLayoutDirection());
            LayoutNodeSubcompositionsState.this.f4797h.n(xVar.getDensity());
            LayoutNodeSubcompositionsState.this.f4797h.v(xVar.B0());
            if (xVar.W() || LayoutNodeSubcompositionsState.this.f4790a.V() == null) {
                LayoutNodeSubcompositionsState.this.f4793d = 0;
                v vVar = (v) this.f4826c.invoke(LayoutNodeSubcompositionsState.this.f4797h, o0.b.a(j10));
                return new b(vVar, LayoutNodeSubcompositionsState.this, LayoutNodeSubcompositionsState.this.f4793d, vVar);
            }
            LayoutNodeSubcompositionsState.this.f4794e = 0;
            v vVar2 = (v) this.f4826c.invoke(LayoutNodeSubcompositionsState.this.f4798i, o0.b.a(j10));
            return new a(vVar2, LayoutNodeSubcompositionsState.this, LayoutNodeSubcompositionsState.this.f4794e, vVar2);
        }
    }

    public static final class f implements SubcomposeLayoutState.a {

        final Object f4836b;

        f(Object obj) {
            this.f4836b = obj;
        }

        @Override
        public void a(Object obj, Function1 function1) {
            q0 q0VarE0;
            androidx.compose.ui.f.c cVarK;
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f4799j.get(this.f4836b);
            if (layoutNode == null || (q0VarE0 = layoutNode.e0()) == null || (cVarK = q0VarE0.k()) == null) {
                return;
            }
            n1.d(cVarK, obj, function1);
        }

        @Override
        public int b() {
            List listE;
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f4799j.get(this.f4836b);
            if (layoutNode == null || (listE = layoutNode.E()) == null) {
                return 0;
            }
            return listE.size();
        }

        @Override
        public void c(int i10, long j10) {
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f4799j.get(this.f4836b);
            if (layoutNode == null || !layoutNode.D0()) {
                return;
            }
            int size = layoutNode.E().size();
            if (i10 < 0 || i10 >= size) {
                throw new IndexOutOfBoundsException("Index (" + i10 + ") is out of bound of [0, " + size + ')');
            }
            if (layoutNode.n()) {
                throw new IllegalArgumentException("Pre-measure called on node that is not placed");
            }
            LayoutNode layoutNode2 = LayoutNodeSubcompositionsState.this.f4790a;
            layoutNode2.f4943n = true;
            androidx.compose.ui.node.f0.b(layoutNode).mo143measureAndLayout0kLqBqw((LayoutNode) layoutNode.E().get(i10), j10);
            layoutNode2.f4943n = false;
        }

        @Override
        public void dispose() {
            LayoutNodeSubcompositionsState.this.y();
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.f4799j.remove(this.f4836b);
            if (layoutNode != null) {
                if (LayoutNodeSubcompositionsState.this.f4804o <= 0) {
                    throw new IllegalStateException("No pre-composed items to dispose");
                }
                int iIndexOf = LayoutNodeSubcompositionsState.this.f4790a.J().indexOf(layoutNode);
                if (iIndexOf < LayoutNodeSubcompositionsState.this.f4790a.J().size() - LayoutNodeSubcompositionsState.this.f4804o) {
                    throw new IllegalStateException("Item is not in pre-composed item range");
                }
                LayoutNodeSubcompositionsState.this.f4803n++;
                LayoutNodeSubcompositionsState.this.f4804o--;
                int size = (LayoutNodeSubcompositionsState.this.f4790a.J().size() - LayoutNodeSubcompositionsState.this.f4804o) - LayoutNodeSubcompositionsState.this.f4803n;
                LayoutNodeSubcompositionsState.this.A(iIndexOf, size, 1);
                LayoutNodeSubcompositionsState.this.u(size);
            }
        }
    }

    public LayoutNodeSubcompositionsState(LayoutNode layoutNode, p0 p0Var) {
        this.f4790a = layoutNode;
        this.f4792c = p0Var;
    }

    public final void A(int i10, int i11, int i12) {
        LayoutNode layoutNode = this.f4790a;
        layoutNode.f4943n = true;
        this.f4790a.P0(i10, i11, i12);
        layoutNode.f4943n = false;
    }

    static void B(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = 1;
        }
        layoutNodeSubcompositionsState.A(i10, i11, i12);
    }

    public final List C(Object obj, Function2 function2) {
        if (this.f4802m.n() < this.f4794e) {
            throw new IllegalArgumentException("Error: currentPostLookaheadIndex cannot be greater than the size of thepostLookaheadComposedSlotIds list.");
        }
        int iN = this.f4802m.n();
        int i10 = this.f4794e;
        if (iN == i10) {
            this.f4802m.b(obj);
        } else {
            this.f4802m.y(i10, obj);
        }
        this.f4794e++;
        if (!this.f4799j.containsKey(obj)) {
            this.f4801l.put(obj, D(obj, function2));
            if (this.f4790a.R() == LayoutNode.LayoutState.LayingOut) {
                this.f4790a.a1(true);
            } else {
                LayoutNode.d1(this.f4790a, true, false, false, 6, null);
            }
        }
        LayoutNode layoutNode = (LayoutNode) this.f4799j.get(obj);
        if (layoutNode == null) {
            return CollectionsKt.l();
        }
        List listY0 = layoutNode.X().Y0();
        int size = listY0.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((LayoutNodeLayoutDelegate.MeasurePassDelegate) listY0.get(i11)).h1();
        }
        return listY0;
    }

    private final void E(LayoutNode layoutNode) {
        LayoutNodeLayoutDelegate.MeasurePassDelegate measurePassDelegateX = layoutNode.X();
        LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
        measurePassDelegateX.t1(usageByParent);
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = layoutNode.U();
        if (lookaheadPassDelegateU != null) {
            lookaheadPassDelegateU.m1(usageByParent);
        }
    }

    private final void I(LayoutNode layoutNode, final a aVar) {
        androidx.compose.runtime.snapshots.j.a aVar2 = androidx.compose.runtime.snapshots.j.f3695e;
        androidx.compose.runtime.snapshots.j jVarD = aVar2.d();
        Function1 function1H = jVarD != null ? jVarD.h() : null;
        androidx.compose.runtime.snapshots.j jVarF = aVar2.f(jVarD);
        try {
            LayoutNode layoutNode2 = this.f4790a;
            layoutNode2.f4943n = true;
            final Function2 function2C = aVar.c();
            d2 d2VarB = aVar.b();
            androidx.compose.runtime.m mVar = this.f4791b;
            if (mVar == null) {
                throw new IllegalStateException("parent composition reference not set");
            }
            aVar.i(K(d2VarB, layoutNode, aVar.e(), mVar, androidx.compose.runtime.internal.b.b(-1750409193, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar, int i10) {
                    if ((i10 & 3) == 2 && iVar.h()) {
                        iVar.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-1750409193, i10, -1, "androidx.compose.ui.layout.LayoutNodeSubcompositionsState.subcompose.<anonymous>.<anonymous>.<anonymous> (SubcomposeLayout.kt:493)");
                    }
                    boolean zA = aVar.a();
                    Function2<androidx.compose.runtime.i, Integer, Unit> function2 = function2C;
                    iVar.E(Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, Boolean.valueOf(zA));
                    boolean zA2 = iVar.a(zA);
                    iVar.P(-869707859);
                    if (zA) {
                        function2.invoke(iVar, 0);
                    } else {
                        iVar.f(zA2);
                    }
                    iVar.K();
                    iVar.w();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            })));
            aVar.l(false);
            layoutNode2.f4943n = false;
            Unit unit = Unit.f64096a;
            aVar2.m(jVarD, jVarF, function1H);
        } catch (Throwable th2) {
            aVar2.m(jVarD, jVarF, function1H);
            throw th2;
        }
    }

    private final void J(LayoutNode layoutNode, Object obj, Function2 function2) {
        HashMap map = this.f4795f;
        Object aVar = map.get(layoutNode);
        if (aVar == null) {
            aVar = new a(obj, ComposableSingletons$SubcomposeLayoutKt.f4788a.a(), null, 4, null);
            map.put(layoutNode, aVar);
        }
        a aVar2 = (a) aVar;
        d2 d2VarB = aVar2.b();
        boolean zR = d2VarB != null ? d2VarB.r() : true;
        if (aVar2.c() != function2 || zR || aVar2.d()) {
            aVar2.j(function2);
            I(layoutNode, aVar2);
            aVar2.k(false);
        }
    }

    private final d2 K(d2 d2Var, LayoutNode layoutNode, boolean z10, androidx.compose.runtime.m mVar, Function2 function2) {
        if (d2Var == null || d2Var.isDisposed()) {
            d2Var = b3.a(layoutNode, mVar);
        }
        if (z10) {
            d2Var.p(function2);
        } else {
            d2Var.d(function2);
        }
        return d2Var;
    }

    private final LayoutNode L(Object obj) {
        int i10;
        if (this.f4803n == 0) {
            return null;
        }
        int size = this.f4790a.J().size() - this.f4804o;
        int i11 = size - this.f4803n;
        int i12 = size - 1;
        int i13 = i12;
        while (true) {
            if (i13 < i11) {
                i10 = -1;
                break;
            }
            if (Intrinsics.c(x(i13), obj)) {
                i10 = i13;
                break;
            }
            i13--;
        }
        if (i10 == -1) {
            while (true) {
                if (i12 < i11) {
                    i13 = i12;
                    break;
                }
                Object obj2 = this.f4795f.get((LayoutNode) this.f4790a.J().get(i12));
                Intrinsics.e(obj2);
                a aVar = (a) obj2;
                if (aVar.f() == SubcomposeLayoutKt.f4842a || this.f4792c.b(obj, aVar.f())) {
                    aVar.m(obj);
                    i13 = i12;
                    i10 = i13;
                    break;
                }
                i12--;
            }
        }
        if (i10 == -1) {
            return null;
        }
        if (i13 != i11) {
            A(i13, i11, 1);
        }
        this.f4803n--;
        LayoutNode layoutNode = (LayoutNode) this.f4790a.J().get(i11);
        Object obj3 = this.f4795f.get(layoutNode);
        Intrinsics.e(obj3);
        a aVar2 = (a) obj3;
        aVar2.h(u2.c(Boolean.TRUE, null, 2, null));
        aVar2.l(true);
        aVar2.k(true);
        return layoutNode;
    }

    private final LayoutNode s(int i10) {
        LayoutNode layoutNode = new LayoutNode(true, 0, 2, null);
        LayoutNode layoutNode2 = this.f4790a;
        layoutNode2.f4943n = true;
        this.f4790a.u0(i10, layoutNode);
        layoutNode2.f4943n = false;
        return layoutNode;
    }

    private final void t() {
        LayoutNode layoutNode = this.f4790a;
        layoutNode.f4943n = true;
        Iterator it = this.f4795f.values().iterator();
        while (it.hasNext()) {
            d2 d2VarB = ((a) it.next()).b();
            if (d2VarB != null) {
                d2VarB.dispose();
            }
        }
        this.f4790a.X0();
        layoutNode.f4943n = false;
        this.f4795f.clear();
        this.f4796g.clear();
        this.f4804o = 0;
        this.f4803n = 0;
        this.f4799j.clear();
        y();
    }

    public final void v() {
        CollectionsKt.G(this.f4801l.entrySet(), new Function1<Map.Entry<Object, SubcomposeLayoutState.a>, Boolean>() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(Map.Entry<Object, SubcomposeLayoutState.a> entry) {
                boolean z10;
                Object key = entry.getKey();
                SubcomposeLayoutState.a value = entry.getValue();
                int iO = this.this$0.f4802m.o(key);
                if (iO < 0 || iO >= this.this$0.f4794e) {
                    value.dispose();
                    z10 = true;
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        });
    }

    private final Object x(int i10) {
        Object obj = this.f4795f.get((LayoutNode) this.f4790a.J().get(i10));
        Intrinsics.e(obj);
        return ((a) obj).f();
    }

    private final void z(boolean z10) {
        this.f4804o = 0;
        this.f4799j.clear();
        int size = this.f4790a.J().size();
        if (this.f4803n != size) {
            this.f4803n = size;
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    LayoutNode layoutNode = (LayoutNode) this.f4790a.J().get(i10);
                    a aVar2 = (a) this.f4795f.get(layoutNode);
                    if (aVar2 != null && aVar2.a()) {
                        E(layoutNode);
                        if (z10) {
                            d2 d2VarB = aVar2.b();
                            if (d2VarB != null) {
                                d2VarB.deactivate();
                            }
                            aVar2.h(u2.c(Boolean.FALSE, null, 2, null));
                        } else {
                            aVar2.g(false);
                        }
                        aVar2.m(SubcomposeLayoutKt.f4842a);
                    }
                } catch (Throwable th2) {
                    aVar.m(jVarD, jVarF, function1H);
                    throw th2;
                }
            }
            Unit unit = Unit.f64096a;
            aVar.m(jVarD, jVarF, function1H);
            this.f4796g.clear();
        }
        y();
    }

    public final SubcomposeLayoutState.a D(Object obj, Function2 function2) {
        if (!this.f4790a.D0()) {
            return new e();
        }
        y();
        if (!this.f4796g.containsKey(obj)) {
            this.f4801l.remove(obj);
            HashMap map = this.f4799j;
            Object objL = map.get(obj);
            if (objL == null) {
                objL = L(obj);
                if (objL != null) {
                    A(this.f4790a.J().indexOf(objL), this.f4790a.J().size(), 1);
                    this.f4804o++;
                } else {
                    objL = s(this.f4790a.J().size());
                    this.f4804o++;
                }
                map.put(obj, objL);
            }
            J((LayoutNode) objL, obj, function2);
        }
        return new f(obj);
    }

    public final void F(androidx.compose.runtime.m mVar) {
        this.f4791b = mVar;
    }

    public final void G(p0 p0Var) {
        if (this.f4792c != p0Var) {
            this.f4792c = p0Var;
            z(false);
            LayoutNode.h1(this.f4790a, false, false, false, 7, null);
        }
    }

    public final List H(Object obj, Function2 function2) {
        y();
        LayoutNode.LayoutState layoutStateR = this.f4790a.R();
        LayoutNode.LayoutState layoutState = LayoutNode.LayoutState.Measuring;
        if (!(layoutStateR == layoutState || layoutStateR == LayoutNode.LayoutState.LayingOut || layoutStateR == LayoutNode.LayoutState.LookaheadMeasuring || layoutStateR == LayoutNode.LayoutState.LookaheadLayingOut)) {
            g0.a.b("subcompose can only be used inside the measure or layout blocks");
        }
        HashMap map = this.f4796g;
        Object obj2 = map.get(obj);
        if (obj2 == null) {
            obj2 = (LayoutNode) this.f4799j.remove(obj);
            if (obj2 != null) {
                if (!(this.f4804o > 0)) {
                    g0.a.b("Check failed.");
                }
                this.f4804o--;
            } else {
                LayoutNode layoutNodeL = L(obj);
                if (layoutNodeL == null) {
                    layoutNodeL = s(this.f4793d);
                }
                obj2 = layoutNodeL;
            }
            map.put(obj, obj2);
        }
        LayoutNode layoutNode = (LayoutNode) obj2;
        if (CollectionsKt.l0(this.f4790a.J(), this.f4793d) != layoutNode) {
            int iIndexOf = this.f4790a.J().indexOf(layoutNode);
            int i10 = this.f4793d;
            if (iIndexOf < i10) {
                throw new IllegalArgumentException(("Key \"" + obj + "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.").toString());
            }
            if (i10 != iIndexOf) {
                B(this, iIndexOf, i10, 0, 4, null);
            }
        }
        this.f4793d++;
        J(layoutNode, obj, function2);
        return (layoutStateR == layoutState || layoutStateR == LayoutNode.LayoutState.LayingOut) ? layoutNode.D() : layoutNode.C();
    }

    @Override
    public void onDeactivate() {
        z(true);
    }

    @Override
    public void onRelease() {
        t();
    }

    @Override
    public void onReuse() {
        z(false);
    }

    public final t r(Function2 function2) {
        return new d(function2, this.f4805p);
    }

    public final void u(int i10) {
        boolean z10 = false;
        this.f4803n = 0;
        int size = (this.f4790a.J().size() - this.f4804o) - 1;
        if (i10 <= size) {
            this.f4800k.clear();
            if (i10 <= size) {
                int i11 = i10;
                while (true) {
                    this.f4800k.add(x(i11));
                    if (i11 == size) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.f4792c.a(this.f4800k);
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            boolean z11 = false;
            while (size >= i10) {
                try {
                    LayoutNode layoutNode = (LayoutNode) this.f4790a.J().get(size);
                    Object obj = this.f4795f.get(layoutNode);
                    Intrinsics.e(obj);
                    a aVar2 = (a) obj;
                    Object objF = aVar2.f();
                    if (this.f4800k.contains(objF)) {
                        this.f4803n++;
                        if (aVar2.a()) {
                            E(layoutNode);
                            aVar2.g(false);
                            z11 = true;
                        }
                    } else {
                        LayoutNode layoutNode2 = this.f4790a;
                        layoutNode2.f4943n = true;
                        this.f4795f.remove(layoutNode);
                        d2 d2VarB = aVar2.b();
                        if (d2VarB != null) {
                            d2VarB.dispose();
                        }
                        this.f4790a.Y0(size, 1);
                        layoutNode2.f4943n = false;
                    }
                    this.f4796g.remove(objF);
                    size--;
                } catch (Throwable th2) {
                    aVar.m(jVarD, jVarF, function1H);
                    throw th2;
                }
            }
            Unit unit = Unit.f64096a;
            aVar.m(jVarD, jVarF, function1H);
            z10 = z11;
        }
        if (z10) {
            androidx.compose.runtime.snapshots.j.f3695e.n();
        }
        y();
    }

    public final void w() {
        if (this.f4803n != this.f4790a.J().size()) {
            Iterator it = this.f4795f.entrySet().iterator();
            while (it.hasNext()) {
                ((a) ((Map.Entry) it.next()).getValue()).k(true);
            }
            if (this.f4790a.Y()) {
                return;
            }
            LayoutNode.h1(this.f4790a, false, false, false, 7, null);
        }
    }

    public final void y() {
        int size = this.f4790a.J().size();
        if (this.f4795f.size() != size) {
            throw new IllegalArgumentException(("Inconsistency between the count of nodes tracked by the state (" + this.f4795f.size() + ") and the children count on the SubcomposeLayout (" + size + "). Are you trying to use the state of the disposed SubcomposeLayout?").toString());
        }
        if ((size - this.f4803n) - this.f4804o >= 0) {
            if (this.f4799j.size() == this.f4804o) {
                return;
            }
            throw new IllegalArgumentException(("Incorrect state. Precomposed children " + this.f4804o + ". Map size " + this.f4799j.size()).toString());
        }
        throw new IllegalArgumentException(("Incorrect state. Total children " + size + ". Reusable children " + this.f4803n + ". Precomposed children " + this.f4804o).toString());
    }

    static final class a {

        private Object f4806a;

        private Function2 f4807b;

        private d2 f4808c;

        private boolean f4809d;

        private boolean f4810e;

        private i1 f4811f;

        public a(Object obj, Function2 function2, d2 d2Var) {
            this.f4806a = obj;
            this.f4807b = function2;
            this.f4808c = d2Var;
            this.f4811f = u2.c(Boolean.TRUE, null, 2, null);
        }

        public final boolean a() {
            return ((Boolean) this.f4811f.getValue()).booleanValue();
        }

        public final d2 b() {
            return this.f4808c;
        }

        public final Function2 c() {
            return this.f4807b;
        }

        public final boolean d() {
            return this.f4809d;
        }

        public final boolean e() {
            return this.f4810e;
        }

        public final Object f() {
            return this.f4806a;
        }

        public final void g(boolean z10) {
            this.f4811f.setValue(Boolean.valueOf(z10));
        }

        public final void h(i1 i1Var) {
            this.f4811f = i1Var;
        }

        public final void i(d2 d2Var) {
            this.f4808c = d2Var;
        }

        public final void j(Function2 function2) {
            this.f4807b = function2;
        }

        public final void k(boolean z10) {
            this.f4809d = z10;
        }

        public final void l(boolean z10) {
            this.f4810e = z10;
        }

        public final void m(Object obj) {
            this.f4806a = obj;
        }

        public a(Object obj, Function2 function2, d2 d2Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, function2, (i10 & 4) != 0 ? null : d2Var);
        }
    }

    public static final class e implements SubcomposeLayoutState.a {
        e() {
        }

        @Override
        public void a(Object obj, Function1 function1) {
            n0.c(this, obj, function1);
        }

        @Override
        public int b() {
            return n0.a(this);
        }

        @Override
        public void c(int i10, long j10) {
            n0.b(this, i10, j10);
        }

        @Override
        public void dispose() {
        }
    }
}
