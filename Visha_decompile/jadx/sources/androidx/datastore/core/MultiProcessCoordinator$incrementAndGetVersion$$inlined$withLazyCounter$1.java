package androidx.datastore.core;

import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¨\u0006\u0002"}, d2 = {"T", "Lnk1;", "androidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1", f = "MultiProcessCoordinator.android.kt", l = {}, m = "invokeSuspend")
public final class MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1 extends SuspendLambda implements s74 {
    int label;
    final MultiProcessCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(MultiProcessCoordinator multiProcessCoordinator, wh1 wh1Var) {
        super(2, wh1Var);
        this.this$0 = multiProcessCoordinator;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Integer> wh1Var) {
        return ((MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        return mk0.b(this.this$0.getSharedCounter().incrementAndGetValue());
    }
}
