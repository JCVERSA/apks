package com.transsion.member;

import com.tencent.mmkv.MMKV;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.MemberProvider$checkShowAdState$1", f = "MemberProvider.kt", l = {Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
final class MemberProvider$checkShowAdState$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function0<Unit> $callback;
    int label;
    final MemberProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberProvider$checkShowAdState$1(MemberProvider memberProvider, Function0<Unit> function0, Continuation<? super MemberProvider$checkShowAdState$1> continuation) {
        super(2, continuation);
        this.this$0 = memberProvider;
        this.$callback = function0;
    }

    public static final Unit d(MemberProvider memberProvider, Function0 function0, MemberCheckResult memberCheckResult) {
        List<String> vipAdScenes;
        String pointUrl;
        Integer multiDownloadLimit;
        String inviteH5Url;
        String inviteRewardDays;
        Boolean vipPayEnable;
        Boolean vipEnable;
        Boolean boolIsPassed;
        String string;
        a aVar = a.f45001a;
        String strT = memberProvider.T();
        MMKV mmkvC = mg.a.f66402a.c();
        String str = "";
        if (mmkvC != null && (string = mmkvC.getString("sp_code", "")) != null) {
            str = string;
        }
        aVar.a(strT + " --> checkShowAdState() --> SP_CODE = " + str + " --> it = " + memberCheckResult);
        if (memberCheckResult != null && (boolIsPassed = memberCheckResult.isPassed()) != null) {
            boolean zBooleanValue = boolIsPassed.booleanValue();
            w.f45184a.b().putBoolean("kv_is_skip_ad", zBooleanValue);
            rh.b.f71229a.c(zBooleanValue);
        }
        if (memberCheckResult != null && (vipEnable = memberCheckResult.getVipEnable()) != null) {
            w.f45184a.b().putBoolean("kv_is_enable_member", vipEnable.booleanValue());
        }
        if (memberCheckResult != null && (vipPayEnable = memberCheckResult.getVipPayEnable()) != null) {
            w.f45184a.b().putBoolean("kv_is_pay_enable_member", vipPayEnable.booleanValue());
        }
        if (memberCheckResult != null && (inviteRewardDays = memberCheckResult.getInviteRewardDays()) != null) {
            w.f45184a.b().putString("kv_invite_Reward_Days", inviteRewardDays);
        }
        if (memberCheckResult != null && (inviteH5Url = memberCheckResult.getInviteH5Url()) != null) {
            w.f45184a.b().putString("kv_invite_H5_Url", inviteH5Url);
        }
        if (memberCheckResult != null && (multiDownloadLimit = memberCheckResult.getMultiDownloadLimit()) != null) {
            w.f45184a.b().putInt("kv_parallel_download_task_num", multiDownloadLimit.intValue());
        }
        if (memberCheckResult != null && (pointUrl = memberCheckResult.getPointUrl()) != null) {
            w.f45184a.b().putString("kv_point_url", pointUrl);
        }
        if (memberCheckResult != null && (vipAdScenes = memberCheckResult.getVipAdScenes()) != null) {
            rh.b.f71229a.a(vipAdScenes);
        }
        if (function0 != null) {
        }
        return Unit.f64096a;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberProvider$checkShowAdState$1(this.this$0, this.$callback, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            MemberProvider memberProvider = this.this$0;
            MemberSceneType memberSceneType = MemberSceneType.SCENE_AD;
            Integer numD = Boxing.d(0);
            final MemberProvider memberProvider2 = this.this$0;
            final Function0<Unit> function0 = this.$callback;
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj2) {
                    return MemberProvider$checkShowAdState$1.d(memberProvider2, function0, (MemberCheckResult) obj2);
                }
            };
            this.label = 1;
            if (memberProvider.b(memberSceneType, numD, function1, this) == objF) {
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
        return ((MemberProvider$checkShowAdState$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
