package com.transsnet.downloader.core.task;

import android.app.Application;
import androidx.collection.s;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.downloader.core.DownloadTaskImpl2;
import com.transsnet.downloader.util.DownloadUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import ui.n0;

public final class DownloadTaskUtil {

    public static final DownloadTaskUtil f56421a = new DownloadTaskUtil();

    private static final Lazy f56422b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadTaskUtil.m();
        }
    });

    private static final Lazy f56423c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(DownloadTaskUtil.h());
        }
    });

    private static final Lazy f56424d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(DownloadTaskUtil.g());
        }
    });

    private DownloadTaskUtil() {
    }

    public static final boolean g() {
        Boolean boolM1;
        ConfigBean configBeanC = cm.f.f17019c.a().c("downloadInCoroutine", false);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (boolM1 = StringsKt.m1(value)) == null) {
            return true;
        }
        return boolM1.booleanValue();
    }

    public static final boolean h() {
        Boolean boolM1;
        ConfigBean configBeanC = cm.f.f17019c.a().c("downloadNewRange", false);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (boolM1 = StringsKt.m1(value)) == null) {
            return true;
        }
        return boolM1.booleanValue();
    }

    private final n0 l() {
        return (n0) f56422b.getValue();
    }

    public static final n0 m() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object d(long j10, DownloadBean downloadBean, List list, Continuation continuation) {
        DownloadTaskUtil$checkOldRanges$1 downloadTaskUtil$checkOldRanges$1;
        String str;
        List list2;
        DownloadBean downloadBean2;
        long j11;
        if (continuation instanceof DownloadTaskUtil$checkOldRanges$1) {
            downloadTaskUtil$checkOldRanges$1 = (DownloadTaskUtil$checkOldRanges$1) continuation;
            int i10 = downloadTaskUtil$checkOldRanges$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadTaskUtil$checkOldRanges$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadTaskUtil$checkOldRanges$1 = new DownloadTaskUtil$checkOldRanges$1(this, continuation);
            }
        } else {
            downloadTaskUtil$checkOldRanges$1 = new DownloadTaskUtil$checkOldRanges$1(this, continuation);
        }
        Object obj = downloadTaskUtil$checkOldRanges$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadTaskUtil$checkOldRanges$1.label;
        String str2 = "download";
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                DownloadRange downloadRange = (DownloadRange) it.next();
                if (downloadRange.isRangeDownloadSuccess() || downloadRange.getRangeSize() < j10 + 3145728) {
                    objF = objF;
                    str2 = str2;
                    it = it;
                    downloadTaskUtil$checkOldRanges$1 = downloadTaskUtil$checkOldRanges$1;
                    arrayList = arrayList;
                } else {
                    Object obj2 = objF;
                    Iterator it2 = it;
                    wf.a.f74274a.c(str2, "checkOldRanges, rangeId:" + downloadRange.getRangeId() + ",start:" + downloadRange.getStart() + ",end:" + downloadRange.getEnd() + ",progress:" + downloadRange.getProgress(), true);
                    Ref.LongRef longRef = new Ref.LongRef();
                    longRef.element = -1L;
                    Ref.LongRef longRef2 = new Ref.LongRef();
                    longRef2.element = -1L;
                    long j12 = downloadRange.totalProgress();
                    long end = downloadRange.getEnd();
                    while (true) {
                        long j13 = longRef.element;
                        if (j13 >= end) {
                            break;
                        }
                        long start = longRef2.element < 0 ? downloadRange.getStart() : j13 + 1;
                        longRef2.element = start;
                        long j14 = (start + j10) - 1;
                        longRef.element = j14;
                        if (j14 >= end) {
                            longRef.element = end;
                        }
                        if (j12 > longRef.element) {
                            j11 = j10;
                        } else {
                            long j15 = longRef2.element;
                            j11 = j12 > j15 ? j12 - j15 : 0L;
                        }
                        if (longRef2.element == downloadRange.getStart()) {
                            long j16 = end;
                            downloadRange.setEnd(longRef.element);
                            downloadRange.setProgress(j11);
                            ArrayList arrayList2 = arrayList;
                            Ref.LongRef longRef3 = longRef2;
                            String str3 = str2;
                            wf.a.f74274a.c(str3, "checkOldRanges,oldRange rangeId:" + downloadRange.getRangeId() + ", start:" + longRef2.element + ", end:" + longRef.element + ", progress:" + j11 + ", totalProgress:" + j12, true);
                            str2 = str3;
                            end = j16;
                            arrayList = arrayList2;
                            longRef2 = longRef3;
                            downloadTaskUtil$checkOldRanges$1 = downloadTaskUtil$checkOldRanges$1;
                            longRef = longRef;
                        } else {
                            ArrayList arrayList3 = arrayList;
                            DownloadTaskUtil$checkOldRanges$1 downloadTaskUtil$checkOldRanges$2 = downloadTaskUtil$checkOldRanges$1;
                            Ref.LongRef longRef4 = longRef;
                            Ref.LongRef longRef5 = longRef2;
                            String str4 = str2;
                            long j17 = end;
                            DownloadRange downloadRange2 = new DownloadRange();
                            downloadRange2.setThreadId(downloadRange.getThreadId());
                            downloadRange2.setRangeId(s.a(longRef5.element + longRef4.element));
                            downloadRange2.setResourceId(downloadRange.getResourceId());
                            downloadRange2.setStart(longRef5.element);
                            downloadRange2.setEnd(longRef4.element);
                            downloadRange2.setProgress(j11);
                            DownloadRange downloadRange3 = downloadRange;
                            wf.a.f74274a.c(str4, "checkOldRanges,newRange rangeId:" + downloadRange2.getRangeId() + ", start:" + longRef5.element + ", end:" + longRef4.element + ", progress:" + j11, true);
                            Boxing.a(arrayList3.add(downloadRange2));
                            str2 = str4;
                            longRef = longRef4;
                            end = j17;
                            downloadRange = downloadRange3;
                            longRef2 = longRef5;
                            downloadTaskUtil$checkOldRanges$1 = downloadTaskUtil$checkOldRanges$2;
                            j12 = j12;
                            arrayList = arrayList3;
                        }
                    }
                    objF = obj2;
                    it = it2;
                }
            }
            ArrayList arrayList4 = arrayList;
            DownloadTaskUtil$checkOldRanges$1 downloadTaskUtil$checkOldRanges$3 = downloadTaskUtil$checkOldRanges$1;
            Object obj3 = objF;
            str = str2;
            if (arrayList4.isEmpty()) {
                return list;
            }
            list2 = list;
            list2.addAll(arrayList4);
            downloadBean2 = downloadBean;
            downloadTaskUtil$checkOldRanges$3.L$0 = downloadBean2;
            downloadTaskUtil$checkOldRanges$3.L$1 = list2;
            downloadTaskUtil$checkOldRanges$3.label = 1;
            if (n(list2, downloadTaskUtil$checkOldRanges$3) == obj3) {
                return obj3;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list2 = (List) downloadTaskUtil$checkOldRanges$1.L$1;
            DownloadBean downloadBean3 = (DownloadBean) downloadTaskUtil$checkOldRanges$1.L$0;
            ResultKt.b(obj);
            downloadBean2 = downloadBean3;
            str = "download";
        }
        wf.a.f74274a.c(str, "checkOldRanges, set new range, size:" + downloadBean2.getDownloadRanges().size(), true);
        return list2;
    }

    public final void e(DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        String path = downloadBean.getPath();
        if (path == null || path.length() == 0) {
            downloadBean.setPath(DownloadUtil.f57680a.s(downloadBean));
            wf.a.f74274a.p("download", new String[]{"DownloadTaskImpl 新任务, set download path, path = " + downloadBean.getPath()}, true);
        }
    }

    public final long f(DownloadBean downloadBean, DownloadTaskImpl2 downloadTask, c cVar) {
        Intrinsics.h(downloadBean, "downloadBean");
        Intrinsics.h(downloadTask, "downloadTask");
        ArrayList<DownloadRange> arrayList = new ArrayList();
        arrayList.addAll(downloadBean.getDownloadRanges());
        AtomicLong atomicLong = new AtomicLong(0L);
        for (DownloadRange downloadRange : arrayList) {
            if (!downloadRange.getReDownload() && downloadRange.getProgress() > 0) {
                atomicLong.getAndAdd(downloadRange.getProgress());
            }
        }
        long j10 = atomicLong.get();
        synchronized (downloadTask) {
            try {
                downloadBean.setProgress(j10);
                if (downloadBean.getIsPreDownload() && j10 >= 5242880 && cVar != null) {
                    cVar.I(downloadBean);
                }
                wf.a.C0922a.f(wf.a.f74274a, "DownloadThread", "------------total size:" + downloadBean.getSize() + " progress:" + j10 + ", isPreDownload: " + downloadBean.getIsPreDownload(), false, 4, null);
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    public final boolean i() {
        return ((Boolean) f56424d.getValue()).booleanValue();
    }

    public final boolean j() {
        return ((Boolean) f56423c.getValue()).booleanValue();
    }

    public final List k(int i10, DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        long currentOffset = 0;
        if (downloadBean.getCurrentOffset() > 0) {
            long currentOffset2 = downloadBean.getCurrentOffset();
            Long size = downloadBean.getSize();
            if (currentOffset2 < (size != null ? size.longValue() : 0L)) {
                currentOffset = downloadBean.getCurrentOffset();
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<DownloadRange> arrayList2 = new ArrayList();
        arrayList2.addAll(downloadBean.getDownloadRanges());
        for (DownloadRange downloadRange : arrayList2) {
            if (!downloadRange.isRangeDownloadSuccess() && !downloadRange.getIsDownloading() && (!downloadBean.getIsDownloadingPlay() || downloadRange.getEnd() >= currentOffset)) {
                arrayList.add(downloadRange);
                if (arrayList.size() >= i10) {
                    break;
                }
            }
        }
        if (arrayList.size() < i10) {
            for (DownloadRange downloadRange2 : arrayList2) {
                if (!downloadRange2.isRangeDownloadSuccess() && !downloadRange2.getIsDownloading() && !arrayList.contains(downloadRange2)) {
                    arrayList.add(downloadRange2);
                    if (arrayList.size() >= i10) {
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0082 A[Catch: all -> 0x0110, TryCatch #0 {all -> 0x0110, blocks: (B:12:0x0039, B:23:0x009e, B:18:0x007c, B:20:0x0082, B:24:0x00eb, B:17:0x0054), top: B:28:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x009d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x009b -> B:23:0x009e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object n(java.util.List r22, kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.core.task.DownloadTaskUtil.n(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
