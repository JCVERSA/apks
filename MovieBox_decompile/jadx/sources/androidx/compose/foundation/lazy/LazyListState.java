package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.s0;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.d0;
import androidx.compose.foundation.lazy.layout.e0;
import androidx.compose.foundation.lazy.layout.x;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.u2;
import androidx.compose.ui.layout.h0;
import androidx.compose.ui.layout.i0;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.n0;

public final class LazyListState implements androidx.compose.foundation.gestures.o {

    public static final a f2597y = new a(null);

    private static final androidx.compose.runtime.saveable.d f2598z = ListSaverKt.a(new Function2<androidx.compose.runtime.saveable.e, LazyListState, List<? extends Integer>>() {
        @Override
        public final List<Integer> invoke(androidx.compose.runtime.saveable.e eVar, LazyListState lazyListState) {
            return CollectionsKt.o(Integer.valueOf(lazyListState.o()), Integer.valueOf(lazyListState.p()));
        }
    }, new Function1<List<? extends Integer>, LazyListState>() {
        @Override
        public final LazyListState invoke(List<Integer> list) {
            return new LazyListState(list.get(0).intValue(), list.get(1).intValue());
        }
    });

    private final r f2599a;

    private boolean f2600b;

    private m f2601c;

    private final v f2602d;

    private final e f2603e;

    private final i1 f2604f;

    private final p.i f2605g;

    private float f2606h;

    private final androidx.compose.foundation.gestures.o f2607i;

    private int f2608j;

    private boolean f2609k;

    private h0 f2610l;

    private final i0 f2611m;

    private final AwaitFirstLayoutModifier f2612n;

    private final LazyLayoutItemAnimator f2613o;

    private final androidx.compose.foundation.lazy.layout.e f2614p;

    private final x f2615q;

    private final p f2616r;

    private final androidx.compose.foundation.lazy.layout.w f2617s;

    private final i1 f2618t;

    private final i1 f2619u;

    private final i1 f2620v;

    private final i1 f2621w;

    private androidx.compose.animation.core.i f2622x;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final androidx.compose.runtime.saveable.d a() {
            return LazyListState.f2598z;
        }

        private a() {
        }
    }

    public static final class b implements p {
        b() {
        }

        @Override
        public x.b a(int i10) {
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
            LazyListState lazyListState = LazyListState.this;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            try {
                return LazyListState.this.z().e(i10, ((m) lazyListState.f2604f.getValue()).k());
            } finally {
                aVar.m(jVarD, jVarF, function1H);
            }
        }
    }

    public static final class c implements i0 {
        c() {
        }

        @Override
        public Object b(Object obj, Function2 function2) {
            return androidx.compose.ui.g.b(this, obj, function2);
        }

        @Override
        public boolean c(Function1 function1) {
            return androidx.compose.ui.g.a(this, function1);
        }

        @Override
        public void d(h0 h0Var) {
            LazyListState.this.f2610l = h0Var;
        }

        @Override
        public androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
            return androidx.compose.ui.e.a(this, fVar);
        }
    }

    public LazyListState() {
        this(0, 0, null, 7, null);
    }

    private final void E(float f10, l lVar) {
        if (this.f2609k) {
            this.f2599a.b(this.f2616r, f10, lVar);
        }
    }

    public static Object H(LazyListState lazyListState, int i10, int i11, Continuation continuation, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return lazyListState.G(i10, i11, continuation);
    }

    private void I(boolean z10) {
        this.f2620v.setValue(Boolean.valueOf(z10));
    }

    private void J(boolean z10) {
        this.f2619u.setValue(Boolean.valueOf(z10));
    }

    private final void L(float f10, o0.e eVar, n0 n0Var) {
        if (f10 <= eVar.D0(LazyListStateKt.f2625a)) {
            return;
        }
        androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
        androidx.compose.runtime.snapshots.j jVarD = aVar.d();
        Function1 function1H = jVarD != null ? jVarD.h() : null;
        androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
        try {
            float fFloatValue = ((Number) this.f2622x.getValue()).floatValue();
            if (this.f2622x.h()) {
                this.f2622x = androidx.compose.animation.core.j.g(this.f2622x, fFloatValue - f10, 0.0f, 0L, 0L, false, 30, null);
                kotlinx.coroutines.k.d(n0Var, null, null, new LazyListState$updateScrollDeltaForPostLookahead$2$1(this, null), 3, null);
            } else {
                this.f2622x = new androidx.compose.animation.core.i(VectorConvertersKt.b(FloatCompanionObject.f64316a), Float.valueOf(-f10), null, 0L, 0L, false, 60, null);
                kotlinx.coroutines.k.d(n0Var, null, null, new LazyListState$updateScrollDeltaForPostLookahead$2$2(this, null), 3, null);
            }
        } finally {
            aVar.m(jVarD, jVarF, function1H);
        }
    }

    public static void l(LazyListState lazyListState, m mVar, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        lazyListState.k(mVar, z10, z11);
    }

    public final h0 A() {
        return this.f2610l;
    }

    public final i0 B() {
        return this.f2611m;
    }

    public final float C() {
        return ((Number) this.f2622x.getValue()).floatValue();
    }

    public final float D() {
        return this.f2606h;
    }

    public final float F(float f10) {
        if ((f10 < 0.0f && !d()) || (f10 > 0.0f && !b())) {
            return 0.0f;
        }
        if (Math.abs(this.f2606h) > 0.5f) {
            throw new IllegalStateException(("entered drag with non-zero pending scroll: " + this.f2606h).toString());
        }
        float f11 = this.f2606h + f10;
        this.f2606h = f11;
        if (Math.abs(f11) > 0.5f) {
            m mVar = (m) this.f2604f.getValue();
            float f12 = this.f2606h;
            int iRound = Math.round(f12);
            m mVar2 = this.f2601c;
            boolean zR = mVar.r(iRound, !this.f2600b);
            if (zR && mVar2 != null) {
                zR = mVar2.r(iRound, true);
            }
            if (zR) {
                k(mVar, this.f2600b, true);
                e0.d(this.f2621w);
                E(f12 - this.f2606h, mVar);
            } else {
                h0 h0Var = this.f2610l;
                if (h0Var != null) {
                    h0Var.d();
                }
                E(f12 - this.f2606h, t());
            }
        }
        if (Math.abs(this.f2606h) <= 0.5f) {
            return f10;
        }
        float f13 = f10 - this.f2606h;
        this.f2606h = 0.0f;
        return f13;
    }

    public final Object G(int i10, int i11, Continuation continuation) {
        Object objC = androidx.compose.foundation.gestures.n.c(this, null, new LazyListState$scrollToItem$2(this, i10, i11, null), continuation, 1, null);
        return objC == IntrinsicsKt.f() ? objC : Unit.f64096a;
    }

    public final void K(int i10, int i11, boolean z10) {
        if (this.f2602d.a() != i10 || this.f2602d.c() != i11) {
            this.f2613o.n();
        }
        this.f2602d.d(i10, i11);
        if (!z10) {
            e0.d(this.f2618t);
            return;
        }
        h0 h0Var = this.f2610l;
        if (h0Var != null) {
            h0Var.d();
        }
    }

    public final int M(k kVar, int i10) {
        return this.f2602d.j(kVar, i10);
    }

    @Override
    public boolean a() {
        return this.f2607i.a();
    }

    @Override
    public boolean b() {
        return ((Boolean) this.f2620v.getValue()).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        LazyListState$scroll$1 lazyListState$scroll$1;
        LazyListState lazyListState;
        if (continuation instanceof LazyListState$scroll$1) {
            lazyListState$scroll$1 = (LazyListState$scroll$1) continuation;
            int i10 = lazyListState$scroll$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                lazyListState$scroll$1.label = i10 - Integer.MIN_VALUE;
            } else {
                lazyListState$scroll$1 = new LazyListState$scroll$1(this, continuation);
            }
        } else {
            lazyListState$scroll$1 = new LazyListState$scroll$1(this, continuation);
        }
        Object obj = lazyListState$scroll$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = lazyListState$scroll$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                function2 = (Function2) lazyListState$scroll$1.L$2;
                mutatePriority = (MutatePriority) lazyListState$scroll$1.L$1;
                lazyListState = (LazyListState) lazyListState$scroll$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        AwaitFirstLayoutModifier awaitFirstLayoutModifier = this.f2612n;
        lazyListState$scroll$1.L$0 = this;
        lazyListState$scroll$1.L$1 = mutatePriority;
        lazyListState$scroll$1.L$2 = function2;
        lazyListState$scroll$1.label = 1;
        if (awaitFirstLayoutModifier.a(lazyListState$scroll$1) == objF) {
            return objF;
        }
        lazyListState = this;
        androidx.compose.foundation.gestures.o oVar = lazyListState.f2607i;
        lazyListState$scroll$1.L$0 = null;
        lazyListState$scroll$1.L$1 = null;
        lazyListState$scroll$1.L$2 = null;
        lazyListState$scroll$1.label = 2;
        if (oVar.c(mutatePriority, function2, lazyListState$scroll$1) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public boolean d() {
        return ((Boolean) this.f2619u.getValue()).booleanValue();
    }

    @Override
    public float e(float f10) {
        return this.f2607i.e(f10);
    }

    public final void k(m mVar, boolean z10, boolean z11) {
        if (!z10 && this.f2600b) {
            this.f2601c = mVar;
            return;
        }
        if (z10) {
            this.f2600b = true;
        }
        I(mVar.i());
        J(mVar.j());
        this.f2606h -= mVar.l();
        this.f2604f.setValue(mVar);
        if (z11) {
            this.f2602d.i(mVar.p());
        } else {
            this.f2602d.h(mVar);
            if (this.f2609k) {
                this.f2599a.d(this.f2616r, mVar);
            }
        }
        if (z10) {
            L(mVar.q(), mVar.n(), mVar.m());
        }
        this.f2608j++;
    }

    public final AwaitFirstLayoutModifier m() {
        return this.f2612n;
    }

    public final androidx.compose.foundation.lazy.layout.e n() {
        return this.f2614p;
    }

    public final int o() {
        return this.f2602d.a();
    }

    public final int p() {
        return this.f2602d.c();
    }

    public final boolean q() {
        return this.f2600b;
    }

    public final p.i r() {
        return this.f2605g;
    }

    public final LazyLayoutItemAnimator s() {
        return this.f2613o;
    }

    public final l t() {
        return (l) this.f2604f.getValue();
    }

    public final i1 u() {
        return this.f2618t;
    }

    public final IntRange v() {
        return (IntRange) this.f2602d.b().getValue();
    }

    public final androidx.compose.foundation.lazy.layout.w w() {
        return this.f2617s;
    }

    public final i1 x() {
        return this.f2621w;
    }

    public final m y() {
        return this.f2601c;
    }

    public final x z() {
        return this.f2615q;
    }

    public LazyListState(final int i10, int i11, r rVar) {
        this.f2599a = rVar;
        v vVar = new v(i10, i11);
        this.f2602d = vVar;
        this.f2603e = new e(this);
        this.f2604f = r2.e(LazyListStateKt.f2626b, r2.g());
        this.f2605g = p.h.a();
        this.f2607i = androidx.compose.foundation.gestures.p.a(new Function1<Float, Float>() {
            {
                super(1);
            }

            public final Float invoke(float f10) {
                return Float.valueOf(-this.this$0.F(-f10));
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).floatValue());
            }
        });
        this.f2609k = true;
        this.f2611m = new c();
        this.f2612n = new AwaitFirstLayoutModifier();
        this.f2613o = new LazyLayoutItemAnimator();
        this.f2614p = new androidx.compose.foundation.lazy.layout.e();
        this.f2615q = new x(rVar.c(), new Function1<d0, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((d0) obj);
                return Unit.f64096a;
            }

            public final void invoke(d0 d0Var) {
                r rVar2 = this.this$0.f2599a;
                int i12 = i10;
                androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
                androidx.compose.runtime.snapshots.j jVarD = aVar.d();
                aVar.m(jVarD, aVar.f(jVarD), jVarD != null ? jVarD.h() : null);
                rVar2.a(d0Var, i12);
            }
        });
        this.f2616r = new b();
        this.f2617s = new androidx.compose.foundation.lazy.layout.w();
        vVar.b();
        this.f2618t = e0.c(null, 1, null);
        Boolean bool = Boolean.FALSE;
        this.f2619u = u2.c(bool, null, 2, null);
        this.f2620v = u2.c(bool, null, 2, null);
        this.f2621w = e0.c(null, 1, null);
        s0 s0VarB = VectorConvertersKt.b(FloatCompanionObject.f64316a);
        Float fValueOf = Float.valueOf(0.0f);
        this.f2622x = androidx.compose.animation.core.j.b(s0VarB, fValueOf, fValueOf, (56 & 8) != 0 ? Long.MIN_VALUE : 0L, (56 & 16) != 0 ? Long.MIN_VALUE : 0L, (56 & 32) != 0 ? false : false);
    }

    public LazyListState(int i10, int i11, r rVar, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? s.b(0, 1, null) : rVar);
    }

    public LazyListState(int i10, int i11) {
        this(i10, i11, s.b(0, 1, null));
    }
}
