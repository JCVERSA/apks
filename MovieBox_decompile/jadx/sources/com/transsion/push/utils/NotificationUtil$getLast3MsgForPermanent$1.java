package com.transsion.push.utils;

import android.content.Context;
import com.transsion.push.bean.ShowOrder;
import com.transsion.push.helper.RoomHelper;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.utils.NotificationUtil$getLast3MsgForPermanent$1", f = "NotificationUtil.kt", l = {613, 616, 618}, m = "invokeSuspend")
final class NotificationUtil$getLast3MsgForPermanent$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Context $context;
    final String $messageId;
    final boolean $needDelay;
    final ShowOrder $showOrder;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationUtil$getLast3MsgForPermanent$1(boolean z10, Context context, ShowOrder showOrder, String str, Continuation<? super NotificationUtil$getLast3MsgForPermanent$1> continuation) {
        super(2, continuation);
        this.$needDelay = z10;
        this.$context = context;
        this.$showOrder = showOrder;
        this.$messageId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NotificationUtil$getLast3MsgForPermanent$1(this.$needDelay, this.$context, this.$showOrder, this.$messageId, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0058 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x005d  */
    @Override
    public final Object invokeSuspend(Object obj) {
        List list;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 == 2) {
                    ResultKt.b(obj);
                    if (((Boolean) obj).booleanValue()) {
                        RoomHelper roomHelper = RoomHelper.f48763a;
                        Context context = this.$context;
                        this.label = 3;
                        obj = roomHelper.a(context, this);
                        if (obj == objF) {
                            return objF;
                        }
                    }
                    return Unit.f64096a;
                }
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            list = (List) obj;
            if (list != null) {
                NotificationUtil.f48898a.c0(this.$context, list, this.$showOrder, this.$messageId);
            }
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", " show notification from db", false, 4, null);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        if (this.$needDelay) {
            this.label = 1;
            if (u0.a(500L, this) == objF) {
                return objF;
            }
        }
        RoomHelper roomHelper2 = RoomHelper.f48763a;
        Context context2 = this.$context;
        this.label = 2;
        obj = roomHelper2.f(context2, this);
        if (obj == objF) {
            return objF;
        }
        if (((Boolean) obj).booleanValue()) {
            RoomHelper roomHelper3 = RoomHelper.f48763a;
            Context context3 = this.$context;
            this.label = 3;
            obj = roomHelper3.a(context3, this);
            if (obj == objF) {
                return objF;
            }
            list = (List) obj;
            if (list != null) {
                NotificationUtil.f48898a.c0(this.$context, list, this.$showOrder, this.$messageId);
            }
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", " show notification from db", false, 4, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((NotificationUtil$getLast3MsgForPermanent$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
