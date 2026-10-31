package com.snaptube.premium.selfupgrade.incremental_upgrade;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.premium.selfupgrade.force.AppForceUpdateHelper;
import com.snaptube.taskManager.TaskMessageCenter;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import o.az7;
import o.cm3;
import o.q55;
import o.x87;

public class a extends TaskMessageCenter.d {
    public static int m;
    public IUpgradeDownloader$DownloadMode b;
    public String c;
    public String d;
    public long e;
    public int f;
    public d g;
    public UpgradeConfig h;
    public String i;
    public boolean j;
    public String k;
    public String l;

    public class RunnableC0445a implements Runnable {
        public final IUpgradeDownloader$DownloadMode a;
        public final UpgradeConfig b;
        public final d c;

        public RunnableC0445a(IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, UpgradeConfig upgradeConfig, d dVar) {
            this.a = iUpgradeDownloader$DownloadMode;
            this.b = upgradeConfig;
            this.c = dVar;
        }

        @Override
        public void run() {
            a.l(a.this, this.a, this.b, this.c);
        }
    }

    public class b implements Runnable {
        public final TaskInfo a;

        public class RunnableC0446a implements Runnable {
            public final TaskInfo a;

            public RunnableC0446a(TaskInfo taskInfo) {
                this.a = taskInfo;
            }

            @Override
            public void run() {
                b bVar = b.this;
                a.m(a.this, bVar.a, this.a);
            }
        }

        public b(TaskInfo taskInfo) {
            this.a = taskInfo;
        }

        @Override
        public void run() {
            a.n(a.this).post(new RunnableC0446a(TaskInfoDBUtils.R0(a.k(a.this))));
        }
    }

    public static class c {
        public static final int[] a;

        static {
            int[] iArr = new int[TaskInfo.TaskStatus.values().length];
            a = iArr;
            try {
                iArr[TaskInfo.TaskStatus.FINISH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[TaskInfo.TaskStatus.DELETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[TaskInfo.TaskStatus.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[TaskInfo.TaskStatus.PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[TaskInfo.TaskStatus.RUNNING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[TaskInfo.TaskStatus.PAUSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public interface d {
        void a(boolean z, IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, String str, cm3 cm3Var, UpgradeConfig upgradeConfig);
    }

    public a() {
        super(new Handler(Looper.getMainLooper()));
        this.b = IUpgradeDownloader$DownloadMode.UNKNOWN;
    }

    public static String k(a aVar) {
        return aVar.d;
    }

    public static void l(a aVar, IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, UpgradeConfig upgradeConfig, d dVar) {
        aVar.r(iUpgradeDownloader$DownloadMode, upgradeConfig, dVar);
    }

    public static void m(a aVar, TaskInfo taskInfo, TaskInfo taskInfo2) {
        aVar.x(taskInfo, taskInfo2);
    }

    public static Handler n(a aVar) {
        return aVar.a;
    }

    public static TaskInfo o(UpgradeConfig upgradeConfig, cm3 cm3Var) {
        cm3Var.j0(PhoenixApplication.z().getPackageName());
        cm3Var.m0(upgradeConfig.getVersion());
        cm3Var.v0 = az7.y();
        cm3Var.k = upgradeConfig.getUpdateTitle();
        if (upgradeConfig.canPatchUpdate()) {
            cm3Var.f479o = upgradeConfig.getPatchUrl();
            cm3Var.v = upgradeConfig.getPatchMd5();
        }
        if (upgradeConfig.canFullUpdate()) {
            cm3Var.y0 = upgradeConfig.getFullUrl();
            cm3Var.z0 = upgradeConfig.getFullMd5();
        }
        if (upgradeConfig.usePatchUpdate()) {
            cm3Var.A0 = 0;
        } else if (upgradeConfig.canFullUpdate()) {
            cm3Var.A0 = 1;
            cm3Var.f479o = upgradeConfig.getFullUrl();
            cm3Var.v = upgradeConfig.getFullMd5();
        }
        cm3Var.w = cm3.c0(cm3Var);
        return cm3Var;
    }

    public static cm3 q(UpgradeConfig upgradeConfig, boolean z, String str, String str2) {
        if (!CheckSelfUpgradeManager.k(upgradeConfig)) {
            throw new IllegalStateException("upgradeConfig not ready for download");
        }
        cm3 cm3Var = new cm3();
        o(upgradeConfig, cm3Var);
        cm3Var.B = TaskInfo.ContentType.PATCH;
        cm3Var.U = z;
        cm3Var.e0(Config.v());
        cm3Var.g0(com.snaptube.premium.selfupgrade.incremental_upgrade.b.g(upgradeConfig));
        cm3Var.f0(CheckSelfUpgradeManager.H(upgradeConfig));
        cm3Var.i0(upgradeConfig.getFullFileSize());
        cm3Var.k0(str);
        cm3Var.l0(str2);
        return cm3Var;
    }

    public void A(String str) {
        this.i = str;
    }

    public void B(String str) {
        this.l = str;
    }

    public final boolean C(boolean z) {
        if (!x87.i()) {
            return true;
        }
        boolean zV = v();
        if (z) {
            return false;
        }
        if (Config.a4()) {
            return (zV || s()) ? false : true;
        }
        return !zV;
    }

    public void D(IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, UpgradeConfig upgradeConfig, d dVar) {
        this.h = upgradeConfig;
        this.a.post(new RunnableC0445a(iUpgradeDownloader$DownloadMode, upgradeConfig, dVar));
    }

    @Override
    public void f(List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (this.e == ((Long) it2.next()).longValue()) {
                w(false, null);
            }
        }
    }

    @Override
    public void g(long j) {
    }

    @Override
    public void h(TaskInfo taskInfo) {
    }

    @Override
    public void i(TaskInfo taskInfo) {
        int i;
        if (TextUtils.equals(this.d, taskInfo.w) && (taskInfo instanceof cm3)) {
            cm3 cm3Var = (cm3) taskInfo;
            this.e = cm3Var.a;
            int i2 = c.a[taskInfo.i.ordinal()];
            if (i2 == 1) {
                w(true, cm3Var);
                AppForceUpdateHelper.a.q(true);
                return;
            }
            if (i2 == 2) {
                w(false, null);
                return;
            }
            if (i2 != 3) {
                return;
            }
            if (this.b != IUpgradeDownloader$DownloadMode.AUTOMATIC || (i = this.f) >= 3) {
                w(false, null);
            } else {
                this.f = i + 1;
                p(cm3Var);
            }
        }
    }

    @Override
    public void j(TaskInfo taskInfo) {
    }

    public final void p(TaskInfo taskInfo) {
        taskInfo.x = this.b == IUpgradeDownloader$DownloadMode.MANUALLY;
        this.d = taskInfo.w;
        TaskInfoDBUtils.C().execute(new b(taskInfo));
    }

    public final void r(IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, UpgradeConfig upgradeConfig, d dVar) {
        IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode2;
        cm3 cm3VarQ;
        if (iUpgradeDownloader$DownloadMode == IUpgradeDownloader$DownloadMode.UNKNOWN || ((iUpgradeDownloader$DownloadMode != (iUpgradeDownloader$DownloadMode2 = this.b) && iUpgradeDownloader$DownloadMode2 == IUpgradeDownloader$DownloadMode.MANUALLY) || upgradeConfig == null)) {
            cm3 cm3Var = new cm3();
            cm3Var.V = this.i;
            try {
                cm3Var.g0(com.snaptube.premium.selfupgrade.incremental_upgrade.b.g(upgradeConfig));
                cm3Var.f0(CheckSelfUpgradeManager.H(upgradeConfig));
                cm3Var.m0(upgradeConfig == null ? "" : upgradeConfig.getVersion());
                cm3Var.i0(upgradeConfig == null ? 0L : upgradeConfig.getFullFileSize());
                if (upgradeConfig != null) {
                    cm3Var.v = upgradeConfig.getFullMd5();
                }
                com.snaptube.premium.selfupgrade.incremental_upgrade.b.l(cm3Var, "download_start_cancel");
                return;
            } catch (Exception unused) {
                com.snaptube.premium.selfupgrade.incremental_upgrade.b.l(cm3Var, "download_start_cancel");
                return;
            }
        }
        this.g = dVar;
        this.c = upgradeConfig.getVersion();
        this.b = iUpgradeDownloader$DownloadMode;
        this.e = -1L;
        this.f = 0;
        try {
            cm3VarQ = q(upgradeConfig, GlobalConfig.isEnableAppUpgradeDownloadWithMobile(), this.k, this.l);
        } catch (IllegalStateException e) {
            ProductionEnv.errorLog("IncrementalDownloader", "taskInfo not valid");
            cm3 cm3Var2 = new cm3();
            cm3Var2.v = upgradeConfig.getFullMd5();
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.l(cm3Var2, "build_taskinfo_error");
            e.printStackTrace();
            cm3VarQ = null;
        }
        if (cm3VarQ == null) {
            cm3 cm3Var3 = new cm3();
            cm3Var3.v = upgradeConfig.getFullMd5();
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.l(cm3Var3, "build_taskinfo_error");
        } else {
            if (!TextUtils.isEmpty(this.i)) {
                cm3VarQ.V = this.i;
            }
            cm3VarQ.k = PhoenixApplication.z().getString(R.string.self_upgrade_task_title);
            p(cm3VarQ);
        }
    }

    public final boolean s() {
        return this.h.getPriority() == UpgradeConfig.UpdatePriority.STRONG && TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - CheckSelfUpgradeManager.L()) >= 3;
    }

    public String t() {
        return this.d;
    }

    public final boolean u(boolean z) {
        if (z) {
            return false;
        }
        return (Config.a4() && s()) ? false : true;
    }

    public final boolean v() {
        return q55.s() == 1;
    }

    public final synchronized void w(boolean z, cm3 cm3Var) {
        try {
            PhoenixApplication.K().y(this);
            this.d = null;
            this.e = -1L;
            IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode = this.b;
            this.b = IUpgradeDownloader$DownloadMode.UNKNOWN;
            CheckSelfUpgradeManager.T(iUpgradeDownloader$DownloadMode.name(), z, this.f);
            if (this.g != null) {
                boolean z2 = z && cm3Var != null && cm3Var.i() != null && new File(cm3Var.i()).exists();
                if (cm3Var != null && !TextUtils.isEmpty(this.i)) {
                    cm3Var.V = this.i;
                }
                this.g.a(z2, iUpgradeDownloader$DownloadMode, this.c, cm3Var, this.h);
            }
            CheckSelfUpgradeManager.J().v(iUpgradeDownloader$DownloadMode);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void x(TaskInfo taskInfo, TaskInfo taskInfo2) {
        cm3 cm3Var;
        TaskInfo.TaskStatus taskStatus;
        boolean z = taskInfo.U;
        if (taskInfo2 instanceof cm3) {
            cm3Var = (cm3) taskInfo2;
            if (cm3Var.i == TaskInfo.TaskStatus.FINISH && cm3Var.i() != null && new File(cm3Var.i()).exists()) {
                if (taskInfo instanceof cm3) {
                    cm3 cm3Var2 = (cm3) taskInfo;
                    cm3Var.l0(cm3Var2.d0());
                    cm3Var.k0(cm3Var2.b0());
                    TaskInfoDBUtils.r(cm3Var);
                }
                w(true, cm3Var);
                return;
            }
            if (!cm3Var.x && taskInfo.x) {
                TaskInfoDBUtils.x(cm3Var.a, true);
            }
            if (this.b == IUpgradeDownloader$DownloadMode.MANUALLY) {
                if (cm3Var.x) {
                    if (!this.j && ((taskStatus = cm3Var.i) == TaskInfo.TaskStatus.RUNNING || taskStatus == TaskInfo.TaskStatus.PENDING)) {
                        TaskInfoDBUtils.v(cm3Var.a, TaskInfo.TaskStatus.PAUSED);
                        return;
                    }
                } else if (cm3Var.S) {
                    TaskInfoDBUtils.v(cm3Var.a, TaskInfo.TaskStatus.DELETED);
                }
            }
        } else {
            cm3Var = null;
        }
        if (this.b == IUpgradeDownloader$DownloadMode.AUTOMATIC) {
            if (C(z)) {
                if (cm3Var == null && (taskInfo instanceof cm3)) {
                    cm3Var = (cm3) taskInfo;
                } else if (cm3Var == null) {
                    cm3Var = new cm3();
                    cm3Var.v = taskInfo.v;
                }
                com.snaptube.premium.selfupgrade.incremental_upgrade.b.l(cm3Var, x87.i() ? "IsNotWifi" : "ConfigNotAllow");
                w(false, null);
                return;
            }
            taskInfo.S = u(z);
            if (cm3Var != null && cm3Var.i == TaskInfo.TaskStatus.ERROR) {
                int i = m;
                if (i >= 4) {
                    com.snaptube.premium.selfupgrade.incremental_upgrade.b.l(cm3Var, "retry_time_more_than_four_times");
                    w(false, null);
                    return;
                }
                m = i + 1;
            }
        }
        PhoenixApplication.K().x(this);
        TaskInfoDBUtils.l(taskInfo, null);
    }

    public void y(boolean z) {
        this.j = z;
    }

    public void z(String str) {
        this.k = str;
    }
}
