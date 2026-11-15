package kotlinx.coroutines.channels;

import defpackage.nt1;
import defpackage.wh1;
import defpackage.z45;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {759}, m = "receiveCatching-JP2dKIU$suspendImpl")
public final class BufferedChannel$receiveCatching$1<E> extends ContinuationImpl {
    int label;
    Object result;
    final BufferedChannel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferedChannel$receiveCatching$1(BufferedChannel bufferedChannel, wh1<? super BufferedChannel$receiveCatching$1> wh1Var) {
        super(wh1Var);
        this.this$0 = bufferedChannel;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objR0 = BufferedChannel.R0(this.this$0, this);
        return objR0 == z45.f() ? objR0 : a.b(objR0);
    }
}
