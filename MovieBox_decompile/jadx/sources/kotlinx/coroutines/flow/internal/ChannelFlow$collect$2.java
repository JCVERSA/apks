package kotlinx.coroutines.flow.internal;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE}, m = "invokeSuspend")
final class ChannelFlow$collect$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final kotlinx.coroutines.flow.b $collector;
    private Object L$0;
    int label;
    final ChannelFlow this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelFlow$collect$2(kotlinx.coroutines.flow.b bVar, ChannelFlow channelFlow, Continuation<? super ChannelFlow$collect$2> continuation) {
        super(2, continuation);
        this.$collector = bVar;
        this.this$0 = channelFlow;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelFlow$collect$2 channelFlow$collect$2 = new ChannelFlow$collect$2(this.$collector, this.this$0, continuation);
        channelFlow$collect$2.L$0 = obj;
        return channelFlow$collect$2;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            kotlinx.coroutines.flow.b bVar = this.$collector;
            kotlinx.coroutines.channels.r rVarN = this.this$0.n(n0Var);
            this.label = 1;
            if (kotlinx.coroutines.flow.c.l(bVar, rVarN, this) == objF) {
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
        return ((ChannelFlow$collect$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
