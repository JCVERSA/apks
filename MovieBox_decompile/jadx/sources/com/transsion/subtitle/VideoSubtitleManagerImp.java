package com.transsion.subtitle;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle.helper.SubtitleSearchHelper;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.bean.SubtitleAppType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsnet.downloader.manager.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ui.v0;

public final class VideoSubtitleManagerImp implements h {

    public static final a f52701g = new a(null);

    private final Lazy f52702b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return VideoSubtitleManagerImp.D();
        }
    });

    private Set f52703c = new CopyOnWriteArraySet();

    private final String f52704d = VideoSubtitleManagerImp.class.getSimpleName();

    private final n0 f52705e = o0.a(y0.c());

    private final VideoSubtitleManagerImp$resDownloadListener$1 f52706f = new VideoSubtitleManagerImp$resDownloadListener$1(this);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final v0 A() {
        return (v0) this.f52702b.getValue();
    }

    public static final String B() {
        return com.transsion.baselib.report.launch.b.f42221a.b().getString("k_language_short_name", null);
    }

    private final void C() {
        if (!com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("subtitle_old_db_move", false)) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new VideoSubtitleManagerImp$initOldSubtitleMoveDB$1(this, null), 3, null);
            return;
        }
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " 转移数据库, 已转移过，不再处理", true);
    }

    public static final v0 D() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).y1();
    }

    private final void s(DownloadBean downloadBean, Function1 function1) {
        if (!downloadBean.isVideo() || downloadBean.isMusic()) {
            return;
        }
        if (yg.l.f76264a.e()) {
            if (downloadBean.isUGCVideo()) {
                y(downloadBean, function1);
                return;
            } else if (downloadBean.getIsStream()) {
                w(downloadBean, function1);
                return;
            } else {
                u(downloadBean, function1);
                return;
            }
        }
        wf.a.f74274a.x(com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkDownloadSubtitle ,无网络不做检测", true);
    }

    static void t(VideoSubtitleManagerImp videoSubtitleManagerImp, DownloadBean downloadBean, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        videoSubtitleManagerImp.s(downloadBean, function1);
    }

    private final void u(final DownloadBean downloadBean, final Function1 function1) {
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkDownloadSubtitleNormal fail， has no resourceId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId2 = downloadBean.getResourceId();
        if ((resourceId2 != null ? StringsKt.x(resourceId2) : null) == null) {
            wf.a.C0922a.z(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkDownloadSubtitleNormal ,resourceId is abnormal", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkDownloadSubtitleNormal, name = " + downloadBean.getName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId() + " resourceId:" + downloadBean.getResourceId(), true);
        if (downloadBean.isOutside()) {
            downloadBean.getPostIdNotNull();
        } else if (downloadBean.getPostId() == null) {
            downloadBean.getResourceId();
        }
        SubtitleDownloadManager.f52963a.e(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), downloadBean.getResourceId(), null, downloadBean.getSubjectName(), 1, downloadBean.getEpse(), downloadBean.getEp(), downloadBean.getSe(), downloadBean.getOps(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoSubtitleManagerImp.v(this.f52903a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit v(VideoSubtitleManagerImp videoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        kotlinx.coroutines.k.d(videoSubtitleManagerImp.f52705e, null, null, new VideoSubtitleManagerImp$checkDownloadSubtitleNormal$1$1(function1, z10, videoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f64096a;
    }

    private final void w(final DownloadBean downloadBean, final Function1 function1) {
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkStreamSubtitle fail， has no resourceId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId2 = downloadBean.getResourceId();
        if ((resourceId2 != null ? StringsKt.x(resourceId2) : null) == null) {
            wf.a.C0922a.z(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkStreamSubtitle ,resourceId is abnormal", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkStreamSubtitle, name = " + downloadBean.getName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId() + " resourceId:" + downloadBean.getResourceId(), true);
        SubtitleDownloadManager.f52963a.e(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), downloadBean.getResourceId(), null, downloadBean.getSubjectName(), 2, downloadBean.getEpse(), downloadBean.getEp(), downloadBean.getSe(), downloadBean.getOps(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoSubtitleManagerImp.x(this.f52906a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit x(VideoSubtitleManagerImp videoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        kotlinx.coroutines.k.d(videoSubtitleManagerImp.f52705e, null, null, new VideoSubtitleManagerImp$checkStreamSubtitle$1$1(function1, z10, videoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f64096a;
    }

    private final void y(final DownloadBean downloadBean, final Function1 function1) {
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkUGCVideoSubtitle fail，UGC视频缺少ugcVideoId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkUGCVideoSubtitle fail，UGC视频缺少resourceId（videoResourceId）", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String subtitleIdType = downloadBean.getSubtitleIdType();
        if (subtitleIdType == null) {
            subtitleIdType = downloadBean.getIsStream() ? "StreamId" : "ResourceId";
        }
        String str = subtitleIdType;
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " checkUGCVideoSubtitle, name = " + downloadBean.getName() + " ugcVideoId:" + downloadBean.getUgcVideoId() + " collectionId:" + downloadBean.getUgcVideoCollectionId() + " videoResourceId:" + resourceId + " idType:" + str, true);
        SubtitleDownloadManager.f52963a.f(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), resourceId, downloadBean.getUgcVideoId(), downloadBean.getUgcVideoCollectionId(), downloadBean.getOps(), str, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoSubtitleManagerImp.z(this.f52900a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit z(VideoSubtitleManagerImp videoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        kotlinx.coroutines.k.d(videoSubtitleManagerImp.f52705e, null, null, new VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1(function1, z10, videoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(String str, Continuation continuation) {
        VideoSubtitleManagerImp$getSubtitleList$1 videoSubtitleManagerImp$getSubtitleList$1;
        List list;
        if (continuation instanceof VideoSubtitleManagerImp$getSubtitleList$1) {
            videoSubtitleManagerImp$getSubtitleList$1 = (VideoSubtitleManagerImp$getSubtitleList$1) continuation;
            int i10 = videoSubtitleManagerImp$getSubtitleList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                videoSubtitleManagerImp$getSubtitleList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                videoSubtitleManagerImp$getSubtitleList$1 = new VideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
            }
        } else {
            videoSubtitleManagerImp$getSubtitleList$1 = new VideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
        }
        Object obj = videoSubtitleManagerImp$getSubtitleList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = videoSubtitleManagerImp$getSubtitleList$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f52963a;
            videoSubtitleManagerImp$getSubtitleList$1.L$0 = arrayList;
            videoSubtitleManagerImp$getSubtitleList$1.label = 1;
            Object objJ = subtitleDownloadManager.j(str, videoSubtitleManagerImp$getSubtitleList$1);
            if (objJ == objF) {
                return objF;
            }
            obj = objJ;
            list = arrayList;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) videoSubtitleManagerImp$getSubtitleList$1.L$0;
            ResultKt.b(obj);
        }
        List list2 = (List) obj;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                list.add(new ht.a((SubtitleDownloadTable) it.next()));
            }
        }
        return list;
    }

    @Override
    public void b(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f52963a.b(listener);
    }

    @Override
    public void c(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f52963a.s(listener);
    }

    @Override
    public void d(lt.c listener) {
        Intrinsics.h(listener, "listener");
        this.f52703c.add(listener);
    }

    @Override
    public void destroy() {
    }

    @Override
    public void e(DownloadBean bean, Function1 function1) {
        Intrinsics.h(bean, "bean");
        s(bean, function1);
    }

    @Override
    public void f(lt.c listener) {
        Intrinsics.h(listener, "listener");
        this.f52703c.remove(listener);
    }

    @Override
    public void g(ht.a bean) {
        Intrinsics.h(bean, "bean");
        Iterator it = this.f52703c.iterator();
        while (it.hasNext()) {
            ((lt.c) it.next()).g(bean);
        }
    }

    @Override
    public void h(ht.a bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f52963a.d(bean.b());
    }

    @Override
    public void i(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), this.f52704d + " 打开字幕弹窗检测字幕，subjectId:" + bean.getSubjectId() + " subtitleResId:" + bean.getSubtitleResId(), true);
        t(this, bean, null, 2, null);
    }

    @Override
    public void init() {
        SubtitleSearchHelper.f52860c.a().j();
        SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f52963a;
        subtitleDownloadManager.l(new Function0() {
            @Override
            public final Object invoke() {
                return VideoSubtitleManagerImp.B();
            }
        });
        subtitleDownloadManager.k(SubtitleAppType.MB);
        p.f57282a.a(Utils.a()).E(this.f52706f);
        C();
    }

    @Override
    public void j(ht.a bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f52963a.d(bean.b());
    }

    @Override
    public void reset() {
    }
}
