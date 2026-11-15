package kotlinx.coroutines;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", l = {160}, m = "awaitCancellation")
public final class DelayKt$awaitCancellation$1 extends ContinuationImpl {
    int label;
    Object result;

    public DelayKt$awaitCancellation$1(wh1<? super DelayKt$awaitCancellation$1> wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DelayKt.a(this);
    }
}
