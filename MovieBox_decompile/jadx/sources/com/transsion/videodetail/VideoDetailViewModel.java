package com.transsion.videodetail;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

public final class VideoDetailViewModel extends androidx.p009lifecycle.t0 {

    private final androidx.p009lifecycle.b0 f55473a = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f55474b = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f55475c = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f55476d = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f55477e = new androidx.p009lifecycle.b0();

    private final HashMap f55478f = new HashMap();

    private final androidx.p009lifecycle.b0 f55479g = new androidx.p009lifecycle.b0();

    private final Lazy f55480h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return VideoDetailViewModel.E();
        }
    });

    private final Lazy f55481i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return VideoDetailViewModel.D();
        }
    });

    private String f55482j;

    private t1 f55483k;

    public final VideoDetailPlayDao A() {
        return (VideoDetailPlayDao) this.f55480h.getValue();
    }

    public static final b D() {
        return (b) kg.c.f63982e.a().h(b.class);
    }

    public static final VideoDetailPlayDao E() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final String o(Integer num) {
        int iIntValue = num != null ? num.intValue() : 0;
        if (1 > iIntValue || iIntValue >= 10) {
            return String.valueOf(iIntValue);
        }
        return "0" + iIntValue;
    }

    public final void p(String str, List list) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$fetchEpisodeMediaList$1(this, list, str, null), 3, null);
    }

    public final b z() {
        return (b) this.f55481i.getValue();
    }

    public final void B(VideoDetailMediaSource videoDetailMediaSource) {
        if (Intrinsics.c(videoDetailMediaSource, this.f55477e.f())) {
            return;
        }
        this.f55477e.q(videoDetailMediaSource);
    }

    public final void C() {
        this.f55473a.q(null);
        this.f55474b.q(null);
        this.f55475c.q(new ArrayList());
        this.f55476d.q(new LinkedHashMap());
        this.f55477e.q(null);
    }

    public final void n() {
        this.f55479g.q(null);
    }

    public final void q(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$fetchHistory$1(this, subjectId, null), 3, null);
    }

    public final void r(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        if (this.f55473a.f() == null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$fetchSeason$1(subjectId, this, null), 3, null);
        }
    }

    public final LiveData s() {
        return this.f55475c;
    }

    public final LiveData t() {
        return this.f55476d;
    }

    public final LiveData u() {
        return this.f55479g;
    }

    public final void v(VideoDetailMediaSource videoDetailMediaSource) {
        String string;
        String string2;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.v(c0922a, "VideoDetailEpisode", "--------getPlayInfo:" + videoDetailMediaSource, false, 4, null);
        if (videoDetailMediaSource == null) {
            return;
        }
        String subjectId = videoDetailMediaSource.getSubjectId();
        int se2 = videoDetailMediaSource.getSe();
        int ep2 = videoDetailMediaSource.getEp();
        String str = subjectId + "-" + se2 + "-" + ep2;
        t1 t1Var = this.f55483k;
        if (t1Var != null && t1Var.isActive()) {
            if (Intrinsics.c(this.f55482j, str)) {
                wf.a.C0922a.f(c0922a, "CommonInfo", "正在请求中 key：" + str, false, 4, null);
                return;
            }
            t1 t1Var2 = this.f55483k;
            if (t1Var2 != null) {
                t1.a.b(t1Var2, null, 1, null);
            }
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) this.f55478f.get(str);
        if (videoDetailStreamList != null) {
            this.f55474b.q(videoDetailStreamList);
            return;
        }
        DownloadBean downloadBean = videoDetailMediaSource.getDownloadBean();
        if (downloadBean == null) {
            this.f55482j = str;
            this.f55483k = kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$getPlayInfo$2(this, subjectId, se2, ep2, videoDetailMediaSource, str, null), 3, null);
            return;
        }
        String resourceId = downloadBean.getResourceId();
        String str2 = resourceId == null ? "" : resourceId;
        String path = downloadBean.getPath();
        String str3 = path == null ? "" : path;
        String strValueOf = String.valueOf(downloadBean.getResolution());
        Long size = downloadBean.getSize();
        String str4 = (size == null || (string2 = size.toString()) == null) ? "0" : string2;
        Long duration = downloadBean.getDuration();
        String str5 = (duration == null || (string = duration.toString()) == null) ? "0" : string;
        List listEmptyList = Collections.emptyList();
        Intrinsics.g(listEmptyList, "emptyList(...)");
        VideoDetailStream videoDetailStream = new VideoDetailStream("DEFAULT", str2, str3, strValueOf, str4, str5, "", listEmptyList);
        androidx.p009lifecycle.b0 b0Var = this.f55474b;
        VideoDetailStreamList videoDetailStreamList2 = new VideoDetailStreamList(CollectionsKt.h(videoDetailStream), 0, 0, null, 14, null);
        videoDetailStreamList2.setEp(ep2);
        videoDetailStreamList2.setSe(se2);
        b0Var.q(videoDetailStreamList2);
    }

    public final LiveData w() {
        return this.f55474b;
    }

    public final LiveData x() {
        return this.f55477e;
    }

    public final LiveData y() {
        return this.f55473a;
    }
}
