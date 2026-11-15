package com.transsion.push.tpush;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.push.bean.ServerMatchListItemData;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.tpush.PushRegisterManager$handleTransData$1$2$1", f = "PushRegisterManager.kt", l = {346}, m = "invokeSuspend")
final class PushRegisterManager$handleTransData$1$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final MsgBean $msg;
    final Ref.ObjectRef<String> $userId;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushRegisterManager$handleTransData$1$2$1(Ref.ObjectRef<String> objectRef, MsgBean msgBean, Continuation<? super PushRegisterManager$handleTransData$1$2$1> continuation) {
        super(2, continuation);
        this.$userId = objectRef;
        this.$msg = msgBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PushRegisterManager$handleTransData$1$2$1 pushRegisterManager$handleTransData$1$2$1 = new PushRegisterManager$handleTransData$1$2$1(this.$userId, this.$msg, continuation);
        pushRegisterManager$handleTransData$1$2$1.L$0 = obj;
        return pushRegisterManager$handleTransData$1$2$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        MsgBean msgBean;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            try {
                if (i10 == 0) {
                    ResultKt.b(obj);
                    Ref.ObjectRef<String> objectRef = this.$userId;
                    MsgBean msgBean2 = this.$msg;
                    Result.Companion companion = Result.INSTANCE;
                    uo.a aVarX = PushRegisterManager.f48859a.x();
                    String strA = gg.a.f61067a.a();
                    String strValueOf = String.valueOf(objectRef.element);
                    this.L$0 = msgBean2;
                    this.label = 1;
                    obj = aVarX.a(strA, strValueOf, this);
                    if (obj == objF) {
                        return objF;
                    }
                    msgBean = msgBean2;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    msgBean = (MsgBean) this.L$0;
                    ResultKt.b(obj);
                }
                BaseDto baseDto = (BaseDto) obj;
                ServerMatchListItemData serverMatchListItemData = (ServerMatchListItemData) baseDto.getData();
                wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "SportsLive getMatchData " + baseDto, false, 4, null);
                com.transsion.push.helper.e eVar = com.transsion.push.helper.e.f48766a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                eVar.h(applicationA, msgBean, serverMatchListItemData);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Exception e10) {
                wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "exception:" + e10, false, 4, null);
                return Unit.f64096a;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "赛事信息接口请求失败", false, 4, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushRegisterManager$handleTransData$1$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
