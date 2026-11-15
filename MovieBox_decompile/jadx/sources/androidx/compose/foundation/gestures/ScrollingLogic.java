package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.f0;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import o0.z;

public final class ScrollingLogic {

    private o f2384a;

    private f0 f2385b;

    private g f2386c;

    private Orientation f2387d;

    private boolean f2388e;

    private NestedScrollDispatcher f2389f;

    private int f2390g = androidx.compose.ui.input.nestedscroll.e.f4630a.b();

    private k f2391h = ScrollableKt.f2377b;

    private final a f2392i = new a();

    private final Function1 f2393j = new Function1<y.g, y.g>() {
        {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            return y.g.d(m36invokeMKHz9U(((y.g) obj).v()));
        }

        public final long m36invokeMKHz9U(long j10) {
            k kVar = this.this$0.f2391h;
            ScrollingLogic scrollingLogic = this.this$0;
            return scrollingLogic.s(kVar, j10, scrollingLogic.f2390g);
        }
    };

    public static final class a implements h {
        a() {
        }

        @Override
        public long a(long j10, int i10) {
            ScrollingLogic.this.f2390g = i10;
            f0 f0Var = ScrollingLogic.this.f2385b;
            if (f0Var != null && ScrollingLogic.this.o()) {
                return f0Var.c(j10, ScrollingLogic.this.f2390g, ScrollingLogic.this.f2393j);
            }
            return ScrollingLogic.this.s(ScrollingLogic.this.f2391h, j10, i10);
        }

        @Override
        public long b(long j10, int i10) {
            return ScrollingLogic.this.s(ScrollingLogic.this.f2391h, j10, i10);
        }
    }

    public ScrollingLogic(o oVar, f0 f0Var, g gVar, Orientation orientation, boolean z10, NestedScrollDispatcher nestedScrollDispatcher) {
        this.f2384a = oVar;
        this.f2385b = f0Var;
        this.f2386c = gVar;
        this.f2387d = orientation;
        this.f2388e = z10;
        this.f2389f = nestedScrollDispatcher;
    }

    public final long D(long j10, float f10) {
        return this.f2387d == Orientation.Horizontal ? z.e(j10, f10, 0.0f, 2, null) : z.e(j10, 0.0f, f10, 1, null);
    }

    public final boolean o() {
        return this.f2384a.d() || this.f2384a.b();
    }

    public final long s(k kVar, long j10, int i10) {
        long jD = this.f2389f.d(j10, i10);
        long jQ = y.g.q(j10, jD);
        long jU = u(B(kVar.a(A(u(x(jQ))))));
        return y.g.r(y.g.r(jD, jU), this.f2389f.b(jU, y.g.q(jQ, jU), i10));
    }

    private final long y(long j10) {
        return this.f2387d == Orientation.Horizontal ? z.e(j10, 0.0f, 0.0f, 1, null) : z.e(j10, 0.0f, 0.0f, 2, null);
    }

    public final float z(long j10) {
        return this.f2387d == Orientation.Horizontal ? z.h(j10) : z.i(j10);
    }

    public final float A(long j10) {
        return this.f2387d == Orientation.Horizontal ? y.g.m(j10) : y.g.n(j10);
    }

    public final long B(float f10) {
        if (f10 == 0.0f) {
            return y.g.f75999b.c();
        }
        return this.f2387d == Orientation.Horizontal ? y.h.a(f10, 0.0f) : y.h.a(0.0f, f10);
    }

    public final boolean C(o oVar, Orientation orientation, f0 f0Var, boolean z10, g gVar, NestedScrollDispatcher nestedScrollDispatcher) {
        boolean z11;
        boolean z12 = true;
        if (Intrinsics.c(this.f2384a, oVar)) {
            z11 = false;
        } else {
            this.f2384a = oVar;
            z11 = true;
        }
        this.f2385b = f0Var;
        if (this.f2387d != orientation) {
            this.f2387d = orientation;
            z11 = true;
        }
        if (this.f2388e != z10) {
            this.f2388e = z10;
        } else {
            z12 = z11;
        }
        this.f2386c = gVar;
        this.f2389f = nestedScrollDispatcher;
        return z12;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(long j10, Continuation continuation) {
        ScrollingLogic$doFlingAnimation$1 scrollingLogic$doFlingAnimation$1;
        Ref.LongRef longRef;
        if (continuation instanceof ScrollingLogic$doFlingAnimation$1) {
            scrollingLogic$doFlingAnimation$1 = (ScrollingLogic$doFlingAnimation$1) continuation;
            int i10 = scrollingLogic$doFlingAnimation$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollingLogic$doFlingAnimation$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, continuation);
            }
        } else {
            scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, continuation);
        }
        Object obj = scrollingLogic$doFlingAnimation$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = scrollingLogic$doFlingAnimation$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Ref.LongRef longRef2 = new Ref.LongRef();
            longRef2.element = j10;
            MutatePriority mutatePriority = MutatePriority.Default;
            Function2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this, longRef2, j10, null);
            scrollingLogic$doFlingAnimation$1.L$0 = longRef2;
            scrollingLogic$doFlingAnimation$1.label = 1;
            if (v(mutatePriority, scrollingLogic$doFlingAnimation$2, scrollingLogic$doFlingAnimation$1) == objF) {
                return objF;
            }
            longRef = longRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            longRef = (Ref.LongRef) scrollingLogic$doFlingAnimation$1.L$0;
            ResultKt.b(obj);
        }
        return z.b(longRef.element);
    }

    public final boolean p() {
        return this.f2387d == Orientation.Vertical;
    }

    public final Object q(long j10, Continuation continuation) {
        long jY = y(j10);
        ScrollingLogic$onDragStopped$performFling$1 scrollingLogic$onDragStopped$performFling$1 = new ScrollingLogic$onDragStopped$performFling$1(this, null);
        f0 f0Var = this.f2385b;
        if (f0Var == null || !o()) {
            Object objInvoke = scrollingLogic$onDragStopped$performFling$1.invoke(z.b(jY), continuation);
            return objInvoke == IntrinsicsKt.f() ? objInvoke : Unit.f64096a;
        }
        Object objD = f0Var.d(jY, scrollingLogic$onDragStopped$performFling$1, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f64096a;
    }

    public final long r(long j10) {
        return this.f2384a.a() ? y.g.f75999b.c() : B(t(this.f2384a.e(t(A(j10)))));
    }

    public final float t(float f10) {
        return this.f2388e ? f10 * (-1) : f10;
    }

    public final long u(long j10) {
        return this.f2388e ? y.g.s(j10, -1.0f) : j10;
    }

    public final Object v(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objC = this.f2384a.c(mutatePriority, new ScrollingLogic$scroll$2(this, function2, null), continuation);
        return objC == IntrinsicsKt.f() ? objC : Unit.f64096a;
    }

    public final boolean w() {
        if (!this.f2384a.a()) {
            f0 f0Var = this.f2385b;
            if (!(f0Var != null ? f0Var.a() : false)) {
                return false;
            }
        }
        return true;
    }

    public final long x(long j10) {
        return this.f2387d == Orientation.Horizontal ? y.g.g(j10, 0.0f, 0.0f, 1, null) : y.g.g(j10, 0.0f, 0.0f, 2, null);
    }
}
