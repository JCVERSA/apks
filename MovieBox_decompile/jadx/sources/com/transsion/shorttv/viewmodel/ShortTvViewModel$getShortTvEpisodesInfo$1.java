package com.transsion.shorttv.viewmodel;

import com.cloud.tmc.integration.net.UrlKt;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import com.transsion.shorttv.bean.Video;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodesInfo$1", f = "ShortTvViewModel.kt", l = {UrlKt.HTTP_TERRITORY_ERROR, 456}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvViewModel$getShortTvEpisodesInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $selectEp;
    final int $start;
    final String $subjectId;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getShortTvEpisodesInfo$1(int i10, int i11, ShortTvViewModel shortTvViewModel, String str, Continuation<? super ShortTvViewModel$getShortTvEpisodesInfo$1> continuation) {
        super(2, continuation);
        this.$start = i10;
        this.$selectEp = i11;
        this.this$0 = shortTvViewModel;
        this.$subjectId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$getShortTvEpisodesInfo$1(this.$start, this.$selectEp, this.this$0, this.$subjectId, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:49:0x0100  */
    /* JADX WARN: Code duplicated, block: B:50:0x0105  */
    /* JADX WARN: Code duplicated, block: B:53:0x010c  */
    /* JADX WARN: Code duplicated, block: B:59:0x012c  */
    /* JADX WARN: Code duplicated, block: B:63:0x0138  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        ShortTvViewModel shortTvViewModel;
        String str;
        ShortTvViewModel shortTvViewModel2;
        BaseDto baseDto;
        ShortTvInfoEpisodeList shortTvInfoEpisodeList;
        List<ShortTVItem> items;
        ShortTvInfoEpisodeList shortTvInfoEpisodeList2;
        List listU0;
        List<ShortTVItem> items2;
        String str2;
        Object objC;
        ShortTvViewModel shortTvViewModel3;
        List<ShortTVItem> items3;
        ShortTVItem shortTVItem;
        Video videoAddress;
        String str3;
        ur.d dVarS0;
        Object objA;
        Video video;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    String str4 = (String) this.L$1;
                    shortTvViewModel3 = (ShortTvViewModel) this.L$0;
                    ResultKt.b(obj);
                    str2 = str4;
                    objC = obj;
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    video = (Video) this.L$3;
                    objC = this.L$0;
                    ResultKt.b(obj);
                    objA = obj;
                }
                str3 = (String) objA;
                videoAddress = video;
                videoAddress.setUrl(str3);
                objM453constructorimpl = Result.m453constructorimpl((BaseDto) objC);
                shortTvViewModel = this.this$0;
                str = this.$subjectId;
                if (Result.m460isSuccessimpl(objM453constructorimpl)) {
                    baseDto = (BaseDto) objM453constructorimpl;
                    shortTvInfoEpisodeList = (ShortTvInfoEpisodeList) baseDto.getData();
                    if (shortTvInfoEpisodeList != null) {
                        items = shortTvInfoEpisodeList.getItems();
                    } else {
                        items = null;
                    }
                    if (shortTvViewModel.L0(items)) {
                        shortTvViewModel.f51688s.q(baseDto.getData());
                    }
                    shortTvInfoEpisodeList2 = (ShortTvInfoEpisodeList) baseDto.getData();
                    if (shortTvInfoEpisodeList2 != null || (items2 = shortTvInfoEpisodeList2.getItems()) == null) {
                        listU0 = null;
                    } else {
                        listU0 = CollectionsKt.U0(items2);
                    }
                    shortTvViewModel.X0(str, listU0);
                }
                shortTvViewModel2 = this.this$0;
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                    shortTvViewModel2.f51688s.q(null);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "getShortTvEpisodes start isDataNotComplete：" + this.$start + " ," + this.$selectEp, false, 4, null);
            ShortTvViewModel shortTvViewModel4 = this.this$0;
            str2 = this.$subjectId;
            int i11 = this.$selectEp;
            Result.Companion companion = Result.INSTANCE;
            sr.a aVar = shortTvViewModel4.f51667a;
            this.L$0 = shortTvViewModel4;
            this.L$1 = str2;
            this.label = 1;
            objC = sr.a.C0885a.c(aVar, str2, i11, i11, 0, null, this, 24, null);
            if (objC == objF) {
                return objF;
            }
            shortTvViewModel3 = shortTvViewModel4;
            ShortTvInfoEpisodeList shortTvInfoEpisodeList3 = (ShortTvInfoEpisodeList) ((BaseDto) objC).getData();
            if (shortTvInfoEpisodeList3 != null && (items3 = shortTvInfoEpisodeList3.getItems()) != null && (shortTVItem = (ShortTVItem) CollectionsKt.k0(items3)) != null) {
                int ep2 = shortTVItem.getEp();
                Media video2 = shortTVItem.getVideo();
                if (video2 != null && (videoAddress = video2.getVideoAddress()) != null) {
                    String url = videoAddress.getUrl();
                    if (url == null || (dVarS0 = shortTvViewModel3.s0()) == null) {
                        str3 = null;
                    } else {
                        this.L$0 = objC;
                        this.L$1 = shortTVItem;
                        this.L$2 = videoAddress;
                        this.L$3 = videoAddress;
                        this.label = 2;
                        objA = dVarS0.a(str2, ep2, url, this);
                        if (objA == objF) {
                            return objF;
                        }
                        video = videoAddress;
                        str3 = (String) objA;
                        videoAddress = video;
                    }
                    videoAddress.setUrl(str3);
                }
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objC);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        shortTvViewModel = this.this$0;
        str = this.$subjectId;
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            baseDto = (BaseDto) objM453constructorimpl;
            shortTvInfoEpisodeList = (ShortTvInfoEpisodeList) baseDto.getData();
            if (shortTvInfoEpisodeList != null) {
                items = shortTvInfoEpisodeList.getItems();
            } else {
                items = null;
            }
            if (shortTvViewModel.L0(items)) {
                shortTvViewModel.f51688s.q(baseDto.getData());
            }
            shortTvInfoEpisodeList2 = (ShortTvInfoEpisodeList) baseDto.getData();
            if (shortTvInfoEpisodeList2 != null) {
                listU0 = null;
            } else {
                listU0 = null;
            }
            shortTvViewModel.X0(str, listU0);
        }
        shortTvViewModel2 = this.this$0;
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            shortTvViewModel2.f51688s.q(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$getShortTvEpisodesInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
