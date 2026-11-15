package com.transsion.push.utils;

import android.content.Context;
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
@DebugMetadata(c = "com.transsion.push.utils.NotificationUtil$loadNotificationMsg$1", f = "NotificationUtil.kt", l = {371, 382}, m = "invokeSuspend")
final class NotificationUtil$loadNotificationMsg$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Context $context;
    final TriggerSource $triggerSource;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationUtil$loadNotificationMsg$1(TriggerSource triggerSource, Context context, Continuation<? super NotificationUtil$loadNotificationMsg$1> continuation) {
        super(2, continuation);
        this.$triggerSource = triggerSource;
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationUtil$loadNotificationMsg$1(this.$triggerSource, this.$context, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x009c  */
    /* JADX WARN: Code duplicated, block: B:44:0x00be A[Catch: Exception -> 0x001b, TRY_LEAVE, TryCatch #0 {Exception -> 0x001b, blocks: (B:7:0x0014, B:34:0x0094, B:37:0x009e, B:39:0x00a6, B:41:0x00ac, B:43:0x00b4, B:44:0x00be, B:13:0x0026, B:25:0x004d, B:27:0x0051, B:29:0x005b, B:30:0x0084, B:16:0x002f, B:18:0x0035, B:20:0x003d, B:22:0x0040), top: B:49:0x000a }] */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object objF;
        List list;
        MsgBean msgBean;
        Object objF2 = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                    objA = obj;
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    list = (List) this.L$0;
                    ResultKt.b(obj);
                    objF = obj;
                }
                if (((Boolean) objF).booleanValue()) {
                    NotificationUtil.f48898a.D(this.$context, this.$triggerSource);
                    wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "get notification from network", false, 4, null);
                } else if (list != null && (msgBean = (MsgBean) CollectionsKt.k0(list)) != null && msgBean.getBuiltIn() && yg.l.f76264a.e()) {
                    NotificationUtil.f48898a.D(this.$context, this.$triggerSource);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            if (this.$triggerSource == TriggerSource.NETWORK_CONNECTED && !com.transsion.baselib.report.k.f42210a.q()) {
                return Unit.f64096a;
            }
            RoomHelper roomHelper = RoomHelper.f48763a;
            Context context = this.$context;
            this.label = 1;
            objA = roomHelper.a(context, this);
            if (objA == objF2) {
                return objF2;
            }
            List list2 = (List) objA;
            if (list2 != null) {
                Context context2 = this.$context;
                TriggerSource triggerSource = this.$triggerSource;
                if (!list2.isEmpty()) {
                    NotificationUtil notificationUtil = NotificationUtil.f48898a;
                    NotificationUtil.f48899b = notificationUtil.G();
                    notificationUtil.a0(context2, new PullMsgResp(list2, NotificationUtil.f48899b, null, 4, null), triggerSource);
                    wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", " show notification from db", false, 4, null);
                }
            }
            RoomHelper roomHelper2 = RoomHelper.f48763a;
            Context context3 = this.$context;
            this.L$0 = list2;
            this.label = 2;
            objF = roomHelper2.f(context3, this);
            if (objF == objF2) {
                return objF2;
            }
            list = list2;
            if (((Boolean) objF).booleanValue()) {
                NotificationUtil.f48898a.D(this.$context, this.$triggerSource);
                wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "get notification from network", false, 4, null);
            } else if (list != null) {
                NotificationUtil.f48898a.D(this.$context, this.$triggerSource);
            }
            return Unit.f64096a;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NotificationUtil$loadNotificationMsg$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
