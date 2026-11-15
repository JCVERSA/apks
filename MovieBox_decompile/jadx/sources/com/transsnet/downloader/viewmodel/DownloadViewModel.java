package com.transsnet.downloader.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.y0;
import okhttp3.internal.http2.Settings;

public final class DownloadViewModel extends t0 {

    private boolean f57821d;

    private final String f57818a = DownloadViewModel.class.getSimpleName();

    private final Lazy f57819b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.s0();
        }
    });

    private final Lazy f57820c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.q0();
        }
    });

    private final Lazy f57822e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.F();
        }
    });

    private final Lazy f57823f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.E0();
        }
    });

    private final Lazy f57824g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.G();
        }
    });

    private final Lazy f57825h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.E();
        }
    });

    private final Lazy f57826i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.C0();
        }
    });

    private final Lazy f57827j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.D0();
        }
    });

    private final Lazy f57828k = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.A0();
        }
    });

    private final Lazy f57829l = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.v0();
        }
    });

    private final Lazy f57830m = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.z0();
        }
    });

    private final Map f57831n = new LinkedHashMap();

    private final androidx.p009lifecycle.b0 f57832o = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57833p = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57834q = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57835r = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f57836s = new androidx.p009lifecycle.b0();

    private final Lazy f57837t = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.w0();
        }
    });

    private final Lazy f57838u = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.x0();
        }
    });

    private final Lazy f57839v = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.B0();
        }
    });

    private final Lazy f57840w = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.y0();
        }
    });

    private final Lazy f57841x = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadViewModel.u0();
        }
    });

    public static final androidx.p009lifecycle.b0 A0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 B0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 C0() {
        return new androidx.p009lifecycle.b0();
    }

    public final Map D(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return MapsKt.h();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it.next();
            String strX = X(downloadBean);
            Object arrayList = linkedHashMap.get(strX);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(strX, arrayList);
            }
            ((List) arrayList).add(downloadBean);
        }
        return t0(linkedHashMap);
    }

    public static final androidx.p009lifecycle.b0 D0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 E() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 E0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 F() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 G() {
        return new androidx.p009lifecycle.b0();
    }

    public static void N(DownloadViewModel downloadViewModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        downloadViewModel.M(z10);
    }

    public final cx.a W() {
        return (cx.a) this.f57819b.getValue();
    }

    private final String X(DownloadBean downloadBean) {
        String ugcVideoType = downloadBean.getUgcVideoType();
        if (ugcVideoType != null && ugcVideoType.length() != 0) {
            return Y(downloadBean.getUgcVideoType());
        }
        int subjectType = downloadBean.getSubjectType();
        if (subjectType == SubjectType.MOVIE.getValue()) {
            String string = Utils.a().getString(R$string.ugc_tab_movie);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (subjectType == SubjectType.TV.getValue()) {
            String string2 = Utils.a().getString(R$string.ugc_tab_tv);
            Intrinsics.g(string2, "getString(...)");
            return string2;
        }
        if (subjectType == SubjectType.VSHOW.getValue()) {
            String string3 = Utils.a().getString(R$string.ugc_tab_video);
            Intrinsics.g(string3, "getString(...)");
            return string3;
        }
        if (subjectType == SubjectType.AUDIO.getValue() || subjectType == SubjectType.MUSIC.getValue()) {
            String string4 = Utils.a().getString(R$string.ugc_tab_music);
            Intrinsics.g(string4, "getString(...)");
            return string4;
        }
        if (subjectType == SubjectType.EDUCATION.getValue()) {
            String string5 = Utils.a().getString(R$string.ugc_tab_education);
            Intrinsics.g(string5, "getString(...)");
            return string5;
        }
        if (subjectType == SubjectType.SHORT_TV.getValue()) {
            String string6 = Utils.a().getString(R$string.ugc_tab_short_tv);
            Intrinsics.g(string6, "getString(...)");
            return string6;
        }
        if (subjectType == SubjectType.SPORT.getValue()) {
            String string7 = Utils.a().getString(R$string.ugc_tab_sport);
            Intrinsics.g(string7, "getString(...)");
            return string7;
        }
        String string8 = Utils.a().getString(R$string.ugc_tab_video);
        Intrinsics.g(string8, "getString(...)");
        return string8;
    }

    private final String Y(String str) {
        if (str == null || str.length() == 0) {
            String string = Utils.a().getString(R$string.ugc_tab_video);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (Intrinsics.c(str, UGCVideoType.MOVIE.getValue())) {
            String string2 = Utils.a().getString(R$string.ugc_tab_movie);
            Intrinsics.g(string2, "getString(...)");
            return string2;
        }
        if (Intrinsics.c(str, UGCVideoType.TV.getValue())) {
            String string3 = Utils.a().getString(R$string.ugc_tab_tv);
            Intrinsics.g(string3, "getString(...)");
            return string3;
        }
        if (Intrinsics.c(str, UGCVideoType.MUSIC.getValue())) {
            String string4 = Utils.a().getString(R$string.ugc_tab_music);
            Intrinsics.g(string4, "getString(...)");
            return string4;
        }
        if (Intrinsics.c(str, UGCVideoType.EDUCATION.getValue())) {
            String string5 = Utils.a().getString(R$string.ugc_tab_education);
            Intrinsics.g(string5, "getString(...)");
            return string5;
        }
        if (Intrinsics.c(str, UGCVideoType.SHORT_TV.getValue())) {
            String string6 = Utils.a().getString(R$string.ugc_tab_short_tv);
            Intrinsics.g(string6, "getString(...)");
            return string6;
        }
        if (Intrinsics.c(str, UGCVideoType.SPORT.getValue())) {
            String string7 = Utils.a().getString(R$string.ugc_tab_sport);
            Intrinsics.g(string7, "getString(...)");
            return string7;
        }
        if (Intrinsics.c(str, UGCVideoType.ROOM.getValue())) {
            String string8 = Utils.a().getString(R$string.ugc_tab_room);
            Intrinsics.g(string8, "getString(...)");
            return string8;
        }
        if (Intrinsics.c(str, UGCVideoType.NOVEL.getValue())) {
            String string9 = Utils.a().getString(R$string.ugc_tab_novel);
            Intrinsics.g(string9, "getString(...)");
            return string9;
        }
        if (Intrinsics.c(str, UGCVideoType.LIVE.getValue())) {
            String string10 = Utils.a().getString(R$string.ugc_tab_live);
            Intrinsics.g(string10, "getString(...)");
            return string10;
        }
        if (Intrinsics.c(str, UGCVideoType.KIDS.getValue())) {
            String string11 = Utils.a().getString(R$string.ugc_tab_kids);
            Intrinsics.g(string11, "getString(...)");
            return string11;
        }
        if (Intrinsics.c(str, UGCVideoType.RECREATION.getValue())) {
            String string12 = Utils.a().getString(R$string.ugc_tab_recreation);
            Intrinsics.g(string12, "getString(...)");
            return string12;
        }
        if (Intrinsics.c(str, UGCVideoType.POST.getValue())) {
            String string13 = Utils.a().getString(R$string.ugc_tab_post);
            Intrinsics.g(string13, "getString(...)");
            return string13;
        }
        String string14 = Utils.a().getString(R$string.ugc_tab_video);
        Intrinsics.g(string14, "getString(...)");
        return string14;
    }

    public final List Z() {
        return (List) this.f57841x.getValue();
    }

    public final DownloadBean o0(List list) {
        DownloadBean downloadBean = (DownloadBean) CollectionsKt.i0(list);
        DownloadBean downloadBean2 = new DownloadBean("series", "series", "", downloadBean.getCover(), 0L, null, null, null, null, downloadBean.getUpdateTimeStamp(), 0L, 0, 0, 0, 0L, downloadBean.getCreateAt(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -33312, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        downloadBean2.setStatus(10);
        downloadBean2.getSeriesList().addAll(list);
        Iterator it = list.iterator();
        boolean z10 = false;
        DownloadBean downloadBean3 = downloadBean;
        int i10 = 0;
        boolean z11 = false;
        long jLongValue = 0;
        long jLongValue2 = 0;
        long readProgress = 0;
        while (it.hasNext()) {
            DownloadBean downloadBean4 = (DownloadBean) it.next();
            if (downloadBean4.getStatus() == 14) {
                i10 = 1;
            } else {
                if (downloadBean4.getIsTransferFailed()) {
                    z10 = true;
                }
                if (!z11 && !downloadBean4.getIsTransferFailed() && downloadBean4.isFileExist()) {
                    downloadBean3 = downloadBean4;
                    z11 = true;
                }
                Long size = downloadBean4.getSize();
                jLongValue += size != null ? size.longValue() : 0L;
                Long duration = downloadBean4.getDuration();
                jLongValue2 += duration != null ? duration.longValue() : 0L;
                readProgress += downloadBean4.getReadProgress();
            }
        }
        downloadBean2.setTransferFailed(z10);
        downloadBean2.setThumbnail(downloadBean.getThumbnail());
        downloadBean2.setCount(list.size() - i10);
        downloadBean2.setSize(Long.valueOf(jLongValue));
        downloadBean2.setDuration(Long.valueOf(jLongValue2));
        downloadBean2.setOps(downloadBean.getOps());
        downloadBean2.setTotalEpisode(downloadBean.getTotalEpisode());
        downloadBean2.setSubjectId(downloadBean.getSubjectId());
        downloadBean2.setSubjectName(downloadBean.getSubjectName());
        downloadBean2.setReadProgress(readProgress);
        downloadBean2.setRootPath(downloadBean3.getRootPath());
        downloadBean2.setRootPathType(downloadBean3.getRootPathType());
        downloadBean2.setType(downloadBean.getType());
        downloadBean2.setSubjectType(downloadBean.getSubjectType());
        downloadBean2.setUgcVideoCollectionId(downloadBean.getUgcVideoCollectionId());
        downloadBean2.setUgcVideoId(downloadBean.getUgcVideoId());
        downloadBean2.setUgcVideoType(downloadBean.getUgcVideoType());
        downloadBean2.setUgcVideoCollectionName(downloadBean.getUgcVideoCollectionName());
        return downloadBean2;
    }

    public final void p0(List list) {
        DownloadBean downloadBean;
        List list2 = list;
        if (list2 == null || list2.isEmpty() || (downloadBean = (DownloadBean) CollectionsKt.k0(list)) == null || downloadBean.getTotalEpisode() <= list.size()) {
            return;
        }
        DownloadBean downloadBean2 = new DownloadBean("allEp", "allEp", downloadBean.getType() == 1 ? Utils.a().getResources().getString(R$string.download_series_all_chapters) : Utils.a().getResources().getString(R$string.download_series_all_episodes), "", 0L, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        downloadBean2.setStatus(14);
        list.add(downloadBean2);
    }

    public static final androidx.p009lifecycle.b0 q0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final cx.a s0() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    private final Map t0(Map map) {
        List<Map.Entry> listI0 = CollectionsKt.I0(map.entrySet(), new Comparator() {
            @Override
            public final int compare(T t10, T t11) {
                int iIndexOf = this.this$0.Z().indexOf(((Map.Entry) t10).getKey());
                if (iIndexOf < 0) {
                    iIndexOf = Integer.MAX_VALUE;
                }
                Integer numValueOf = Integer.valueOf(iIndexOf);
                int iIndexOf2 = this.this$0.Z().indexOf(((Map.Entry) t11).getKey());
                return ComparisonsKt.d(numValueOf, Integer.valueOf(iIndexOf2 >= 0 ? iIndexOf2 : Integer.MAX_VALUE));
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.e(MapsKt.e(CollectionsKt.v(listI0, 10)), 16));
        for (Map.Entry entry : listI0) {
            Pair pairA = TuplesKt.a(entry.getKey(), entry.getValue());
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return linkedHashMap;
    }

    public static final List u0() {
        return CollectionsKt.o(Utils.a().getString(R$string.ugc_tab_movie), Utils.a().getString(R$string.ugc_tab_tv), Utils.a().getString(R$string.ugc_tab_music), Utils.a().getString(R$string.ugc_tab_education), Utils.a().getString(R$string.ugc_tab_short_tv), Utils.a().getString(R$string.ugc_tab_sport), Utils.a().getString(R$string.ugc_tab_kids), Utils.a().getString(R$string.ugc_tab_post), Utils.a().getString(R$string.ugc_tab_room), Utils.a().getString(R$string.ugc_tab_recreation), Utils.a().getString(R$string.ugc_tab_live), Utils.a().getString(R$string.ugc_tab_novel), Utils.a().getString(R$string.ugc_tab_video));
    }

    public static final androidx.p009lifecycle.b0 v0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 w0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 x0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 y0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 z0() {
        return new androidx.p009lifecycle.b0();
    }

    public final void H() {
        N(this, false, 1, null);
        P();
    }

    public final androidx.p009lifecycle.b0 I() {
        return this.f57836s;
    }

    public final androidx.p009lifecycle.b0 J() {
        return (androidx.p009lifecycle.b0) this.f57825h.getValue();
    }

    public final androidx.p009lifecycle.b0 K() {
        return (androidx.p009lifecycle.b0) this.f57822e.getValue();
    }

    public final androidx.p009lifecycle.b0 L() {
        return this.f57834q;
    }

    public final void M(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$getDownloadedList$1(z10, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 O() {
        return this.f57833p;
    }

    public final void P() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$getDownloadingList$1(this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 Q() {
        return this.f57832o;
    }

    public final androidx.p009lifecycle.b0 R() {
        return (androidx.p009lifecycle.b0) this.f57824g.getValue();
    }

    public final void S(int i10, int i11) {
        if (this.f57821d) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$getMovieRec$1(this, i10, i11, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 T() {
        return (androidx.p009lifecycle.b0) this.f57820c.getValue();
    }

    public final void U(String str) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$getSeriesList$1(str, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 V() {
        return this.f57835r;
    }

    public final androidx.p009lifecycle.b0 a0() {
        return (androidx.p009lifecycle.b0) this.f57829l.getValue();
    }

    public final androidx.p009lifecycle.b0 b0() {
        return (androidx.p009lifecycle.b0) this.f57837t.getValue();
    }

    public final androidx.p009lifecycle.b0 c0() {
        return (androidx.p009lifecycle.b0) this.f57838u.getValue();
    }

    public final androidx.p009lifecycle.b0 d0() {
        return (androidx.p009lifecycle.b0) this.f57840w.getValue();
    }

    public final androidx.p009lifecycle.b0 e0() {
        return (androidx.p009lifecycle.b0) this.f57830m.getValue();
    }

    public final androidx.p009lifecycle.b0 f0(int i10) {
        if (this.f57831n.containsKey(Integer.valueOf(i10))) {
            return (androidx.p009lifecycle.b0) this.f57831n.get(Integer.valueOf(i10));
        }
        androidx.p009lifecycle.b0 b0Var = new androidx.p009lifecycle.b0();
        this.f57831n.put(Integer.valueOf(i10), b0Var);
        return b0Var;
    }

    public final Map g0() {
        return this.f57831n;
    }

    public final androidx.p009lifecycle.b0 h0() {
        return (androidx.p009lifecycle.b0) this.f57828k.getValue();
    }

    public final androidx.p009lifecycle.b0 i0() {
        return (androidx.p009lifecycle.b0) this.f57839v.getValue();
    }

    public final androidx.p009lifecycle.b0 j0() {
        return (androidx.p009lifecycle.b0) this.f57826i.getValue();
    }

    public final androidx.p009lifecycle.b0 k0() {
        return (androidx.p009lifecycle.b0) this.f57827j.getValue();
    }

    public final androidx.p009lifecycle.b0 l0() {
        return (androidx.p009lifecycle.b0) this.f57823f.getValue();
    }

    public final void m0(String str) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$getUGCCollectionList$1(str, this, null), 2, null);
    }

    public final void n0(String str) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$getUGCSubjectList$1(str, this, null), 2, null);
    }

    public final void r0(FileData data, Function0 callback) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callback, "callback");
        wf.a.f74274a.p(TransferBottomToolsView.TAG, new String[]{"传输完成，保存到数据库, data:" + data}, true);
        if (data.getDownloadBean() != null) {
            DownloadBean downloadBean = data.getDownloadBean();
            Intrinsics.e(downloadBean);
            downloadBean.setFileType(3);
            downloadBean.setCreateAt(System.currentTimeMillis());
            downloadBean.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
            downloadBean.setCover(data.getCoverFile().getAbsolutePath());
            downloadBean.setPath(data.getFileReceiveCachePath());
            downloadBean.setProgress(0L);
            downloadBean.setStatus(5);
            downloadBean.setSubjectType(SubjectType.OUTSIDE_FILE.getValue());
            kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$saveTransferData2DB$1$1(downloadBean, callback, null), 2, null);
            return;
        }
        String absolutePath = data.getCoverFile().getAbsolutePath();
        String fileReceiveCachePath = data.getFileReceiveCachePath();
        String strValueOf = String.valueOf(data.getFileReceiveCachePath().hashCode());
        String fileName = data.getFileName();
        long fileSize = data.getFileSize();
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new DownloadViewModel$saveTransferData2DB$2$1(new DownloadBean(fileReceiveCachePath, strValueOf, fileName, absolutePath, Long.valueOf(fileSize), null, null, data.getFileReceiveCachePath(), null, Long.valueOf(System.currentTimeMillis()), data.getFileSize(), 0, 5, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 3, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, SubjectType.OUTSIDE_FILE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -5792, -65538, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null), callback, null), 2, null);
    }
}
