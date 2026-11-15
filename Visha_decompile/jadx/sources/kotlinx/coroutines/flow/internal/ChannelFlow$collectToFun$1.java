package kotlinx.coroutines.flow.internal;

import defpackage.gh8;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Lgh8;", "it", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {56}, m = "invokeSuspend")
public final class ChannelFlow$collectToFun$1 extends SuspendLambda implements s74 {
    Object L$0;
    int label;
    final ChannelFlow this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collectToFun$1(ChannelFlow channelFlow, wh1<? super ChannelFlow$collectToFun$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = channelFlow;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        ChannelFlow$collectToFun$1 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this.this$0, wh1Var);
        channelFlow$collectToFun$1.L$0 = obj;
        return channelFlow$collectToFun$1;
    }

    @Override
    public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
        return ((ChannelFlow$collectToFun$1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            gh8 gh8Var = (gh8) this.L$0;
            ChannelFlow channelFlow = this.this$0;
            this.label = 1;
            if (channelFlow.h(gh8Var, this) == objF) {
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
