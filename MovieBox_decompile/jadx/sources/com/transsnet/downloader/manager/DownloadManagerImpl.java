package com.transsnet.downloader.manager;

import android.app.Application;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.SystemClock;
import android.text.TextUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsnet.downloader.callback.DownloadTaskStat;
import com.transsnet.downloader.core.DownloadResponseImpl;
import com.transsnet.downloader.core.DownloadTaskImpl;
import com.transsnet.downloader.core.DownloadTaskImpl2;
import com.transsnet.downloader.core.task.DownloadTaskUtil;
import com.transsnet.downloader.notification.DownloadNotificationUtils;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ui.m0;
import ui.s0;

public final class DownloadManagerImpl implements g, com.transsnet.downloader.core.task.c {

    public static final a f57215y = new a(null);

    private static final Lazy f57216z = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return DownloadManagerImpl.p0();
        }
    });

    private com.transsnet.downloader.core.c f57220d;

    private ax.b f57221e;

    private long f57222f;

    private yg.m f57223g;

    private zw.b f57226j;

    private final com.transsnet.downloader.proxy.b f57236t;

    private String f57217a = "DownloadImp";

    private ConcurrentHashMap f57218b = new ConcurrentHashMap();

    private List f57219c = new CopyOnWriteArrayList();

    private ConcurrentHashMap f57224h = new ConcurrentHashMap();

    private ConcurrentHashMap f57225i = new ConcurrentHashMap();

    private final Set f57227k = new CopyOnWriteArraySet();

    private final Set f57228l = new CopyOnWriteArraySet();

    private final Set f57229m = new CopyOnWriteArraySet();

    private final Set f57230n = new CopyOnWriteArraySet();

    private final Lazy f57231o = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadManagerImpl.i0();
        }
    });

    private DownloadTaskStat f57232p = new DownloadTaskStat(0, 0, 0, 0);

    private Set f57233q = new CopyOnWriteArraySet();

    private Set f57234r = new CopyOnWriteArraySet();

    private final Lazy f57235s = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadManagerImpl.Q0();
        }
    });

    private final n0 f57237u = o0.a(y0.c());

    private final n0 f57238v = o0.a(y0.b());

    private final Lazy f57239w = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadManagerImpl.G0();
        }
    });

    private final Lazy f57240x = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadManagerImpl.A0();
        }
    });

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$3", f = "DownloadManagerImpl.kt", l = {1265}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadManagerImpl.this.new AnonymousClass3(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                DownloadManagerImpl downloadManagerImpl = DownloadManagerImpl.this;
                this.label = 1;
                if (downloadManagerImpl.B(this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            return (g) DownloadManagerImpl.f57216z.getValue();
        }

        private a() {
        }
    }

    public DownloadManagerImpl(ax.b bVar) {
        if (bVar == null) {
            this.f57221e = new ax.b();
        } else {
            this.f57221e = bVar;
        }
        com.transsnet.downloader.proxy.b bVar2 = new com.transsnet.downloader.proxy.b();
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        bVar2.g(applicationA);
        m0 m0VarE = bVar2.e();
        if (m0VarE != null) {
            g(m0VarE);
        }
        this.f57236t = bVar2;
        DownloadEsHelper.f57201m.a();
        this.f57220d = new DownloadResponseImpl(this, this.f57233q, this.f57221e);
        DownloadNotificationUtils.f57288a.E();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass3(null), 3, null);
        H0();
        DownloadListManager.I(DownloadListManager.f57771m.a(), false, false, null, 7, null);
        g(new FinishDownloadHelper());
    }

    public static final io.b A0() {
        return (io.b) TheRouter.d(io.b.class, new Object[0]);
    }

    private final boolean B0(DownloadBean downloadBean) {
        com.transsnet.downloader.core.c cVar;
        if (z(downloadBean) || downloadBean.isDownloading()) {
            wf.a.f74274a.p(this.f57217a, new String[]{"preDownload, isDownloading name = " + downloadBean.getName() + " "}, true);
            return false;
        }
        if (yg.l.f76264a.e() && downloadBean.isVideo()) {
            Long size = downloadBean.getSize();
            if ((size != null ? size.longValue() : 0L) >= 52428800) {
                if (downloadBean.getProgress() >= 5242880) {
                    wf.a.f74274a.p("download", new String[]{"preDownload, is downloaded do nothing, name = " + downloadBean.getTotalTitleName()}, true);
                    return false;
                }
                if (this.f57224h.size() > 0) {
                    ConcurrentHashMap concurrentHashMap = this.f57225i;
                    String resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    concurrentHashMap.put(resourceId, downloadBean);
                    wf.a.f74274a.p("download", new String[]{"preDownload, 当前已有任务在预下载，加入等待队列, name = " + downloadBean.getTotalTitleName()}, true);
                    return false;
                }
                z0(downloadBean);
                downloadBean.setPreDownload(true);
                ConcurrentHashMap concurrentHashMap2 = this.f57225i;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                concurrentHashMap2.remove(resourceId2);
                ax.b bVar = this.f57221e;
                com.transsnet.downloader.core.task.b bVarK0 = null;
                if (bVar != null && (cVar = this.f57220d) != null) {
                    bVarK0 = k0(bVar, cVar, downloadBean);
                }
                wf.a.f74274a.p("download", new String[]{"start preDownload, name = " + downloadBean.getTotalTitleName()}, true);
                if (bVarK0 != null) {
                    ConcurrentHashMap concurrentHashMap3 = this.f57224h;
                    String resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.put(resourceId3, bVarK0);
                }
                downloadBean.setStatus(1);
                com.transsnet.downloader.core.c cVar2 = this.f57220d;
                if (cVar2 != null) {
                    cVar2.a(downloadBean);
                }
                if (bVarK0 != null) {
                    bVarK0.start();
                }
                return true;
            }
        }
        return false;
    }

    public final void C0() {
        if (yg.l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "preDownloadNextTask, pool size = " + this.f57225i.size(), false, 4, null);
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : this.f57225i.entrySet()) {
                String str = (String) entry.getKey();
                DownloadBean downloadBean = (DownloadBean) entry.getValue();
                if (downloadBean.getProgress() < 5242880) {
                    if (downloadBean.getStatus() == 6) {
                        if (downloadBean.getErrorCount() < 3) {
                            downloadBean.setErrorCount(downloadBean.getErrorCount() + 1);
                        }
                    }
                    wf.a.f74274a.p("download", new String[]{"preDownloadNextTask, try start, name = " + downloadBean.getTotalTitleName()}, true);
                    B0(downloadBean);
                    break;
                }
                wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "preDownloadNextTask, is downloaded do nothing, name = " + downloadBean.getName(), false, 4, null);
                arrayList.add(str);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f57225i.remove((String) it.next());
            }
        }
    }

    private final void D0(DownloadBean downloadBean) {
        if (ThreadUtils.i()) {
            E0(downloadBean);
        } else {
            kotlinx.coroutines.k.d(this.f57237u, null, null, new DownloadManagerImpl$prepareDownload$1(this, downloadBean, null), 3, null);
        }
    }

    public final void E0(DownloadBean downloadBean) {
        com.transsnet.downloader.core.c cVar;
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("download", n0() + " --> prepareDownloadNext() --> 2- prepareDownload,name = " + downloadBean.getTotalTitleName() + ",resourceId = " + downloadBean.getResourceId() + "，subjectId = " + downloadBean.getSubjectId() + ", status = " + downloadBean.getStatus(), true);
        if (downloadBean.getStatus() == 2 || downloadBean.getStatus() == 1) {
            wf.a.C0922a.f(c0922a, "download", n0() + " --> prepareDownloadNext() --> prepareDownload, status-- name = " + downloadBean.getName() + " ", false, 4, null);
            if (downloadBean.getIsPreDownload()) {
                downloadBean.setPreDownload(false);
                wf.a.C0922a.f(c0922a, "download", n0() + " --> prepareDownloadNext() --> preDownload 预下载转正变成当前下载 = " + downloadBean.getName() + " , epse = " + downloadBean.getEpse(), false, 4, null);
                ConcurrentHashMap concurrentHashMap = this.f57224h;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                com.transsnet.downloader.core.task.b bVar = (com.transsnet.downloader.core.task.b) concurrentHashMap.get(resourceId);
                Set set = this.f57227k;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                set.remove(resourceId2);
                Set set2 = this.f57229m;
                String resourceId3 = downloadBean.getResourceId();
                if (resourceId3 == null) {
                    resourceId3 = downloadBean.getUrl();
                }
                set2.remove(resourceId3);
                Set set3 = this.f57228l;
                String resourceId4 = downloadBean.getResourceId();
                if (resourceId4 == null) {
                    resourceId4 = downloadBean.getUrl();
                }
                set3.add(resourceId4);
                downloadBean.setStatus(2);
                com.transsnet.downloader.core.c cVar2 = this.f57220d;
                if (cVar2 != null) {
                    cVar2.a(downloadBean);
                }
                S0();
                if (bVar != null) {
                    R0();
                    ConcurrentHashMap concurrentHashMap2 = this.f57218b;
                    String resourceId5 = downloadBean.getResourceId();
                    if (resourceId5 == null) {
                        resourceId5 = downloadBean.getUrl();
                    }
                    concurrentHashMap2.put(resourceId5, bVar);
                    ConcurrentHashMap concurrentHashMap3 = this.f57224h;
                    String resourceId6 = downloadBean.getResourceId();
                    if (resourceId6 == null) {
                        resourceId6 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.remove(resourceId6);
                }
            }
            if (yg.l.f76264a.e()) {
                return;
            }
            c0922a.p("download", new String[]{n0() + " --> prepareDownloadNext() --> not net， 2 error"}, true);
            downloadBean.setStatus(6);
            downloadBean.setException(new DownloadException(9, DownloadException.EXCEPTION_MESSAGE_NO_NET));
            u(downloadBean);
            return;
        }
        downloadBean.setPreDownload(false);
        ConcurrentHashMap concurrentHashMap4 = this.f57218b;
        String resourceId7 = downloadBean.getResourceId();
        if (resourceId7 == null) {
            resourceId7 = downloadBean.getUrl();
        }
        if (concurrentHashMap4.containsKey(resourceId7)) {
            if (downloadBean.isDownloading()) {
                c0922a.p("download", new String[]{n0() + " --> prepareDownloadNext() --> prepareDownload, isDownloading name = " + downloadBean.getName()}, true);
                return;
            }
            ConcurrentHashMap concurrentHashMap5 = this.f57218b;
            String resourceId8 = downloadBean.getResourceId();
            if (resourceId8 == null) {
                resourceId8 = downloadBean.getUrl();
            }
            concurrentHashMap5.remove(resourceId8);
            wf.a.C0922a.f(c0922a, "download", n0() + " --> prepareDownloadNext() --> prepareDownload, isDownloading, error status , remove  name = " + downloadBean.getName(), false, 4, null);
        }
        if (u0()) {
            if (!B0(downloadBean)) {
                downloadBean.setStatus(3);
                com.transsnet.downloader.core.c cVar3 = this.f57220d;
                if (cVar3 != null) {
                    cVar3.a(downloadBean);
                }
            }
            Set set4 = this.f57227k;
            String resourceId9 = downloadBean.getResourceId();
            if (resourceId9 == null) {
                resourceId9 = downloadBean.getUrl();
            }
            set4.add(resourceId9);
            c0922a.c("download", n0() + " --> prepareDownloadNext() --> 1--prepareDownload, name = " + downloadBean.getName() + ", add wait, status = " + downloadBean.getStatus() + ",loading  = " + this.f57228l.size() + ", error  = " + this.f57229m.size() + " , wait  = " + this.f57227k.size() + " ", true);
            S0();
            return;
        }
        ConcurrentHashMap concurrentHashMap6 = this.f57225i;
        String resourceId10 = downloadBean.getResourceId();
        if (resourceId10 == null) {
            resourceId10 = downloadBean.getUrl();
        }
        concurrentHashMap6.remove(resourceId10);
        ConcurrentHashMap concurrentHashMap7 = this.f57224h;
        String resourceId11 = downloadBean.getResourceId();
        if (resourceId11 == null) {
            resourceId11 = downloadBean.getUrl();
        }
        concurrentHashMap7.remove(resourceId11);
        if (this.f57224h.isEmpty() && !this.f57225i.isEmpty()) {
            C0();
        }
        ax.b bVar2 = this.f57221e;
        com.transsnet.downloader.core.task.b bVarK0 = null;
        if (bVar2 != null && (cVar = this.f57220d) != null) {
            bVarK0 = k0(bVar2, cVar, downloadBean);
        }
        com.transsnet.downloader.core.task.b bVar3 = bVarK0;
        if (bVar3 != null) {
            ConcurrentHashMap concurrentHashMap8 = this.f57218b;
            String resourceId12 = downloadBean.getResourceId();
            if (resourceId12 == null) {
                resourceId12 = downloadBean.getUrl();
            }
            concurrentHashMap8.put(resourceId12, bVar3);
        }
        downloadBean.setStatus(1);
        com.transsnet.downloader.core.c cVar4 = this.f57220d;
        if (cVar4 != null) {
            cVar4.a(downloadBean);
        }
        j0(downloadBean);
        Set set5 = this.f57227k;
        String resourceId13 = downloadBean.getResourceId();
        if (resourceId13 == null) {
            resourceId13 = downloadBean.getUrl();
        }
        set5.remove(resourceId13);
        Set set6 = this.f57229m;
        String resourceId14 = downloadBean.getResourceId();
        if (resourceId14 == null) {
            resourceId14 = downloadBean.getUrl();
        }
        set6.remove(resourceId14);
        Set set7 = this.f57228l;
        String resourceId15 = downloadBean.getResourceId();
        if (resourceId15 == null) {
            resourceId15 = downloadBean.getUrl();
        }
        set7.add(resourceId15);
        wf.a.C0922a.v(c0922a, "download", n0() + " --> prepareDownloadNext() --> 1--prepareDownload, name = " + downloadBean.getName() + ", add loading, loading  = " + this.f57228l.size() + ", error  = " + this.f57229m.size() + " , wait  = " + this.f57227k.size() + " ", false, 4, null);
        S0();
        if (bVar3 != null) {
            bVar3.start();
        }
    }

    private final void F0() {
        for (DownloadBean downloadBean : this.f57219c) {
            if (downloadBean.getStatus() == 3 || downloadBean.getStatus() == 6 || (downloadBean.isDownloading() && downloadBean.getIsPreDownload())) {
                if (downloadBean.getStatus() == 6) {
                    if (!yg.l.f76264a.e() || downloadBean.isNoNetError()) {
                        wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "prepareDownloadNextTask, no net，continue, name = " + downloadBean.getName(), false, 4, null);
                    } else if (downloadBean.getErrorCount() >= 3) {
                        wf.a.f74274a.c("download", "prepareDownloadNextTask, 失败超限~不再执行，name = " + downloadBean.getName(), true);
                    } else {
                        downloadBean.setErrorCount(downloadBean.getErrorCount() + 1);
                    }
                }
                wf.a.f74274a.c("download", "prepareDownloadNextTask, name = " + downloadBean.getName() + ", from next, status: " + downloadBean.getStatus() + ",isPreDownload:" + downloadBean.getIsPreDownload() + ", progress: " + downloadBean.getProgress() + ",size:" + downloadBean.getSize(), true);
                Set set = this.f57227k;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                set.remove(resourceId);
                Set set2 = this.f57229m;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                set2.remove(resourceId2);
                D0(downloadBean);
                return;
            }
        }
    }

    public static final ui.n0 G0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    private final void H0() {
        yg.m mVar = new yg.m() {
            private final void a() {
                wf.a.C0922a c0922a = wf.a.f74274a;
                wf.a.C0922a.f(c0922a, this.f57241a.f57217a, "---------Download, Network onConnected", false, 4, null);
                DownloadBean downloadBeanD = this.f57241a.f57236t.d();
                if (downloadBeanD != null) {
                    DownloadManagerImpl downloadManagerImpl = this.f57241a;
                    if (!downloadBeanD.isRemoved()) {
                        wf.a.C0922a.f(c0922a, downloadManagerImpl.f57217a, "onConnected, start DownloadingPlay, name = " + downloadBeanD.getName() + ",epse = " + downloadBeanD.getEpse() + ",  cur status = " + downloadBeanD.getStatus(), false, 4, null);
                        downloadManagerImpl.s(downloadBeanD, true);
                    }
                }
                List<DownloadBean> list = this.f57241a.f57219c;
                DownloadManagerImpl downloadManagerImpl2 = this.f57241a;
                for (DownloadBean downloadBean : list) {
                    if (downloadBean.getStatus() == 6 || downloadBean.getStatus() == 3 || downloadBean.isDownloading()) {
                        wf.a.f74274a.c(downloadManagerImpl2.f57217a, "onConnected, caches, name = " + downloadBean.getName() + ",epse = " + downloadBean.getEpse() + ",  cur status = " + downloadBean.getStatus(), true);
                        if (downloadBean.isDownloading()) {
                            downloadBean.setPreDownload(false);
                            downloadBean.setStatus(3);
                        }
                        downloadManagerImpl2.s(downloadBean, true);
                    }
                }
                kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadManagerImpl$registerNetwork$1$netConnected$3(this.f57241a, null), 3, null);
            }

            @Override
            public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
                Intrinsics.h(network, "network");
                Intrinsics.h(networkCapabilities, "networkCapabilities");
                a();
            }

            @Override
            public void onDisconnected() {
                wf.a.C0922a.f(wf.a.f74274a, this.f57241a.f57217a, "---------Download, Network onDisconnected, cancel all request---------", false, 4, null);
                try {
                    com.transsnet.downloader.core.b.f56405c.a().c().dispatcher().cancelAll();
                } catch (Throwable unused) {
                }
                this.f57241a.f57218b.clear();
                this.f57241a.f57225i.clear();
                this.f57241a.f57224h.clear();
            }

            @Override
            public void onConnected() {
                a();
            }
        };
        this.f57223g = mVar;
        yg.l.f76264a.l(mVar);
    }

    public static final Unit I0(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, Function1 function1, String str, boolean z10) {
        downloadManagerImpl.K0(downloadBean);
        ConcurrentHashMap concurrentHashMap = downloadManagerImpl.f57218b;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        ConcurrentHashMap concurrentHashMap2 = downloadManagerImpl.f57225i;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = downloadManagerImpl.f57224h;
        String resourceId3 = downloadBean.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        for (DownloadBean downloadBean2 : downloadManagerImpl.f57219c) {
            if (Intrinsics.c(downloadBean2.getResourceId(), downloadBean.getResourceId())) {
                downloadManagerImpl.f57219c.remove(downloadBean2);
                wf.a.C0922a.f(wf.a.f74274a, downloadManagerImpl.f57217a, "remove ~~", false, 4, null);
                break;
            }
        }
        com.transsnet.downloader.core.c cVar = downloadManagerImpl.f57220d;
        if (cVar != null) {
            cVar.a(downloadBean);
        }
        kotlinx.coroutines.k.d(downloadManagerImpl.f57238v, null, null, new DownloadManagerImpl$remove$1$1(str, downloadBean, null), 3, null);
        downloadManagerImpl.F0();
        yw.e eVar = new yw.e(true, false);
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = yw.e.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, eVar, 0L);
        yw.a aVar = new yw.a();
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = yw.a.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, aVar, 0L);
        if (z10) {
            downloadManagerImpl.t0(downloadBean.getSubjectId() + downloadBean.getSe() + downloadBean.getEp());
        }
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
        return Unit.f64096a;
    }

    public static final Unit J0(Function1 function1, DownloadManagerImpl downloadManagerImpl, boolean z10) {
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
        wf.a.C0922a.f(wf.a.f74274a, downloadManagerImpl.f57217a, "remove success ,prepareDownloadNextTask", false, 4, null);
        downloadManagerImpl.S0();
        downloadManagerImpl.F0();
        return Unit.f64096a;
    }

    private final void K0(DownloadBean downloadBean) {
        Set set = this.f57228l;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f57229m;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        set2.remove(resourceId2);
        Set set3 = this.f57227k;
        String resourceId3 = downloadBean.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean.getUrl();
        }
        set3.remove(resourceId3);
        Set set4 = this.f57230n;
        String resourceId4 = downloadBean.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadBean.getUrl();
        }
        set4.remove(resourceId4);
        S0();
    }

    private final void L0(final List list, final int i10, final Function1 function1) {
        final DownloadBean downloadBean = (DownloadBean) list.get(i10);
        final String path = downloadBean.getPath();
        l0(downloadBean, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadManagerImpl.M0(downloadBean, this, i10, list, function1, path, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit M0(DownloadBean downloadBean, DownloadManagerImpl downloadManagerImpl, int i10, List list, Function1 function1, String str, boolean z10) {
        wf.a.f74274a.u("download", "removeDownload ,db success, remove file, name = " + downloadBean.getName() + ", resourceId：" + downloadBean.getResourceId(), true);
        downloadManagerImpl.K0(downloadBean);
        ConcurrentHashMap concurrentHashMap = downloadManagerImpl.f57218b;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        ConcurrentHashMap concurrentHashMap2 = downloadManagerImpl.f57225i;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = downloadManagerImpl.f57224h;
        String resourceId3 = downloadBean.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        downloadManagerImpl.f57219c.remove(downloadBean);
        com.transsnet.downloader.core.c cVar = downloadManagerImpl.f57220d;
        if (cVar != null) {
            cVar.a(downloadBean);
        }
        kotlinx.coroutines.k.d(downloadManagerImpl.f57238v, null, null, new DownloadManagerImpl$removeDownload$1$1(str, downloadBean, null), 3, null);
        if (i10 >= list.size() - 1) {
            yw.e eVar = new yw.e(true, false);
            AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
            FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name = yw.e.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, eVar, 0L);
            yw.a aVar = new yw.a();
            FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = yw.a.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, aVar, 0L);
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        } else {
            downloadManagerImpl.L0(list, i10 + 1, function1);
        }
        return Unit.f64096a;
    }

    private final void N0(DownloadBean downloadBean) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadManagerImpl$requestNewSource$1(this, downloadBean, null), 3, null);
    }

    private final void O0(boolean z10) {
        if (v0()) {
            wf.a.f74274a.c("download", "resumeAll, " + z10, true);
            for (DownloadBean downloadBean : this.f57219c) {
                wf.a.f74274a.c("download", "resumeAll, " + z10 + ", pauseInner:" + downloadBean.getTotalTitleName() + ", isAutoPause:" + downloadBean.getIsAutoPause(), true);
                if (!z10) {
                    D0(downloadBean);
                } else if (downloadBean.getIsAutoPause() && !downloadBean.isDownloading()) {
                    if (this.f57218b.isEmpty()) {
                        D0(downloadBean);
                    } else {
                        downloadBean.setStatus(3);
                        com.transsnet.downloader.core.c cVar = this.f57220d;
                        if (cVar != null) {
                            cVar.a(downloadBean);
                        }
                    }
                }
            }
        }
    }

    private final void P0(List list) {
        boolean z10;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "resumeAllDownloading , uncomplete size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        int i10 = 4;
        int i11 = 2;
        int i12 = 3;
        int i13 = 1;
        if (list != null) {
            Iterator it = list.iterator();
            z10 = false;
            downloadBean = null;
            downloadBean2 = null;
            while (it.hasNext()) {
                DownloadBean downloadBean3 = (DownloadBean) it.next();
                int status = downloadBean3.getStatus();
                if (status == i13 || status == i11) {
                    Iterator it2 = this.f57219c.iterator();
                    boolean z11 = false;
                    while (it2.hasNext()) {
                        if (Intrinsics.c(downloadBean3.getResourceId(), ((DownloadBean) it2.next()).getResourceId())) {
                            z11 = true;
                        }
                    }
                    ConcurrentHashMap concurrentHashMap = this.f57218b;
                    String resourceId = downloadBean3.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean3.getUrl();
                    }
                    if (!concurrentHashMap.containsKey(resourceId)) {
                        z11 = false;
                    }
                    if (downloadBean3.getIsPreDownload()) {
                        z11 = false;
                    }
                    if (!z11) {
                        wf.a.C0922a c0922a = wf.a.f74274a;
                        String resourceId2 = downloadBean3.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean3.getUrl();
                        }
                        wf.a.C0922a.f(c0922a, "DownloadStatus", "init resume , resId = " + resourceId2, false, 4, null);
                        String str = this.f57217a;
                        String resourceId3 = downloadBean3.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean3.getUrl();
                        }
                        c0922a.c(str, "resumeAllDownloading init resume  , resId = " + resourceId3 + ", name = " + downloadBean3.getName(), true);
                        downloadBean3.setStatus(3);
                        s(downloadBean3, true);
                    }
                    z10 = true;
                } else if (status == i12 || status == i10) {
                    if (downloadBean == null) {
                        downloadBean = downloadBean3;
                    }
                    if (downloadBean3.getStatus() == i12 && downloadBean3.getProgress() < 5242880) {
                        wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "init-----preDownload ，add to pool, name = " + downloadBean3.getName() + ", epse = " + downloadBean3.getEpse(), false, 4, null);
                        ConcurrentHashMap concurrentHashMap2 = this.f57225i;
                        String resourceId4 = downloadBean3.getResourceId();
                        if (resourceId4 == null) {
                            resourceId4 = downloadBean3.getUrl();
                        }
                        concurrentHashMap2.put(resourceId4, downloadBean3);
                    }
                    wf.a.C0922a c0922a2 = wf.a.f74274a;
                    wf.a.C0922a.f(c0922a2, "DownloadStatus", "init add waitSet , resId = " + downloadBean3.getResourceId() + ", name = " + downloadBean3.getName(), false, 4, null);
                    wf.a.C0922a.f(c0922a2, this.f57217a, "init add waitSet , resId = " + downloadBean3.getResourceId() + ", epse = " + downloadBean3.getEpse() + ", name = " + downloadBean3.getName() + ", status = " + downloadBean3.getStatus() + ",progress = " + downloadBean3.getProgress(), false, 4, null);
                    Set set = this.f57227k;
                    String resourceId5 = downloadBean3.getResourceId();
                    if (resourceId5 == null) {
                        resourceId5 = downloadBean3.getUrl();
                    }
                    set.add(resourceId5);
                } else if (status == 6) {
                    if (downloadBean2 == null) {
                        downloadBean2 = downloadBean3;
                    }
                    wf.a.C0922a c0922a3 = wf.a.f74274a;
                    wf.a.C0922a.f(c0922a3, "DownloadStatus", "init add errorSet , resId = " + downloadBean3.getResourceId() + ", name = " + downloadBean3.getName() + ", name = " + downloadBean3.getName(), false, 4, null);
                    String str2 = this.f57217a;
                    String resourceId6 = downloadBean3.getResourceId();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("init add errorSet , resId = ");
                    sb2.append(resourceId6);
                    wf.a.C0922a.f(c0922a3, str2, sb2.toString(), false, 4, null);
                    Set set2 = this.f57229m;
                    String resourceId7 = downloadBean3.getResourceId();
                    if (resourceId7 == null) {
                        resourceId7 = downloadBean3.getUrl();
                    }
                    set2.add(resourceId7);
                }
                S0();
                if (!this.f57219c.contains(downloadBean3)) {
                    wf.a.f74274a.c(this.f57217a, "resumeAllDownloading， add 2 cache, name = " + downloadBean3.getName(), true);
                    this.f57219c.add(downloadBean3);
                }
                it = it;
                i10 = 4;
                i11 = 2;
                i12 = 3;
                i13 = 1;
            }
        } else {
            z10 = false;
            downloadBean = null;
            downloadBean2 = null;
        }
        if (z10) {
            return;
        }
        if (downloadBean != null) {
            if (!(downloadBean.getStatus() == 4)) {
                wf.a.f74274a.c(this.f57217a, "------ has no loading, use wait, name = " + downloadBean.getName(), true);
                Set set3 = this.f57227k;
                String resourceId8 = downloadBean.getResourceId();
                if (resourceId8 == null) {
                    resourceId8 = downloadBean.getUrl();
                }
                set3.remove(resourceId8);
                downloadBean.setStatus(3);
                g.a.a(this, downloadBean, false, 2, null);
                S0();
                return;
            }
        }
        if (downloadBean2 != null) {
            wf.a.f74274a.c(this.f57217a, "------ has no loading, use error, name = " + downloadBean2.getName(), true);
            Set set4 = this.f57229m;
            String resourceId9 = downloadBean2.getResourceId();
            if (resourceId9 == null) {
                resourceId9 = downloadBean2.getUrl();
            }
            set4.remove(resourceId9);
            downloadBean2.setStatus(3);
            g.a.a(this, downloadBean2, false, 2, null);
            S0();
        }
    }

    public static final cx.a Q0() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    private final void R0() {
        String str;
        int size = this.f57218b.size();
        ax.b bVar = this.f57221e;
        if (size >= (bVar != null ? bVar.b() : 2)) {
            Iterator it = this.f57218b.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                str = (String) entry.getKey();
                DownloadBean downloadBeanB = ((com.transsnet.downloader.core.task.b) entry.getValue()).b();
                downloadBeanB.setStatus(3);
                com.transsnet.downloader.core.c cVar = this.f57220d;
                if (cVar != null) {
                    cVar.a(downloadBeanB);
                }
                Set set = this.f57228l;
                String resourceId = downloadBeanB.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBeanB.getUrl();
                }
                set.remove(resourceId);
                Set set2 = this.f57227k;
                String resourceId2 = downloadBeanB.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBeanB.getUrl();
                }
                set2.add(resourceId2);
                wf.a.f74274a.c("download", "有其他资源进入边下边播 当前资源转换为waiting setCurDownloadingToWait() --> 2--downloading2wait,resourceId=" + downloadBeanB.getResourceId() + ",name = " + downloadBeanB.getTotalTitleName() + " ", true);
                S0();
            } else {
                str = null;
            }
            if (str != null) {
            }
        }
    }

    private final void S0() {
        zw.b bVar = this.f57226j;
        if (bVar != null) {
            this.f57232p.setWaitCount(this.f57227k.size());
            this.f57232p.setLoadingCount(this.f57228l.size());
            this.f57232p.setErrorCount(this.f57229m.size());
            this.f57232p.setDoneCount(this.f57230n.size());
            wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "-------- statChange, downloadStat = " + this.f57232p + " ", false, 4, null);
            bVar.a(this.f57232p);
        }
    }

    private final void T0(DownloadBean downloadBean) {
        if (downloadBean.getRootPathType() == 1) {
            downloadBean.setTransferFailed(false);
        } else {
            if (downloadBean.getType() == 1) {
                return;
            }
            kotlinx.coroutines.k.d(this.f57238v, null, null, new DownloadManagerImpl$transferFile$1(downloadBean, null), 3, null);
        }
    }

    public final void U0(DownloadBean downloadBean) {
        Set set = this.f57229m;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        set.add(resourceId);
        Set set2 = this.f57228l;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        set2.remove(resourceId2);
        S0();
        F0();
    }

    public final void V0(DownloadBean downloadBean) {
        Set set = this.f57227k;
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f57229m;
        String resourceId2 = downloadBean.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean.getUrl();
        }
        set2.remove(resourceId2);
        D0(downloadBean);
    }

    public final void W0(DownloadBean downloadBean) {
        DownloadBean downloadBean2;
        com.transsnet.downloader.core.c cVar;
        if (downloadBean.isCompleted() || downloadBean.isRemoved()) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.v(c0922a, this.f57217a, "1- waitDownloadingAndStartNewTask,进入边下边播 subjectId=" + downloadBean.getSubjectId() + ",resourceId=" + downloadBean.getResourceId() + ",name = " + downloadBean.getTotalTitleName() + ",status = " + downloadBean.getStatus(), false, 4, null);
        downloadBean.setDownloadingPlay(true);
        boolean z10 = false;
        if (downloadBean.getStatus() == 2 || downloadBean.getStatus() == 1) {
            c0922a.p("download", new String[]{"下载中的 变成当前边下边播的 waitDownloadingAndStartNewTask, subjectId=" + downloadBean.getSubjectId() + ",resourceId=" + downloadBean.getResourceId() + ",status-- name = " + downloadBean.getName() + " "}, true);
            if (downloadBean.getIsPreDownload()) {
                downloadBean.setPreDownload(false);
                c0922a.p("download", new String[]{"preDownload 预下载的 转正变成当前边下边播的 subjectId=" + downloadBean.getSubjectId() + ",resourceId=" + downloadBean.getResourceId() + ",name= " + downloadBean.getName() + " , epse = " + downloadBean.getEpse()}, true);
                Set set = this.f57227k;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                set.remove(resourceId);
                Set set2 = this.f57229m;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                set2.remove(resourceId2);
                Set set3 = this.f57228l;
                String resourceId3 = downloadBean.getResourceId();
                if (resourceId3 == null) {
                    resourceId3 = downloadBean.getUrl();
                }
                set3.add(resourceId3);
                downloadBean.setStatus(2);
                com.transsnet.downloader.core.c cVar2 = this.f57220d;
                if (cVar2 != null) {
                    cVar2.a(downloadBean);
                }
                S0();
                ConcurrentHashMap concurrentHashMap = this.f57224h;
                String resourceId4 = downloadBean.getResourceId();
                if (resourceId4 == null) {
                    resourceId4 = downloadBean.getUrl();
                }
                com.transsnet.downloader.core.task.b bVar = (com.transsnet.downloader.core.task.b) concurrentHashMap.get(resourceId4);
                if (bVar != null) {
                    R0();
                    ConcurrentHashMap concurrentHashMap2 = this.f57218b;
                    String resourceId5 = downloadBean.getResourceId();
                    if (resourceId5 == null) {
                        resourceId5 = downloadBean.getUrl();
                    }
                    concurrentHashMap2.put(resourceId5, bVar);
                    ConcurrentHashMap concurrentHashMap3 = this.f57224h;
                    String resourceId6 = downloadBean.getResourceId();
                    if (resourceId6 == null) {
                        resourceId6 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.remove(resourceId6);
                    return;
                }
                return;
            }
            return;
        }
        ConcurrentHashMap concurrentHashMap4 = this.f57225i;
        String resourceId7 = downloadBean.getResourceId();
        if (resourceId7 == null) {
            resourceId7 = downloadBean.getUrl();
        }
        concurrentHashMap4.remove(resourceId7);
        ConcurrentHashMap concurrentHashMap5 = this.f57224h;
        String resourceId8 = downloadBean.getResourceId();
        if (resourceId8 == null) {
            resourceId8 = downloadBean.getUrl();
        }
        concurrentHashMap5.remove(resourceId8);
        downloadBean.setPreDownload(false);
        ConcurrentHashMap concurrentHashMap6 = this.f57218b;
        String resourceId9 = downloadBean.getResourceId();
        if (resourceId9 == null) {
            resourceId9 = downloadBean.getUrl();
        }
        if (concurrentHashMap6.containsKey(resourceId9)) {
            if (downloadBean.isDownloading()) {
                c0922a.p("download", new String[]{"waitDownloadingAndStartNewTask, isDownloading name = " + downloadBean.getName() + " "}, true);
                return;
            }
            ConcurrentHashMap concurrentHashMap7 = this.f57218b;
            String resourceId10 = downloadBean.getResourceId();
            if (resourceId10 == null) {
                resourceId10 = downloadBean.getUrl();
            }
            concurrentHashMap7.remove(resourceId10);
            wf.a.C0922a.f(c0922a, this.f57217a, "waitDownloadingAndStartNewTask, isDownloading,error status , remove  name = " + downloadBean.getName(), false, 4, null);
        }
        R0();
        Iterator it = this.f57219c.iterator();
        while (true) {
            if (!it.hasNext()) {
                downloadBean2 = downloadBean;
                break;
            }
            downloadBean2 = (DownloadBean) it.next();
            if (Intrinsics.c(downloadBean2.getResourceId(), downloadBean.getResourceId())) {
                z10 = true;
                break;
            }
        }
        if (!z10) {
            this.f57219c.add(downloadBean2);
        }
        ax.b bVar2 = this.f57221e;
        com.transsnet.downloader.core.task.b bVarK0 = null;
        if (bVar2 != null && (cVar = this.f57220d) != null) {
            bVarK0 = k0(bVar2, cVar, downloadBean);
        }
        if (bVarK0 != null) {
            ConcurrentHashMap concurrentHashMap8 = this.f57218b;
            String resourceId11 = downloadBean2.getResourceId();
            if (resourceId11 == null) {
                resourceId11 = downloadBean2.getUrl();
            }
            concurrentHashMap8.put(resourceId11, bVarK0);
        }
        downloadBean2.setStatus(1);
        com.transsnet.downloader.core.c cVar3 = this.f57220d;
        if (cVar3 != null) {
            cVar3.a(downloadBean2);
        }
        j0(downloadBean2);
        Set set4 = this.f57227k;
        String resourceId12 = downloadBean2.getResourceId();
        if (resourceId12 == null) {
            resourceId12 = downloadBean2.getUrl();
        }
        set4.remove(resourceId12);
        Set set5 = this.f57229m;
        String resourceId13 = downloadBean2.getResourceId();
        if (resourceId13 == null) {
            resourceId13 = downloadBean2.getUrl();
        }
        set5.remove(resourceId13);
        Set set6 = this.f57228l;
        String resourceId14 = downloadBean2.getResourceId();
        if (resourceId14 == null) {
            resourceId14 = downloadBean2.getUrl();
        }
        set6.add(resourceId14);
        wf.a.f74274a.p("download", new String[]{"由边下边播触发的下载要开始了 2--prepareDownload, name = " + downloadBean2.getName() + ", add loading, loading  = " + this.f57228l.size() + ", error  = " + this.f57229m.size() + " , wait  = " + this.f57227k.size() + " "}, true);
        S0();
        if (bVarK0 != null) {
            bVarK0.start();
        }
    }

    public static final si.a i0() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).n1();
        }
        return null;
    }

    private final void j0(DownloadBean downloadBean) {
        DownloadNotificationUtils.f57288a.n(downloadBean);
    }

    private final com.transsnet.downloader.core.task.b k0(ax.b bVar, com.transsnet.downloader.core.c cVar, DownloadBean downloadBean) {
        return DownloadTaskUtil.f56421a.j() ? new DownloadTaskImpl2(cVar, this.f57236t, downloadBean, bVar, this) : new DownloadTaskImpl(cVar, this.f57236t, downloadBean, bVar, this);
    }

    private final void l0(DownloadBean downloadBean, boolean z10, Function1 function1) {
        kotlinx.coroutines.k.d(this.f57238v, null, null, new DownloadManagerImpl$deleteItem$1(downloadBean, this, function1, null), 3, null);
    }

    public final si.a m0() {
        return (si.a) this.f57231o.getValue();
    }

    private final String n0() {
        return DownloadManagerImpl.class.getSimpleName();
    }

    public static final DownloadManagerImpl p0() {
        return new DownloadManagerImpl(null);
    }

    private final io.b q0() {
        return (io.b) this.f57240x.getValue();
    }

    public final ui.n0 r0() {
        return (ui.n0) this.f57239w.getValue();
    }

    public final cx.a s0() {
        return (cx.a) this.f57235s.getValue();
    }

    private final void t0(String str) {
        io.b bVarQ0 = q0();
        if (bVarQ0 != null) {
            bVarQ0.m(str);
        }
    }

    private final boolean u0() {
        String str;
        int size = this.f57218b.size();
        ax.b bVar = this.f57221e;
        boolean zIsDownloading = false;
        if (size >= (bVar != null ? bVar.b() : 2)) {
            Iterator it = this.f57218b.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                str = (String) entry.getKey();
                DownloadBean downloadBeanB = ((com.transsnet.downloader.core.task.b) entry.getValue()).b();
                wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "curTask, name = " + downloadBeanB.getTotalTitleName() + ",status = " + downloadBeanB.getStatus(), false, 4, null);
                zIsDownloading = downloadBeanB.isDownloading();
            } else {
                str = "";
            }
            if (!zIsDownloading && str.length() > 0) {
                this.f57218b.remove(str);
            }
        }
        return zIsDownloading;
    }

    private final boolean v0() {
        if (SystemClock.elapsedRealtime() - this.f57222f <= 500) {
            return false;
        }
        this.f57222f = SystemClock.elapsedRealtime();
        return true;
    }

    private final void w0(boolean z10) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c(this.f57217a, "isAutoPause, isAutoPause:" + z10, true);
        if (v0()) {
            c0922a.c("download", "pauseAll, " + z10, true);
            for (DownloadBean downloadBean : this.f57219c) {
                if (!z10) {
                    x0(downloadBean, false);
                } else if (downloadBean.getStatus() != 4) {
                    wf.a.f74274a.c("download", "pauseAll, pauseInner:" + downloadBean.getTotalTitleName(), true);
                    downloadBean.setAutoPause(true);
                    x0(downloadBean, false);
                }
            }
        }
    }

    private final void x0(DownloadBean downloadBean, boolean z10) {
        DownloadBean downloadBean2;
        downloadBean.setPreDownload(false);
        Iterator it = this.f57219c.iterator();
        do {
            if (!it.hasNext()) {
                downloadBean2 = null;
                break;
            }
            downloadBean2 = (DownloadBean) it.next();
        } while (!Intrinsics.c(downloadBean2.getResourceId(), downloadBean.getResourceId()));
        if (downloadBean2 == null) {
            this.f57219c.add(downloadBean);
            downloadBean2 = downloadBean;
        }
        com.transsnet.downloader.core.task.b bVar = (com.transsnet.downloader.core.task.b) this.f57218b.get(downloadBean.getResourceId());
        if (bVar != null && !Intrinsics.c(bVar.b(), downloadBean2)) {
            wf.a.f74274a.c(this.f57217a, "------pause, name: " + downloadBean2.getTotalTitleName() + ", info:" + bVar.b(), true);
            bVar.b().setStatus(4);
        }
        Set set = this.f57228l;
        String resourceId = downloadBean2.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean2.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f57229m;
        String resourceId2 = downloadBean2.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadBean2.getUrl();
        }
        set2.remove(resourceId2);
        Set set3 = this.f57227k;
        String resourceId3 = downloadBean2.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadBean2.getUrl();
        }
        set3.add(resourceId3);
        wf.a.f74274a.c(this.f57217a, "pause, name: " + downloadBean2.getTotalTitleName() + ", downloadNext:" + z10 + "， info:" + downloadBean2, true);
        S0();
        downloadBean2.setStatus(4);
        ConcurrentHashMap concurrentHashMap = this.f57218b;
        String resourceId4 = downloadBean2.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadBean2.getUrl();
        }
        concurrentHashMap.remove(resourceId4);
        ConcurrentHashMap concurrentHashMap2 = this.f57224h;
        String resourceId5 = downloadBean2.getResourceId();
        if (resourceId5 == null) {
            resourceId5 = downloadBean2.getUrl();
        }
        concurrentHashMap2.remove(resourceId5);
        ConcurrentHashMap concurrentHashMap3 = this.f57225i;
        String resourceId6 = downloadBean2.getResourceId();
        if (resourceId6 == null) {
            resourceId6 = downloadBean2.getUrl();
        }
        concurrentHashMap3.remove(resourceId6);
        com.transsnet.downloader.core.c cVar = this.f57220d;
        if (cVar != null) {
            cVar.a(downloadBean2);
        }
        if (z10) {
            F0();
        }
    }

    static void y0(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        downloadManagerImpl.x0(downloadBean, z10);
    }

    private final void z0(DownloadBean downloadBean) {
        if (this.f57224h.isEmpty()) {
            return;
        }
        for (Map.Entry entry : this.f57224h.entrySet()) {
            String str = (String) entry.getKey();
            DownloadBean downloadBeanB = ((com.transsnet.downloader.core.task.b) entry.getValue()).b();
            wf.a.f74274a.c("download", "pause current preDownload, add to pool, name = " + downloadBeanB.getTotalTitleName() + "，HashCode = " + System.identityHashCode(downloadBean) + " ", true);
            this.f57225i.put(str, downloadBeanB);
            if (!Intrinsics.c(downloadBeanB.getResourceId(), downloadBean != null ? downloadBean.getResourceId() : null)) {
                downloadBeanB.setStatus(3);
            }
            this.f57224h.remove(str);
        }
    }

    @Override
    public void A() {
        z0(null);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0064  */
    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Code duplicated, block: B:29:0x007c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0084  */
    /* JADX WARN: Code duplicated, block: B:38:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object B(Continuation continuation) {
        DownloadManagerImpl$scheduleDownloadTask$1 downloadManagerImpl$scheduleDownloadTask$1;
        List<DownloadBean> list;
        String resourceId;
        if (continuation instanceof DownloadManagerImpl$scheduleDownloadTask$1) {
            downloadManagerImpl$scheduleDownloadTask$1 = (DownloadManagerImpl$scheduleDownloadTask$1) continuation;
            int i10 = downloadManagerImpl$scheduleDownloadTask$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadManagerImpl$scheduleDownloadTask$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadManagerImpl$scheduleDownloadTask$1 = new DownloadManagerImpl$scheduleDownloadTask$1(this, continuation);
            }
        } else {
            downloadManagerImpl$scheduleDownloadTask$1 = new DownloadManagerImpl$scheduleDownloadTask$1(this, continuation);
        }
        Object objC = downloadManagerImpl$scheduleDownloadTask$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadManagerImpl$scheduleDownloadTask$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(objC);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objC);
            }
            list = (List) objC;
            if (list != null) {
                for (DownloadBean downloadBean : list) {
                    if (downloadBean.getIsRead() != 1) {
                        Set set = this.f57230n;
                        resourceId = downloadBean.getResourceId();
                        if (resourceId == null) {
                            resourceId = downloadBean.getUrl();
                        }
                        Boxing.a(set.remove(resourceId));
                    }
                    wf.a.C0922a.f(wf.a.f74274a, "DownloadStatus", "init add doneSet, resId = " + downloadBean.getResourceId() + "， it.isRead = " + downloadBean.getIsRead(), false, 4, null);
                }
            }
            return Unit.f64096a;
        }
        ResultKt.b(objC);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        downloadManagerImpl$scheduleDownloadTask$1.label = 1;
        objC = downloadEsHelperA.C(downloadManagerImpl$scheduleDownloadTask$1);
        if (objC == objF) {
            return objF;
        }
        P0((List) objC);
        DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f57201m.a();
        downloadManagerImpl$scheduleDownloadTask$1.label = 2;
        objC = DownloadEsHelper.B(downloadEsHelperA2, false, downloadManagerImpl$scheduleDownloadTask$1, 1, null);
        if (objC == objF) {
            return objF;
        }
        list = (List) objC;
        if (list != null) {
            while (r12.hasNext()) {
                if (downloadBean.getIsRead() != 1) {
                    Set set2 = this.f57230n;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    Boxing.a(set2.remove(resourceId));
                }
                wf.a.C0922a.f(wf.a.f74274a, "DownloadStatus", "init add doneSet, resId = " + downloadBean.getResourceId() + "， it.isRead = " + downloadBean.getIsRead(), false, 4, null);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public void C(List list) {
        Intrinsics.h(list, "list");
        if (list.isEmpty()) {
            return;
        }
        if (list.size() == 1) {
            p((DownloadBean) list.get(0));
            return;
        }
        ax.b bVar = this.f57221e;
        int iB = bVar != null ? bVar.b() : 1;
        for (int i10 = 0; i10 < iB; i10++) {
            if (i10 < list.size()) {
                p((DownloadBean) list.get(i10));
            }
        }
        int i11 = 0;
        for (Object obj : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            DownloadBean downloadBean = (DownloadBean) obj;
            long j10 = i11;
            downloadBean.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis() + j10));
            downloadBean.setCreateAt(System.currentTimeMillis() + j10);
            if (i11 >= iB && i11 != list.size() - 1) {
                ConcurrentHashMap concurrentHashMap = this.f57225i;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                concurrentHashMap.put(resourceId, downloadBean);
                ConcurrentHashMap concurrentHashMap2 = this.f57224h;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                concurrentHashMap2.remove(resourceId2);
                if (!this.f57219c.contains(downloadBean)) {
                    this.f57219c.add(downloadBean);
                }
                downloadBean.setPreDownload(false);
                downloadBean.setStatus(3);
                com.transsnet.downloader.core.c cVar = this.f57220d;
                if (cVar != null) {
                    cVar.a(downloadBean);
                }
                Set set = this.f57227k;
                String resourceId3 = downloadBean.getResourceId();
                if (resourceId3 == null) {
                    resourceId3 = downloadBean.getUrl();
                }
                set.add(resourceId3);
                S0();
            }
            i11 = i12;
        }
        int size = list.size() - 1;
        if (size >= iB - 1) {
            DownloadBean downloadBean2 = (DownloadBean) list.get(size);
            if (!this.f57219c.contains(downloadBean2)) {
                this.f57219c.add(downloadBean2);
            }
            if (!B0(downloadBean2)) {
                downloadBean2.setStatus(3);
                com.transsnet.downloader.core.c cVar2 = this.f57220d;
                if (cVar2 != null) {
                    cVar2.a(downloadBean2);
                }
            }
            Set set2 = this.f57227k;
            String resourceId4 = downloadBean2.getResourceId();
            if (resourceId4 == null) {
                resourceId4 = downloadBean2.getUrl();
            }
            set2.add(resourceId4);
        }
        S0();
    }

    @Override
    public void D() {
        S0();
    }

    @Override
    public void E(s0 listener) {
        Intrinsics.h(listener, "listener");
        this.f57234r.add(listener);
    }

    @Override
    public void F(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        if (v0()) {
            y0(this, downloadInfo, false, 2, null);
        }
    }

    @Override
    public void G(ax.b config) {
        Intrinsics.h(config, "config");
        ax.b bVar = this.f57221e;
        if (bVar == null || bVar == null || bVar.b() != config.b()) {
            if (config.b() > 1 && this.f57218b.size() < config.b()) {
                for (DownloadBean downloadBean : this.f57219c) {
                    if (!downloadBean.isDownloading() && downloadBean.getStatus() != 4 && config.b() - this.f57218b.size() > 0) {
                        wf.a.f74274a.p("download", new String[]{n0() + " --> set new config, start other task, task:" + config.b() + ", cur:" + this.f57218b.size() + " "}, true);
                        p(downloadBean);
                    }
                }
            } else if (this.f57218b.size() > 1 && this.f57218b.size() > config.b()) {
                for (int size = this.f57219c.size() - 1; size > 0; size--) {
                    DownloadBean downloadBean2 = (DownloadBean) this.f57219c.get(size);
                    if (downloadBean2.isDownloading() && config.b() <= this.f57218b.size()) {
                        x0(downloadBean2, false);
                        wf.a.f74274a.p("download", new String[]{n0() + " --> set new config, pause task, task:" + config.b() + ", cur:" + this.f57218b.size() + " "}, true);
                    }
                }
            }
        }
        this.f57221e = config;
    }

    @Override
    public void H() {
        this.f57236t.c();
    }

    @Override
    public void I(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        kotlinx.coroutines.k.d(this.f57237u, null, null, new DownloadManagerImpl$onPreDownloadSuccess$1(this, downloadInfo, null), 3, null);
    }

    @Override
    public Object a(String str, int i10, String str2, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new DownloadManagerImpl$transformDownloadPlayUrl$3(str, i10, str2, this, null), continuation);
    }

    @Override
    public void b(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        T0(downloadInfo);
        ConcurrentHashMap concurrentHashMap = this.f57225i;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        ConcurrentHashMap concurrentHashMap2 = this.f57218b;
        String resourceId2 = downloadInfo.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadInfo.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = this.f57224h;
        String resourceId3 = downloadInfo.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadInfo.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        boolean zRemove = this.f57219c.remove(downloadInfo);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f57217a, "remove index " + zRemove, false, 4, null);
        Set set = this.f57230n;
        String resourceId4 = downloadInfo.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadInfo.getUrl();
        }
        set.add(resourceId4);
        Set set2 = this.f57227k;
        String resourceId5 = downloadInfo.getResourceId();
        if (resourceId5 == null) {
            resourceId5 = downloadInfo.getUrl();
        }
        set2.remove(resourceId5);
        DownloadStatusIconManager.f57244h.a().w(false);
        Set set3 = this.f57228l;
        String resourceId6 = downloadInfo.getResourceId();
        if (resourceId6 == null) {
            resourceId6 = downloadInfo.getUrl();
        }
        set3.remove(resourceId6);
        c0922a.p("download", new String[]{"onDownloadSuccess, name = " + downloadInfo.getName() + " subjectId=" + downloadInfo.getSubjectId() + " resourceId=" + downloadInfo.getResourceId() + ", status = " + downloadInfo.getStatus() + " "}, true);
        Iterator it = this.f57234r.iterator();
        while (it.hasNext()) {
            ((s0) it.next()).b(downloadInfo);
        }
        S0();
        F0();
    }

    @Override
    public void c(DownloadBean downloadInfo, boolean z10) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        Iterator it = this.f57234r.iterator();
        while (it.hasNext()) {
            ((s0) it.next()).c(downloadInfo, z10);
        }
    }

    @Override
    public void d() {
        C0();
    }

    @Override
    public Object e(String str, Continuation continuation) {
        return DownloadEsHelper.f57201m.a().o(str, continuation);
    }

    @Override
    public void f(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        Set set = this.f57227k;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        set.remove(resourceId);
        Set set2 = this.f57229m;
        String resourceId2 = downloadInfo.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadInfo.getUrl();
        }
        set2.remove(resourceId2);
        D0(downloadInfo);
    }

    @Override
    public void g(m0 listener) {
        Intrinsics.h(listener, "listener");
        this.f57233q.add(listener);
    }

    @Override
    public String h(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        return this.f57236t.f(bean);
    }

    @Override
    public boolean i() {
        return !this.f57218b.isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object j(String str, Continuation continuation) {
        DownloadManagerImpl$getDownloadedPlayBean$2 downloadManagerImpl$getDownloadedPlayBean$2;
        DownloadBean downloadBeanS;
        String path;
        if (continuation instanceof DownloadManagerImpl$getDownloadedPlayBean$2) {
            downloadManagerImpl$getDownloadedPlayBean$2 = (DownloadManagerImpl$getDownloadedPlayBean$2) continuation;
            int i10 = downloadManagerImpl$getDownloadedPlayBean$2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadManagerImpl$getDownloadedPlayBean$2.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadManagerImpl$getDownloadedPlayBean$2 = new DownloadManagerImpl$getDownloadedPlayBean$2(this, continuation);
            }
        } else {
            downloadManagerImpl$getDownloadedPlayBean$2 = new DownloadManagerImpl$getDownloadedPlayBean$2(this, continuation);
        }
        Object objR = downloadManagerImpl$getDownloadedPlayBean$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadManagerImpl$getDownloadedPlayBean$2.label;
        if (i11 == 0) {
            ResultKt.b(objR);
            DownloadEsHelper.a aVar = DownloadEsHelper.f57201m;
            downloadBeanS = aVar.a().S(str);
            if (downloadBeanS == null) {
                DownloadEsHelper downloadEsHelperA = aVar.a();
                downloadManagerImpl$getDownloadedPlayBean$2.label = 1;
                objR = downloadEsHelperA.R(str, downloadManagerImpl$getDownloadedPlayBean$2);
                if (objR == objF) {
                    return objF;
                }
            }
            if (downloadBeanS != null || !downloadBeanS.isCompleted() || (path = downloadBeanS.getPath()) == null || path.length() <= 0) {
                return null;
            }
            return downloadBeanS;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objR);
        downloadBeanS = (DownloadBean) objR;
        if (downloadBeanS != null) {
        }
        return null;
    }

    @Override
    public void k(m0 listener) {
        Intrinsics.h(listener, "listener");
        if (this.f57233q.contains(listener)) {
            this.f57233q.remove(listener);
        }
    }

    @Override
    public void l(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        if (ThreadUtils.i()) {
            W0(downloadInfo);
        } else {
            kotlinx.coroutines.k.d(this.f57237u, null, null, new DownloadManagerImpl$waitDownloadingAndStartNewTask$1(this, downloadInfo, null), 3, null);
        }
    }

    @Override
    public void m(final DownloadBean downloadInfo, final Function1 function1) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        final String path = downloadInfo.getPath();
        l0(downloadInfo, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadManagerImpl.I0(this.f57272a, downloadInfo, function1, path, ((Boolean) obj).booleanValue());
            }
        });
    }

    @Override
    public void n() {
        w0(false);
    }

    @Override
    public void o() {
        this.f57236t.h();
    }

    public Object o0(Continuation continuation) {
        return DownloadEsHelper.f57201m.a().y(continuation);
    }

    @Override
    public void p(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("download", n0() + " --> download() --> downloadInfo = " + downloadInfo, false);
        if (z(downloadInfo)) {
            wf.a.C0922a.f(c0922a, "download", n0() + " --> download() --> 任务已存在", false, 4, null);
            return;
        }
        DownloadEsHelper.f57201m.a().h();
        if (!this.f57219c.contains(downloadInfo)) {
            this.f57219c.add(downloadInfo);
        }
        c0922a.p("download", new String[]{n0() + " --> download() -->, 添加新的任务 -- name = " + downloadInfo.getName() + " "}, true);
        D0(downloadInfo);
    }

    @Override
    public void q() {
        this.f57236t.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [T, com.transsion.baselib.db.download.DownloadBean, java.lang.Object] */
    @Override
    public void r(String str, Function1 callback) {
        Intrinsics.h(callback, "callback");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        for (?? r10 : this.f57219c) {
            if (TextUtils.equals(r10.getResourceId(), str)) {
                objectRef.element = r10;
                callback.invoke(r10);
                break;
            }
        }
        if (objectRef.element == 0) {
            kotlinx.coroutines.k.d(this.f57237u, null, null, new DownloadManagerImpl$getDownloadByResId$2(objectRef, str, callback, this, null), 3, null);
        }
    }

    @Override
    public void s(DownloadBean downloadInfo, boolean z10) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        if (v0() || z10) {
            if (!this.f57219c.contains(downloadInfo)) {
                this.f57219c.add(downloadInfo);
            }
            wf.a.f74274a.c(this.f57217a, "resume, name = " + downloadInfo.getTotalTitleName() + ", cur status = " + downloadInfo.getStatus() + ", " + downloadInfo, true);
            Set set = this.f57227k;
            String resourceId = downloadInfo.getResourceId();
            if (resourceId == null) {
                resourceId = downloadInfo.getUrl();
            }
            set.remove(resourceId);
            Set set2 = this.f57229m;
            String resourceId2 = downloadInfo.getResourceId();
            if (resourceId2 == null) {
                resourceId2 = downloadInfo.getUrl();
            }
            set2.remove(resourceId2);
            D0(downloadInfo);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object t(String str, int i10, int i11, Continuation continuation) {
        DownloadManagerImpl$getDownloadedPlayBean$1 downloadManagerImpl$getDownloadedPlayBean$1;
        DownloadBean downloadBeanK;
        String path;
        if (continuation instanceof DownloadManagerImpl$getDownloadedPlayBean$1) {
            downloadManagerImpl$getDownloadedPlayBean$1 = (DownloadManagerImpl$getDownloadedPlayBean$1) continuation;
            int i12 = downloadManagerImpl$getDownloadedPlayBean$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                downloadManagerImpl$getDownloadedPlayBean$1.label = i12 - Integer.MIN_VALUE;
            } else {
                downloadManagerImpl$getDownloadedPlayBean$1 = new DownloadManagerImpl$getDownloadedPlayBean$1(this, continuation);
            }
        } else {
            downloadManagerImpl$getDownloadedPlayBean$1 = new DownloadManagerImpl$getDownloadedPlayBean$1(this, continuation);
        }
        Object objJ = downloadManagerImpl$getDownloadedPlayBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = downloadManagerImpl$getDownloadedPlayBean$1.label;
        if (i13 == 0) {
            ResultKt.b(objJ);
            DownloadEsHelper.a aVar = DownloadEsHelper.f57201m;
            downloadBeanK = aVar.a().K(str, i10, i11);
            if (downloadBeanK == null) {
                DownloadEsHelper downloadEsHelperA = aVar.a();
                downloadManagerImpl$getDownloadedPlayBean$1.label = 1;
                objJ = downloadEsHelperA.J(str, i10, i11, downloadManagerImpl$getDownloadedPlayBean$1);
                if (objJ == objF) {
                    return objF;
                }
            }
            if (downloadBeanK != null || !downloadBeanK.isCompleted() || (path = downloadBeanK.getPath()) == null || path.length() <= 0) {
                return null;
            }
            return downloadBeanK;
        }
        if (i13 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objJ);
        downloadBeanK = (DownloadBean) objJ;
        if (downloadBeanK != null) {
        }
        return null;
    }

    @Override
    public void u(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        downloadInfo.setPreDownload(false);
        ConcurrentHashMap concurrentHashMap = this.f57218b;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        concurrentHashMap.remove(resourceId);
        com.transsnet.downloader.core.c cVar = this.f57220d;
        if (cVar != null) {
            cVar.a(downloadInfo);
        }
        ConcurrentHashMap concurrentHashMap2 = this.f57225i;
        String resourceId2 = downloadInfo.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = downloadInfo.getUrl();
        }
        concurrentHashMap2.remove(resourceId2);
        ConcurrentHashMap concurrentHashMap3 = this.f57224h;
        String resourceId3 = downloadInfo.getResourceId();
        if (resourceId3 == null) {
            resourceId3 = downloadInfo.getUrl();
        }
        concurrentHashMap3.remove(resourceId3);
        if (DownloadUtil.f57680a.E(downloadInfo)) {
            N0(downloadInfo);
            return;
        }
        Set set = this.f57229m;
        String resourceId4 = downloadInfo.getResourceId();
        if (resourceId4 == null) {
            resourceId4 = downloadInfo.getUrl();
        }
        set.add(resourceId4);
        Set set2 = this.f57228l;
        String resourceId5 = downloadInfo.getResourceId();
        if (resourceId5 == null) {
            resourceId5 = downloadInfo.getUrl();
        }
        set2.remove(resourceId5);
        wf.a.f74274a.i("download", "Download Failed, name = " + downloadInfo.getName() + ", resourceId = " + downloadInfo.getResourceId() + "，subjectId = " + downloadInfo.getSubjectId() + "，remove from loading, add to error， loading  = " + this.f57228l.size() + ", error  = " + this.f57229m.size() + " , wait  = " + this.f57227k.size() + " ", true);
        S0();
        F0();
    }

    @Override
    public void v() {
        O0(false);
    }

    @Override
    public Long w() {
        Iterator it = this.f57219c.iterator();
        long progress = 0;
        while (it.hasNext()) {
            progress += ((DownloadBean) it.next()).getProgress();
        }
        return Long.valueOf(progress);
    }

    @Override
    public void x(zw.b listener) {
        Intrinsics.h(listener, "listener");
        this.f57232p.setWaitCount(this.f57227k.size());
        this.f57232p.setLoadingCount(this.f57228l.size());
        this.f57232p.setErrorCount(this.f57229m.size());
        this.f57232p.setDoneCount(this.f57230n.size());
        listener.a(this.f57232p);
        this.f57226j = listener;
    }

    @Override
    public void y(List list, final Function1 function1) {
        wf.a.C0922a.f(wf.a.f74274a, this.f57217a, "remove list ,size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        if (list != null) {
            L0(list, 0, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadManagerImpl.J0(function1, this, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    @Override
    public boolean z(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        ConcurrentHashMap concurrentHashMap = this.f57218b;
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = downloadInfo.getUrl();
        }
        return concurrentHashMap.containsKey(resourceId);
    }
}
