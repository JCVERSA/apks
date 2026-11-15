package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/flow/b;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1", f = "Emitters.kt", l = {36}, m = "invokeSuspend")
public final class FlowKt__EmittersKt$transform$1 extends SuspendLambda implements Function2<b, Continuation<? super Unit>, Object> {
    final a $this_transform;
    final Function3<b, Object, Continuation<? super Unit>, Object> $transform;
    private Object L$0;
    int label;

    public static final class AnonymousClass1 implements b {

        final Function3 f64757a;

        final b f64758b;

        public AnonymousClass1(Function3 function3, b bVar) {
            this.f64757a = function3;
            this.f64758b = bVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        public final Object emit(Object obj, Continuation continuation) {
            FlowKt__EmittersKt$transform$1$1$emit$1 flowKt__EmittersKt$transform$1$1$emit$1;
            if (continuation instanceof FlowKt__EmittersKt$transform$1$1$emit$1) {
                flowKt__EmittersKt$transform$1$1$emit$1 = (FlowKt__EmittersKt$transform$1$1$emit$1) continuation;
                int i10 = flowKt__EmittersKt$transform$1$1$emit$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    flowKt__EmittersKt$transform$1$1$emit$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    flowKt__EmittersKt$transform$1$1$emit$1 = new FlowKt__EmittersKt$transform$1$1$emit$1(this, continuation);
                }
            } else {
                flowKt__EmittersKt$transform$1$1$emit$1 = new FlowKt__EmittersKt$transform$1$1$emit$1(this, continuation);
            }
            Object obj2 = flowKt__EmittersKt$transform$1$1$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = flowKt__EmittersKt$transform$1$1$emit$1.label;
            if (i11 == 0) {
                ResultKt.b(obj2);
                Function3 function3 = this.f64757a;
                b bVar = this.f64758b;
                flowKt__EmittersKt$transform$1$1$emit$1.label = 1;
                if (function3.invoke(bVar, obj, flowKt__EmittersKt$transform$1$1$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj2);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__EmittersKt$transform$1(a aVar, Function3<? super b, Object, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super FlowKt__EmittersKt$transform$1> continuation) {
        super(2, continuation);
        this.$this_transform = aVar;
        this.$transform = function3;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__EmittersKt$transform$1 flowKt__EmittersKt$transform$1 = new FlowKt__EmittersKt$transform$1(this.$this_transform, this.$transform, continuation);
        flowKt__EmittersKt$transform$1.L$0 = obj;
        return flowKt__EmittersKt$transform$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            b bVar = (b) this.L$0;
            a aVar = this.$this_transform;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, bVar);
            this.label = 1;
            if (aVar.a(anonymousClass1, this) == objF) {
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

    public final Object invokeSuspend$$forInline(Object obj) {
        b bVar = (b) this.L$0;
        a aVar = this.$this_transform;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, bVar);
        InlineMarker.c(0);
        aVar.a(anonymousClass1, this);
        InlineMarker.c(1);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(b bVar, Continuation<? super Unit> continuation) {
        return ((FlowKt__EmittersKt$transform$1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
    }
}
