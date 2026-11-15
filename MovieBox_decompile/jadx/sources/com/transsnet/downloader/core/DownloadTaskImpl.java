package com.transsnet.downloader.core;

import android.app.Application;
import androidx.collection.s;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.core.task.DownloadFileInfoTask;
import com.transsnet.downloader.core.thread.DownloadExecutor;
import com.transsnet.downloader.core.thread.DownloadRunnable;
import com.transsnet.downloader.util.DownloadUtil;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ui.n0;
import yg.l;

public final class DownloadTaskImpl implements com.transsnet.downloader.core.task.b, com.transsnet.downloader.core.thread.d {

    private final c f56369a;

    private final com.transsnet.downloader.proxy.b f56370b;

    private final DownloadBean f56371c;

    private final ax.b f56372d;

    private final List f56373e;

    private final com.transsnet.downloader.core.task.c f56374f;

    private long f56375g;

    private n0 f56376h;

    private final com.transsnet.downloader.proxy.c f56377i;

    private AtomicInteger f56378j;

    private kotlinx.coroutines.n0 f56379k;

    private final String f56380l;

    private final Lazy f56381m;

    private final AtomicInteger f56382n;

    public static final class a implements com.transsnet.downloader.proxy.c {

        final DownloadBean f56383a;

        final DownloadTaskImpl f56384b;

        final ax.b f56385c;

        a(DownloadBean downloadBean, DownloadTaskImpl downloadTaskImpl, ax.b bVar) {
            this.f56383a = downloadBean;
            this.f56384b = downloadTaskImpl;
            this.f56385c = bVar;
        }

        public static final Unit c(com.transsnet.downloader.core.thread.f fVar, DownloadTaskImpl downloadTaskImpl, DownloadRange downloadRange, int i10, ax.b bVar, DownloadBean downloadBean, DownloadRange downloadRange2) {
            fVar.removeBreakCallback();
            ((ArrayList) downloadTaskImpl.f56373e).remove(fVar);
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.v(c0922a, "DownloadThread", "beak success, start new thread", false, 4, null);
            downloadRange.setDownloading(true);
            DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, downloadTaskImpl.f56370b, i10, downloadTaskImpl.f56369a, bVar, downloadBean, downloadTaskImpl);
            ((ArrayList) downloadTaskImpl.f56373e).add(downloadRunnable);
            Integer numValueOf = downloadRange2 != null ? Integer.valueOf(downloadRange2.getRangeId()) : null;
            Long lValueOf = downloadRange2 != null ? Long.valueOf(downloadRange2.getStart()) : null;
            Long lValueOf2 = downloadRange2 != null ? Long.valueOf(downloadRange2.getEnd()) : null;
            c0922a.u("download", "download&play start new thread,oldRangeId:" + numValueOf + ",start:" + lValueOf + ",end:" + lValueOf2 + ", rangeId: " + downloadRange.getRangeId() + ", start:" + downloadRange.getStart() + ",end:" + downloadRange.getEnd(), true);
            DownloadExecutor.f56425a.b().e(downloadRunnable);
            return Unit.f64096a;
        }

        @Override
        public void a(String str, final int i10, final DownloadRange downloadRange, final DownloadRange range) {
            Intrinsics.h(range, "range");
            if (!Intrinsics.c(str, this.f56383a.getResourceId()) || range.isRangeDownloadSuccess() || ((ArrayList) this.f56384b.f56373e).isEmpty()) {
                return;
            }
            Object obj = ((ArrayList) this.f56384b.f56373e).get(((ArrayList) this.f56384b.f56373e).size() - 1);
            Intrinsics.g(obj, "get(...)");
            final com.transsnet.downloader.core.thread.f fVar = (com.transsnet.downloader.core.thread.f) obj;
            final DownloadTaskImpl downloadTaskImpl = this.f56384b;
            final ax.b bVar = this.f56385c;
            final DownloadBean downloadBean = this.f56383a;
            fVar.pause(new Function0() {
                @Override
                public final Object invoke() {
                    return DownloadTaskImpl.a.c(fVar, downloadTaskImpl, range, i10, bVar, downloadBean, downloadRange);
                }
            });
        }
    }

    public static final class b implements com.transsnet.downloader.core.task.a {
        b() {
        }

        @Override
        public Object a(boolean z10, long j10, Continuation continuation) {
            DownloadTaskImpl.this.D();
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl$start$1", f = "DownloadTaskImpl.kt", l = {87}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            DownloadTaskImpl downloadTaskImpl;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                String resourceId = DownloadTaskImpl.this.f56371c.getResourceId();
                if (resourceId != null) {
                    DownloadTaskImpl downloadTaskImpl2 = DownloadTaskImpl.this;
                    n0 n0Var = downloadTaskImpl2.f56376h;
                    this.L$0 = downloadTaskImpl2;
                    this.label = 1;
                    obj = n0Var.a(resourceId, this);
                    if (obj == objF) {
                        return objF;
                    }
                    downloadTaskImpl = downloadTaskImpl2;
                }
                DownloadTaskImpl.this.E();
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            downloadTaskImpl = (DownloadTaskImpl) this.L$0;
            ResultKt.b(obj);
            List list = (List) obj;
            wf.a.C0922a.f(wf.a.f74274a, "Download_VideoCache", "ranges size = " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
            if (list != null) {
                downloadTaskImpl.f56371c.getDownloadRanges().clear();
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(list);
                downloadTaskImpl.t(arrayList);
                Boxing.a(downloadTaskImpl.f56371c.getDownloadRanges().addAll(arrayList));
            }
            DownloadTaskImpl.this.E();
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl$start$2", f = "DownloadTaskImpl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl.this.new AnonymousClass2(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            DownloadTaskImpl.this.E();
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public DownloadTaskImpl(c downloadResponse, com.transsnet.downloader.proxy.b proxyHelper, DownloadBean downloadInfo, ax.b config, com.transsnet.downloader.core.task.c cVar) {
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadInfo, "downloadInfo");
        Intrinsics.h(config, "config");
        this.f56369a = downloadResponse;
        this.f56370b = proxyHelper;
        this.f56375g = System.currentTimeMillis();
        this.f56378j = new AtomicInteger(0);
        this.f56379k = o0.a(y0.b());
        this.f56380l = "DownloadThread_TaskImpl";
        this.f56381m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadTaskImpl.B();
            }
        });
        this.f56382n = new AtomicInteger(0);
        this.f56371c = downloadInfo;
        this.f56372d = config;
        this.f56374f = cVar;
        this.f56373e = new ArrayList();
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        this.f56376h = companion.b(applicationA).p1();
        a aVar = new a(downloadInfo, this, config);
        this.f56377i = aVar;
        String resourceId = downloadInfo.getResourceId();
        proxyHelper.a(resourceId == null ? downloadInfo.getUrl() : resourceId, aVar);
    }

    private final void A(int i10) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f56380l, "1---multithreadingDownload", false, 4, null);
        List<DownloadRange> listV = v(i10, null);
        c0922a.c("download", "执行多线程下载, 需要启的线程数 =  " + listV.size(), true);
        int i11 = this.f56378j.get() - 1;
        this.f56378j.addAndGet(listV.size());
        for (DownloadRange downloadRange : listV) {
            int i12 = i11 + 1;
            DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f56370b, i12, this.f56369a, this.f56372d, this.f56371c, this);
            wf.a.C0922a.f(wf.a.f74274a, this.f56380l, "----多线程下载开始, rangeId =  " + downloadRange.getRangeId() + "， index = " + i12 + "，status = " + this.f56371c.getStatus(), false, 4, null);
            downloadRange.setDownloading(true);
            this.f56373e.add(downloadRunnable);
            DownloadExecutor.f56425a.b().e(downloadRunnable);
            i11 = i12;
        }
    }

    public static final n0 B() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    private final void C(int i10) {
        ArrayList<DownloadRange> arrayList = new ArrayList();
        arrayList.addAll(this.f56371c.getDownloadRanges());
        for (DownloadRange downloadRange : arrayList) {
            if (!downloadRange.getIsDownloading() && !downloadRange.isRangeDownloadSuccess()) {
                downloadRange.setDownloading(true);
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f56370b, i10, this.f56369a, this.f56372d, this.f56371c, this);
                wf.a.f74274a.c("download", "singleThread------onRangeSuccess , start new range~ rangeId = " + downloadRange.getRangeId() + ", range.start = " + downloadRange.getStart() + ",range.end = " + downloadRange.getEnd() + ",progress = " + downloadRange.getProgress(), true);
                this.f56373e.add(downloadRunnable);
                DownloadExecutor.f56425a.b().e(downloadRunnable);
                return;
            }
        }
    }

    public final void D() {
        long jD = this.f56372d.d();
        Long size = this.f56371c.getSize();
        boolean z10 = jD < (size != null ? size.longValue() : 0L);
        this.f56371c.setStatus(2);
        this.f56369a.a(this.f56371c);
        this.f56371c.setSupportRanges(z10);
        int iC = this.f56372d.c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isSupportRanges ");
        sb2.append(z10);
        sb2.append(" config.eachDownloadThread ");
        sb2.append(iC);
        com.transsnet.downloader.core.task.c cVar = this.f56374f;
        if (cVar != null) {
            cVar.c(this.f56371c, true);
        }
        if (z10) {
            long downloadHeaderSize = this.f56371c.getDownloadHeaderSize();
            int iC2 = this.f56372d.c();
            long j10 = downloadHeaderSize / ((long) iC2);
            int i10 = 0;
            while (i10 < iC2) {
                long j11 = ((long) i10) * j10;
                long j12 = i10 == iC2 + (-1) ? downloadHeaderSize - 1 : (j11 + j10) - 1;
                DownloadRange downloadRange = new DownloadRange();
                String resourceId = this.f56371c.getResourceId();
                downloadRange.setThreadId(resourceId != null ? resourceId.hashCode() : 0);
                downloadRange.setRangeId(s.a(j11 + j12));
                downloadRange.setResourceId(this.f56371c.getResourceId());
                downloadRange.setStart(j11);
                downloadRange.setEnd(j12);
                downloadRange.setDownloading(true);
                this.f56371c.getDownloadRanges().add(downloadRange);
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f56370b, i10, this.f56369a, this.f56372d, this.f56371c, this);
                DownloadExecutor.f56425a.b().e(downloadRunnable);
                this.f56373e.add(downloadRunnable);
                this.f56378j.getAndIncrement();
                i10++;
                iC2 = iC2;
            }
            Long size2 = this.f56371c.getSize();
            long jLongValue = (size2 != null ? size2.longValue() : 1L) - 1;
            DownloadRange downloadRange2 = new DownloadRange();
            String resourceId2 = this.f56371c.getResourceId();
            downloadRange2.setThreadId(resourceId2 != null ? resourceId2.hashCode() : 0);
            downloadRange2.setRangeId(s.a(downloadHeaderSize + jLongValue));
            downloadRange2.setResourceId(this.f56371c.getResourceId());
            downloadRange2.setStart(downloadHeaderSize);
            downloadRange2.setEnd(jLongValue);
            this.f56371c.getDownloadRanges().add(downloadRange2);
            wf.a.f74274a.p("download", new String[]{"首次多线程下载,  allSize= " + this.f56372d.c() + "，curThreadSize = " + this.f56378j + ", curThreadListSize = " + this.f56373e.size()}, true);
        } else {
            DownloadRange downloadRange3 = new DownloadRange();
            String resourceId3 = this.f56371c.getResourceId();
            downloadRange3.setThreadId(resourceId3 != null ? resourceId3.hashCode() : 0);
            Long size3 = this.f56371c.getSize();
            downloadRange3.setRangeId(s.a(size3 != null ? size3.longValue() : 1L));
            downloadRange3.setResourceId(this.f56371c.getResourceId());
            downloadRange3.setStart(0L);
            Long size4 = this.f56371c.getSize();
            downloadRange3.setEnd((size4 != null ? size4.longValue() : 1L) - 1);
            this.f56371c.getDownloadRanges().add(downloadRange3);
            DownloadRunnable downloadRunnable2 = new DownloadRunnable(downloadRange3, this.f56370b, 0, this.f56369a, this.f56372d, this.f56371c, this);
            downloadRange3.setDownloading(true);
            DownloadExecutor.f56425a.b().e(downloadRunnable2);
            this.f56373e.add(downloadRunnable2);
            this.f56378j.getAndIncrement();
        }
        this.f56371c.setStatus(2);
        this.f56369a.a(this.f56371c);
    }

    public final void E() {
        DownloadUtil downloadUtil = DownloadUtil.f57680a;
        if (downloadUtil.i(this.f56371c)) {
            ex.e.f59843c.a().k(this.f56371c, null);
            wf.a.f74274a.p("download", new String[]{"startDownload, 资源有问题，需要从头下载"}, true);
            downloadUtil.H(this.f56371c);
        }
        this.f56371c.setRestartDownloadCount(0);
        if (r()) {
            e();
            return;
        }
        if (!this.f56371c.getDownloadRanges().isEmpty()) {
            wf.a.f74274a.p("download", new String[]{"DownloadTaskImpl has task, do not check, name = " + this.f56371c.getName()}, true);
            com.transsnet.downloader.core.task.c cVar = this.f56374f;
            if (cVar != null) {
                cVar.c(this.f56371c, false);
            }
            if (this.f56371c.getIsDownloadingPlay()) {
                z();
            } else {
                x();
            }
            this.f56371c.setStatus(2);
            this.f56369a.a(this.f56371c);
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("download", "stat new task, name = " + this.f56371c.getName(), true);
        String path = this.f56371c.getPath();
        if (path == null || path.length() == 0) {
            DownloadBean downloadBean = this.f56371c;
            downloadBean.setPath(downloadUtil.s(downloadBean));
            c0922a.p("download", new String[]{"DownloadTaskImpl 新任务, set download path, path = " + this.f56371c.getPath()}, true);
        }
        if (this.f56371c.getDownloadHeaderSize() <= 0) {
            DownloadBean downloadBean2 = this.f56371c;
            downloadBean2.setDownloadHeaderSize(downloadUtil.o(downloadBean2));
        }
        s();
    }

    private final void F(List list) {
        t(list);
        k.d(o0.a(y0.b()), null, null, new DownloadTaskImpl$updateDBRanges$1(this, list, null), 3, null);
    }

    private final synchronized boolean r() {
        if (this.f56371c.getDownloadRanges().isEmpty()) {
            return false;
        }
        Iterator<T> it = this.f56371c.getDownloadRanges().iterator();
        while (it.hasNext()) {
            if (!((DownloadRange) it.next()).isRangeDownloadSuccess()) {
                return false;
            }
        }
        return true;
    }

    private final void s() {
        new DownloadFileInfoTask().b(this.f56371c, new b());
    }

    public final void t(List list) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
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
        if (list.isEmpty()) {
            return;
        }
        DownloadRange downloadRange = (DownloadRange) CollectionsKt.u0(list);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f56380l, "----checkLastRange, lastEnd =  " + downloadRange.getEnd() + "， end = " + this.f56371c.getSize(), false, 4, null);
        long end = downloadRange.getEnd();
        Long size = this.f56371c.getSize();
        if (end < (size != null ? size.longValue() : 1L) - 1) {
            wf.a.C0922a.f(c0922a, this.f56380l, "----checkLastRange, lost, add new range", false, 4, null);
            long end2 = downloadRange.getEnd() + 1;
            Long size2 = this.f56371c.getSize();
            long jLongValue = (size2 != null ? size2.longValue() : 1L) - 1;
            DownloadRange downloadRange2 = new DownloadRange();
            downloadRange2.setThreadId(downloadRange.getThreadId());
            downloadRange2.setRangeId(s.a(end2 + jLongValue));
            downloadRange2.setResourceId(downloadRange.getResourceId());
            downloadRange2.setStart(end2);
            downloadRange2.setEnd(jLongValue);
            downloadRange2.setProgress(0L);
            list.add(downloadRange2);
        }
    }

    private final long u() {
        com.transsnet.downloader.core.task.c cVar;
        ArrayList<DownloadRange> arrayList = new ArrayList();
        if (!this.f56371c.getDownloadRanges().isEmpty()) {
            arrayList.addAll(this.f56371c.getDownloadRanges());
        }
        AtomicLong atomicLong = new AtomicLong(0L);
        for (DownloadRange downloadRange : arrayList) {
            if (!downloadRange.getReDownload() && downloadRange.getProgress() > 0) {
                atomicLong.getAndAdd(downloadRange.getProgress());
            }
        }
        long j10 = atomicLong.get();
        synchronized (this) {
            try {
                this.f56371c.setProgress(j10);
                if (this.f56371c.getIsPreDownload() && j10 >= 5242880 && (cVar = this.f56374f) != null) {
                    cVar.I(this.f56371c);
                }
                wf.a.C0922a.f(wf.a.f74274a, "DownloadThread", "------------total size =" + this.f56371c.getSize() + " progress " + j10 + ", isPreDownload = " + this.f56371c.getIsPreDownload(), false, 4, null);
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    private final List v(int i10, List list) {
        long j10;
        boolean z10;
        long j11;
        DownloadRange downloadRange;
        ArrayList arrayList;
        long j12;
        long j13;
        DownloadTaskImpl downloadTaskImpl = this;
        int i11 = i10;
        ArrayList arrayList2 = new ArrayList();
        ArrayList<DownloadRange> arrayList3 = new ArrayList();
        arrayList3.addAll(downloadTaskImpl.f56371c.getDownloadRanges());
        for (DownloadRange downloadRange2 : arrayList3) {
            if (!downloadRange2.isRangeDownloadSuccess() && !downloadRange2.getIsDownloading()) {
                if (list == null || !list.contains(downloadRange2)) {
                    if (downloadRange2.getEnd() > downloadTaskImpl.f56371c.getDownloadHeaderSize() && downloadRange2.getRangeSize() - downloadRange2.getProgress() > downloadTaskImpl.f56372d.d()) {
                        wf.a.C0922a c0922a = wf.a.f74274a;
                        c0922a.c("download", "分片不够,切多个,count = " + i11 + "， rangeId = " + downloadRange2.getRangeId() + ",start =  " + downloadRange2.getStart() + ",end = " + downloadRange2.getEnd() + "，progress = " + downloadRange2.getProgress(), true);
                        long progress = downloadRange2.getProgress();
                        long start = downloadRange2.getStart() + progress;
                        ArrayList arrayList4 = new ArrayList();
                        String str = ", start = ";
                        if (progress > 0) {
                            long start2 = downloadRange2.getStart();
                            long j14 = start - 1;
                            DownloadRange downloadRange3 = new DownloadRange();
                            downloadRange3.setThreadId(downloadRange2.getThreadId());
                            downloadRange3.setRangeId(s.a(start2 + j14));
                            downloadRange3.setResourceId(downloadRange2.getResourceId());
                            downloadRange3.setStart(start2);
                            downloadRange3.setEnd(j14);
                            j10 = progress;
                            downloadRange3.setProgress(j10);
                            c0922a.p("download", new String[]{"当前分片已有下载内容 downloadedSize = " + j10 + " 直接将已下载的生成一个独立分片，rangeId = " + downloadRange3.getRangeId() + ", start = " + downloadRange3.getStart() + ",end = " + downloadRange3.getEnd() + ",success = " + downloadRange3.isRangeDownloadSuccess()}, true);
                            arrayList4.add(downloadRange3);
                        } else {
                            j10 = progress;
                        }
                        int i12 = i10;
                        long rangeSize = (downloadRange2.getRangeSize() - j10) / ((long) i12);
                        DownloadTaskImpl downloadTaskImpl2 = this;
                        if (rangeSize > downloadTaskImpl2.f56372d.d()) {
                            rangeSize = downloadTaskImpl2.f56372d.d();
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        long end = downloadRange2.getEnd();
                        int i13 = 0;
                        long j15 = 0;
                        while (i13 < i12) {
                            long j16 = start + (((long) i13) * rangeSize);
                            long jLongValue = (j16 + rangeSize) - 1;
                            if (z10) {
                                j11 = rangeSize;
                                if (i13 == i12 - 1 && jLongValue < end) {
                                    jLongValue = end;
                                }
                            } else {
                                j11 = rangeSize;
                            }
                            Long size = downloadTaskImpl2.f56371c.getSize();
                            if (jLongValue >= (size != null ? size.longValue() : 1L)) {
                                Long size2 = downloadTaskImpl2.f56371c.getSize();
                                jLongValue = (size2 != null ? size2.longValue() : 1L) - 1;
                            }
                            if (!z10) {
                                downloadRange = downloadRange2;
                                long j17 = end;
                                arrayList = arrayList2;
                                j12 = start;
                                j13 = j17;
                                DownloadRange downloadRange4 = new DownloadRange();
                                downloadRange4.setThreadId(downloadRange.getThreadId());
                                downloadRange4.setRangeId(s.a(j16 + jLongValue));
                                downloadRange4.setResourceId(downloadRange.getResourceId());
                                downloadRange4.setStart(j16);
                                downloadRange4.setEnd(jLongValue);
                                downloadRange4.setProgress(0L);
                                wf.a.f74274a.c("download", "分片不够, 没瓜分完 新分片------rangeId = " + downloadRange4.getRangeId() + ",start = " + j16 + ",end = " + jLongValue, true);
                                arrayList.add(downloadRange4);
                                arrayList4.add(downloadRange4);
                            } else if (i13 == 0) {
                                wf.a.C0922a c0922a2 = wf.a.f74274a;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("分片不够, 瓜分完了 第一个使用原始分片，更改 start = ");
                                long j18 = start;
                                sb2.append(j18);
                                j13 = end;
                                sb2.append(" end1 = ");
                                sb2.append(jLongValue);
                                c0922a2.c("download", sb2.toString(), true);
                                downloadRange = downloadRange2;
                                downloadRange.setStart(j18);
                                downloadRange.setEnd(jLongValue);
                                downloadRange.setProgress(0L);
                                downloadRange.setDownloading(false);
                                arrayList = arrayList2;
                                arrayList.add(downloadRange);
                                j12 = j18;
                            } else {
                                downloadRange = downloadRange2;
                                long j19 = end;
                                arrayList = arrayList2;
                                j12 = start;
                                j13 = j19;
                                DownloadRange downloadRange5 = new DownloadRange();
                                downloadRange5.setThreadId(downloadRange.getThreadId());
                                downloadRange5.setRangeId(s.a(j16 + jLongValue));
                                downloadRange5.setResourceId(downloadRange.getResourceId());
                                downloadRange5.setStart(j16);
                                downloadRange5.setEnd(jLongValue);
                                downloadRange5.setProgress(0L);
                                wf.a.f74274a.c("download", "分片不够, 瓜分完了 新分片------rangeId = " + downloadRange5.getRangeId() + ",start = " + j16 + ",end = " + jLongValue, true);
                                arrayList.add(downloadRange5);
                                arrayList4.add(downloadRange5);
                            }
                            i13++;
                            downloadTaskImpl2 = this;
                            i12 = i10;
                            z10 = z10;
                            j15 = jLongValue;
                            str = str;
                            long j20 = j12;
                            downloadRange2 = downloadRange;
                            arrayList2 = arrayList;
                            end = j13;
                            start = j20;
                            rangeSize = j11;
                        }
                        String str2 = str;
                        ArrayList arrayList5 = arrayList2;
                        DownloadRange downloadRange6 = downloadRange2;
                        if (!z10) {
                            downloadRange6.setStart(j15 + 1);
                            downloadRange6.setDownloading(false);
                            downloadRange6.setProgress(0L);
                            wf.a.f74274a.c("download", "原始分片 =  id = " + downloadRange6.getRangeId() + str2 + downloadRange6.getStart(), true);
                        }
                        if (!arrayList4.isEmpty()) {
                            this.f56371c.getDownloadRanges().addAll(arrayList4);
                        }
                        F(this.f56371c.getDownloadRanges());
                        return arrayList5;
                    }
                    ArrayList arrayList6 = arrayList2;
                    DownloadTaskImpl downloadTaskImpl3 = downloadTaskImpl;
                    if (arrayList6.size() >= i10) {
                        return arrayList6;
                    }
                    wf.a.f74274a.c("download", "---多线程, 分片小于range大小， 头文件 = " + (downloadRange2.getEnd() <= downloadTaskImpl3.f56371c.getDownloadHeaderSize()), true);
                    arrayList6.add(downloadRange2);
                    downloadTaskImpl = downloadTaskImpl3;
                    arrayList2 = arrayList6;
                    i11 = i10;
                }
            }
        }
        return arrayList2;
    }

    public final n0 w() {
        return (n0) this.f56381m.getValue();
    }

    private final void x() {
        wf.a.f74274a.p("download", new String[]{"开始下载--多线程"}, true);
        ArrayList<DownloadRange> arrayList = new ArrayList();
        List<DownloadRange> downloadRanges = this.f56371c.getDownloadRanges();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(downloadRanges);
        if (arrayList2.size() > 1) {
            CollectionsKt.A(arrayList2, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t10, T t11) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadRange) t10).getStart()), Long.valueOf(((DownloadRange) t11).getStart()));
                }
            });
        }
        downloadRanges.clear();
        downloadRanges.addAll(arrayList2);
        for (DownloadRange downloadRange : this.f56371c.getDownloadRanges()) {
            downloadRange.setDownloading(false);
            if (arrayList.size() < this.f56372d.c() && !downloadRange.isRangeDownloadSuccess() && downloadRange.getRangeSize() <= this.f56372d.d()) {
                wf.a.f74274a.p("download", new String[]{"添加下载分片,rangeId = " + downloadRange.getRangeId() + ",start =  " + downloadRange.getStart() + ",end = " + downloadRange.getEnd() + "， progress = " + downloadRange.getProgress() + " "}, true);
                arrayList.add(downloadRange);
            }
        }
        if (arrayList.size() < this.f56372d.c()) {
            arrayList.addAll(v(this.f56372d.c() - arrayList.size(), arrayList));
        }
        int i10 = this.f56378j.get() - 1;
        this.f56378j.addAndGet(arrayList.size());
        for (DownloadRange downloadRange2 : arrayList) {
            i10++;
            DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange2, this.f56370b, i10, this.f56369a, this.f56372d, this.f56371c, this);
            wf.a.f74274a.p(this.f56380l, new String[]{"----多线程下载开始, rangeId =  " + downloadRange2.getRangeId() + ", curSize= " + i10 + "，status = " + this.f56371c.getStatus()}, true);
            downloadRange2.setDownloading(true);
            DownloadExecutor.f56425a.b().e(downloadRunnable);
            this.f56373e.add(downloadRunnable);
        }
    }

    private final void y(int i10) {
        wf.a.C0922a.f(wf.a.f74274a, this.f56380l, "2---handleNextRangeDownload", false, 4, null);
        ArrayList<DownloadRange> arrayList = new ArrayList();
        arrayList.addAll(this.f56371c.getDownloadRanges());
        for (DownloadRange downloadRange : arrayList) {
            if (!downloadRange.isRangeDownloadSuccess()) {
                wf.a.C0922a.f(wf.a.f74274a, this.f56380l, "2---rangeId = " + downloadRange.getRangeId() + ", isDownloading = " + downloadRange.getIsDownloading(), false, 4, null);
            }
            if (!downloadRange.getIsDownloading() && !downloadRange.isRangeDownloadSuccess()) {
                if (!this.f56371c.getIsDownloadingPlay() && downloadRange.getRangeSize() - downloadRange.getProgress() > this.f56372d.d()) {
                    wf.a.f74274a.c(this.f56380l, "onRangeSuccess 这个分片太大，需要切成小分片", true);
                    long progress = downloadRange.getProgress() + downloadRange.getStart() + this.f56372d.d() + 1;
                    long end = downloadRange.getEnd();
                    DownloadRange downloadRange2 = new DownloadRange();
                    downloadRange2.setThreadId(downloadRange.getThreadId());
                    downloadRange2.setRangeId(s.a(progress + end));
                    downloadRange2.setResourceId(downloadRange.getResourceId());
                    downloadRange2.setStart(progress);
                    downloadRange2.setEnd(end);
                    downloadRange2.setProgress(0L);
                    downloadRange.setEnd(downloadRange2.getStart() - 1);
                    this.f56371c.getDownloadRanges().add(downloadRange2);
                    F(this.f56371c.getDownloadRanges());
                }
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f56370b, i10, this.f56369a, this.f56372d, this.f56371c, this);
                downloadRange.setDownloading(true);
                wf.a.C0922a.f(wf.a.f74274a, this.f56380l, "2---start single new range tread~ rangeId = " + downloadRange.getRangeId() + ", range.start = " + downloadRange.getStart() + ",range.end = " + downloadRange.getEnd(), false, 4, null);
                this.f56373e.add(downloadRunnable);
                this.f56378j.getAndIncrement();
                DownloadExecutor.f56425a.b().e(downloadRunnable);
                return;
            }
        }
    }

    private final void z() {
        DownloadRange next;
        DownloadRange downloadRange;
        long currentOffset = 0;
        if (this.f56371c.getCurrentOffset() > 0) {
            long currentOffset2 = this.f56371c.getCurrentOffset();
            Long size = this.f56371c.getSize();
            if (currentOffset2 < (size != null ? size.longValue() : 0L) - 1) {
                currentOffset = this.f56371c.getCurrentOffset();
            }
        }
        wf.a.f74274a.p("download", new String[]{"开始下载--边下边播，单线程 subjectId=" + this.f56371c.getSubjectId() + ",resourceId=" + this.f56371c.getResourceId() + ",name=" + this.f56371c.getName() + ",---readProgress = " + this.f56371c.getReadProgress() + ", currentOffset = " + currentOffset + ", ranges size = " + this.f56371c.getDownloadRanges().size()}, true);
        Iterator<DownloadRange> it = this.f56371c.getDownloadRanges().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            wf.a.C0922a c0922a = wf.a.f74274a;
            String str = this.f56380l;
            int rangeId = next.getRangeId();
            long start = next.getStart();
            long end = next.getEnd();
            long progress = next.getProgress();
            StringBuilder sb2 = new StringBuilder();
            Iterator<DownloadRange> it2 = it;
            sb2.append("---rangeId = ");
            sb2.append(rangeId);
            sb2.append(", range.start = ");
            sb2.append(start);
            sb2.append(",range.end = ");
            sb2.append(end);
            sb2.append(", range.progress = ");
            sb2.append(progress);
            wf.a.C0922a.f(c0922a, str, sb2.toString(), false, 4, null);
            next.setDownloading(false);
            long start2 = next.getStart();
            if (currentOffset <= next.getEnd() && start2 <= currentOffset) {
                wf.a.C0922a.f(c0922a, this.f56380l, "0-- get range , rangeId =  " + next.getRangeId(), false, 4, null);
                break;
            }
            it = it2;
        }
        if (next != null && !next.isRangeDownloadSuccess()) {
            downloadRange = next;
            break;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f56380l, "1--  播放进度的分片已下载完成，则取一个问下载的分片执行下载", false, 4, null);
        Iterator<DownloadRange> it3 = this.f56371c.getDownloadRanges().iterator();
        while (true) {
            if (!it3.hasNext()) {
                downloadRange = next;
                break;
            }
            DownloadRange next2 = it3.next();
            if (!next2.isRangeDownloadSuccess()) {
                wf.a.C0922a.f(wf.a.f74274a, this.f56380l, "2--  取一个问下载的分片执行下载, get range", false, 4, null);
                downloadRange = next2;
                break;
            }
        }
        if (downloadRange == null || downloadRange.isRangeDownloadSuccess()) {
            return;
        }
        wf.a.f74274a.p("download", new String[]{"----------执行未下载的线程"}, true);
        DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f56370b, 0, this.f56369a, this.f56372d, this.f56371c, this);
        downloadRange.setDownloading(true);
        DownloadExecutor.f56425a.b().e(downloadRunnable);
        this.f56373e.add(downloadRunnable);
        this.f56378j.getAndIncrement();
    }

    @Override
    public synchronized void a(com.transsnet.downloader.core.thread.f runnable, int i10, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            int iDecrementAndGet = this.f56378j.get() > 0 ? this.f56378j.decrementAndGet() : 0;
            curRange.setDownloading(false);
            boolean zRemove = this.f56373e.remove(runnable);
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, this.f56380l, "reDownload，result =" + zRemove, false, 4, null);
            if (iDecrementAndGet <= 0) {
                c0922a.p("download", new String[]{"重新下载所有线程已经暂停，开始执行新下载"}, true);
                k.d(this.f56379k, null, null, new DownloadTaskImpl$reDownload$1(this, null), 3, null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public DownloadBean b() {
        return this.f56371c;
    }

    @Override
    public synchronized void c(com.transsnet.downloader.core.thread.f runnable, int i10, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            int iDecrementAndGet = this.f56378j.get() > 0 ? this.f56378j.decrementAndGet() : 0;
            curRange.setDownloading(false);
            this.f56373e.remove(runnable);
            int iC = this.f56372d.c() - iDecrementAndGet;
            wf.a.f74274a.c("download", "边下边播 退出-------执行多线程， threadSize = " + iC, true);
            if (iC > 0) {
                A(iC);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void d() {
        int status = this.f56371c.getStatus();
        if (status == 1 || status == 2 || this.f56382n.get() != status) {
            this.f56382n.set(status);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f56375g > 1000) {
                long jU = u();
                Long size = this.f56371c.getSize();
                if (jU > (size != null ? size.longValue() : 1L)) {
                    e();
                } else {
                    this.f56371c.setUpdateTimeStamp(Long.valueOf(jCurrentTimeMillis));
                    this.f56369a.a(this.f56371c);
                    this.f56375g = jCurrentTimeMillis;
                }
            }
        }
    }

    @Override
    public synchronized void e() {
        u();
        if (this.f56371c.getStatus() == 5) {
            wf.a.C0922a.f(wf.a.f74274a, this.f56380l, "--------onDownloadSuccess---相同状态，无需重复回调-", false, 4, null);
            return;
        }
        long progress = this.f56371c.getProgress();
        Long size = this.f56371c.getSize();
        if (progress >= (size != null ? size.longValue() : 1L) || r()) {
            DownloadUtil downloadUtil = DownloadUtil.f57680a;
            if (downloadUtil.i(this.f56371c)) {
                ex.e.f59843c.a().k(this.f56371c, null);
                wf.a.C0922a c0922a = wf.a.f74274a;
                c0922a.c("download", "onDownloadSuccess, 资源有问题，需要重新下载，  progress = " + this.f56371c.getProgress(), true);
                this.f56371c.setStatus(0);
                downloadUtil.H(this.f56371c);
                wf.a.C0922a.f(c0922a, "ReDownload", "resetProgress， progress = " + this.f56371c.getProgress(), false, 4, null);
                com.transsnet.downloader.core.task.c cVar = this.f56374f;
                if (cVar != null) {
                    cVar.f(this.f56371c);
                }
                return;
            }
            wf.a.f74274a.c("download", "------------------------------onDownloadSuccess subjectId=" + this.f56371c.getResourceId() + ",resourceId=" + this.f56371c.getResourceId() + "------------------------------", true);
            this.f56371c.setStatus(5);
            this.f56371c.setReportStatus(5);
            this.f56371c.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
            this.f56369a.a(this.f56371c);
            com.transsnet.downloader.core.task.c cVar2 = this.f56374f;
            if (cVar2 != null) {
                cVar2.b(this.f56371c);
            }
            com.transsnet.downloader.proxy.b bVar = this.f56370b;
            String resourceId = this.f56371c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f56371c.getUrl();
            }
            bVar.i(resourceId);
        }
    }

    @Override
    public synchronized void f(com.transsnet.downloader.core.thread.f runnable, int i10, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            long jU = u();
            curRange.setDownloading(false);
            wf.a.C0922a c0922a = wf.a.f74274a;
            c0922a.u("download", "======onRangeSuccess, thread = " + Thread.currentThread().getName() + ",rangeId = " + curRange.getRangeId() + ",progress = " + jU + ", resourceId=" + this.f56371c.getResourceId() + ",HeaderSize= " + this.f56371c.getDownloadHeaderSize(), true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long size = this.f56371c.getSize();
            if (jU > (size != null ? size.longValue() : 1L)) {
                e();
                return;
            }
            this.f56371c.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
            this.f56369a.a(this.f56371c);
            this.f56375g = jCurrentTimeMillis;
            int iDecrementAndGet = this.f56378j.get() > 0 ? this.f56378j.decrementAndGet() : 0;
            this.f56373e.remove(runnable);
            if (jU < this.f56371c.getDownloadHeaderSize() && iDecrementAndGet > 0) {
                c0922a.p("download", new String[]{"=======onRangeSuccess header not success, wait, downloadProgress = " + jU}, true);
                return;
            }
            if (Math.abs(jU - this.f56371c.getDownloadHeaderSize()) < ui.b.f73084a.d()) {
                c0922a.c("download", "onRangeSuccess,  文件头下载完成，执行多线程", true);
            }
            int iC = iDecrementAndGet < this.f56372d.c() ? this.f56372d.c() - iDecrementAndGet : 0;
            c0922a.c("download", "allSize= " + this.f56372d.c() + ",curThreadSize = " + iDecrementAndGet + ",resourceId=" + this.f56371c.getResourceId() + "," + this.f56373e.size() + ",threadSize = " + iC, true);
            if (iC > 1 && !this.f56371c.getIsDownloadingPlay()) {
                A(iC);
            } else if (this.f56371c.getIsDownloadingPlay() && iDecrementAndGet > 2) {
                c0922a.c("download", "resourceId=" + this.f56371c.getResourceId() + " 当前边下边播 还是多线程，移除该线程，等待最后一个单线程下载", true);
            } else if (this.f56371c.getIsDownloadingPlay()) {
                c0922a.c("download", "resourceId=" + this.f56371c.getResourceId() + " 当前边下边播 ,单线程下载，不去切分片---", true);
                C(i10);
            } else {
                y(i10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void start() {
        if (!l.f76264a.e()) {
            this.f56369a.b(this.f56371c, new DownloadException(9, DownloadException.EXCEPTION_MESSAGE_NO_NET));
        } else if (this.f56371c.getDownloadRanges().isEmpty()) {
            k.d(this.f56379k, null, null, new AnonymousClass1(null), 3, null);
        } else {
            k.d(this.f56379k, null, null, new AnonymousClass2(null), 3, null);
        }
    }
}
