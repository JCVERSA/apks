package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.sz3;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.mozilla.classfile.ByteCode;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {ByteCode.PUTSTATIC}, m = "first")
public final class FlowKt__ReduceKt$first$1<T> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;

    public FlowKt__ReduceKt$first$1(wh1<? super FlowKt__ReduceKt$first$1> wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return sz3.o(null, this);
    }
}
