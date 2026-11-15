package com.transsnet.downloader.viewmodel;

import android.app.Application;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.internal.http2.Settings;

public final class DownloadListManager {

    public static final a f57771m = new a(null);

    private static final Lazy f57772n = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return DownloadListManager.U();
        }
    });

    private androidx.p009lifecycle.b0 f57779g;

    private androidx.p009lifecycle.b0 f57780h;

    private androidx.p009lifecycle.b0 f57782j;

    private final Lazy f57773a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadListManager.X();
        }
    });

    private final Lazy f57774b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadListManager.t();
        }
    });

    private final Lazy f57775c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadListManager.u();
        }
    });

    private final Lazy f57776d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadListManager.w();
        }
    });

    private final Lazy f57777e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadListManager.y();
        }
    });

    private final Lazy f57778f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadListManager.W();
        }
    });

    private ConcurrentHashMap f57781i = new ConcurrentHashMap();

    private boolean f57783k = true;

    private Map f57784l = new LinkedHashMap();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadListManager a() {
            return (DownloadListManager) DownloadListManager.f57772n.getValue();
        }

        private a() {
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            wf.a.C0922a.f(wf.a.f74274a, "downloadAna", "url download, get config failure, liveData is null = " + (DownloadListManager.this.Q() == null), false, 4, null);
            androidx.p009lifecycle.b0 b0VarQ = DownloadListManager.this.Q();
            if (b0VarQ != null) {
                b0VarQ.n(null);
            }
        }

        @Override
        public void c(DownloadUrlBean downloadUrlBean) {
            wf.a.C0922a.v(wf.a.f74274a, "downloadAna", "url download, get config success, liveData is null = " + (DownloadListManager.this.Q() == null), false, 4, null);
            androidx.p009lifecycle.b0 b0VarQ = DownloadListManager.this.Q();
            if (b0VarQ != null) {
                b0VarQ.n(downloadUrlBean);
            }
        }
    }

    public static void I(DownloadListManager downloadListManager, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        if ((i10 & 4) != 0) {
            biddingNativeManager = null;
        }
        downloadListManager.H(z10, z11, biddingNativeManager);
    }

    public final cx.a L() {
        return (cx.a) this.f57773a.getValue();
    }

    public static void N(DownloadListManager downloadListManager, String str, int i10, int i11, String str2, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 1;
        }
        int i14 = i10;
        if ((i13 & 4) != 0) {
            i11 = 20;
        }
        int i15 = i11;
        if ((i13 & 8) != 0) {
            str2 = "";
        }
        String str3 = str2;
        if ((i13 & 16) != 0) {
            i12 = com.transsion.baselib.report.launch.b.f42221a.b().getInt("download_last_resolution", 0);
        }
        downloadListManager.M(str, i14, i15, str3, i12);
    }

    private final List R(List list) {
        Iterator it;
        int i10 = 0;
        int i11 = 1;
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it2.next();
            if (linkedHashMap.containsKey(downloadBean.getSubjectId())) {
                if (downloadBean.isVideo() && Intrinsics.c(downloadBean.getResourceId(), downloadBean.getUrl())) {
                    arrayList.add(downloadBean);
                } else {
                    List list2 = (List) linkedHashMap.get(downloadBean.getSubjectId());
                    if (list2 != null) {
                        list2.add(downloadBean);
                    }
                }
            } else if (downloadBean.getSubjectId() != null) {
                String subjectId = downloadBean.getSubjectId();
                Intrinsics.e(subjectId);
                linkedHashMap.put(subjectId, CollectionsKt.q(downloadBean));
            } else {
                arrayList.add(downloadBean);
            }
        }
        Iterator it3 = linkedHashMap.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            if (((List) entry.getValue()).size() == i11) {
                arrayList.add(((List) entry.getValue()).get(i10));
            } else {
                if (((List) entry.getValue()).size() > i11) {
                    DownloadBean downloadBean2 = (DownloadBean) ((List) entry.getValue()).get(i10);
                    DownloadBean downloadBean3 = new DownloadBean("series", "series", "", downloadBean2.getCover(), 0L, null, null, null, null, downloadBean2.getUpdateTimeStamp(), 0L, 0, 0, 0, 0L, downloadBean2.getCreateAt(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -33312, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean3.setStatus(10);
                    List list3 = (List) entry.getValue();
                    if (list3.size() > i11) {
                        CollectionsKt.A(list3, new Comparator() {
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override
                            public final int compare(T t10, T t11) {
                                return ComparisonsKt.d(Integer.valueOf(((DownloadBean) t10).getEpse()), Integer.valueOf(((DownloadBean) t11).getEpse()));
                            }
                        });
                    }
                    downloadBean3.getSeriesList().addAll((Collection) entry.getValue());
                    DownloadBean downloadBean4 = downloadBean2;
                    long jLongValue = 0;
                    long jLongValue2 = 0;
                    long readProgress = 0;
                    boolean z10 = false;
                    int i12 = 0;
                    boolean z11 = false;
                    for (DownloadBean downloadBean5 : (List) entry.getValue()) {
                        it3 = it3;
                        if (downloadBean5.getStatus() == 14) {
                            i12 = 1;
                        } else {
                            if (downloadBean5.getIsTransferFailed()) {
                                z10 = true;
                            }
                            if (!z11 && !downloadBean5.getIsTransferFailed() && downloadBean5.isFileExist()) {
                                downloadBean4 = downloadBean5;
                                z11 = true;
                            }
                            Long size = downloadBean5.getSize();
                            jLongValue += size != null ? size.longValue() : 0L;
                            Long duration = downloadBean5.getDuration();
                            jLongValue2 += duration != null ? duration.longValue() : 0L;
                            readProgress += downloadBean5.getReadProgress();
                        }
                    }
                    it = it3;
                    downloadBean3.setTransferFailed(z10);
                    downloadBean3.setThumbnail(downloadBean2.getThumbnail());
                    downloadBean3.setCount(((List) entry.getValue()).size() - i12);
                    downloadBean3.setSize(Long.valueOf(jLongValue));
                    downloadBean3.setDuration(Long.valueOf(jLongValue2));
                    downloadBean3.setOps(downloadBean2.getOps());
                    downloadBean3.setTotalEpisode(downloadBean2.getTotalEpisode());
                    downloadBean3.setSubjectId(downloadBean2.getSubjectId());
                    downloadBean3.setSubjectName(downloadBean2.getSubjectName());
                    downloadBean3.setReadProgress(readProgress);
                    downloadBean3.setRootPath(downloadBean4.getRootPath());
                    downloadBean3.setRootPathType(downloadBean4.getRootPathType());
                    downloadBean3.setType(downloadBean2.getType());
                    downloadBean3.setSubjectType(downloadBean2.getSubjectType());
                    c0(downloadBean3);
                    arrayList.add(downloadBean3);
                }
                it3 = it;
                i10 = 0;
                i11 = 1;
            }
            it = it3;
            it3 = it;
            i10 = 0;
            i11 = 1;
        }
        if (arrayList.size() > 1) {
            CollectionsKt.A(arrayList, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t10, T t11) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadBean) t11).getCreateAt()), Long.valueOf(((DownloadBean) t10).getCreateAt()));
                }
            });
        }
        return arrayList;
    }

    public final void S(List list) {
        if (this.f57784l == null) {
            this.f57784l = new LinkedHashMap();
        }
        this.f57784l.clear();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            String resourceId = ((DownloadBean) list.get(i10)).getResourceId();
            if (resourceId != null && resourceId.length() > 0) {
                this.f57784l.put(resourceId, Integer.valueOf(i10));
            }
        }
    }

    public final void T(List list, BiddingNativeManager biddingNativeManager) {
        Object objM453constructorimpl;
        Object objValueOf;
        if (biddingNativeManager == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            DownloadBean downloadBean = new DownloadBean(CommonLogUtil.TAG_AD, CommonLogUtil.TAG_AD, CommonLogUtil.TAG_AD, "", 0L, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            downloadBean.setStatus(13);
            downloadBean.setWrapNativeManager(biddingNativeManager);
            if (!biddingNativeManager.S0()) {
                return;
            }
            if (2 >= list.size()) {
                objValueOf = Boolean.valueOf(list.add(downloadBean));
            } else {
                list.add(2, downloadBean);
                objValueOf = Unit.f64096a;
            }
            objM453constructorimpl = Result.m453constructorimpl(objValueOf);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m456exceptionOrNullimpl(objM453constructorimpl);
    }

    public static final DownloadListManager U() {
        return new DownloadListManager();
    }

    public static final androidx.p009lifecycle.b0 W() {
        return new androidx.p009lifecycle.b0();
    }

    public static final cx.a X() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    private final void c0(DownloadBean downloadBean) {
        if (K().f() == null) {
            return;
        }
        DownloadBean downloadBean2 = (DownloadBean) K().f();
        if (Intrinsics.c(downloadBean2 != null ? downloadBean2.getSubjectId() : null, downloadBean.getSubjectId())) {
            K().n(downloadBean);
        }
    }

    public final void q(List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                if (!TextUtils.isEmpty(downloadBean.getSubjectId()) && !TextUtils.isEmpty(downloadBean.getResourceId()) && !downloadBean.isShotTV()) {
                    DownloadManagerApi.f56187j.a().T(downloadBean.getSubjectId(), downloadBean.getResourceId(), downloadBean.isSeries(), downloadBean.getTotalEpisode(), false, downloadBean.getResolution() > 0);
                }
            }
        }
    }

    public final void s(List list) {
        File[] fileArrListFiles;
        if (list.isEmpty()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                File fileS = DownloadEsHelper.f57201m.a().s();
                if (fileS.exists() && fileS.isDirectory() && (fileArrListFiles = fileS.listFiles()) != null && fileArrListFiles.length != 0) {
                    qi.h.f69682a.q("download", "app_perf", MapsKt.f(TuplesKt.a("download_ops", "delete_download_file")));
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final ui.c t() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).o1();
        }
        return null;
    }

    public static final androidx.p009lifecycle.b0 u() {
        return new androidx.p009lifecycle.b0();
    }

    public final Object v(List list, Continuation continuation) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            arrayList.addAll(R(list));
        }
        wf.a.C0922a.f(wf.a.f74274a, "DownloadPanel", "2-  get getDownloadedList success = " + arrayList.size(), false, 4, null);
        return arrayList;
    }

    public static final androidx.p009lifecycle.b0 w() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object x(Continuation continuation) {
        DownloadListManager$downloadingList$1 downloadListManager$downloadingList$1;
        if (continuation instanceof DownloadListManager$downloadingList$1) {
            downloadListManager$downloadingList$1 = (DownloadListManager$downloadingList$1) continuation;
            int i10 = downloadListManager$downloadingList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadListManager$downloadingList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadListManager$downloadingList$1 = new DownloadListManager$downloadingList$1(this, continuation);
            }
        } else {
            downloadListManager$downloadingList$1 = new DownloadListManager$downloadingList$1(this, continuation);
        }
        Object objC = downloadListManager$downloadingList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadListManager$downloadingList$1.label;
        if (i11 == 0) {
            ResultKt.b(objC);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            downloadListManager$downloadingList$1.label = 1;
            objC = downloadEsHelperA.C(downloadListManager$downloadingList$1);
            if (objC == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objC);
        }
        List list = (List) objC;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            List list2 = list;
            if (!list2.isEmpty()) {
                int size = list2.size();
                int i12 = 0;
                while (true) {
                    if (i12 >= size) {
                        i12 = -1;
                        break;
                    }
                    DownloadBean downloadBean = (DownloadBean) list.get(i12);
                    if (downloadBean.isDownloading() && !downloadBean.getIsPreDownload()) {
                        break;
                    }
                    i12++;
                }
                if (i12 > 0) {
                    Collections.swap(list, i12, 0);
                }
                arrayList.addAll(list2);
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, "DownloadPanel", "1 -- get getDownloadingList success = " + arrayList.size(), false, 4, null);
        return arrayList;
    }

    public static final androidx.p009lifecycle.b0 y() {
        return new androidx.p009lifecycle.b0();
    }

    public final ConcurrentHashMap A() {
        return this.f57781i;
    }

    public final androidx.p009lifecycle.b0 B() {
        return (androidx.p009lifecycle.b0) this.f57775c.getValue();
    }

    public final Map C() {
        return this.f57784l;
    }

    public final androidx.p009lifecycle.b0 D() {
        return this.f57780h;
    }

    public final void E() {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadListManager$getDownloadedList$1(this, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 F() {
        return (androidx.p009lifecycle.b0) this.f57776d.getValue();
    }

    public final androidx.p009lifecycle.b0 G() {
        return (androidx.p009lifecycle.b0) this.f57777e.getValue();
    }

    public final void H(boolean z10, boolean z11, BiddingNativeManager biddingNativeManager) {
        E();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadListManager$getList$1(z11, this, z10, biddingNativeManager, null), 3, null);
    }

    public final Object J(int i10, Continuation continuation) {
        return DownloadEsHelper.f57201m.a().G(i10, continuation);
    }

    public final androidx.p009lifecycle.b0 K() {
        return (androidx.p009lifecycle.b0) this.f57778f.getValue();
    }

    public final void M(String str, int i10, int i11, String str2, int i12) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadListManager$getShortTVList$1(i12, this, str, i10, i11, str2, null), 3, null);
    }

    public final Object O(Continuation continuation) {
        return DownloadEsHelper.f57201m.a().M(continuation);
    }

    public final void P(String str, String linkUrl) {
        Intrinsics.h(linkUrl, "linkUrl");
        if (this.f57782j == null) {
            this.f57782j = new androidx.p009lifecycle.b0();
        }
        L().e(gg.a.f61067a.a(), linkUrl, str).f(dg.d.f59034a.c()).subscribe(new b());
    }

    public final androidx.p009lifecycle.b0 Q() {
        return this.f57782j;
    }

    public final boolean V() {
        return this.f57783k;
    }

    public final void Y(androidx.p009lifecycle.b0 b0Var) {
        this.f57779g = b0Var;
    }

    public final void Z(androidx.p009lifecycle.b0 b0Var) {
        this.f57780h = b0Var;
    }

    public final void a0(boolean z10) {
        this.f57783k = z10;
    }

    public final void b0(androidx.p009lifecycle.b0 b0Var) {
        this.f57782j = b0Var;
    }

    public final void p(DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        if (this.f57780h == null) {
            this.f57780h = new androidx.p009lifecycle.b0();
        }
        androidx.p009lifecycle.b0 b0Var = this.f57780h;
        if (b0Var != null) {
            b0Var.q(downloadBean);
        }
    }

    public final void r(int i10) {
        if (this.f57781i.containsKey(Integer.valueOf(i10))) {
            return;
        }
        this.f57781i.put(Integer.valueOf(i10), new androidx.p009lifecycle.b0());
    }

    public final androidx.p009lifecycle.b0 z() {
        return this.f57779g;
    }
}
