package androidx.compose.foundation.relocation;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.g;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import y.i;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlinx/coroutines/t1;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlinx/coroutines/t1;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringChildIntoView$2", f = "BringIntoViewResponder.kt", l = {}, m = "invokeSuspend")
final class BringIntoViewResponderNode$bringChildIntoView$2 extends SuspendLambda implements Function2<n0, Continuation<? super t1>, Object> {
    final Function0<i> $boundsProvider;
    final l $childCoordinates;
    final Function0<i> $parentRect;
    private Object L$0;
    int label;
    final BringIntoViewResponderNode this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringChildIntoView$2$1", f = "BringIntoViewResponder.kt", l = {196}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Function0<i> $boundsProvider;
        final l $childCoordinates;
        int label;
        final BringIntoViewResponderNode this$0;

        @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        class C00271 extends FunctionReferenceImpl implements Function0<i> {
            final Function0<i> $boundsProvider;
            final l $childCoordinates;
            final BringIntoViewResponderNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00271(BringIntoViewResponderNode bringIntoViewResponderNode, l lVar, Function0<i> function0) {
                super(0, Intrinsics.Kotlin.class, "localRect", "bringChildIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;", 0);
                this.this$0 = bringIntoViewResponderNode;
                this.$childCoordinates = lVar;
                this.$boundsProvider = function0;
            }

            @Override
            public final i invoke() {
                return BringIntoViewResponderNode.D1(this.this$0, this.$childCoordinates, this.$boundsProvider);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BringIntoViewResponderNode bringIntoViewResponderNode, l lVar, Function0<i> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = bringIntoViewResponderNode;
            this.$childCoordinates = lVar;
            this.$boundsProvider = function0;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$childCoordinates, this.$boundsProvider, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                d dVarE1 = this.this$0.E1();
                C00271 c00271 = new C00271(this.this$0, this.$childCoordinates, this.$boundsProvider);
                this.label = 1;
                if (dVarE1.E0(c00271, this) == objF) {
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
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringChildIntoView$2$2", f = "BringIntoViewResponder.kt", l = {Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Function0<i> $parentRect;
        int label;
        final BringIntoViewResponderNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(BringIntoViewResponderNode bringIntoViewResponderNode, Function0<i> function0, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = bringIntoViewResponderNode;
            this.$parentRect = function0;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$parentRect, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            a aVarA;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                if (this.this$0.j1() && (aVarA = b.a(this.this$0)) != null) {
                    l lVarK = g.k(this.this$0);
                    Function0<i> function0 = this.$parentRect;
                    this.label = 1;
                    if (aVarA.U(lVarK, function0, this) == objF) {
                        return objF;
                    }
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BringIntoViewResponderNode$bringChildIntoView$2(BringIntoViewResponderNode bringIntoViewResponderNode, l lVar, Function0<i> function0, Function0<i> function1, Continuation<? super BringIntoViewResponderNode$bringChildIntoView$2> continuation) {
        super(2, continuation);
        this.this$0 = bringIntoViewResponderNode;
        this.$childCoordinates = lVar;
        this.$boundsProvider = function0;
        this.$parentRect = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BringIntoViewResponderNode$bringChildIntoView$2 bringIntoViewResponderNode$bringChildIntoView$2 = new BringIntoViewResponderNode$bringChildIntoView$2(this.this$0, this.$childCoordinates, this.$boundsProvider, this.$parentRect, continuation);
        bringIntoViewResponderNode$bringChildIntoView$2.L$0 = obj;
        return bringIntoViewResponderNode$bringChildIntoView$2;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        n0 n0Var = (n0) this.L$0;
        k.d(n0Var, null, null, new AnonymousClass1(this.this$0, this.$childCoordinates, this.$boundsProvider, null), 3, null);
        return k.d(n0Var, null, null, new AnonymousClass2(this.this$0, this.$parentRect, null), 3, null);
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super t1> continuation) {
        return ((BringIntoViewResponderNode$bringChildIntoView$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
