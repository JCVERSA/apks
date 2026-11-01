package com.snaptube.plugin;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Looper;
import android.text.TextUtils;
import com.dayuwuxian.em.api.proto.PluginInfo;
import com.phoenix.utils.ThreadPool;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.receiver.ReceiverMonitor;
import com.snaptube.taskManager.TaskMessageCenter;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.RxBus;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o.a58;
import o.c16;
import o.o06;
import o.p06;
import o.q06;
import o.q55;
import o.r06;
import o.s06;
import o.sh;
import o.t06;
import o.u06;
import o.y48;
import o.z06;
import rx.subjects.PublishSubject;

public final class a implements ReceiverMonitor.c {
    public static final String m = "a";
    public ScheduledThreadPoolExecutor f;
    public int g;
    public volatile boolean a = false;
    public volatile boolean b = false;
    public final PluginInfoCache c = new PluginInfoCache();
    public final PublishSubject d = PublishSubject.Y0();
    public final Map e = new HashMap();
    public final Set i = new HashSet();
    public boolean j = false;
    public boolean k = false;
    public final TaskMessageCenter.d l = new C0398a();
    public Context h = PhoenixApplication.z();

    public class C0398a extends TaskMessageCenter.d {

        public class RunnableC0399a implements Runnable {
            public final PluginInstallationStatus a;
            public final TaskInfo b;

            public class RunnableC0400a implements Runnable {
                public RunnableC0400a() {
                }

                @Override
                public void run() {
                    z06.O0(RunnableC0399a.this.b.g(), "download success" + RunnableC0399a.this.a.a(), RunnableC0399a.this.b.c, "taskFailedTimes : " + RunnableC0399a.this.b.C);
                    if (RunnableC0399a.this.a.b().isSupported()) {
                        TaskInfo taskInfo = RunnableC0399a.this.b;
                        PluginNotify.a(taskInfo, 7, taskInfo.c);
                        RxBus.d().g(1110, RunnableC0399a.this.a.b().getName());
                    } else {
                        TaskInfo taskInfo2 = RunnableC0399a.this.b;
                        PluginNotify.a(taskInfo2, 5, taskInfo2.c);
                    }
                    a.this.y().onNext(RunnableC0399a.this.a);
                }
            }

            public RunnableC0399a(PluginInstallationStatus pluginInstallationStatus, TaskInfo taskInfo) {
                this.a = pluginInstallationStatus;
                this.b = taskInfo;
            }

            @Override
            public void run() {
                this.a.b().tryLoadNewestVersion(this.a);
                y48.n(new RunnableC0400a());
            }
        }

        public C0398a() {
        }

        @Override
        public void f(List list) {
        }

        @Override
        public void g(long j) {
        }

        @Override
        public void h(TaskInfo taskInfo) {
            if (taskInfo.i == TaskInfo.TaskStatus.RUNNING) {
                k(taskInfo);
                if (taskInfo.b != TaskInfo.TaskType.TASK_PLUGIN) {
                    return;
                }
                z06.O0(taskInfo.v(), "downloading", taskInfo.c, "taskFailedTimes : " + taskInfo.C);
            }
        }

        @Override
        public void i(TaskInfo taskInfo) {
            k(taskInfo);
        }

        @Override
        public void j(TaskInfo taskInfo) {
        }

        public final void k(TaskInfo taskInfo) {
            PluginInstallationStatus pluginInstallationStatusL;
            if (taskInfo == null || taskInfo.b != TaskInfo.TaskType.TASK_PLUGIN || (pluginInstallationStatusL = a.l(taskInfo)) == null) {
                return;
            }
            PluginInstallationStatus.Status statusC = pluginInstallationStatusL.c();
            if (statusC == PluginInstallationStatus.Status.FAILED) {
                if (a.j(a.this, pluginInstallationStatusL.b())) {
                    pluginInstallationStatusL.d("can retry download " + a.this.Q(pluginInstallationStatusL.b(), "auto-retry-when-fail"));
                } else {
                    pluginInstallationStatusL.d("can not retry download");
                }
                PluginNotify.a(taskInfo, 5, taskInfo.c);
                z06.O0(taskInfo.g(), "download fail" + pluginInstallationStatusL.a(), taskInfo.c, "taskFailedTimes : " + taskInfo.C);
            } else if (statusC == PluginInstallationStatus.Status.PENDING) {
                PluginNotify.a(taskInfo, 1, taskInfo.c);
            } else if (statusC == PluginInstallationStatus.Status.PAUSED) {
                PluginNotify.a(taskInfo, 4, taskInfo.c);
            } else if (statusC == PluginInstallationStatus.Status.INSTALLING) {
                PluginNotify.a(taskInfo, 3, taskInfo.c);
            } else if (statusC == PluginInstallationStatus.Status.SUCCESS) {
                y48.l(new RunnableC0399a(pluginInstallationStatusL, taskInfo));
                return;
            }
            a.this.y().onNext(pluginInstallationStatusL);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            a.this.n(PhoenixApplication.z());
        }
    }

    public class c implements Runnable {
        public final Context a;

        public c(Context context) {
            this.a = context;
        }

        @Override
        public void run() {
            if (q55.B(this.a) && !Config.C2()) {
                a aVar = a.this;
                a.i(aVar, a.h(aVar) + 1);
                try {
                    a.this.t();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            a.k(a.this, this.a, 10L);
        }
    }

    public static class d {
        public static final int[] a;

        static {
            int[] iArr = new int[TaskInfo.TaskStatus.values().length];
            a = iArr;
            try {
                iArr[TaskInfo.TaskStatus.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[TaskInfo.TaskStatus.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[TaskInfo.TaskStatus.PAUSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[TaskInfo.TaskStatus.FINISH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[TaskInfo.TaskStatus.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[TaskInfo.TaskStatus.DELETED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public a() {
        K();
        M(this.h, 3L);
        s();
        N();
    }

    public static boolean C() {
        return System.currentTimeMillis() - Config.u0() > GlobalConfig.getPluginCheckMaxAge();
    }

    public static void F(CountDownLatch countDownLatch) {
        countDownLatch.countDown();
        ProductionEnv.debugLog(m, "requestLatch countdown");
    }

    public static void H(Throwable th) {
        ProductionEnv.debugLog(m, "Error when fetch plugin info: " + th);
    }

    public static void a(a aVar, List list) {
        aVar.G(list);
    }

    public static void b(a aVar, RxBus.d dVar) {
        aVar.J(dVar);
    }

    public static void c(a aVar) {
        aVar.I();
    }

    public static void d(CountDownLatch countDownLatch) {
        F(countDownLatch);
    }

    public static void e(Throwable th) {
        H(th);
    }

    public static void f(a aVar) {
        aVar.E();
    }

    public static void g(a aVar, String str, String str2, boolean z) {
        aVar.D(str, str2, z);
    }

    public static int h(a aVar) {
        return aVar.g;
    }

    public static void i(a aVar, int i) {
        aVar.g = i;
    }

    public static boolean j(a aVar, PluginId pluginId) {
        return aVar.m(pluginId);
    }

    public static void k(a aVar, Context context, long j) {
        aVar.M(context, j);
    }

    public static PluginInstallationStatus l(TaskInfo taskInfo) {
        return u(taskInfo);
    }

    public static PluginInstallationStatus u(TaskInfo taskInfo) {
        PluginId pluginIdFromName;
        PluginInstallationStatus.Status status;
        if (taskInfo == null || (pluginIdFromName = PluginId.fromName(c16.s(taskInfo.w))) == null) {
            return null;
        }
        switch (d.a[taskInfo.i.ordinal()]) {
            case 1:
                status = PluginInstallationStatus.Status.PENDING;
                break;
            case 2:
                status = PluginInstallationStatus.Status.INSTALLING;
                break;
            case 3:
                status = PluginInstallationStatus.Status.PAUSED;
                break;
            case 4:
                status = PluginInstallationStatus.Status.SUCCESS;
                break;
            case 5:
                status = PluginInstallationStatus.Status.FAILED;
                break;
            case 6:
                status = PluginInstallationStatus.Status.UNKNOWN;
                break;
            default:
                status = PluginInstallationStatus.Status.UNKNOWN;
                break;
        }
        return new PluginInstallationStatus(pluginIdFromName, status, taskInfo.c, taskInfo.f, "");
    }

    public final int A(PluginId pluginId) {
        int iIntValue;
        synchronized (this.e) {
            try {
                Integer num = (Integer) this.e.get(pluginId);
                iIntValue = 1;
                if (num != null && num.intValue() < 3) {
                    iIntValue = 1 + num.intValue();
                }
                this.e.put(pluginId, Integer.valueOf(iIntValue));
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public final boolean B(long j) {
        return j > GlobalConfig.getPluginMobileDownloadSizeLimit();
    }

    public final void D(String str, String str2, boolean z) {
        boolean z2;
        synchronized (this.i) {
            z2 = !this.i.contains(str);
            this.i.add(str);
        }
        PluginId pluginIdFromName = PluginId.fromName(str);
        if (!z2 && !C()) {
            O(pluginIdFromName, z);
        } else if (t()) {
            p(this.h, pluginIdFromName, str2, z);
        }
    }

    public final void E() {
        if (C() && t()) {
            n(PhoenixApplication.z());
        }
    }

    public final void G(List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            PluginInfo pluginInfo = (PluginInfo) it2.next();
            this.c.d(pluginInfo);
            ProductionEnv.debugLog(m, "Plugin info: " + pluginInfo);
        }
    }

    public final void I() {
        Config.F5(System.currentTimeMillis(), this.c.c());
        ProductionEnv.debugLog(m, "Last check time:" + System.currentTimeMillis() + ", success:" + this.c.c());
    }

    public final void J(RxBus.d dVar) {
        Object obj = dVar.d;
        String str = obj instanceof String ? (String) obj : null;
        Object obj2 = dVar.e;
        boolean zBooleanValue = obj2 instanceof Boolean ? ((Boolean) obj2).booleanValue() : true;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        r(str, "upgrade_when_plugin_fails", zBooleanValue);
    }

    public final void K() {
        synchronized (a.class) {
            try {
                if (!this.b) {
                    this.b = true;
                    ReceiverMonitor.d().c(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void L() {
        synchronized (this.l) {
            try {
                if (!this.a) {
                    this.a = true;
                    PhoenixApplication.K().x(this.l);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void M(Context context, long j) {
        if (!Config.C2() && this.g <= 10) {
            if (this.f == null) {
                this.f = new ScheduledThreadPoolExecutor(1);
            }
            this.f.schedule(new c(context), j, TimeUnit.SECONDS);
        } else {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f;
            if (scheduledThreadPoolExecutor != null) {
                scheduledThreadPoolExecutor.shutdown();
                this.f = null;
            }
            n(context);
        }
    }

    public final void N() {
        RxBus.d().c(1107).c0().Y(sh.c()).t0(new p06(this));
    }

    public final void O(PluginId pluginId, boolean z) {
        PluginInfo pluginInfoV;
        TaskInfo taskInfoR0;
        if (z && (pluginInfoV = v(pluginId)) != null && (taskInfoR0 = TaskInfoDBUtils.R0(c16.h(pluginInfoV.name, pluginInfoV.version))) != null && TaskInfoDBUtils.U(taskInfoR0)) {
            RxBus.d().g(1108, pluginId);
        }
    }

    public boolean P(Context context) {
        PluginStatus pluginStatusZ;
        if (!q55.B(context) || !Config.C2()) {
            return false;
        }
        if (!Config.C2()) {
            y().onNext(new PluginInstallationStatus(PluginId.FFMPEG, PluginInstallationStatus.Status.FAILED, 0, 0L, "fetch Plugin failed"));
            return false;
        }
        for (PluginId pluginId : PluginId.values()) {
            if (PluginId.FFMPEG == pluginId && ((pluginStatusZ = z(pluginId)) == PluginStatus.NOT_INSTALLED || pluginStatusZ == PluginStatus.NEED_UPGRADE)) {
                Q(pluginId, PluginId.PLUGIN_FFMPEG);
            }
        }
        return true;
    }

    public boolean Q(PluginId pluginId, String str) {
        PluginInfo pluginInfoV = v(pluginId);
        TaskInfo taskInfoJ = c16.j(pluginInfoV, str);
        if (taskInfoJ == null) {
            y().onNext(new PluginInstallationStatus(pluginId, PluginInstallationStatus.Status.FAILED, 0, 0L, x(str, pluginInfoV).toString()));
        } else {
            L();
            A(pluginId);
            TaskInfoDBUtils.l(taskInfoJ, null);
        }
        return taskInfoJ != null;
    }

    public final boolean m(PluginId pluginId) {
        boolean z;
        synchronized (this.e) {
            try {
                Integer num = (Integer) this.e.get(pluginId);
                z = num == null || num.intValue() < 3;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public boolean n(Context context) {
        if (this.k) {
            return false;
        }
        return o(context, PluginId.values(), "auto_upgrade");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    public final boolean o(Context context, PluginId[] pluginIdArr, String str) {
        if (!Config.C2()) {
            return false;
        }
        boolean z = !q55.G(context);
        boolean zIsDownloadPluginInMobileNetworkEnabled = GlobalConfig.isDownloadPluginInMobileNetworkEnabled();
        for (PluginId pluginId : pluginIdArr) {
            PluginInfo pluginInfoV = v(pluginId);
            if (pluginInfoV != null) {
                if (!z) {
                    PluginStatus pluginStatusZ = z(pluginId);
                    if (pluginId.shouldDownload() && (pluginStatusZ == PluginStatus.NOT_INSTALLED || pluginStatusZ == PluginStatus.NEED_UPGRADE)) {
                        Q(pluginId, str);
                    }
                } else if (pluginId == PluginId.FFMPEG && Config.R3()) {
                    P(context);
                } else if (zIsDownloadPluginInMobileNetworkEnabled && !B(pluginInfoV.size.longValue())) {
                    PluginStatus pluginStatusZ2 = z(pluginId);
                    if (pluginId.shouldDownload()) {
                        Q(pluginId, str);
                    }
                }
            }
        }
        return true;
    }

    public final boolean p(Context context, PluginId pluginId, String str, boolean z) {
        if (!Config.C2()) {
            return false;
        }
        if ((!q55.G(context)) && !GlobalConfig.isDownloadPluginInMobileNetworkEnabled()) {
            return false;
        }
        PluginStatus pluginStatusZ = z(pluginId);
        if (!pluginId.shouldDownload()) {
            return false;
        }
        if (this.j || pluginStatusZ == PluginStatus.NEED_UPGRADE) {
            Q(pluginId, str);
            if (z) {
                RxBus.d().g(1108, pluginId);
            }
        }
        return true;
    }

    public void q() {
        PluginId pluginId = PluginId.FFMPEG;
        c16.c(pluginId, pluginId.getCurrentVersion());
    }

    public final void r(String str, String str2, boolean z) {
        ThreadPool.a(new u06(this, str, str2, z));
    }

    public final void s() {
        ThreadPool.a(new o06(this));
    }

    public synchronized boolean t() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            throw new AssertionError("fetchPluginInfo() must not be invoked in main thread!");
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        c16.e().Y(a58.c).A(new q06(countDownLatch)).v0(new r06(this), new s06(), new t06(this));
        try {
            String str = m;
            ProductionEnv.debugLog(str, "requestLatch before await");
            countDownLatch.await();
            ProductionEnv.debugLog(str, "requestLatch after await");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        ProductionEnv.debugLog(m, "fetchPluginInfo result returned: " + this.c.c());
        return this.c.c();
    }

    public PluginInfo v(PluginId pluginId) {
        return this.c.b(pluginId);
    }

    @Override
    public void w(NetworkInfo networkInfo) {
        ThreadPool.a(new b());
    }

    public final StringBuilder x(String str, PluginInfo pluginInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append("refer = ");
        sb.append(str);
        sb.append("taskInfo == null");
        if (pluginInfo == null) {
            sb.append("pluginInfo == null");
        } else {
            sb.append("name:");
            sb.append(pluginInfo.name);
            sb.append("support:");
            sb.append(pluginInfo.supported);
            sb.append("version:");
            sb.append(pluginInfo.version);
            sb.append("cpuabi:");
            sb.append(pluginInfo.cpu_abi);
            sb.append("url:");
            sb.append(pluginInfo.url);
            sb.append("md5");
            sb.append(pluginInfo.md5);
            PluginId pluginIdFromName = PluginId.fromName(pluginInfo.name);
            if (pluginIdFromName == null) {
                sb.append("pluginIdentity == null");
            } else {
                sb.append("pluginIdentity minVersion:");
                sb.append(pluginIdFromName.getRequiredMinVersion());
            }
        }
        return sb;
    }

    public PublishSubject y() {
        return this.d;
    }

    public PluginStatus z(PluginId pluginId) {
        PluginStatus pluginStatus = PluginStatus.NOT_INSTALLED;
        String strO = c16.o(pluginId);
        if (!TextUtils.isEmpty(strO)) {
            pluginStatus = PluginStatus.INSTALLED;
        } else if (pluginId.hasLocalBackup()) {
            pluginStatus = PluginStatus.INSTALLED;
            strO = pluginId.getRequiredMinVersion();
        }
        PluginInfo pluginInfoB = this.c.b(pluginId);
        if (pluginInfoB == null) {
            return pluginStatus;
        }
        if (pluginInfoB.supported.booleanValue() && c16.v(strO, pluginInfoB.version)) {
            return PluginStatus.NEED_UPGRADE;
        }
        return (pluginInfoB.supported.booleanValue() || pluginStatus == PluginStatus.INSTALLED) ? pluginStatus : PluginStatus.UNSUPPORTED;
    }
}
