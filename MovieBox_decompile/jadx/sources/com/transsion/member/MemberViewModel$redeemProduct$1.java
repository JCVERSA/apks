package com.transsion.member;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.bean.RedeemResult;
import com.transsion.memberapi.SkuItem;
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
@DebugMetadata(c = "com.transsion.member.MemberViewModel$redeemProduct$1", f = "MemberViewModel.kt", l = {298}, m = "invokeSuspend")
final class MemberViewModel$redeemProduct$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final SkuItem $skuItem;
    int label;
    final MemberViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberViewModel$redeemProduct$1(MemberViewModel memberViewModel, SkuItem skuItem, Continuation<? super MemberViewModel$redeemProduct$1> continuation) {
        super(2, continuation);
        this.this$0 = memberViewModel;
        this.$skuItem = skuItem;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberViewModel$redeemProduct$1(this.this$0, this.$skuItem, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            MemberViewModel memberViewModel = this.this$0;
            SkuItem skuItem = this.$skuItem;
            this.label = 1;
            obj = memberViewModel.I(skuItem, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        BaseDto baseDto = (BaseDto) obj;
        if (!Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0") || baseDto.getData() == null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.l(c0922a, "MemberViewModel", "RedeemProduct fail: " + (baseDto != null ? baseDto.getReason() : null) + " " + (baseDto != null ? baseDto.getCode() : null) + " " + (baseDto != null ? baseDto.getMsg() : null), false, 4, null);
            if (Intrinsics.c(baseDto != null ? baseDto.getReason() : null, "EXCHANGE_FAIL")) {
                this.this$0.f44975l.remove(this.$skuItem.getSkuId());
                wf.a.C0922a.f(c0922a, "MemberViewModel", "Should remove the orderId for " + this.$skuItem.getSkuId(), false, 4, null);
            }
            this.this$0.f44969f.q(null);
        } else {
            Object data = baseDto.getData();
            Intrinsics.e(data);
            RedeemResult redeemResult = (RedeemResult) data;
            if (Intrinsics.c(redeemResult.getOrderId(), this.this$0.f44975l.get(this.$skuItem.getSkuId()))) {
                wf.a.C0922a.f(wf.a.f74274a, "MemberViewModel", "RedeemProductSucceed: " + redeemResult.getOrderId() + "}", false, 4, null);
                this.this$0.f44975l.remove(this.$skuItem.getSkuId());
            } else {
                wf.a.C0922a.f(wf.a.f74274a, "MemberViewModel", "RedeemProductSucceed but orderId not match: " + redeemResult.getOrderId() + "}", false, 4, null);
            }
            this.this$0.f44969f.q(redeemResult);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberViewModel$redeemProduct$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
