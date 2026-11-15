package com.transsion.subroom.deeplink;

import android.content.Context;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.push.bean.MsgStatus;
import com.transsion.push.helper.RoomHelper;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subroom.deeplink.DeepLinkHandler$updateMsgStatus$1", f = "DeepLinkHandler.kt", l = {Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE}, m = "invokeSuspend")
final class DeepLinkHandler$updateMsgStatus$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isPermanent;
    final String $messageId;
    Object L$0;
    int label;
    final DeepLinkHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeepLinkHandler$updateMsgStatus$1(String str, DeepLinkHandler deepLinkHandler, boolean z10, Continuation<? super DeepLinkHandler$updateMsgStatus$1> continuation) {
        super(2, continuation);
        this.$messageId = str;
        this.this$0 = deepLinkHandler;
        this.$isPermanent = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DeepLinkHandler$updateMsgStatus$1(this.$messageId, this.this$0, this.$isPermanent, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0045  */
    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:22:0x006e A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        MsgBean msgBean;
        boolean z10;
        MsgStatus msgStatus;
        RoomHelper roomHelper;
        Context applicationContext;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            if (this.$messageId != null) {
                RoomHelper roomHelper2 = RoomHelper.f48763a;
                Context applicationContext2 = this.this$0.getApplicationContext();
                Intrinsics.g(applicationContext2, "getApplicationContext(...)");
                String str = this.$messageId;
                this.label = 1;
                obj = roomHelper2.c(applicationContext2, str, this);
                if (obj == objF) {
                    return objF;
                }
                msgBean = (MsgBean) obj;
                if (msgBean != null) {
                    z10 = this.$isPermanent;
                    DeepLinkHandler deepLinkHandler = this.this$0;
                    msgStatus = MsgStatus.CLICKED;
                    msgBean.setMsgStatus(msgStatus.ordinal());
                    if (z10) {
                        msgBean.setPermanentMsgStatus(msgStatus.ordinal());
                    }
                    roomHelper = RoomHelper.f48763a;
                    applicationContext = deepLinkHandler.getApplicationContext();
                    Intrinsics.g(applicationContext, "getApplicationContext(...)");
                    this.L$0 = msgBean;
                    this.label = 2;
                    if (roomHelper.h(applicationContext, msgBean, this) == objF) {
                        return objF;
                    }
                }
            }
        } else if (i10 == 1) {
            ResultKt.b(obj);
            msgBean = (MsgBean) obj;
            if (msgBean != null) {
                z10 = this.$isPermanent;
                DeepLinkHandler deepLinkHandler2 = this.this$0;
                msgStatus = MsgStatus.CLICKED;
                msgBean.setMsgStatus(msgStatus.ordinal());
                if (z10) {
                    msgBean.setPermanentMsgStatus(msgStatus.ordinal());
                }
                roomHelper = RoomHelper.f48763a;
                applicationContext = deepLinkHandler2.getApplicationContext();
                Intrinsics.g(applicationContext, "getApplicationContext(...)");
                this.L$0 = msgBean;
                this.label = 2;
                if (roomHelper.h(applicationContext, msgBean, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DeepLinkHandler$updateMsgStatus$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
