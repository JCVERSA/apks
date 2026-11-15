package kotlinx.coroutines.channels;

import defpackage.nt1;
import defpackage.wh1;
import defpackage.z45;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {3117}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk")
public final class BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final BufferedChannel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(BufferedChannel bufferedChannel, wh1<? super BufferedChannel$receiveCatchingOnNoWaiterSuspend$1> wh1Var) {
        super(wh1Var);
        this.this$0 = bufferedChannel;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objS0 = this.this$0.S0(null, 0, 0L, this);
        return objS0 == z45.f() ? objS0 : a.b(objS0);
    }
}
