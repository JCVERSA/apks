package androidx.datastore.core;

import defpackage.nt1;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Loz3;", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.datastore.core.SingleProcessCoordinator$updateNotifications$1", f = "SingleProcessCoordinator.kt", l = {}, m = "invokeSuspend")
public final class SingleProcessCoordinator$updateNotifications$1 extends SuspendLambda implements s74 {
    int label;

    public SingleProcessCoordinator$updateNotifications$1(wh1<? super SingleProcessCoordinator$updateNotifications$1> wh1Var) {
        super(2, wh1Var);
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new SingleProcessCoordinator$updateNotifications$1(wh1Var);
    }

    @Override
    public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
        return ((SingleProcessCoordinator$updateNotifications$1) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        return zfb.a;
    }
}
