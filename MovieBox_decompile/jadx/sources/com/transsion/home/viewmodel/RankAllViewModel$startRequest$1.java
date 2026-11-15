package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.RankAllData;
import com.transsion.moviedetailapi.bean.Pager;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.RankAllViewModel$startRequest$1", f = "RankAllViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE}, m = "invokeSuspend")
final class RankAllViewModel$startRequest$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isLoadMore;
    int label;
    final RankAllViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RankAllViewModel$startRequest$1(boolean z10, RankAllViewModel rankAllViewModel, Continuation<? super RankAllViewModel$startRequest$1> continuation) {
        super(2, continuation);
        this.$isLoadMore = z10;
        this.this$0 = rankAllViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RankAllViewModel$startRequest$1(this.$isLoadMore, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Pager pager;
        String page;
        Integer numV;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                int i11 = this.$isLoadMore ? this.this$0.f44473c + 1 : this.this$0.f44473c;
                yk.d dVar = this.this$0.f44474d;
                String str = this.this$0.f44475e;
                int i12 = this.this$0.f44476f;
                String str2 = this.this$0.f44477g;
                this.label = 1;
                obj = yk.d.a.a(dVar, null, i12, str, i11, 0, str2, this, 17, null);
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
            this.this$0.m((RankAllData) baseDto.getData());
            if (this.$isLoadMore) {
                this.this$0.i().n((RankAllData) baseDto.getData());
                RankAllViewModel rankAllViewModel = this.this$0;
                RankAllData rankAllData = (RankAllData) baseDto.getData();
                rankAllViewModel.f44473c = (rankAllData == null || (pager = rankAllData.getPager()) == null || (page = pager.getPage()) == null || (numV = StringsKt.v(page)) == null) ? this.this$0.f44473c + 1 : numV.intValue();
            } else {
                this.this$0.j().n(baseDto.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.C0922a c0922a = wf.a.f74274a;
            String simpleName = RankAllViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0922a.i(simpleName, "exceptionHandler " + e10.getMessage(), true);
            if (this.$isLoadMore) {
                this.this$0.i().n(null);
            } else {
                this.this$0.j().n(null);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RankAllViewModel$startRequest$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
