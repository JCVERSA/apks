package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.ugc.UGCFilterItem;
import com.transsion.home.bean.ugc.UGCFilterResponse;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
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
@DebugMetadata(c = "com.transsion.home.viewmodel.UGCFilterViewModel$getFilterItems$1", f = "UGCFilterViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class UGCFilterViewModel$getFilterItems$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $category;
    int label;
    final UGCFilterViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCFilterViewModel$getFilterItems$1(String str, UGCFilterViewModel uGCFilterViewModel, Continuation<? super UGCFilterViewModel$getFilterItems$1> continuation) {
        super(2, continuation);
        this.$category = str;
        this.this$0 = uGCFilterViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCFilterViewModel$getFilterItems$1(this.$category, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<UGCFilterItem> items;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                wf.a.f74274a.c("UGCFilterViewModel", "getFilterItems: category=" + this.$category, false);
                yk.c cVar = this.this$0.f44521e;
                String strA = gg.a.f61067a.a();
                String str = this.$category;
                this.label = 1;
                obj = cVar.c(strA, str, this);
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
            this.this$0.k().n(baseDto);
            wf.a.C0922a c0922a = wf.a.f74274a;
            UGCFilterResponse uGCFilterResponse = (UGCFilterResponse) baseDto.getData();
            c0922a.c("UGCFilterViewModel", "getFilterItems success: items size=" + ((uGCFilterResponse == null || (items = uGCFilterResponse.getItems()) == null) ? 0 : items.size()), false);
        } catch (Exception e10) {
            e10.printStackTrace();
            this.this$0.k().n(null);
            wf.a.f74274a.i("UGCFilterViewModel", "getFilterItems error: " + e10.getMessage() + ", category=" + this.$category, true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCFilterViewModel$getFilterItems$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
