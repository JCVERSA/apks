package kotlinx.coroutines.flow.internal;

import com.hunantv.media.drm.IDrmSession;
import defpackage.nt1;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\n"}, d2 = {"T", "it", "Lzfb;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", l = {IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY}, m = "invokeSuspend")
public final class UndispatchedContextCollector$emitRef$1 extends SuspendLambda implements s74 {
    final oz3 $downstream;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UndispatchedContextCollector$emitRef$1(oz3 oz3Var, wh1<? super UndispatchedContextCollector$emitRef$1> wh1Var) {
        super(2, wh1Var);
        this.$downstream = oz3Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        UndispatchedContextCollector$emitRef$1 undispatchedContextCollector$emitRef$1 = new UndispatchedContextCollector$emitRef$1(this.$downstream, wh1Var);
        undispatchedContextCollector$emitRef$1.L$0 = obj;
        return undispatchedContextCollector$emitRef$1;
    }

    @Override
    public final Object invoke(Object obj, wh1<? super zfb> wh1Var) {
        return ((UndispatchedContextCollector$emitRef$1) create(obj, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            Object obj2 = this.L$0;
            oz3 oz3Var = this.$downstream;
            this.label = 1;
            if (oz3Var.emit(obj2, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
