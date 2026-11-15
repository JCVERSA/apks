package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.flow.StartedLazily$command$1$1", f = "SharingStarted.kt", l = {154}, m = "emit")
public final class StartedLazily$command$1$1$emit$1 extends ContinuationImpl {
    int label;
    Object result;
    final StartedLazily$command$1.AnonymousClass1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedLazily$command$1$1$emit$1(StartedLazily$command$1.AnonymousClass1 anonymousClass1, wh1<? super StartedLazily$command$1$1$emit$1> wh1Var) {
        super(wh1Var);
        this.this$0 = anonymousClass1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(0, this);
    }
}
