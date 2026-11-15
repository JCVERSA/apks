package com.transsnet.downloader.core;

import android.app.Application;
import androidx.collection.s;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.core.task.DownloadFileInfoTask;
import com.transsnet.downloader.core.task.DownloadTaskUtil;
import com.transsnet.downloader.core.thread.DownloadExecutor;
import com.transsnet.downloader.core.thread.DownloadRunnable;
import com.transsnet.downloader.util.DownloadUtil;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import yg.l;

public final class DownloadTaskImpl2 implements com.transsnet.downloader.core.task.b, com.transsnet.downloader.core.thread.d {

    public static final a f56387n = new a(null);

    private final com.transsnet.downloader.core.c f56388a;

    private final com.transsnet.downloader.proxy.b f56389b;

    private final DownloadBean f56390c;

    private final ax.b f56391d;

    private final com.transsnet.downloader.core.task.c f56392e;

    private final long f56393f;

    private AtomicInteger f56394g;

    private final List f56395h;

    private AtomicLong f56396i;

    private n0 f56397j;

    private final Lazy f56398k;

    private final AtomicInteger f56399l;

    private final c f56400m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements com.transsnet.downloader.core.task.a {
        b() {
        }

        @Override
        public Object a(boolean z10, long j10, Continuation continuation) {
            Object objZ = DownloadTaskImpl2.this.z(continuation);
            return objZ == IntrinsicsKt.f() ? objZ : Unit.f64096a;
        }
    }

    public static final class c implements com.transsnet.downloader.proxy.c {
        c() {
        }

        public static final Unit c(com.transsnet.downloader.core.thread.f fVar, DownloadTaskImpl2 downloadTaskImpl2, DownloadRange downloadRange, DownloadRange downloadRange2, int i10) {
            fVar.removeBreakCallback();
            downloadTaskImpl2.f56395h.remove(fVar);
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.v(c0922a, "DownloadThread", "beak success, start new thread", false, 4, null);
            long progress = downloadTaskImpl2.f56390c.getProgress();
            Integer numValueOf = downloadRange != null ? Integer.valueOf(downloadRange.getRangeId()) : null;
            Long lValueOf = downloadRange != null ? Long.valueOf(downloadRange.getStart()) : null;
            Long lValueOf2 = downloadRange != null ? Long.valueOf(downloadRange.getEnd()) : null;
            Long lValueOf3 = downloadRange != null ? Long.valueOf(downloadRange.getProgress()) : null;
            c0922a.u("download", StringsKt.n("download&play start new thread, totalProgress = " + progress + "\n                        oldRangeId:" + numValueOf + ", start:" + lValueOf + ", end:" + lValueOf2 + ", progress:" + lValueOf3 + " \n                        newRangeId:" + downloadRange2.getRangeId() + ", start:" + downloadRange2.getStart() + ", end:" + downloadRange2.getEnd() + ", progress:" + downloadRange2.getProgress() + " \n                    "), true);
            downloadTaskImpl2.y(downloadRange2, i10);
            return Unit.f64096a;
        }

        @Override
        public void a(String str, final int i10, final DownloadRange downloadRange, final DownloadRange range) {
            Intrinsics.h(range, "range");
            if (Intrinsics.c(str, DownloadTaskImpl2.this.f56390c.getResourceId())) {
                if (range.isRangeDownloadSuccess()) {
                    wf.a.f74274a.u("download", "download&play, range download success， do nothing", true);
                } else {
                    if (DownloadTaskImpl2.this.f56395h.isEmpty()) {
                        wf.a.C0922a.v(wf.a.f74274a, "DownloadThread", "download&play, thread null", false, 4, null);
                        return;
                    }
                    final com.transsnet.downloader.core.thread.f fVar = (com.transsnet.downloader.core.thread.f) DownloadTaskImpl2.this.f56395h.get(DownloadTaskImpl2.this.f56395h.size() - 1);
                    final DownloadTaskImpl2 downloadTaskImpl2 = DownloadTaskImpl2.this;
                    fVar.pause(new Function0() {
                        @Override
                        public final Object invoke() {
                            return DownloadTaskImpl2.c.c(fVar, downloadTaskImpl2, downloadRange, range, i10);
                        }
                    });
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl2$start$1", f = "DownloadTaskImpl2.kt", l = {107, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 134}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl2.this.new AnonymousClass1(continuation);
        }

        /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
        /* JADX WARN: Code duplicated, block: B:36:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:38:0x010f  */
        /* JADX WARN: Code duplicated, block: B:40:0x0148  */
        /* JADX WARN: Code duplicated, block: B:43:0x0165  */
        /* JADX WARN: Code duplicated, block: B:46:0x017b A[RETURN] */
        /* JADX WARN: Instruction removed from duplicated block: B:34:0x00c4, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:38:0x010f, please report this as an issue */
        @Override
        public final Object invokeSuspend(Object obj) {
            DownloadTaskImpl2 downloadTaskImpl2;
            List arrayList;
            com.transsnet.downloader.core.task.c cVar;
            DownloadTaskImpl2 downloadTaskImpl3;
            com.transsnet.downloader.core.task.c cVar2;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                String resourceId = DownloadTaskImpl2.this.f56390c.getResourceId();
                if (resourceId != null) {
                    downloadTaskImpl2 = DownloadTaskImpl2.this;
                    ui.n0 n0VarT = downloadTaskImpl2.t();
                    this.L$0 = downloadTaskImpl2;
                    this.label = 1;
                    obj = n0VarT.a(resourceId, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else if (DownloadTaskImpl2.this.f56390c.getDownloadRanges().isEmpty()) {
                    wf.a.f74274a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f56390c.getName(), true);
                    DownloadTaskUtil.f56421a.e(DownloadTaskImpl2.this.f56390c);
                    if (DownloadTaskImpl2.this.f56390c.getDownloadHeaderSize() <= 0) {
                        DownloadTaskImpl2.this.f56390c.setDownloadHeaderSize(DownloadUtil.f57680a.o(DownloadTaskImpl2.this.f56390c));
                    }
                    cVar = DownloadTaskImpl2.this.f56392e;
                    if (cVar != null) {
                        cVar.c(DownloadTaskImpl2.this.f56390c, true);
                    }
                    downloadTaskImpl3 = DownloadTaskImpl2.this;
                    this.L$0 = null;
                    this.label = 3;
                    if (downloadTaskImpl3.s(this) == objF) {
                        return objF;
                    }
                } else {
                    wf.a.f74274a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f56390c.getName()}, true);
                    cVar2 = DownloadTaskImpl2.this.f56392e;
                    if (cVar2 != null) {
                        cVar2.c(DownloadTaskImpl2.this.f56390c, false);
                    }
                    DownloadTaskImpl2.this.u();
                    DownloadTaskImpl2.this.f56388a.a(DownloadTaskImpl2.this.f56390c);
                }
                return Unit.f64096a;
            }
            if (i10 == 1) {
                downloadTaskImpl2 = (DownloadTaskImpl2) this.L$0;
                ResultKt.b(obj);
            } else if (i10 == 2) {
                downloadTaskImpl2 = (DownloadTaskImpl2) this.L$0;
                ResultKt.b(obj);
                arrayList = (List) obj;
                Boxing.a(downloadTaskImpl2.f56390c.getDownloadRanges().addAll(arrayList));
                if (DownloadTaskImpl2.this.f56390c.getDownloadRanges().isEmpty()) {
                    wf.a.f74274a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f56390c.getName()}, true);
                    cVar2 = DownloadTaskImpl2.this.f56392e;
                    if (cVar2 != null) {
                        cVar2.c(DownloadTaskImpl2.this.f56390c, false);
                    }
                    DownloadTaskImpl2.this.u();
                    DownloadTaskImpl2.this.f56388a.a(DownloadTaskImpl2.this.f56390c);
                } else {
                    wf.a.f74274a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f56390c.getName(), true);
                    DownloadTaskUtil.f56421a.e(DownloadTaskImpl2.this.f56390c);
                    if (DownloadTaskImpl2.this.f56390c.getDownloadHeaderSize() <= 0) {
                        DownloadTaskImpl2.this.f56390c.setDownloadHeaderSize(DownloadUtil.f57680a.o(DownloadTaskImpl2.this.f56390c));
                    }
                    cVar = DownloadTaskImpl2.this.f56392e;
                    if (cVar != null) {
                        cVar.c(DownloadTaskImpl2.this.f56390c, true);
                    }
                    downloadTaskImpl3 = DownloadTaskImpl2.this;
                    this.L$0 = null;
                    this.label = 3;
                    if (downloadTaskImpl3.s(this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
            List list = (List) obj;
            if (list != null) {
                arrayList = new ArrayList();
                arrayList.addAll(list);
                Long size = downloadTaskImpl2.f56390c.getSize();
                long jLongValue = ((size != null ? size.longValue() : 0L) / downloadTaskImpl2.f56393f) + 1;
                int size2 = arrayList.size();
                if (!arrayList.isEmpty() && jLongValue > size2) {
                    DownloadTaskUtil downloadTaskUtil = DownloadTaskUtil.f56421a;
                    long j10 = downloadTaskImpl2.f56393f;
                    DownloadBean downloadBean = downloadTaskImpl2.f56390c;
                    this.L$0 = downloadTaskImpl2;
                    this.label = 2;
                    obj = downloadTaskUtil.d(j10, downloadBean, arrayList, this);
                    if (obj == objF) {
                        return objF;
                    }
                    arrayList = (List) obj;
                }
                Boxing.a(downloadTaskImpl2.f56390c.getDownloadRanges().addAll(arrayList));
                if (DownloadTaskImpl2.this.f56390c.getDownloadRanges().isEmpty()) {
                    wf.a.f74274a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f56390c.getName()}, true);
                    cVar2 = DownloadTaskImpl2.this.f56392e;
                    if (cVar2 != null) {
                        cVar2.c(DownloadTaskImpl2.this.f56390c, false);
                    }
                    DownloadTaskImpl2.this.u();
                    DownloadTaskImpl2.this.f56388a.a(DownloadTaskImpl2.this.f56390c);
                } else {
                    wf.a.f74274a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f56390c.getName(), true);
                    DownloadTaskUtil.f56421a.e(DownloadTaskImpl2.this.f56390c);
                    if (DownloadTaskImpl2.this.f56390c.getDownloadHeaderSize() <= 0) {
                        DownloadTaskImpl2.this.f56390c.setDownloadHeaderSize(DownloadUtil.f57680a.o(DownloadTaskImpl2.this.f56390c));
                    }
                    cVar = DownloadTaskImpl2.this.f56392e;
                    if (cVar != null) {
                        cVar.c(DownloadTaskImpl2.this.f56390c, true);
                    }
                    downloadTaskImpl3 = DownloadTaskImpl2.this;
                    this.L$0 = null;
                    this.label = 3;
                    if (downloadTaskImpl3.s(this) == objF) {
                        return objF;
                    }
                }
            } else if (DownloadTaskImpl2.this.f56390c.getDownloadRanges().isEmpty()) {
                wf.a.f74274a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f56390c.getName()}, true);
                cVar2 = DownloadTaskImpl2.this.f56392e;
                if (cVar2 != null) {
                    cVar2.c(DownloadTaskImpl2.this.f56390c, false);
                }
                DownloadTaskImpl2.this.u();
                DownloadTaskImpl2.this.f56388a.a(DownloadTaskImpl2.this.f56390c);
            } else {
                wf.a.f74274a.c("download", "DownloadTask2 stat new task, name = " + DownloadTaskImpl2.this.f56390c.getName(), true);
                DownloadTaskUtil.f56421a.e(DownloadTaskImpl2.this.f56390c);
                if (DownloadTaskImpl2.this.f56390c.getDownloadHeaderSize() <= 0) {
                    DownloadTaskImpl2.this.f56390c.setDownloadHeaderSize(DownloadUtil.f57680a.o(DownloadTaskImpl2.this.f56390c));
                }
                cVar = DownloadTaskImpl2.this.f56392e;
                if (cVar != null) {
                    cVar.c(DownloadTaskImpl2.this.f56390c, true);
                }
                downloadTaskImpl3 = DownloadTaskImpl2.this;
                this.L$0 = null;
                this.label = 3;
                if (downloadTaskImpl3.s(this) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl2$start$2", f = "DownloadTaskImpl2.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTaskImpl2.this.new AnonymousClass2(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            wf.a.f74274a.p("download", new String[]{"DownloadTask2 has task, name = " + DownloadTaskImpl2.this.f56390c.getName()}, true);
            com.transsnet.downloader.core.task.c cVar = DownloadTaskImpl2.this.f56392e;
            if (cVar != null) {
                cVar.c(DownloadTaskImpl2.this.f56390c, false);
            }
            DownloadTaskImpl2.this.u();
            DownloadTaskImpl2.this.f56388a.a(DownloadTaskImpl2.this.f56390c);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public DownloadTaskImpl2(com.transsnet.downloader.core.c downloadResponse, com.transsnet.downloader.proxy.b proxyHelper, DownloadBean downloadBean, ax.b config, com.transsnet.downloader.core.task.c cVar) {
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadBean, "downloadBean");
        Intrinsics.h(config, "config");
        this.f56388a = downloadResponse;
        this.f56389b = proxyHelper;
        this.f56390c = downloadBean;
        this.f56391d = config;
        this.f56392e = cVar;
        this.f56393f = config.d();
        this.f56394g = new AtomicInteger(0);
        this.f56395h = new ArrayList();
        this.f56396i = new AtomicLong(System.currentTimeMillis());
        this.f56397j = o0.a(y0.b());
        this.f56398k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadTaskImpl2.x();
            }
        });
        this.f56399l = new AtomicInteger(0);
        c cVar2 = new c();
        this.f56400m = cVar2;
        String resourceId = downloadBean.getResourceId();
        proxyHelper.a(resourceId == null ? downloadBean.getUrl() : resourceId, cVar2);
    }

    private final synchronized boolean r() {
        if (this.f56390c.getDownloadRanges().isEmpty()) {
            return false;
        }
        Iterator<T> it = this.f56390c.getDownloadRanges().iterator();
        while (it.hasNext()) {
            if (!((DownloadRange) it.next()).isRangeDownloadSuccess()) {
                return false;
            }
        }
        wf.a.f74274a.c("download", "checkAllThreadStatus success", true);
        return true;
    }

    public final Object s(Continuation continuation) {
        new DownloadFileInfoTask().b(this.f56390c, new b());
        return Unit.f64096a;
    }

    public final ui.n0 t() {
        return (ui.n0) this.f56398k.getValue();
    }

    public final void u() {
        int i10;
        DownloadTaskUtil.f56421a.e(this.f56390c);
        if (this.f56390c.getDownloadHeaderSize() <= 0) {
            DownloadBean downloadBean = this.f56390c;
            downloadBean.setDownloadHeaderSize(DownloadUtil.f57680a.o(downloadBean));
        }
        int i11 = 1;
        wf.a.f74274a.p("download", new String[]{"已有任务 开始下载--多线程, isPreDownload:" + this.f56390c.getIsPreDownload()}, true);
        this.f56390c.setStatus(2);
        ArrayList<DownloadRange> arrayList = new ArrayList();
        int iC = this.f56390c.getIsDownloadingPlay() ? 2 : this.f56391d.c();
        Iterator<DownloadRange> it = this.f56390c.getDownloadRanges().iterator();
        while (true) {
            if (!it.hasNext()) {
                i10 = i11;
                break;
            }
            DownloadRange next = it.next();
            next.setDownloading(false);
            if (!next.isRangeDownloadSuccess()) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                int rangeId = next.getRangeId();
                long start = next.getStart();
                long end = next.getEnd();
                long progress = next.getProgress();
                boolean isDownloadingPlay = this.f56390c.getIsDownloadingPlay();
                StringBuilder sb2 = new StringBuilder();
                Iterator<DownloadRange> it2 = it;
                sb2.append("添加下载分片,rangeId:");
                sb2.append(rangeId);
                sb2.append(", start:");
                sb2.append(start);
                sb2.append(", end:");
                sb2.append(end);
                sb2.append(", progress:");
                sb2.append(progress);
                sb2.append(", dp:");
                sb2.append(isDownloadingPlay);
                sb2.append(" ");
                i10 = 1;
                c0922a.p("download", new String[]{sb2.toString()}, true);
                arrayList.add(next);
                if (arrayList.size() >= iC) {
                    break;
                }
                i11 = 1;
                it = it2;
            }
        }
        int i12 = this.f56394g.get() - i10;
        this.f56394g.addAndGet(arrayList.size());
        for (DownloadRange downloadRange : arrayList) {
            wf.a.f74274a.p("download", new String[]{"----多线程下载开始, rangeId:" + downloadRange.getRangeId() + ", curSize:" + i12 + "，status:" + this.f56390c.getStatus()}, true);
            i12++;
            y(downloadRange, i12);
        }
    }

    private final void v(int i10) {
        ArrayList arrayList;
        boolean z10;
        Object next;
        int i11 = i10;
        wf.a.f74274a.c("download", "2---handleNextRangeDownload,name:" + this.f56390c.getName() + ", RangesSize:" + this.f56390c.getDownloadRanges().size(), true);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.f56390c.getDownloadRanges());
        long currentOffset = 0;
        if (this.f56390c.getCurrentOffset() > 0) {
            long currentOffset2 = this.f56390c.getCurrentOffset();
            Long size = this.f56390c.getSize();
            if (currentOffset2 < (size != null ? size.longValue() : 0L)) {
                currentOffset = this.f56390c.getCurrentOffset();
            }
        }
        Iterator it = arrayList2.iterator();
        boolean z11 = false;
        while (true) {
            if (!it.hasNext()) {
                arrayList = arrayList2;
                z10 = false;
                break;
            }
            DownloadRange downloadRange = (DownloadRange) it.next();
            if (!downloadRange.isRangeDownloadSuccess()) {
                wf.a.C0922a.f(wf.a.f74274a, "download", "2---rangeId:" + downloadRange.getRangeId() + ", isDownloading:" + downloadRange.getIsDownloading() + ",currentOffset:" + currentOffset, false, 4, null);
            }
            if (!downloadRange.isRangeDownloadSuccess() && !downloadRange.getIsDownloading()) {
                if (downloadRange.getEnd() >= currentOffset) {
                    y(downloadRange, i11);
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    int rangeId = downloadRange.getRangeId();
                    long start = downloadRange.getStart();
                    long end = downloadRange.getEnd();
                    long progress = downloadRange.getProgress();
                    StringBuilder sb2 = new StringBuilder();
                    arrayList = arrayList2;
                    sb2.append("2---执行下一个task~ rangeId:");
                    sb2.append(rangeId);
                    sb2.append(", start:");
                    sb2.append(start);
                    sb2.append(",range:");
                    sb2.append(end);
                    sb2.append(",progress:");
                    sb2.append(progress);
                    c0922a.c("download", sb2.toString(), true);
                    this.f56394g.getAndIncrement();
                    z10 = true;
                    break;
                }
                z11 = true;
            } else {
                i11 = i10;
                arrayList2 = arrayList2;
            }
        }
        if (!z11 || z10) {
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            DownloadRange downloadRange2 = (DownloadRange) next;
            if (!downloadRange2.isRangeDownloadSuccess() && !downloadRange2.getIsDownloading()) {
                break;
            }
        }
        DownloadRange downloadRange3 = (DownloadRange) next;
        if (downloadRange3 != null) {
            wf.a.f74274a.c("download", "2-2---执行下一个task~ rangeId:" + downloadRange3.getRangeId() + ", start:" + downloadRange3.getStart() + ",range:" + downloadRange3.getEnd() + ",progress:" + downloadRange3.getProgress(), true);
            this.f56394g.getAndIncrement();
            y(downloadRange3, i10);
        }
    }

    private final void w(int i10) {
        List<DownloadRange> listK = DownloadTaskUtil.f56421a.k(i10, this.f56390c);
        wf.a.f74274a.c("download", "1---multithreadingDownload,name:" + this.f56390c.getName() + ", RangesSize:" + this.f56390c.getDownloadRanges().size() + " 需要启的线程数 =  " + listK.size(), true);
        int i11 = this.f56394g.get() - 1;
        this.f56394g.addAndGet(listK.size());
        for (DownloadRange downloadRange : listK) {
            wf.a.C0922a.f(wf.a.f74274a, "download", "----多线程下载开始, rangeId =  " + downloadRange.getRangeId() + "， index = " + i11 + "，status = " + this.f56390c.getStatus(), false, 4, null);
            i11++;
            y(downloadRange, i11);
        }
    }

    public static final ui.n0 x() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    public final void y(DownloadRange downloadRange, int i10) {
        long end = downloadRange.getEnd();
        Long size = this.f56390c.getSize();
        if (end <= (size != null ? size.longValue() : 0L)) {
            downloadRange.setDownloading(true);
            if (DownloadTaskUtil.f56421a.i()) {
                com.transsnet.downloader.core.thread.e eVar = new com.transsnet.downloader.core.thread.e(downloadRange, this.f56389b, i10, this.f56388a, this.f56391d, this.f56390c, this);
                this.f56395h.add(eVar);
                k.d(this.f56397j, null, null, new DownloadTaskImpl2$startDownloadInIO$2(eVar, null), 3, null);
                return;
            } else {
                DownloadRunnable downloadRunnable = new DownloadRunnable(downloadRange, this.f56389b, i10, this.f56388a, this.f56391d, this.f56390c, this);
                this.f56395h.add(downloadRunnable);
                DownloadExecutor.f56425a.b().e(downloadRunnable);
                return;
            }
        }
        wf.a.f74274a.i("download", "startDownloadInIO error range ,contentLength:" + this.f56390c.getSize() + ",range:" + downloadRange.getStart() + "-" + downloadRange.getEnd(), true);
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m453constructorimpl(Boolean.valueOf(this.f56390c.getDownloadRanges().remove(downloadRange)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object z(Continuation continuation) {
        DownloadTaskImpl2$startFirstDownload$1 downloadTaskImpl2$startFirstDownload$1;
        int size;
        List list;
        if (continuation instanceof DownloadTaskImpl2$startFirstDownload$1) {
            downloadTaskImpl2$startFirstDownload$1 = (DownloadTaskImpl2$startFirstDownload$1) continuation;
            int i10 = downloadTaskImpl2$startFirstDownload$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadTaskImpl2$startFirstDownload$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadTaskImpl2$startFirstDownload$1 = new DownloadTaskImpl2$startFirstDownload$1(this, continuation);
            }
        } else {
            downloadTaskImpl2$startFirstDownload$1 = new DownloadTaskImpl2$startFirstDownload$1(this, continuation);
        }
        Object obj = downloadTaskImpl2$startFirstDownload$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadTaskImpl2$startFirstDownload$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            int iC = this.f56391d.c();
            ArrayList arrayList = new ArrayList();
            long downloadHeaderSize = this.f56390c.getDownloadHeaderSize() / ((long) iC);
            Ref.LongRef longRef = new Ref.LongRef();
            longRef.element = -1L;
            Ref.LongRef longRef2 = new Ref.LongRef();
            longRef2.element = -1L;
            Long size2 = this.f56390c.getSize();
            long jLongValue = size2 != null ? size2.longValue() : 0L;
            int i12 = 0;
            while (true) {
                long j10 = longRef2.element;
                long j11 = jLongValue - 1;
                if (j10 >= j11) {
                    break;
                }
                int i13 = i12 + 1;
                if (i12 >= iC) {
                    downloadHeaderSize = this.f56393f;
                }
                long j12 = longRef.element < 0 ? 0L : j10 + 1;
                longRef.element = j12;
                long j13 = (j12 + downloadHeaderSize) - 1;
                longRef2.element = j13;
                if (j13 >= jLongValue) {
                    longRef2.element = j11;
                }
                DownloadRange downloadRange = new DownloadRange();
                String resourceId = this.f56390c.getResourceId();
                downloadRange.setThreadId(resourceId != null ? resourceId.hashCode() : 0);
                downloadRange.setRangeId(s.a(longRef.element + longRef2.element));
                downloadRange.setResourceId(this.f56390c.getResourceId());
                downloadRange.setStart(longRef.element);
                downloadRange.setEnd(longRef2.element);
                downloadRange.setProgress(0L);
                arrayList.add(downloadRange);
                objF = objF;
                i12 = i13;
                downloadHeaderSize = downloadHeaderSize;
                downloadTaskImpl2$startFirstDownload$1 = downloadTaskImpl2$startFirstDownload$1;
            }
            DownloadTaskImpl2$startFirstDownload$1 downloadTaskImpl2$startFirstDownload$2 = downloadTaskImpl2$startFirstDownload$1;
            Object obj2 = objF;
            wf.a.f74274a.p("download", new String[]{"首次多线程下载, , isPreDownload:" + this.f56390c.getIsPreDownload() + ", rangeListSize:" + arrayList.size() + "，ThreadSize:" + iC + ", name:" + this.f56390c.getName()}, true);
            this.f56390c.setStatus(2);
            this.f56390c.getDownloadRanges().addAll(arrayList);
            DownloadTaskUtil downloadTaskUtil = DownloadTaskUtil.f56421a;
            List<DownloadRange> downloadRanges = this.f56390c.getDownloadRanges();
            downloadTaskImpl2$startFirstDownload$2.L$0 = arrayList;
            downloadTaskImpl2$startFirstDownload$2.I$0 = iC;
            downloadTaskImpl2$startFirstDownload$2.label = 1;
            if (downloadTaskUtil.n(downloadRanges, downloadTaskImpl2$startFirstDownload$2) == obj2) {
                return obj2;
            }
            size = iC;
            list = arrayList;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            size = downloadTaskImpl2$startFirstDownload$1.I$0;
            list = (List) downloadTaskImpl2$startFirstDownload$1.L$0;
            ResultKt.b(obj);
        }
        if (list.size() < size) {
            size = list.size();
        }
        int i14 = 0;
        for (Object obj3 : list.subList(0, size)) {
            int i15 = i14 + 1;
            if (i14 < 0) {
                CollectionsKt.u();
            }
            y((DownloadRange) obj3, i14);
            this.f56394g.getAndIncrement();
            i14 = i15;
        }
        return Unit.f64096a;
    }

    @Override
    public void a(com.transsnet.downloader.core.thread.f runnable, int i10, DownloadRange curRange) {
        Intrinsics.h(runnable, "runnable");
        Intrinsics.h(curRange, "curRange");
        int iDecrementAndGet = this.f56394g.get() > 0 ? this.f56394g.decrementAndGet() : 0;
        curRange.setDownloading(false);
        boolean zRemove = this.f56395h.remove(runnable);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "download", "reDownload，result =" + zRemove, false, 4, null);
        if (iDecrementAndGet <= 0) {
            c0922a.p("download", new String[]{"重新下载所有线程已经暂停，开始执行新下载"}, true);
            k.d(this.f56397j, null, null, new DownloadTaskImpl2$reDownload$1(this, null), 3, null);
        }
    }

    @Override
    public DownloadBean b() {
        return this.f56390c;
    }

    @Override
    public void c(com.transsnet.downloader.core.thread.f fVar, int i10, DownloadRange downloadRange) {
        com.transsnet.downloader.core.thread.d.a.a(this, fVar, i10, downloadRange);
    }

    @Override
    public synchronized void d() {
        int status = this.f56390c.getStatus();
        if (status == 1 || status == 2 || this.f56399l.get() != status) {
            this.f56399l.set(status);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f56396i.get() > 1000) {
                long jF = DownloadTaskUtil.f56421a.f(this.f56390c, this, this.f56392e);
                Long size = this.f56390c.getSize();
                if (jF > (size != null ? size.longValue() : 1L)) {
                    e();
                } else {
                    this.f56390c.setUpdateTimeStamp(Long.valueOf(jCurrentTimeMillis));
                    this.f56388a.a(this.f56390c);
                    this.f56396i.set(jCurrentTimeMillis);
                }
            }
        }
    }

    @Override
    public synchronized void e() {
        DownloadTaskUtil.f56421a.f(this.f56390c, this, this.f56392e);
        if (this.f56390c.getStatus() == 5) {
            wf.a.C0922a.f(wf.a.f74274a, "download", "--------onDownloadSuccess---相同状态，无需重复回调-", false, 4, null);
            return;
        }
        long progress = this.f56390c.getProgress();
        Long size = this.f56390c.getSize();
        if (progress >= (size != null ? size.longValue() : 1L) || r()) {
            DownloadUtil downloadUtil = DownloadUtil.f57680a;
            if (downloadUtil.i(this.f56390c)) {
                ex.e.f59843c.a().k(this.f56390c, null);
                wf.a.C0922a c0922a = wf.a.f74274a;
                c0922a.c("download", "onDownloadSuccess, 资源有问题，需要重新下载，  progress = " + this.f56390c.getProgress(), true);
                this.f56390c.setStatus(0);
                downloadUtil.H(this.f56390c);
                wf.a.C0922a.f(c0922a, "ReDownload", "resetProgress， progress = " + this.f56390c.getProgress(), false, 4, null);
                com.transsnet.downloader.core.task.c cVar = this.f56392e;
                if (cVar != null) {
                    cVar.f(this.f56390c);
                }
                return;
            }
            wf.a.f74274a.c("download", "------------------------------onDownloadSuccess subjectId=" + this.f56390c.getSubjectId() + ",resourceId=" + this.f56390c.getResourceId() + ", size:" + this.f56390c.getSize() + ", progress:" + this.f56390c.getProgress() + "------------------------------", true);
            this.f56390c.setStatus(5);
            this.f56390c.setReportStatus(5);
            this.f56390c.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
            this.f56388a.a(this.f56390c);
            com.transsnet.downloader.core.task.c cVar2 = this.f56392e;
            if (cVar2 != null) {
                cVar2.b(this.f56390c);
            }
            com.transsnet.downloader.proxy.b bVar = this.f56389b;
            String resourceId = this.f56390c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f56390c.getUrl();
            }
            bVar.i(resourceId);
        }
    }

    @Override
    public synchronized void f(com.transsnet.downloader.core.thread.f runnable, int i10, DownloadRange curRange) {
        try {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
            long jF = DownloadTaskUtil.f56421a.f(this.f56390c, this, this.f56392e);
            curRange.setDownloading(false);
            wf.a.C0922a c0922a = wf.a.f74274a;
            c0922a.u("download", "======onRangeSuccess, name:" + this.f56390c.getTitleName() + ",thread = " + Thread.currentThread().getName() + ",rangeId = " + curRange.getRangeId() + ",progress = " + jF + ", resourceId=" + this.f56390c.getResourceId() + ",status:" + this.f56390c.getStatus() + "}", true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long size = this.f56390c.getSize();
            if (jF > (size != null ? size.longValue() : 1L)) {
                e();
                return;
            }
            this.f56390c.setUpdateTimeStamp(Long.valueOf(jCurrentTimeMillis));
            if (jCurrentTimeMillis - this.f56396i.get() > 1000) {
                this.f56388a.a(this.f56390c);
                this.f56396i.set(jCurrentTimeMillis);
            }
            int iDecrementAndGet = this.f56394g.get() > 0 ? this.f56394g.decrementAndGet() : 0;
            this.f56395h.remove(runnable);
            if (jF < this.f56390c.getDownloadHeaderSize() && iDecrementAndGet > 0) {
                c0922a.p("download", new String[]{"=======onRangeSuccess header not success, wait, downloadProgress = " + jF}, true);
                return;
            }
            int iC = iDecrementAndGet < this.f56391d.c() ? this.f56391d.c() - iDecrementAndGet : 0;
            c0922a.c("download", "allSize:" + this.f56391d.c() + ",curThreadSize: " + iDecrementAndGet + ", threadCount：" + this.f56395h.size() + ",newThreadCount = " + iC, true);
            if (iC > 1 && !this.f56390c.getIsDownloadingPlay()) {
                w(iC);
            } else if (!this.f56390c.getIsDownloadingPlay() || iDecrementAndGet < 2) {
                v(i10);
            } else {
                c0922a.c("download", "resourceId=" + this.f56390c.getResourceId() + " 当前边下边播 还是多线程，移除该线程，等待最后还有2个线程下载", true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void start() {
        if (!l.f76264a.e()) {
            this.f56388a.b(this.f56390c, new DownloadException(9, DownloadException.EXCEPTION_MESSAGE_NO_NET));
            return;
        }
        DownloadUtil downloadUtil = DownloadUtil.f57680a;
        if (downloadUtil.i(this.f56390c)) {
            ex.e.f59843c.a().k(this.f56390c, null);
            wf.a.f74274a.p("download", new String[]{"startDownload, 资源有问题，需要从头下载"}, true);
            downloadUtil.H(this.f56390c);
        }
        this.f56390c.setRestartDownloadCount(0);
        if (r()) {
            e();
            return;
        }
        this.f56390c.setStatus(2);
        if (this.f56390c.getDownloadRanges().isEmpty()) {
            k.d(this.f56397j, null, null, new AnonymousClass1(null), 3, null);
        } else {
            k.d(this.f56397j, null, null, new AnonymousClass2(null), 3, null);
        }
    }
}
