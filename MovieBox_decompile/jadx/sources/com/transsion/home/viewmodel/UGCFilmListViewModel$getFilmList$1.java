package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.FilmListRequest;
import com.transsion.home.bean.FilmListResponse;
import com.transsion.home.bean.UgcGenreTopRespGenreItem;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.UGCFilmListViewModel$getFilmList$1", f = "UGCFilmListViewModel.kt", l = {127}, m = "invokeSuspend")
@SourceDebugExtension
final class UGCFilmListViewModel$getFilmList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $currentPage;
    int label;
    final UGCFilmListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCFilmListViewModel$getFilmList$1(UGCFilmListViewModel uGCFilmListViewModel, int i10, Continuation<? super UGCFilmListViewModel$getFilmList$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCFilmListViewModel;
        this.$currentPage = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCFilmListViewModel$getFilmList$1(this.this$0, this.$currentPage, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<UgcGenreTopRespGenreItem> listL;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                FilmListRequest filmListRequest = new FilmListRequest(this.this$0.f44509c, this.$currentPage, 20);
                String strJ = com.blankj.utilcode.util.o.j(filmListRequest);
                wf.a.C0922a.f(wf.a.f74274a, "FilmListViewModel", "getFilmList: request params=" + strJ, false, 4, null);
                yk.b bVar = this.this$0.f44508b;
                String strA = gg.a.f61067a.a();
                String type = filmListRequest.getType();
                int page = filmListRequest.getPage();
                int perPage = filmListRequest.getPerPage();
                this.label = 1;
                obj = bVar.b(strA, type, page, perPage, this);
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
            wf.a.C0922a.f(c0922a, "FilmListViewModel", "getFilmList: response code=" + baseDto.getCode() + ", msg=" + baseDto.getMsg(), false, 4, null);
            if (!Intrinsics.c(baseDto.getCode(), "0") || baseDto.getData() == null) {
                this.this$0.k().n(null);
                wf.a.C0922a.l(c0922a, "FilmListViewModel", "getFilmList failed: code=" + baseDto.getCode() + ", msg=" + baseDto.getMsg(), false, 4, null);
            } else {
                FilmListResponse filmListResponse = (FilmListResponse) baseDto.getData();
                this.this$0.f44511e = filmListResponse != null ? filmListResponse.getPager() : null;
                if (filmListResponse == null || (listL = filmListResponse.getItems()) == null) {
                    listL = CollectionsKt.l();
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : listL) {
                    UGCContent ugcContent = ((UgcGenreTopRespGenreItem) obj2).getUgcContent();
                    if (Intrinsics.c(ugcContent != null ? ugcContent.getTopicType() : null, "UGC_VIDEO") && ugcContent.getVideo() != null) {
                        arrayList.add(obj2);
                    }
                }
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                int size = arrayList.size();
                Pager pager = this.this$0.f44511e;
                Boolean hasMore = pager != null ? pager.getHasMore() : null;
                Pager pager2 = this.this$0.f44511e;
                wf.a.C0922a.f(c0922a2, "FilmListViewModel", "getFilmList success, size=" + size + ", hasMore=" + hasMore + ", nextPage=" + (pager2 != null ? pager2.getNextPage() : null), false, 4, null);
                this.this$0.k().n(arrayList);
                String desc = filmListResponse != null ? filmListResponse.getDesc() : null;
                if (!this.this$0.f44515i && this.$currentPage == 1 && desc != null && desc.length() != 0) {
                    wf.a.C0922a.f(c0922a2, "FilmListViewModel", "getFilmList: emit title desc='" + desc + "' for first load", false, 4, null);
                    this.this$0.j().n(desc);
                    this.this$0.f44515i = true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.f74274a.i("FilmListViewModel", "getFilmList exception: " + e10.getMessage(), true);
            this.this$0.k().n(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCFilmListViewModel$getFilmList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
