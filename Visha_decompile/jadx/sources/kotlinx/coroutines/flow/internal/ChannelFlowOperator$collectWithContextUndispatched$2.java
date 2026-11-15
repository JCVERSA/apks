package kotlinx.coroutines.flow.internal;

import defpackage.nt1;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Loz3;", "it", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", l = {148}, m = "invokeSuspend")
public final class ChannelFlowOperator$collectWithContextUndispatched$2 extends SuspendLambda implements s74 {
    Object L$0;
    int label;
    final ChannelFlowOperator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowOperator$collectWithContextUndispatched$2(ChannelFlowOperator channelFlowOperator, wh1<? super ChannelFlowOperator$collectWithContextUndispatched$2> wh1Var) {
        super(2, wh1Var);
        this.this$0 = channelFlowOperator;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        ChannelFlowOperator$collectWithContextUndispatched$2 channelFlowOperator$collectWithContextUndispatched$2 = new ChannelFlowOperator$collectWithContextUndispatched$2(this.this$0, wh1Var);
        channelFlowOperator$collectWithContextUndispatched$2.L$0 = obj;
        return channelFlowOperator$collectWithContextUndispatched$2;
    }

    @Override
    public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
        return ((ChannelFlowOperator$collectWithContextUndispatched$2) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            oz3 oz3Var = (oz3) this.L$0;
            ChannelFlowOperator channelFlowOperator = this.this$0;
            this.label = 1;
            if (channelFlowOperator.q(oz3Var, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
