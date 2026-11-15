package lu;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownload;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResource;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.StartDownloadHelper;
import com.transsnet.downloader.manager.p;
import com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class e {

    public static final a f66122d = new a(null);

    private final b f66123a;

    private final Lazy f66124b;

    private final c0 f66125c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {
        void a(boolean z10);

        UGCImmVideoDetailViewModel b();

        UGCImmVideoDetailFragment c();

        String d();

        String e();

        UGCDownloadViewModel f();

        String g();

        UGCImmVideo getData();
    }

    public e(b host) {
        Intrinsics.h(host, "host");
        this.f66123a = host;
        this.f66124b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return e.n();
            }
        });
        this.f66125c = new c0() {
            @Override
            public final void onChanged(Object obj) {
                e.g(this.f66119a, (UGCVideoDownload) obj);
            }
        };
    }

    private final DownloadBean d(Context context, UGCVideoDownload uGCVideoDownload, UGCVideo uGCVideo, String str, String str2, String str3, String str4) {
        String resolutions;
        Integer numV;
        String url;
        String strH = qi.h.f69682a.h();
        UGCVideoDownloadResource resource = uGCVideoDownload.getResource();
        String str5 = (resource == null || (url = resource.getUrl()) == null) ? "" : url;
        UGCVideoDownloadResource resource2 = uGCVideoDownload.getResource();
        String id2 = resource2 != null ? resource2.getId() : null;
        String title = uGCVideo.getTitle();
        if (title == null) {
            title = uGCVideoDownload.getTitle();
        }
        String str6 = title;
        Cover cover = uGCVideoDownload.getCover();
        String url2 = cover != null ? cover.getUrl() : null;
        UGCVideoDownloadResource resource3 = uGCVideoDownload.getResource();
        Long size = resource3 != null ? resource3.getSize() : null;
        Cover cover2 = uGCVideoDownload.getCover();
        String thumbnail = cover2 != null ? cover2.getThumbnail() : null;
        UGCVideoDownloadResource resource4 = uGCVideoDownload.getResource();
        int iIntValue = (resource4 == null || (resolutions = resource4.getResolutions()) == null || (numV = StringsKt.v(resolutions)) == null) ? 0 : numV.intValue();
        UGCVideoDownloadResource resource5 = uGCVideoDownload.getResource();
        long duration = (resource5 != null ? resource5.getDuration() : 0L) * 1000;
        UGCVideoDownloadResource resource6 = uGCVideoDownload.getResource();
        String idType = resource6 != null ? resource6.getIdType() : null;
        String ugcVideoId = uGCVideoDownload.getUgcVideoId();
        int iVideoUGCPosition = uGCVideo.videoUGCPosition() > 0 ? uGCVideo.videoUGCPosition() : uGCVideoDownload.videoUGCPosition();
        UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
        String collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
        String title2 = uGCVideo.getTitle();
        if (title2 == null) {
            title2 = uGCVideoDownload.getTitle();
        }
        String str7 = title2;
        String category = uGCVideo.getCategory();
        if (category == null) {
            category = uGCVideoDownload.getCategory();
        }
        DownloadBean downloadBean = new DownloadBean(str5, id2, str6, url2, size, null, null, null, Long.valueOf(duration), null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, iIntValue, 0, 0, 0, 0, 0, 0, "", str, strH, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, thumbnail, null, false, false, 0, null, null, null, null, uGCVideo.getOps(), null, null, null, null, null, null, null, null, idType, collectionId, ugcVideoId, str7, "", Integer.valueOf(iVideoUGCPosition), category, null, null, null, null, str2, str3, str4, null, Intrinsics.c(uGCVideo.getVideoStyle(), UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue()), null, null, -940572960, 1071640573, 53728, null);
        downloadBean.setTaskId(UUID.randomUUID().toString());
        UGCVideoDownloadResource resource7 = uGCVideoDownload.getResource();
        downloadBean.setSubtitleIdType(resource7 != null ? resource7.getIdType() : null);
        String str8 = strH == null ? "" : strH;
        String ops = uGCVideo.getOps();
        String taskId = downloadBean.getTaskId();
        Intrinsics.e(taskId);
        h(context, str, str8, ops, taskId, downloadBean);
        wf.a.f74274a.p("download", new String[]{"UGC视频，开始下载:  resourceId = " + downloadBean.getResourceId() + ", name = " + downloadBean.getName()}, true);
        return downloadBean;
    }

    public static final void g(e eVar, UGCVideoDownload uGCVideoDownload) {
        UGCVideo ugcVideo;
        Object objM453constructorimpl;
        Context contextRequireContext;
        UGCImmVideo data = eVar.f66123a.getData();
        if (data == null || (ugcVideo = data.getUgcVideo()) == null) {
            return;
        }
        if (Intrinsics.c(uGCVideoDownload != null ? uGCVideoDownload.getUgcVideoId() : null, ugcVideo.getUgcVideoId())) {
            wf.a.C0922a.r(wf.a.f74274a, "UGCImmVideoDownload", new String[]{"单视频直接下载，已获取数据执行下载， ugcVideoId:" + ugcVideo.getUgcVideoId() + ", category:" + (uGCVideoDownload != null ? uGCVideoDownload.getCategory() : null)}, false, 4, null);
            if (uGCVideoDownload == null) {
                fh.b.f60176a.d(R$string.notification_download_failed);
                return;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = eVar.f66123a.c();
                if (uGCImmVideoDetailFragmentC != null && (contextRequireContext = uGCImmVideoDetailFragmentC.requireContext()) != null) {
                    eVar.e(contextRequireContext, uGCVideoDownload, ugcVideo, "/ugc_video/immersive_detail", eVar.f66123a.d(), eVar.f66123a.g(), eVar.f66123a.e());
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x00a6  */
    private final void h(Context context, String str, String str2, String str3, String str4, DownloadBean downloadBean) {
        String str5;
        Map mapL = MapsKt.l(TuplesKt.a(WebConstants.PAGE_FROM, str2), TuplesKt.a("ops", str3), TuplesKt.a("resource_id", downloadBean.getResourceId()), TuplesKt.a("task_id", str4), TuplesKt.a("refer_subject_id", downloadBean.getSubjectId()), TuplesKt.a("content_id", downloadBean.getUgcVideoId()), TuplesKt.a("belong_to_collection_id", downloadBean.getUgcVideoCollectionId()), TuplesKt.a("category_type", downloadBean.getUgcVideoType()), TuplesKt.a("video_track_id", downloadBean.getUgcVideoTrackId()), TuplesKt.a("video_parent_content_id", downloadBean.getUgcVideoParentVideoId()), TuplesKt.a("video_parent_video_track_id", downloadBean.getUgcVideoParentTrackId()));
        qi.h hVar = qi.h.f69682a;
        if (str == null) {
            str5 = "download_click";
        } else {
            str5 = !StringsKt.q0(str) ? str : null;
            if (str5 == null) {
                str5 = "download_click";
            }
        }
        hVar.q(str5, "download_click", mapL);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", downloadBean.getResourceId());
        com.transsion.baselib.report.e.f42196a.l("download_click", bundle, context);
    }

    private final StartDownloadHelper i() {
        return (StartDownloadHelper) this.f66124b.getValue();
    }

    public static final Unit m(e eVar, UGCVideo uGCVideo, int i10, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = eVar.f66123a.c();
        if (uGCImmVideoDetailFragmentC != null) {
            uGCImmVideoDetailFragmentC.c1(uGCVideo.getUgcVideoId());
        }
        return Unit.f64096a;
    }

    public static final StartDownloadHelper n() {
        return new StartDownloadHelper();
    }

    public final void e(Context context, UGCVideoDownload data, UGCVideo ugcVideo, String pageFrom, String trackId, String str, String str2) {
        Intrinsics.h(context, "context");
        Intrinsics.h(data, "data");
        Intrinsics.h(ugcVideo, "ugcVideo");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(trackId, "trackId");
        DownloadBean downloadBeanD = d(context, data, ugcVideo, pageFrom, trackId, str, str2);
        p.f57282a.a(Utils.a()).p(downloadBeanD);
        i().f(CollectionsKt.q(downloadBeanD));
        DownloadManagerApi.f56187j.a().T(downloadBeanD.getSubjectId(), downloadBeanD.getResourceId(), downloadBeanD.isSeries(), downloadBeanD.getTotalEpisode(), downloadBeanD.isMultiresolution(), downloadBeanD.isMultiresolution());
    }

    public final void f(UGCVideo video, i reportDelegate) {
        UGCVideoPlayInfo playInfo;
        List<UGCVideoPlayStream> resources;
        UGCVideoPlayStream uGCVideoPlayStream;
        Context contextRequireContext;
        UGCImmVideo data;
        Intrinsics.h(video, "video");
        Intrinsics.h(reportDelegate, "reportDelegate");
        UGCImmVideo data2 = this.f66123a.getData();
        if (data2 != null && (playInfo = data2.getPlayInfo()) != null && (resources = playInfo.getResources()) != null && (uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(resources)) != null && (!uGCVideoPlayStream.isOnline() || ((data = this.f66123a.getData()) != null && data.getDownloadStatus() == 5))) {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f66123a.c();
            if (uGCImmVideoDetailFragmentC == null || (contextRequireContext = uGCImmVideoDetailFragmentC.requireContext()) == null) {
                return;
            }
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66123a.b();
            reportDelegate.a("downloaded", video, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            Navigator.x(TheRouter.c("/download/ugc_my_downloads").F("main_tab_index", 1), contextRequireContext, null, 2, null);
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f66123a.b();
        reportDelegate.a("download", video, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB2 != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB2.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        String ugcVideoId = video.getUgcVideoId();
        if (ugcVideoId != null) {
            this.f66123a.a(true);
            wf.a.C0922a.r(wf.a.f74274a, "UGCImmVideoDownload", new String[]{"单视频直接下载，点击去请求下载数据--， ugcVideoId:" + video.getUgcVideoId() + "}"}, false, 4, null);
            UGCDownloadViewModel uGCDownloadViewModelF = this.f66123a.f();
            if (uGCDownloadViewModelF != null) {
                uGCDownloadViewModelF.H(ugcVideoId);
            }
            UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC2 = this.f66123a.c();
            if (uGCImmVideoDetailFragmentC2 != null) {
                uGCImmVideoDetailFragmentC2.c1(ugcVideoId);
            }
        }
    }

    public final void j(u owner) {
        LiveData liveDataZ;
        Intrinsics.h(owner, "owner");
        UGCDownloadViewModel uGCDownloadViewModelF = this.f66123a.f();
        if (uGCDownloadViewModelF == null || (liveDataZ = uGCDownloadViewModelF.z()) == null) {
            return;
        }
        liveDataZ.j(owner, this.f66125c);
    }

    public final void k(u owner) {
        LiveData liveDataZ;
        Intrinsics.h(owner, "owner");
        UGCDownloadViewModel uGCDownloadViewModelF = this.f66123a.f();
        if (uGCDownloadViewModelF == null || (liveDataZ = uGCDownloadViewModelF.z()) == null) {
            return;
        }
        liveDataZ.o(this.f66125c);
    }

    public final void l(FragmentActivity activity, final UGCVideo video, String trackId, String str, String str2) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(video, "video");
        Intrinsics.h(trackId, "trackId");
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
        UGCVideoBelongToCollection belongToCollection = video.getBelongToCollection();
        String collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
        String ugcVideoId = video.getUgcVideoId();
        UGCVideoBelongToCollection belongToCollection2 = video.getBelongToCollection();
        downloadManagerApiA.f0(activity, collectionId, ugcVideoId, belongToCollection2 != null ? belongToCollection2.getCollectionName() : null, video.getCategory(), "/ugc_video/immersive_detail", video.getOps(), video.getSubjectId(), trackId, str, str2, Intrinsics.c(video.getVideoStyle(), UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue()), new Function4() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return e.m(this.f66120a, video, ((Integer) obj).intValue(), (String) obj2, (DownloadBean) obj3, ((Boolean) obj4).booleanValue());
            }
        });
    }
}
