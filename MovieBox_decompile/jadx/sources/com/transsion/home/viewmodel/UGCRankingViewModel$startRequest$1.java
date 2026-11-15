package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.UGCRankAllData;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.UGCRankingViewModel$startRequest$1", f = "UGCRankingViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
final class UGCRankingViewModel$startRequest$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isLoadMore;
    int label;
    final UGCRankingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCRankingViewModel$startRequest$1(boolean z10, UGCRankingViewModel uGCRankingViewModel, Continuation<? super UGCRankingViewModel$startRequest$1> continuation) {
        super(2, continuation);
        this.$isLoadMore = z10;
        this.this$0 = uGCRankingViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCRankingViewModel$startRequest$1(this.$isLoadMore, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String nextPage;
        Pager pager;
        String page;
        Pager pager2;
        Pager pager3;
        Pager pager4;
        List<UGCContent> items;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                wf.a.C0922a.f(wf.a.f74274a, "UGCRankingViewModel", "startRequest: isLoadMore=" + this.$isLoadMore + ", page=" + this.this$0.f44526c + ", category=" + this.this$0.f44528e + ", tabId=" + this.this$0.f44529f, false, 4, null);
                yk.d dVar = this.this$0.f44527d;
                String str = this.this$0.f44528e;
                String str2 = this.this$0.f44529f;
                String str3 = this.this$0.f44526c;
                this.label = 1;
                obj = yk.d.a.b(dVar, null, str2, str, str3, 0, this, 17, null);
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
            wf.a.C0922a c0922a = wf.a.f74274a;
            UGCRankAllData uGCRankAllData = (UGCRankAllData) baseDto.getData();
            Integer numD = (uGCRankAllData == null || (items = uGCRankAllData.getItems()) == null) ? null : Boxing.d(items.size());
            UGCRankAllData uGCRankAllData2 = (UGCRankAllData) baseDto.getData();
            wf.a.C0922a.f(c0922a, "UGCRankingViewModel", "startRequest: received data, items size=" + numD + ", hasMore=" + ((uGCRankAllData2 == null || (pager4 = uGCRankAllData2.getPager()) == null) ? null : pager4.getHasMore()), false, 4, null);
            this.this$0.o((UGCRankAllData) baseDto.getData());
            this.this$0.i((UGCRankAllData) baseDto.getData());
            if (this.$isLoadMore) {
                this.this$0.j().n(baseDto.getData());
                UGCRankingViewModel uGCRankingViewModel = this.this$0;
                UGCRankAllData uGCRankAllData3 = (UGCRankAllData) baseDto.getData();
                if (uGCRankAllData3 == null || (pager3 = uGCRankAllData3.getPager()) == null || (page = pager3.getNextPage()) == null) {
                    UGCRankAllData uGCRankAllData4 = (UGCRankAllData) baseDto.getData();
                    page = (uGCRankAllData4 == null || (pager2 = uGCRankAllData4.getPager()) == null) ? null : pager2.getPage();
                    if (page == null) {
                        page = this.this$0.f44526c;
                    }
                }
                uGCRankingViewModel.f44526c = page;
                wf.a.C0922a.f(c0922a, "UGCRankingViewModel", "startRequest: loadMore completed, nextPage=" + this.this$0.f44526c, false, 4, null);
            } else {
                this.this$0.k().n(baseDto.getData());
                UGCRankingViewModel uGCRankingViewModel2 = this.this$0;
                UGCRankAllData uGCRankAllData5 = (UGCRankAllData) baseDto.getData();
                if (uGCRankAllData5 == null || (pager = uGCRankAllData5.getPager()) == null || (nextPage = pager.getNextPage()) == null) {
                    nextPage = "1";
                }
                uGCRankingViewModel2.f44526c = nextPage;
                wf.a.C0922a.f(c0922a, "UGCRankingViewModel", "startRequest: initial load completed, nextPage=" + this.this$0.f44526c, false, 4, null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.f74274a.i("UGCRankingViewModel", "startRequest: exception " + e10.getMessage(), true);
            if (this.$isLoadMore) {
                this.this$0.j().n(null);
            } else {
                this.this$0.k().n(null);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCRankingViewModel$startRequest$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
