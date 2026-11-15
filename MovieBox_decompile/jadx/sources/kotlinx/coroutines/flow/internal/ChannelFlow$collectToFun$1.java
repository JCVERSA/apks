package kotlinx.coroutines.flow.internal;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Lkotlinx/coroutines/channels/p;", "it", "", "<anonymous>", "(Lkotlinx/coroutines/channels/p;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE}, m = "invokeSuspend")
final class ChannelFlow$collectToFun$1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.p, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final ChannelFlow this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelFlow$collectToFun$1(ChannelFlow channelFlow, Continuation<? super ChannelFlow$collectToFun$1> continuation) {
        super(2, continuation);
        this.this$0 = channelFlow;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelFlow$collectToFun$1 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this.this$0, continuation);
        channelFlow$collectToFun$1.L$0 = obj;
        return channelFlow$collectToFun$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.channels.p pVar = (kotlinx.coroutines.channels.p) this.L$0;
            ChannelFlow channelFlow = this.this$0;
            this.label = 1;
            if (channelFlow.i(pVar, this) == objF) {
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
    public final Object invoke(kotlinx.coroutines.channels.p pVar, Continuation<? super Unit> continuation) {
        return ((ChannelFlow$collectToFun$1) create(pVar, continuation)).invokeSuspend(Unit.f64096a);
    }
}
