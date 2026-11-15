package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Lkotlinx/coroutines/flow/b;", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", l = {148}, m = "invokeSuspend")
final class ChannelFlowOperator$collectWithContextUndispatched$2 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final ChannelFlowOperator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelFlowOperator$collectWithContextUndispatched$2(ChannelFlowOperator channelFlowOperator, Continuation<? super ChannelFlowOperator$collectWithContextUndispatched$2> continuation) {
        super(2, continuation);
        this.this$0 = channelFlowOperator;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelFlowOperator$collectWithContextUndispatched$2 channelFlowOperator$collectWithContextUndispatched$2 = new ChannelFlowOperator$collectWithContextUndispatched$2(this.this$0, continuation);
        channelFlowOperator$collectWithContextUndispatched$2.L$0 = obj;
        return channelFlowOperator$collectWithContextUndispatched$2;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
            ChannelFlowOperator channelFlowOperator = this.this$0;
            this.label = 1;
            if (channelFlowOperator.r(bVar, this) == objF) {
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
    public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
        return ((ChannelFlowOperator$collectWithContextUndispatched$2) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
    }
}
