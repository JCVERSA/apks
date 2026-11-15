package com.transsion.search.fragment.result;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.search.bean.SearchResultEntity;
import com.transsion.search.net.RequestSearchResultEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.MediaType;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.search.fragment.result.SearchResultViewModel$requestSearchResult$1", f = "SearchResultViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE}, m = "invokeSuspend")
final class SearchResultViewModel$requestSearchResult$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isLoadMore;
    final String $keyword;
    final String $tabId;
    private Object L$0;
    boolean Z$0;
    int label;
    final SearchResultViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchResultViewModel$requestSearchResult$1(SearchResultViewModel searchResultViewModel, String str, String str2, boolean z10, Continuation<? super SearchResultViewModel$requestSearchResult$1> continuation) {
        super(2, continuation);
        this.this$0 = searchResultViewModel;
        this.$keyword = str;
        this.$tabId = str2;
        this.$isLoadMore = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SearchResultViewModel$requestSearchResult$1 searchResultViewModel$requestSearchResult$1 = new SearchResultViewModel$requestSearchResult$1(this.this$0, this.$keyword, this.$tabId, this.$isLoadMore, continuation);
        searchResultViewModel$requestSearchResult$1.L$0 = obj;
        return searchResultViewModel$requestSearchResult$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        SearchResultViewModel searchResultViewModel;
        boolean z10;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                RequestSearchResultEntity requestSearchResultEntity = new RequestSearchResultEntity(this.this$0.f50110f, 10, this.$keyword);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("page", Boxing.d(requestSearchResultEntity.getPage()));
                jsonObject.addProperty("perPage", Boxing.d(requestSearchResultEntity.getPerPage()));
                jsonObject.addProperty("keyword", requestSearchResultEntity.getKeyword());
                String str = this.$tabId;
                if (str != null && str.length() != 0) {
                    jsonObject.addProperty("tabId", this.$tabId);
                }
                RequestBody.Companion companion = RequestBody.INSTANCE;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion.create(string, MediaType.INSTANCE.parse("application/json"));
                searchResultViewModel = this.this$0;
                boolean z11 = this.$isLoadMore;
                Result.Companion companion2 = Result.INSTANCE;
                cq.g gVarL = searchResultViewModel.l();
                String strL = CacheIpPool.f39857a.l();
                this.L$0 = searchResultViewModel;
                this.Z$0 = z11;
                this.label = 1;
                obj = gVarL.c(strL, requestBodyCreate, this);
                if (obj == objF) {
                    return objF;
                }
                z10 = z11;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z10 = this.Z$0;
                searchResultViewModel = (SearchResultViewModel) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            SearchResultEntity searchResultEntity = (SearchResultEntity) baseDto.getData();
            if (searchResultEntity != null) {
                SearchResultEntity searchResultEntity2 = (SearchResultEntity) baseDto.getData();
                searchResultEntity.setConvertData(searchResultViewModel.h(searchResultEntity2 != null ? searchResultEntity2.getResults() : null));
            }
            if (z10) {
                searchResultViewModel.j().n(baseDto.getData());
            } else {
                searchResultViewModel.k().n(baseDto.getData());
            }
            int i11 = searchResultViewModel.f50110f;
            searchResultViewModel.f50110f = 1 + i11;
            objM453constructorimpl = Result.m453constructorimpl(Boxing.d(i11));
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        SearchResultViewModel searchResultViewModel2 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            searchResultViewModel2.k().n(null);
            wf.a.C0922a.l(wf.a.f74274a, "SearchResultViewModel", "requestSearchResult error: " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SearchResultViewModel$requestSearchResult$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
