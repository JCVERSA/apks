package com.transsion.push.helper;

import com.transsion.push.db.PermanentRoom;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.helper.PushPermanentManager$checkShow$1", f = "PushPermanentManager.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE}, m = "invokeSuspend")
final class PushPermanentManager$checkShow$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    PushPermanentManager$checkShow$1(Continuation<? super PushPermanentManager$checkShow$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PushPermanentManager$checkShow$1(continuation);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:19:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:20:0x00b1  */
    @Override
    public final Object invokeSuspend(Object obj) {
        PushPermanentManager pushPermanentManager;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            wf.a.f74274a.c("PUSH_SHOW", "checkShow mPage:" + PushPermanentManager.f48749e + ",size:" + PushPermanentManager.f48747c.size() + ",lastRequestTime:" + PushPermanentManager.f48753i + ", mTitle:" + PushPermanentManager.f48745a.s(), true);
            if (PushPermanentManager.f48749e == null) {
                PermanentRoom permanentRoom = PermanentRoom.f48721a;
                PushPermanentManager.f48749e = permanentRoom.g();
                PushPermanentManager.f48748d = permanentRoom.f();
                PushPermanentManager.f48752h = permanentRoom.i();
                PushPermanentManager.f48753i = permanentRoom.h();
                this.label = 1;
                obj = permanentRoom.e(this);
                if (obj == objF) {
                    return objF;
                }
            }
            if (PushPermanentManager.f48747c.size() >= 10) {
                pushPermanentManager = PushPermanentManager.f48745a;
                if (pushPermanentManager.t()) {
                    pushPermanentManager.v();
                } else {
                    PushPermanentManager.f48745a.q();
                }
            } else {
                PushPermanentManager.f48745a.q();
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        PushPermanentManager.f48747c = new CopyOnWriteArrayList((Collection) obj);
        if (PushPermanentManager.f48747c.size() >= 10) {
            pushPermanentManager = PushPermanentManager.f48745a;
            if (pushPermanentManager.t()) {
                PushPermanentManager.f48745a.q();
            } else {
                pushPermanentManager.v();
            }
        } else {
            PushPermanentManager.f48745a.q();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushPermanentManager$checkShow$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
