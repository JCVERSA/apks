package com.transsion.push.helper;

import android.content.Context;
import com.transsion.baselib.db.notification.MsgBean;
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
@DebugMetadata(c = "com.transsion.push.helper.NotificationShowHelper$updateShowTime$1", f = "NotificationShowHelper.kt", l = {783}, m = "invokeSuspend")
final class NotificationShowHelper$updateShowTime$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $context;
    final MsgBean $msgBean;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationShowHelper$updateShowTime$1(Context context, MsgBean msgBean, Continuation<? super NotificationShowHelper$updateShowTime$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$msgBean = msgBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationShowHelper$updateShowTime$1(this.$context, this.$msgBean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            RoomHelper roomHelper = RoomHelper.f48763a;
            Context context = this.$context;
            MsgBean msgBean = this.$msgBean;
            this.label = 1;
            if (roomHelper.h(context, msgBean, this) == objF) {
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
        return ((NotificationShowHelper$updateShowTime$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
