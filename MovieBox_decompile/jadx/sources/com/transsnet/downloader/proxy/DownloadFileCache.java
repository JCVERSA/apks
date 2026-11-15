package com.transsnet.downloader.proxy;

import android.app.Application;
import androidx.collection.s;
import com.blankj.utilcode.util.Utils;
import com.danikula.videocache.m;
import com.danikula.videocache.q;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.core.task.DownloadTaskUtil;
import com.transsnet.downloader.util.DownloadUtil;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ui.n0;
import yg.l;
import zw.d;

public final class DownloadFileCache implements com.danikula.videocache.a {

    private RandomAccessFile f57352d;

    private DownloadBean f57353e;

    private String f57354f;

    private c f57355g;

    private DownloadRange f57357i;

    private int f57358j;

    private long f57360l;

    private m f57361m;

    private final long f57349a = 3145728;

    private long f57350b = 3145728;

    private final Lazy f57351c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadFileCache.m();
        }
    });

    private ConcurrentHashMap f57356h = new ConcurrentHashMap();

    private String f57359k = "";

    private boolean f57362n = true;

    private final d f57363o = new a();

    public static final class a extends d {
        a() {
        }

        @Override
        public void h(DownloadBean bean, int i10) {
            m mVar;
            m mVar2;
            Intrinsics.h(bean, "bean");
            if (DownloadFileCache.this.f57357i == null || (mVar = DownloadFileCache.this.f57361m) == null || !mVar.b()) {
                return;
            }
            long j10 = DownloadFileCache.this.f57360l + ((long) 8192);
            DownloadRange downloadRange = DownloadFileCache.this.f57357i;
            Intrinsics.e(downloadRange);
            if (j10 > downloadRange.totalProgress() || (mVar2 = DownloadFileCache.this.f57361m) == null) {
                return;
            }
            mVar2.c();
        }
    }

    private final void g(long j10) {
        DownloadRange downloadRange;
        DownloadRange downloadRange2 = this.f57357i;
        if (downloadRange2 != null) {
            Intrinsics.e(downloadRange2);
            if (downloadRange2.contains(j10)) {
                return;
            }
        }
        q.a("checkDownloadNewV2Ranges = " + (this.f57353e == null));
        DownloadBean downloadBean = this.f57353e;
        if (downloadBean != null) {
            DownloadRange downloadRange3 = this.f57357i;
            for (DownloadRange downloadRange4 : downloadBean.getDownloadRanges()) {
                if (downloadRange4.contains(j10)) {
                    this.f57358j = downloadRange4.getThreadIndex();
                    this.f57357i = downloadRange4;
                    break;
                }
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            int i10 = this.f57358j;
            DownloadRange downloadRange5 = this.f57357i;
            Boolean boolValueOf = downloadRange5 != null ? Boolean.valueOf(downloadRange5.getIsDownloading()) : null;
            DownloadRange downloadRange6 = this.f57357i;
            Boolean boolValueOf2 = downloadRange6 != null ? Boolean.valueOf(downloadRange6.isRangeDownloadSuccess()) : null;
            DownloadRange downloadRange7 = this.f57357i;
            Object objValueOf = downloadRange7 != null ? Integer.valueOf(downloadRange7.getRangeId()) : "range is null";
            DownloadRange downloadRange8 = this.f57357i;
            Long lValueOf = downloadRange8 != null ? Long.valueOf(downloadRange8.getStart()) : null;
            DownloadRange downloadRange9 = this.f57357i;
            Long lValueOf2 = downloadRange9 != null ? Long.valueOf(downloadRange9.getEnd()) : null;
            DownloadRange downloadRange10 = this.f57357i;
            Long lValueOf3 = downloadRange10 != null ? Long.valueOf(downloadRange10.getProgress()) : null;
            c0922a.c("download", StringsKt.n("download&play checkDownloadNewV2Ranges, offset=" + j10 + ",index = " + i10 + " \n                  currentRange, isDownloading: " + boolValueOf + ", downloadSuccess: " + boolValueOf2 + "\n                  rangeId: " + objValueOf + ", start: " + lValueOf + ", end: " + lValueOf2 + ",progress: " + lValueOf3 + "\n                  resourceId:" + downloadBean.getResourceId() + ",name:" + downloadBean.getName() + "\n                "), true);
            DownloadRange downloadRange11 = this.f57357i;
            if (downloadRange11 != null) {
                Intrinsics.e(downloadRange11);
                if (downloadRange11.getIsDownloading()) {
                    return;
                }
                DownloadRange downloadRange12 = this.f57357i;
                Intrinsics.e(downloadRange12);
                if (downloadRange12.isRangeDownloadSuccess() || !l.f76264a.e()) {
                    return;
                }
                c cVar = this.f57355g;
                if (cVar != null) {
                    String resourceId = downloadBean.getResourceId();
                    int i11 = this.f57358j;
                    DownloadRange downloadRange13 = this.f57357i;
                    Intrinsics.e(downloadRange13);
                    downloadRange = downloadRange3;
                    cVar.a(resourceId, i11, downloadRange, downloadRange13);
                } else {
                    downloadRange = downloadRange3;
                }
                for (Map.Entry entry : this.f57356h.entrySet()) {
                    Object key = entry.getKey();
                    String resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    if (Intrinsics.c(key, resourceId2)) {
                        c cVar2 = (c) entry.getValue();
                        String resourceId3 = downloadBean.getResourceId();
                        int i12 = this.f57358j;
                        DownloadRange downloadRange14 = this.f57357i;
                        Intrinsics.e(downloadRange14);
                        cVar2.a(resourceId3, i12, downloadRange, downloadRange14);
                    }
                }
            }
        }
    }

    private final void h(String str, long j10) {
        Object resourceId;
        List<DownloadRange> downloadRanges;
        String url;
        DownloadBean downloadBean = this.f57353e;
        List<DownloadRange> downloadRanges2 = downloadBean != null ? downloadBean.getDownloadRanges() : null;
        if (downloadRanges2 == null || downloadRanges2.isEmpty()) {
            return;
        }
        DownloadBean downloadBean2 = this.f57353e;
        Intrinsics.e(downloadBean2);
        for (DownloadRange downloadRange : downloadBean2.getDownloadRanges()) {
            if (downloadRange.contains(j10)) {
                DownloadRange downloadRange2 = this.f57357i;
                long start = downloadRange.getStart();
                if (j10 <= downloadRange.totalProgress() && start <= j10) {
                    this.f57357i = downloadRange;
                    r(str + "_range1", str + " 暂停当前线程，启动新线程下载, 已经下载，直接返回, offset = " + j10 + ", rangeId = " + downloadRange.getRangeId());
                } else if (j10 < downloadRange.getStart() + downloadRange.getProgress() + this.f57350b) {
                    this.f57357i = downloadRange;
                    r(str + "_range2", str + " 暂停当前线程，启动新线程下载, 小于阈值，等待下载,只的启动线程，不处理range, offset = " + j10);
                } else {
                    if (downloadRange.getEnd() - j10 < this.f57350b) {
                        r(str + "_range3", str + " 暂停当前线程，启动新线程下载, 新增分片小于阈值，使用阈值大小, offset = " + j10);
                        j10 = downloadRange.getEnd() - this.f57350b;
                    } else {
                        r(str + "_range4", str + " 暂停当前线程，启动新线程下载, 新增分片大于阈值, offset = " + j10);
                    }
                    if (l.f76264a.e()) {
                        DownloadRange downloadRange3 = new DownloadRange();
                        DownloadBean downloadBean3 = this.f57353e;
                        if (downloadBean3 == null || (resourceId = downloadBean3.getResourceId()) == null) {
                            resourceId = 0;
                        }
                        downloadRange3.setThreadId(resourceId.hashCode());
                        downloadRange3.setRangeId(s.a(downloadRange.getEnd() + j10));
                        downloadRange3.setResourceId(downloadRange.getResourceId());
                        downloadRange3.setStart(j10);
                        downloadRange3.setEnd(downloadRange.getEnd());
                        downloadRange3.setProgress(0L);
                        downloadRange.setEnd(downloadRange3.getStart() - 1);
                        DownloadBean downloadBean4 = this.f57353e;
                        if (downloadBean4 != null && (downloadRanges = downloadBean4.getDownloadRanges()) != null) {
                            downloadRanges.add(downloadRange3);
                        }
                        this.f57357i = downloadRange3;
                        DownloadBean downloadBean5 = this.f57353e;
                        s(downloadBean5 != null ? downloadBean5.getDownloadRanges() : null);
                    }
                }
                DownloadRange downloadRange4 = this.f57357i;
                if (downloadRange4 != null) {
                    Intrinsics.e(downloadRange4);
                    if (downloadRange4.isRangeDownloadSuccess()) {
                        return;
                    }
                    DownloadRange downloadRange5 = this.f57357i;
                    Intrinsics.e(downloadRange5);
                    if (downloadRange5.getIsDownloading() || !l.f76264a.e()) {
                        return;
                    }
                    c cVar = this.f57355g;
                    if (cVar != null) {
                        DownloadBean downloadBean6 = this.f57353e;
                        String resourceId2 = downloadBean6 != null ? downloadBean6.getResourceId() : null;
                        int i10 = this.f57358j;
                        DownloadRange downloadRange6 = this.f57357i;
                        Intrinsics.e(downloadRange6);
                        cVar.a(resourceId2, i10, downloadRange2, downloadRange6);
                    }
                    for (Map.Entry entry : this.f57356h.entrySet()) {
                        Object key = entry.getKey();
                        DownloadBean downloadBean7 = this.f57353e;
                        if (downloadBean7 == null || (url = downloadBean7.getResourceId()) == null) {
                            DownloadBean downloadBean8 = this.f57353e;
                            url = downloadBean8 != null ? downloadBean8.getUrl() : null;
                        }
                        if (Intrinsics.c(key, url)) {
                            c cVar2 = (c) entry.getValue();
                            DownloadBean downloadBean9 = this.f57353e;
                            String resourceId3 = downloadBean9 != null ? downloadBean9.getResourceId() : null;
                            int i11 = this.f57358j;
                            DownloadRange downloadRange7 = this.f57357i;
                            Intrinsics.e(downloadRange7);
                            cVar2.a(resourceId3, i11, downloadRange2, downloadRange7);
                        }
                    }
                    return;
                }
                return;
            }
        }
    }

    public final n0 k() {
        return (n0) this.f57351c.getValue();
    }

    public static final n0 m() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    private final void r(String str, String str2) {
        if (Intrinsics.c(this.f57359k, str)) {
            return;
        }
        this.f57359k = str;
        q.a("================range,  " + str2);
    }

    private final void s(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list2);
        if (arrayList.size() > 1) {
            CollectionsKt.A(arrayList, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t10, T t11) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadRange) t10).getStart()), Long.valueOf(((DownloadRange) t11).getStart()));
                }
            });
        }
        list.clear();
        list.addAll(arrayList);
        k.d(o0.a(y0.b()), null, null, new DownloadFileCache$updateDBRanges$1(list, this, null), 3, null);
    }

    @Override
    public long A() {
        Long size;
        DownloadBean downloadBean = this.f57353e;
        if (downloadBean == null || (size = downloadBean.getSize()) == null) {
            return 0L;
        }
        return size.longValue();
    }

    @Override
    public void B() {
        try {
            DownloadBean downloadBean = this.f57353e;
            String path = downloadBean != null ? downloadBean.getPath() : null;
            if (path != null && path.length() != 0) {
                q.b("1-path create");
                DownloadBean downloadBean2 = this.f57353e;
                this.f57352d = new RandomAccessFile(downloadBean2 != null ? downloadBean2.getPath() : null, CampaignEx.JSON_KEY_AD_R);
                return;
            }
            q.b("path is null, is not downloading");
        } catch (Throwable th2) {
            DownloadBean downloadBean3 = this.f57353e;
            q.b("1--path = " + (downloadBean3 != null ? downloadBean3.getPath() : null) + ",error = " + th2);
            try {
                q.b("2-path create");
                DownloadBean downloadBean4 = this.f57353e;
                this.f57352d = new RandomAccessFile(downloadBean4 != null ? downloadBean4.getPath() : null, "rwd");
            } catch (Throwable th3) {
                DownloadBean downloadBean5 = this.f57353e;
                q.b("2--path = " + (downloadBean5 != null ? downloadBean5.getPath() : null) + ",error = " + th3);
            }
        }
    }

    @Override
    public void C(long j10) {
        Object resourceId;
        String url;
        List<DownloadRange> downloadRanges;
        if (DownloadTaskUtil.f56421a.j()) {
            g(j10);
            return;
        }
        DownloadRange downloadRange = this.f57357i;
        if (downloadRange == null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            DownloadBean downloadBean = this.f57353e;
            String resourceId2 = downloadBean != null ? downloadBean.getResourceId() : null;
            DownloadBean downloadBean2 = this.f57353e;
            c0922a.i("download", "download&play currentRangeNull currentRange is null, offset = " + j10 + ",resourceId=" + resourceId2 + ",,name=" + (downloadBean2 != null ? downloadBean2.getName() : null), true);
            return;
        }
        Intrinsics.e(downloadRange);
        long start = downloadRange.getStart();
        DownloadRange downloadRange2 = this.f57357i;
        Intrinsics.e(downloadRange2);
        if (j10 <= downloadRange2.totalProgress() && start <= j10) {
            r("currentRange1", "当前分片已下载进度内，不做任何处理，直接返回, offset = " + j10);
            return;
        }
        DownloadRange downloadRange3 = this.f57357i;
        Intrinsics.e(downloadRange3);
        if (j10 < downloadRange3.getStart()) {
            h("beforeRange", j10);
            return;
        }
        DownloadRange downloadRange4 = this.f57357i;
        Intrinsics.e(downloadRange4);
        if (j10 >= downloadRange4.getEnd()) {
            h("afterRange", j10);
            return;
        }
        DownloadRange downloadRange5 = this.f57357i;
        Intrinsics.e(downloadRange5);
        long start2 = downloadRange5.getStart();
        DownloadRange downloadRange6 = this.f57357i;
        Intrinsics.e(downloadRange6);
        if (j10 < start2 + downloadRange6.getProgress() + this.f57350b) {
            r("currentRange21", "当前分片内，快进小于阈值，等待下载, offset = " + j10);
            return;
        }
        DownloadRange downloadRange7 = this.f57357i;
        Intrinsics.e(downloadRange7);
        if (downloadRange7.getEnd() - j10 < this.f57350b) {
            r("currentRange22", "当前分片内，（暂停当前线程，启动新线程下载）快进 新增分片小于阈值，使用阈值大小, offset = " + j10);
            DownloadRange downloadRange8 = this.f57357i;
            Intrinsics.e(downloadRange8);
            j10 = downloadRange8.getEnd() - this.f57350b;
        } else {
            r("currentRange23", "当前分片内，（暂停当前线程，启动新线程下载）快进 新增分片大于阈值, offset = " + j10);
        }
        if (l.f76264a.e()) {
            DownloadRange downloadRange9 = new DownloadRange();
            DownloadBean downloadBean3 = this.f57353e;
            if (downloadBean3 == null || (resourceId = downloadBean3.getResourceId()) == null) {
                resourceId = 0;
            }
            downloadRange9.setThreadId(resourceId.hashCode());
            DownloadRange downloadRange10 = this.f57357i;
            Intrinsics.e(downloadRange10);
            downloadRange9.setRangeId(s.a(downloadRange10.getEnd() + j10));
            DownloadRange downloadRange11 = this.f57357i;
            Intrinsics.e(downloadRange11);
            downloadRange9.setResourceId(downloadRange11.getResourceId());
            downloadRange9.setStart(j10);
            DownloadRange downloadRange12 = this.f57357i;
            Intrinsics.e(downloadRange12);
            downloadRange9.setEnd(downloadRange12.getEnd());
            downloadRange9.setProgress(0L);
            DownloadRange downloadRange13 = this.f57357i;
            Intrinsics.e(downloadRange13);
            downloadRange13.setEnd(downloadRange9.getStart() - 1);
            DownloadBean downloadBean4 = this.f57353e;
            if (downloadBean4 != null && (downloadRanges = downloadBean4.getDownloadRanges()) != null) {
                downloadRanges.add(downloadRange9);
            }
            DownloadRange downloadRange14 = this.f57357i;
            this.f57357i = downloadRange9;
            DownloadBean downloadBean5 = this.f57353e;
            s(downloadBean5 != null ? downloadBean5.getDownloadRanges() : null);
            c cVar = this.f57355g;
            if (cVar != null) {
                DownloadBean downloadBean6 = this.f57353e;
                cVar.a(downloadBean6 != null ? downloadBean6.getResourceId() : null, this.f57358j, downloadRange14, downloadRange9);
            }
            for (Map.Entry entry : this.f57356h.entrySet()) {
                Object key = entry.getKey();
                DownloadBean downloadBean7 = this.f57353e;
                if (downloadBean7 == null || (url = downloadBean7.getResourceId()) == null) {
                    DownloadBean downloadBean8 = this.f57353e;
                    url = downloadBean8 != null ? downloadBean8.getUrl() : null;
                }
                if (Intrinsics.c(key, url)) {
                    c cVar2 = (c) entry.getValue();
                    DownloadBean downloadBean9 = this.f57353e;
                    cVar2.a(downloadBean9 != null ? downloadBean9.getResourceId() : null, this.f57358j, downloadRange14, downloadRange9);
                }
            }
        }
    }

    @Override
    public int D(byte[] buffer, long j10, int i10, String url) throws IOException {
        RandomAccessFile randomAccessFile;
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(url, "url");
        if (this.f57352d == null) {
            B();
        }
        RandomAccessFile randomAccessFile2 = this.f57352d;
        if ((randomAccessFile2 != null ? randomAccessFile2.length() : 0L) == 0) {
            DownloadRange downloadRange = this.f57357i;
            if ((downloadRange != null ? downloadRange.getProgress() : 0L) > 0) {
                q.f("read error, create new data file");
                B();
            }
        }
        RandomAccessFile randomAccessFile3 = this.f57352d;
        if (randomAccessFile3 != null) {
            randomAccessFile3.seek(j10);
        }
        DownloadRange downloadRange2 = this.f57357i;
        Intrinsics.e(downloadRange2);
        int i11 = (j10 <= downloadRange2.totalProgress() && (randomAccessFile = this.f57352d) != null) ? randomAccessFile.read(buffer, 0, i10) : -1;
        if (i11 == -1) {
            RandomAccessFile randomAccessFile4 = this.f57352d;
            Long lValueOf = randomAccessFile4 != null ? Long.valueOf(randomAccessFile4.length()) : null;
            DownloadRange downloadRange3 = this.f57357i;
            Integer numValueOf = downloadRange3 != null ? Integer.valueOf(downloadRange3.getRangeId()) : null;
            DownloadRange downloadRange4 = this.f57357i;
            Long lValueOf2 = downloadRange4 != null ? Long.valueOf(downloadRange4.getStart()) : null;
            DownloadRange downloadRange5 = this.f57357i;
            Long lValueOf3 = downloadRange5 != null ? Long.valueOf(downloadRange5.getEnd()) : null;
            DownloadRange downloadRange6 = this.f57357i;
            q.b("read -1, dataFile created & length= " + lValueOf + ", rangeId = " + numValueOf + ", offset = " + j10 + " , start =  " + lValueOf2 + ",end =  " + lValueOf3 + ", totalProgress = " + (downloadRange6 != null ? Long.valueOf(downloadRange6.totalProgress()) : null));
        }
        return i11;
    }

    @Override
    public void E(long j10) {
        if (DownloadTaskUtil.f56421a.j()) {
            return;
        }
        DownloadRange downloadRange = this.f57357i;
        if (downloadRange != null) {
            Intrinsics.e(downloadRange);
            long start = downloadRange.getStart();
            DownloadRange downloadRange2 = this.f57357i;
            Intrinsics.e(downloadRange2);
            if (j10 <= downloadRange2.getEnd() && start <= j10) {
                return;
            }
        }
        q.a("check  downloadBean = " + (this.f57353e == null));
        DownloadBean downloadBean = this.f57353e;
        if (downloadBean != null) {
            for (DownloadRange downloadRange3 : downloadBean.getDownloadRanges()) {
                if (downloadRange3.contains(j10)) {
                    this.f57358j = downloadRange3.getThreadIndex();
                    this.f57357i = downloadRange3;
                    break;
                }
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            int i10 = this.f57358j;
            DownloadRange downloadRange4 = this.f57357i;
            Object objValueOf = downloadRange4 != null ? Integer.valueOf(downloadRange4.getRangeId()) : "range is null";
            DownloadRange downloadRange5 = this.f57357i;
            Long lValueOf = downloadRange5 != null ? Long.valueOf(downloadRange5.getStart()) : null;
            DownloadRange downloadRange6 = this.f57357i;
            Long lValueOf2 = downloadRange6 != null ? Long.valueOf(downloadRange6.getEnd()) : null;
            DownloadRange downloadRange7 = this.f57357i;
            Long lValueOf3 = downloadRange7 != null ? Long.valueOf(downloadRange7.getProgress()) : null;
            DownloadBean downloadBean2 = this.f57353e;
            String resourceId = downloadBean2 != null ? downloadBean2.getResourceId() : null;
            DownloadBean downloadBean3 = this.f57353e;
            c0922a.c("download", StringsKt.n("download&play set new download thread, offset=" + j10 + ",index = " + i10 + " \n                           currentRange.rangeId = " + objValueOf + ", start = " + lValueOf + ", end = " + lValueOf2 + ",\n                           progress = " + lValueOf3 + ",resourceId=" + resourceId + ",name=" + (downloadBean3 != null ? downloadBean3.getName() : null) + "\n                    "), true);
        }
    }

    @Override
    public void F(m proxyCache) {
        Intrinsics.h(proxyCache, "proxyCache");
        this.f57361m = proxyCache;
    }

    @Override
    public long G() {
        DownloadRange downloadRange = this.f57357i;
        return downloadRange != null ? downloadRange.getEnd() : A();
    }

    @Override
    public boolean H(long j10, int i10, String url) {
        Intrinsics.h(url, "url");
        this.f57360l = j10;
        DownloadBean downloadBean = this.f57353e;
        if (downloadBean != null) {
            downloadBean.setCurrentOffset(j10);
        }
        if (this.f57357i == null) {
            return false;
        }
        RandomAccessFile randomAccessFile = this.f57352d;
        if ((randomAccessFile != null ? randomAccessFile.length() : 0L) < j10) {
            return false;
        }
        DownloadRange downloadRange = this.f57357i;
        Intrinsics.e(downloadRange);
        if (downloadRange.isRangeDownloadSuccess()) {
            return true;
        }
        long j11 = j10 + ((long) i10);
        DownloadRange downloadRange2 = this.f57357i;
        Intrinsics.e(downloadRange2);
        return j11 <= downloadRange2.totalProgress();
    }

    @Override
    public void close() {
        try {
            RandomAccessFile randomAccessFile = this.f57352d;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            this.f57359k = "";
        } catch (Throwable unused) {
        }
    }

    public final void f(String resourceId, c callback) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(callback, "callback");
        this.f57356h.put(resourceId, callback);
    }

    public final DownloadBean i() {
        return this.f57353e;
    }

    @Override
    public boolean isCompleted() {
        DownloadBean downloadBean = this.f57353e;
        return downloadBean != null && downloadBean.getStatus() == 5;
    }

    public final d j() {
        return this.f57363o;
    }

    public final boolean l() {
        return this.f57362n;
    }

    public final void n(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        this.f57356h.remove(resourceId);
    }

    public final void o() {
        this.f57357i = null;
        this.f57358j = 0;
        this.f57359k = "";
        close();
        this.f57352d = null;
        this.f57361m = null;
        this.f57362n = true;
    }

    public final void p(String str) {
        this.f57354f = str;
    }

    public final void q(DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        this.f57362n = false;
        q.e("set new video =  " + downloadBean.getName());
        this.f57353e = downloadBean;
        Long size = downloadBean.getSize();
        long jLongValue = size != null ? size.longValue() / ((long) 120) : this.f57349a;
        long j10 = this.f57349a;
        if (jLongValue > j10) {
            jLongValue = j10;
        }
        this.f57350b = jLongValue;
        DownloadUtil.f57680a.B(downloadBean);
    }

    @Override
    public String z() {
        String str = this.f57354f;
        if (str != null) {
            return str;
        }
        DownloadBean downloadBean = this.f57353e;
        return (downloadBean == null || downloadBean.getType() != 1) ? MimeTypes.VIDEO_MP4 : MimeTypes.AUDIO_MPEG;
    }
}
