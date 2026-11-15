package kotlinx.coroutines;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", l = {101}, m = "withTimeoutOrNull")
public final class TimeoutKt$withTimeoutOrNull$1<T> extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    Object result;

    public TimeoutKt$withTimeoutOrNull$1(wh1<? super TimeoutKt$withTimeoutOrNull$1> wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TimeoutKt.d(0L, null, this);
    }
}
