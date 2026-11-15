package kotlinx.coroutines.flow.internal;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", l = {29, 30}, m = "emit")
public final class CombineKt$combineInternal$2$1$1$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final CombineKt$combineInternal$2.AnonymousClass1.C04151 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2$1$1$emit$1(CombineKt$combineInternal$2.AnonymousClass1.C04151 c04151, wh1<? super CombineKt$combineInternal$2$1$1$emit$1> wh1Var) {
        super(wh1Var);
        this.this$0 = c04151;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
