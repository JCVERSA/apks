package kotlinx.coroutines.channels;

import defpackage.bc9;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lnk1;", "Lkotlinx/coroutines/channels/a;", "Lzfb;", "<anonymous>", "(Lnk1;)Lkotlinx/coroutines/channels/a;"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", l = {39}, m = "invokeSuspend")
public final class ChannelsKt__ChannelsKt$trySendBlocking$2 extends SuspendLambda implements s74 {
    final Object $element;
    final bc9 $this_trySendBlocking;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__ChannelsKt$trySendBlocking$2(bc9 bc9Var, Object obj, wh1<? super ChannelsKt__ChannelsKt$trySendBlocking$2> wh1Var) {
        super(2, wh1Var);
        this.$this_trySendBlocking = bc9Var;
        this.$element = obj;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        ChannelsKt__ChannelsKt$trySendBlocking$2 channelsKt__ChannelsKt$trySendBlocking$2 = new ChannelsKt__ChannelsKt$trySendBlocking$2(this.$this_trySendBlocking, this.$element, wh1Var);
        channelsKt__ChannelsKt$trySendBlocking$2.L$0 = obj;
        return channelsKt__ChannelsKt$trySendBlocking$2;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super a> wh1Var) {
        return ((ChannelsKt__ChannelsKt$trySendBlocking$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM279constructorimpl;
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i == 0) {
                c.b(obj);
                bc9 bc9Var = this.$this_trySendBlocking;
                Object obj2 = this.$element;
                Result.Companion companion = Result.INSTANCE;
                this.label = 1;
                if (bc9Var.l(obj2, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        return a.b(Result.m286isSuccessimpl(objM279constructorimpl) ? a.b.c(zfb.a) : a.b.a(Result.m282exceptionOrNullimpl(objM279constructorimpl)));
    }
}
