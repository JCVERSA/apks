package com.transsion.push.utils;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.baselib.db.notification.PullMsgResp;
import com.transsion.push.helper.RoomHelper;
import com.transsion.pushapi.TriggerSource;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.utils.NotificationUtil$loadSeekSubjectMsg$1", f = "NotificationUtil.kt", l = {TTAdConstant.VIDEO_URL_CODE}, m = "invokeSuspend")
final class NotificationUtil$loadSeekSubjectMsg$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Context $context;
    final TriggerSource $triggerSource;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationUtil$loadSeekSubjectMsg$1(Context context, TriggerSource triggerSource, Continuation<? super NotificationUtil$loadSeekSubjectMsg$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$triggerSource = triggerSource;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationUtil$loadSeekSubjectMsg$1(this.$context, this.$triggerSource, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objE;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            if (com.blankj.utilcode.util.c0.f(u.f48941a.b().getLong("seeking_msg_show_time", 0L))) {
                return Unit.f64096a;
            }
            RoomHelper roomHelper = RoomHelper.f48763a;
            Context context = this.$context;
            this.label = 1;
            objE = roomHelper.e(context, this);
            if (objE == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            objE = obj;
        }
        List list = (List) objE;
        if (list != null) {
            Context context2 = this.$context;
            TriggerSource triggerSource = this.$triggerSource;
            if (list.isEmpty()) {
                return Unit.f64096a;
            }
            NotificationUtil notificationUtil = NotificationUtil.f48898a;
            NotificationUtil.f48899b = notificationUtil.G();
            notificationUtil.a0(context2, new PullMsgResp(list, NotificationUtil.f48899b, null, 4, null), triggerSource);
            wf.a.C0922a c0922a = wf.a.f74274a;
            MsgBean msgBean = (MsgBean) CollectionsKt.k0(list);
            wf.a.C0922a.f(c0922a, "NotificationUtil", "show seek notification msg: " + (msgBean != null ? msgBean.getReceiveTime() : null), false, 4, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NotificationUtil$loadSeekSubjectMsg$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
