package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

final class LazyLayoutSemanticsModifierNode extends androidx.compose.ui.f.c implements i1 {

    private Function0 f2685n;

    private z f2686o;

    private Orientation f2687p;

    private boolean f2688q;

    private boolean f2689r;

    private androidx.compose.ui.semantics.g f2690s;

    private final Function1 f2691t = new Function1<Object, Integer>() {
        {
            super(1);
        }

        @Override
        public final Integer invoke(Object obj) {
            m mVar = (m) this.this$0.f2685n.invoke();
            int itemCount = mVar.getItemCount();
            int i10 = 0;
            while (i10 < itemCount) {
                if (Intrinsics.c(mVar.b(i10), obj)) {
                    return Integer.valueOf(i10);
                }
                i10++;
            }
            i10 = -1;
            return Integer.valueOf(i10);
        }
    };

    private Function1 f2692u;

    public LazyLayoutSemanticsModifierNode(Function0 function0, z zVar, Orientation orientation, boolean z10, boolean z11) {
        this.f2685n = function0;
        this.f2686o = zVar;
        this.f2687p = orientation;
        this.f2688q = z10;
        this.f2689r = z11;
        H1();
    }

    private final androidx.compose.ui.semantics.b E1() {
        return this.f2686o.d();
    }

    private final boolean F1() {
        return this.f2687p == Orientation.Vertical;
    }

    private final void H1() {
        this.f2690s = new androidx.compose.ui.semantics.g(new Function0<Float>() {
            {
                super(0);
            }

            @Override
            public final Float invoke() {
                return Float.valueOf(this.this$0.f2686o.f());
            }
        }, new Function0<Float>() {
            {
                super(0);
            }

            @Override
            public final Float invoke() {
                return Float.valueOf(this.this$0.f2686o.b());
            }
        }, this.f2689r);
        this.f2692u = this.f2688q ? new Function1<Integer, Boolean>() {

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2", f = "LazyLayoutSemantics.kt", l = {Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE}, m = "invokeSuspend")
            static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final int $index;
                int label;
                final LazyLayoutSemanticsModifierNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i10, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.this$0 = lazyLayoutSemanticsModifierNode;
                    this.$index = i10;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass2(this.this$0, this.$index, continuation);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    Object objF = IntrinsicsKt.f();
                    int i10 = this.label;
                    if (i10 == 0) {
                        ResultKt.b(obj);
                        z zVar = this.this$0.f2686o;
                        int i11 = this.$index;
                        this.label = 1;
                        if (zVar.c(i11, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f64096a;
                }

                @Override
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                }
            }

            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final Boolean invoke(int i10) {
                m mVar = (m) this.this$0.f2685n.invoke();
                if (i10 >= 0 && i10 < mVar.getItemCount()) {
                    kotlinx.coroutines.k.d(this.this$0.c1(), null, null, new AnonymousClass2(this.this$0, i10, null), 3, null);
                    return Boolean.TRUE;
                }
                throw new IllegalArgumentException(("Can't scroll to index " + i10 + ", it is out of bounds [0, " + mVar.getItemCount() + ')').toString());
            }
        } : null;
    }

    public final void G1(Function0 function0, z zVar, Orientation orientation, boolean z10, boolean z11) {
        this.f2685n = function0;
        this.f2686o = zVar;
        if (this.f2687p != orientation) {
            this.f2687p = orientation;
            j1.b(this);
        }
        if (this.f2688q == z10 && this.f2689r == z11) {
            return;
        }
        this.f2688q = z10;
        this.f2689r = z11;
        H1();
        j1.b(this);
    }

    @Override
    public boolean O() {
        return h1.a(this);
    }

    @Override
    public void Q0(androidx.compose.ui.semantics.n nVar) {
        SemanticsPropertiesKt.J(nVar, true);
        SemanticsPropertiesKt.k(nVar, this.f2691t);
        if (F1()) {
            androidx.compose.ui.semantics.g gVar = this.f2690s;
            if (gVar == null) {
                Intrinsics.y("scrollAxisRange");
                gVar = null;
            }
            SemanticsPropertiesKt.K(nVar, gVar);
        } else {
            androidx.compose.ui.semantics.g gVar2 = this.f2690s;
            if (gVar2 == null) {
                Intrinsics.y("scrollAxisRange");
                gVar2 = null;
            }
            SemanticsPropertiesKt.x(nVar, gVar2);
        }
        Function1 function1 = this.f2692u;
        if (function1 != null) {
            SemanticsPropertiesKt.t(nVar, null, function1, 1, null);
        }
        SemanticsPropertiesKt.h(nVar, null, new Function0<Float>() {
            {
                super(0);
            }

            @Override
            public final Float invoke() {
                return Float.valueOf(this.this$0.f2686o.e() - this.this$0.f2686o.a());
            }
        }, 1, null);
        SemanticsPropertiesKt.u(nVar, E1());
    }

    @Override
    public boolean V0() {
        return h1.b(this);
    }

    @Override
    public boolean h1() {
        return false;
    }
}
