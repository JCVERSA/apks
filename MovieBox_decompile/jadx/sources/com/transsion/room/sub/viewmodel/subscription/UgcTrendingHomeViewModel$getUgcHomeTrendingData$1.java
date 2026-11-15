package com.transsion.room.sub.viewmodel.subscription;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import mg.b;
import okhttp3.RequestBody;
import pp.c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.sub.viewmodel.subscription.UgcTrendingHomeViewModel$getUgcHomeTrendingData$1", f = "UgcTrendingHomeViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE}, m = "invokeSuspend")
final class UgcTrendingHomeViewModel$getUgcHomeTrendingData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Integer $page;
    final String $sort;
    Object L$0;
    int label;
    final UgcTrendingHomeViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UgcTrendingHomeViewModel$getUgcHomeTrendingData$1(Integer num, UgcTrendingHomeViewModel ugcTrendingHomeViewModel, String str, Continuation<? super UgcTrendingHomeViewModel$getUgcHomeTrendingData$1> continuation) {
        super(2, continuation);
        this.$page = num;
        this.this$0 = ugcTrendingHomeViewModel;
        this.$sort = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UgcTrendingHomeViewModel$getUgcHomeTrendingData$1(this.$page, this.this$0, this.$sort, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        UgcTrendingHomeViewModel ugcTrendingHomeViewModel;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("page", this.$page);
                jsonObject.addProperty("perPage", this.this$0.f49791c);
                jsonObject.addProperty("sort", this.$sort);
                b.a aVar = b.f66404a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    UgcTrendingHomeViewModel ugcTrendingHomeViewModel2 = this.this$0;
                    c cVar = ugcTrendingHomeViewModel2.f49792d;
                    String strA = gg.a.f61067a.a();
                    this.L$0 = ugcTrendingHomeViewModel2;
                    this.label = 1;
                    obj = cVar.a(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    ugcTrendingHomeViewModel = ugcTrendingHomeViewModel2;
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ugcTrendingHomeViewModel = (UgcTrendingHomeViewModel) this.L$0;
            ResultKt.b(obj);
            BaseDto baseDto = (BaseDto) obj;
            wf.a.C0922a.f(wf.a.f74274a, "UgcTrendingHomeViewModel", "Feed Home Trending: " + baseDto, false, 4, null);
            ugcTrendingHomeViewModel.f().n(baseDto.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.C0922a c0922a = wf.a.f74274a;
            String simpleName = UgcTrendingHomeViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0922a.i(simpleName, "exceptionHandler " + e10.getMessage(), true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UgcTrendingHomeViewModel$getUgcHomeTrendingData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
