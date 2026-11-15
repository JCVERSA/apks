package com.transsion.push.helper;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.push.bean.PermanentItemBean;
import com.transsion.push.db.PermanentRoom;
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
@DebugMetadata(c = "com.transsion.push.helper.PushPermanentManager$clickMsg$1", f = "PushPermanentManager.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW}, m = "invokeSuspend")
final class PushPermanentManager$clickMsg$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final PermanentItemBean $target;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushPermanentManager$clickMsg$1(PermanentItemBean permanentItemBean, Continuation<? super PushPermanentManager$clickMsg$1> continuation) {
        super(2, continuation);
        this.$target = permanentItemBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PushPermanentManager$clickMsg$1(this.$target, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            PermanentRoom permanentRoom = PermanentRoom.f48721a;
            PermanentItemBean permanentItemBean = this.$target;
            this.label = 1;
            if (permanentRoom.d(permanentItemBean, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushPermanentManager$clickMsg$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
