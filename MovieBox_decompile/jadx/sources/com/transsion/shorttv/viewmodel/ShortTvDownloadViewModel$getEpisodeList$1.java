package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.DownloadItem;
import com.transsion.shorttv.bean.DownloadListBean;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.Pager;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Video;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$getEpisodeList$1", f = "ShortTvDownloadViewModel.kt", l = {112}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvDownloadViewModel$getEpisodeList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $endPosition;
    final int $startPosition;
    final String $subjectId;
    int label;
    final ShortTvDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDownloadViewModel$getEpisodeList$1(ShortTvDownloadViewModel shortTvDownloadViewModel, String str, int i10, int i11, Continuation<? super ShortTvDownloadViewModel$getEpisodeList$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvDownloadViewModel;
        this.$subjectId = str;
        this.$startPosition = i10;
        this.$endPosition = i11;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvDownloadViewModel$getEpisodeList$1(this.this$0, this.$subjectId, this.$startPosition, this.$endPosition, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ShortTvInfoEpisodeList shortTvInfoEpisodeList;
        List<ShortTVItem> items;
        List<String> tags;
        Integer subjectType;
        String title;
        Video videoAddress;
        Integer size;
        Video videoAddress2;
        List<ShortTVItem> items2;
        Object objC;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                wf.a.C0922a.f(wf.a.f74274a, "ShortTvDownload", "getShortTvEpisodeList---start", false, 4, null);
                sr.a aVarK = this.this$0.k();
                String str = this.$subjectId;
                int i11 = this.$startPosition;
                int i12 = this.$endPosition;
                this.label = 1;
                objC = sr.a.C0885a.c(aVarK, str, i11, i12, 0, null, this, 24, null);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objC = obj;
            }
            BaseDto baseDto = (BaseDto) objC;
            shortTvInfoEpisodeList = Intrinsics.c(baseDto.getCode(), "0") ? (ShortTvInfoEpisodeList) baseDto.getData() : null;
        } catch (Exception unused) {
        }
        if (shortTvInfoEpisodeList != null) {
            shortTvInfoEpisodeList.setStartPosition(this.$startPosition);
        }
        if (shortTvInfoEpisodeList != null) {
            shortTvInfoEpisodeList.setEndPosition(this.$endPosition);
        }
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvDownload", "getShortTvEpisodeList---end, size= " + ((shortTvInfoEpisodeList == null || (items2 = shortTvInfoEpisodeList.getItems()) == null) ? null : Boxing.d(items2.size())), false, 4, null);
        if (shortTvInfoEpisodeList == null || (items = shortTvInfoEpisodeList.getItems()) == null) {
            this.this$0.l().n(null);
            return Unit.f64096a;
        }
        ArrayList arrayList = new ArrayList();
        for (ShortTVItem shortTVItem : items) {
            String id2 = shortTVItem.getId();
            Subject info = shortTvInfoEpisodeList.getInfo();
            if (info == null || (title = info.getTitle()) == null) {
                title = "";
            }
            String str2 = title + " EP" + shortTVItem.getEp();
            Media video = shortTVItem.getVideo();
            String url = (video == null || (videoAddress2 = video.getVideoAddress()) == null) ? null : videoAddress2.getUrl();
            Media video2 = shortTVItem.getVideo();
            DownloadItem downloadItem = new DownloadItem(id2, str2, url, 2, (video2 == null || (videoAddress = video2.getVideoAddress()) == null || (size = videoAddress.getSize()) == null) ? null : Boxing.e(size.intValue()), "", shortTVItem.getId(), Boxing.d(shortTVItem.getSe()), shortTVItem.getSe(), shortTVItem.getEp(), 0, "", null, Boxing.d(0), null, 1024, null);
            downloadItem.setEpisodeItem(shortTVItem);
            arrayList.add(downloadItem);
        }
        Pager pager = shortTvInfoEpisodeList.getPager();
        Subject info2 = shortTvInfoEpisodeList.getInfo();
        Cover cover = info2 != null ? info2.getCover() : null;
        Subject info3 = shortTvInfoEpisodeList.getInfo();
        String subjectId = info3 != null ? info3.getSubjectId() : null;
        Subject info4 = shortTvInfoEpisodeList.getInfo();
        String title2 = info4 != null ? info4.getTitle() : null;
        Subject info5 = shortTvInfoEpisodeList.getInfo();
        int iIntValue = (info5 == null || (subjectType = info5.getSubjectType()) == null) ? 7 : subjectType.intValue();
        Subject info6 = shortTvInfoEpisodeList.getInfo();
        String title3 = info6 != null ? info6.getTitle() : null;
        Subject info7 = shortTvInfoEpisodeList.getInfo();
        String description = info7 != null ? info7.getDescription() : null;
        Subject info8 = shortTvInfoEpisodeList.getInfo();
        DownloadListBean downloadListBean = new DownloadListBean(arrayList, pager, cover, subjectId, null, title2, iIntValue, title3, Boxing.d(this.$startPosition), info8 != null ? Boxing.d(info8.getTotalEpisode()) : null, null, description, null, null, null, null, null, null, false, 0, 0, 2094080, null);
        int i13 = this.$startPosition;
        int i14 = this.$endPosition;
        downloadListBean.setStartPosition(i13);
        downloadListBean.setEndPosition(i14);
        Subject info9 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setGenre(info9 != null ? info9.getGenre() : null);
        Subject info10 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setTags((info10 == null || (tags = info10.getTags()) == null) ? null : CollectionsKt.U0(tags));
        Subject info11 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setReleaseDate(info11 != null ? info11.getReleaseDate() : null);
        Subject info12 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setShortTVFavInfo(info12 != null ? info12.getShortTVFavInfo() : null);
        this.this$0.l().n(downloadListBean);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvDownloadViewModel$getEpisodeList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
