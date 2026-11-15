package com.transsion.push.utils;

import android.content.Context;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.notification.MsgConfig;
import com.transsion.baselib.db.notification.PullMsgResp;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.PushConfigHelper;
import com.transsion.push.helper.RoomHelper;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.utils.NotificationUtil$getLocalNotifications$1", f = "NotificationUtil.kt", l = {464}, m = "invokeSuspend")
final class NotificationUtil$getLocalNotifications$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Context $context;
    int label;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/baselib/db/notification/PullMsgResp;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.push.utils.NotificationUtil$getLocalNotifications$1$1", f = "NotificationUtil.kt", l = {445, 452, 457}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final Context $context;
        float F$0;
        private Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$context, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:35:0x00ed  */
        /* JADX WARN: Code duplicated, block: B:37:0x0101 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:40:0x010a  */
        /* JADX WARN: Code duplicated, block: B:43:0x0139 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:44:0x013a  */
        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            float f10;
            BaseDto baseDto;
            kotlinx.coroutines.flow.b bVar2;
            String startTime;
            PullMsgResp pullMsgResp;
            Context context;
            RoomHelper roomHelper;
            NotificationUtil notificationUtil;
            Object data;
            PullMsgResp pullMsgResp2;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f10 = this.F$0;
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else if (i10 == 2) {
                    PullMsgResp pullMsgResp3 = (PullMsgResp) this.L$3;
                    Context context2 = (Context) this.L$2;
                    baseDto = (BaseDto) this.L$1;
                    bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    pullMsgResp = pullMsgResp3;
                    context = context2;
                    notificationUtil = NotificationUtil.f48898a;
                    if (notificationUtil.G() == null) {
                        notificationUtil.u(context, pullMsgResp.getConfig());
                    }
                    u.f48941a.b().putString(PushConstants.SP_KEY_CONFIG, com.blankj.utilcode.util.o.j(pullMsgResp.getConfig()));
                    data = baseDto.getData();
                    this.L$0 = context;
                    this.L$1 = pullMsgResp;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 3;
                    if (bVar2.emit(data, this) == objF) {
                        return objF;
                    }
                    pullMsgResp2 = pullMsgResp;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pullMsgResp2 = (PullMsgResp) this.L$1;
                    context = (Context) this.L$0;
                    ResultKt.b(obj);
                }
                NotificationUtil.f48898a.U(context, pullMsgResp2);
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVar3 = (kotlinx.coroutines.flow.b) this.L$0;
            NotificationUtil notificationUtil2 = NotificationUtil.f48898a;
            float fY = notificationUtil2.y();
            MsgConfig msgConfig = NotificationUtil.f48899b;
            float f11 = ((msgConfig == null || (startTime = msgConfig.getStartTime()) == null) ? 8.0f : Float.parseFloat(startTime)) + PushConfigHelper.INSTANCE.getHashTime();
            if (fY < f11) {
                return Unit.f64096a;
            }
            if (yg.l.f76264a.e()) {
                wf.a.f74274a.c("NotificationUtil", "fetch localPush startTime:" + f11 + ", hour" + fY, true);
                to.b bVarE = notificationUtil2.E();
                String strA = gg.a.f61067a.a();
                this.L$0 = bVar3;
                this.F$0 = fY;
                this.label = 1;
                Object objB = bVarE.b(strA, this);
                if (objB == objF) {
                    return objF;
                }
                bVar = bVar3;
                obj = objB;
                f10 = fY;
            } else {
                baseDto = new BaseDto();
                baseDto.setData(notificationUtil2.w().a(this.$context));
                bVar2 = bVar3;
            }
            pullMsgResp = (PullMsgResp) baseDto.getData();
            if (pullMsgResp != null) {
                context = this.$context;
                roomHelper = RoomHelper.f48763a;
                this.L$0 = bVar2;
                this.L$1 = baseDto;
                this.L$2 = context;
                this.L$3 = pullMsgResp;
                this.label = 2;
                if (roomHelper.g(context, pullMsgResp, this) == objF) {
                    return objF;
                }
                notificationUtil = NotificationUtil.f48898a;
                if (notificationUtil.G() == null) {
                    notificationUtil.u(context, pullMsgResp.getConfig());
                }
                u.f48941a.b().putString(PushConstants.SP_KEY_CONFIG, com.blankj.utilcode.util.o.j(pullMsgResp.getConfig()));
                data = baseDto.getData();
                this.L$0 = context;
                this.L$1 = pullMsgResp;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 3;
                if (bVar2.emit(data, this) == objF) {
                    return objF;
                }
                pullMsgResp2 = pullMsgResp;
                NotificationUtil.f48898a.U(context, pullMsgResp2);
            }
            return Unit.f64096a;
            BaseDto baseDto2 = (BaseDto) obj;
            if (Intrinsics.c(baseDto2.getCode(), "0")) {
                com.transsion.push.helper.a.f48764a.i(String.valueOf(f10));
            }
            bVar2 = bVar;
            baseDto = baseDto2;
            pullMsgResp = (PullMsgResp) baseDto.getData();
            if (pullMsgResp != null) {
                context = this.$context;
                roomHelper = RoomHelper.f48763a;
                this.L$0 = bVar2;
                this.L$1 = baseDto;
                this.L$2 = context;
                this.L$3 = pullMsgResp;
                this.label = 2;
                if (roomHelper.g(context, pullMsgResp, this) == objF) {
                    return objF;
                }
                notificationUtil = NotificationUtil.f48898a;
                if (notificationUtil.G() == null) {
                    notificationUtil.u(context, pullMsgResp.getConfig());
                }
                u.f48941a.b().putString(PushConstants.SP_KEY_CONFIG, com.blankj.utilcode.util.o.j(pullMsgResp.getConfig()));
                data = baseDto.getData();
                this.L$0 = context;
                this.L$1 = pullMsgResp;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 3;
                if (bVar2.emit(data, this) == objF) {
                    return objF;
                }
                pullMsgResp2 = pullMsgResp;
                NotificationUtil.f48898a.U(context, pullMsgResp2);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/baselib/db/notification/PullMsgResp;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.push.utils.NotificationUtil$getLocalNotifications$1$2", f = "NotificationUtil.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "get local notification error", false, 4, null);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(continuation).invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final Context f48905a;

        a(Context context) {
            this.f48905a = context;
        }

        @Override
        public final Object emit(PullMsgResp pullMsgResp, Continuation continuation) {
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "get local notification =" + pullMsgResp + "}", false, 4, null);
            if (pullMsgResp != null) {
                Context context = this.f48905a;
                NotificationUtil notificationUtil = NotificationUtil.f48898a;
                if (notificationUtil.o()) {
                    NotificationUtil.d0(notificationUtil, context, pullMsgResp.getItems(), null, null, 12, null);
                }
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationUtil$getLocalNotifications$1(Context context, Continuation<? super NotificationUtil$getLocalNotifications$1> continuation) {
        super(2, continuation);
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationUtil$getLocalNotifications$1(this.$context, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$context, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$context);
            this.label = 1;
            if (aVarE.a(aVar, this) == objF) {
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
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NotificationUtil$getLocalNotifications$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
