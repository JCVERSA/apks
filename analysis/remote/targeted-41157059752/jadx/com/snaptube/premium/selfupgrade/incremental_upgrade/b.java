package com.snaptube.premium.selfupgrade.incremental_upgrade;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.ThreadPool;
import java.util.Date;
import o.ah3;
import o.az7;
import o.cm3;
import o.fc1;
import o.nr;
import o.sq5;
import o.vg4;
import o.xi7;

public class b {
    public boolean a;
    public boolean b;

    public class a implements Runnable {
        public final cm3 a;
        public final String b;

        public a(cm3 cm3Var, String str) {
            this.a = cm3Var;
            this.b = str;
        }

        @Override
        public void run() {
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_error").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.V).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("file_size", Long.valueOf((this.a.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("error", this.b).setProperty("upgrade_md5", this.a.v).reportEvent();
        }
    }

    public class RunnableC0447b implements Runnable {
        public final UpgradeConfig a;
        public final boolean b;

        public RunnableC0447b(UpgradeConfig upgradeConfig, boolean z) {
            this.a = upgradeConfig;
            this.b = z;
        }

        @Override
        public void run() {
            TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(com.snaptube.premium.selfupgrade.incremental_upgrade.a.o(this.a, new cm3()).w);
            if (taskInfoR0 instanceof cm3) {
                cm3 cm3Var = (cm3) taskInfoR0;
                ah3 eventName = ReportPropertyBuilder.e().setEventName("Upgrade");
                StringBuilder sb = new StringBuilder();
                sb.append(this.b ? "show_" : "click_");
                sb.append("about_dialog");
                ah3 property = eventName.setAction(sb.toString()).setProperty("arg2", Boolean.valueOf(this.a.isApkExist())).setProperty("trigger_campaign", cm3Var.V).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.a)).setProperty("file_size", Long.valueOf((cm3Var.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("download_time", b.b(cm3Var.Z())).setProperty("md5", vg4.b(cm3Var.i())).setProperty("card_id", 3002);
                if (!this.b) {
                    property.setProperty("trigger_pos", "upgrade_main_page");
                }
                property.reportEvent();
            }
        }
    }

    public class c implements Runnable {
        public final String a;
        public final UpgradeConfig b;

        public c(String str, UpgradeConfig upgradeConfig) {
            this.a = str;
            this.b = upgradeConfig;
        }

        @Override
        public void run() {
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_start").setProperty("trigger_campaign", this.a).setProperty("trigger_tag", Config.v()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", b.g(this.b)).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.b)).setProperty("config_result", CheckSelfUpgradeManager.H(this.b)).setProperty("upgrade_md5", b.f(this.b)).reportEvent();
        }
    }

    public class d implements Runnable {
        public final cm3 a;

        public d(cm3 cm3Var) {
            this.a = cm3Var;
        }

        @Override
        public void run() {
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_begin").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("upgrade_md5", this.a.v).setProperty("arg2", Integer.valueOf(this.a.c)).setProperty("full_url", this.a.y0).setProperty("position_source", this.a.V).setProperty("signature", this.a.v).reportEvent();
        }
    }

    public class e implements Runnable {
        public final cm3 a;

        public e(cm3 cm3Var) {
            this.a = cm3Var;
        }

        @Override
        public void run() {
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction("full_upgrade_done").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("file_size", Long.valueOf((this.a.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(this.a))).setProperty("upgrade_md5", this.a.v).setProperty("md5", vg4.b(this.a.i())).setProperty("arg2", Integer.valueOf(this.a.c)).setProperty("full_url", this.a.y0).setProperty("position_source", this.a.V).setProperty("signature", this.a.v).reportEvent();
        }
    }

    public class f implements Runnable {
        public final UpgradeConfig a;
        public final String b;
        public final String c;
        public final boolean d;

        public f(UpgradeConfig upgradeConfig, String str, String str2, boolean z) {
            this.a = upgradeConfig;
            this.b = str;
            this.c = str2;
            this.d = z;
        }

        @Override
        public void run() {
            TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(com.snaptube.premium.selfupgrade.incremental_upgrade.a.o(this.a, new cm3()).w);
            cm3 cm3Var = taskInfoR0 instanceof cm3 ? (cm3) taskInfoR0 : null;
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction("show_" + this.b).setProperty("trigger_campaign", cm3Var == null ? this.c : cm3Var.V).setProperty("trigger_tag", cm3Var == null ? Config.v() : cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var == null ? b.g(this.a) : cm3Var.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.a)).setProperty("config_result", CheckSelfUpgradeManager.H(this.a)).setProperty("file_size", Long.valueOf((b.e(this.a) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.valueOf(this.d)).setProperty("scene", this.c).setProperty("download_time", b.b(cm3Var == null ? 0L : cm3Var.Z())).setProperty("upgrade_md5", b.f(this.a)).setProperty("md5", vg4.b(cm3Var != null ? cm3Var.i() : "")).setProperty("card_id", 3002).setProperty("signature", this.a.canFullUpdate() ? b.f(this.a) : "").setProperty("is_not_an_official_version", Boolean.valueOf(xi7.c(PhoenixApplication.z(), true))).reportEvent();
        }
    }

    public class g implements Runnable {
        public final UpgradeConfig a;
        public final String b;
        public final boolean c;
        public final String d;
        public final String e;

        public g(UpgradeConfig upgradeConfig, String str, boolean z, String str2, String str3) {
            this.a = upgradeConfig;
            this.b = str;
            this.c = z;
            this.d = str2;
            this.e = str3;
        }

        @Override
        public void run() {
            TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(com.snaptube.premium.selfupgrade.incremental_upgrade.a.o(this.a, new cm3()).w);
            cm3 cm3Var = taskInfoR0 instanceof cm3 ? (cm3) taskInfoR0 : null;
            String str = "click_" + this.b;
            if (!this.c) {
                str = "click_upgrade_page_not_now";
            }
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction(str).setProperty("trigger_campaign", cm3Var == null ? this.d : cm3Var.V).setProperty("trigger_tag", cm3Var == null ? Config.v() : cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var == null ? b.g(this.a) : cm3Var.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.a)).setProperty("config_result", CheckSelfUpgradeManager.H(this.a)).setProperty("file_size", Long.valueOf((b.e(this.a) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.valueOf(this.a.isApkExist())).setProperty("scene", this.d).setProperty("download_time", b.b(cm3Var == null ? 0L : cm3Var.Z())).setProperty("trigger_pos", this.e).setProperty("upgrade_md5", b.f(this.a)).setProperty("md5", vg4.b(cm3Var == null ? "" : cm3Var.i())).reportEvent();
        }
    }

    public class h implements Runnable {
        public final cm3 a;
        public final UpgradeConfig b;

        public h(cm3 cm3Var, UpgradeConfig upgradeConfig) {
            this.a = cm3Var;
            this.b = upgradeConfig;
        }

        @Override
        public void run() {
            String strB = vg4.b(this.a.i());
            String strF = b.f(this.b);
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction("upgrade_install").setProperty("trigger_campaign", this.a.V).setProperty("trigger_tag", this.a.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", this.a.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", this.a.getVersion()).setProperty("config_result", this.a.X()).setProperty("file_size", Long.valueOf((this.a.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(this.a))).setProperty("is_downloaded", Boolean.valueOf(this.b.isApkExist())).setProperty("scene", this.a.b0()).setProperty("download_time", b.b(this.a.Z())).setProperty("trigger_pos", this.a.d0()).setProperty("upgrade_md5", strF).setProperty("md5", strB).setProperty("is_md5_correct", Boolean.valueOf(strB.equals(strF))).reportEvent();
            Config.j6(this.a.w);
        }
    }

    public class i implements Runnable {
        @Override
        public void run() {
            TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(Config.q1());
            if (taskInfoR0 instanceof cm3) {
                cm3 cm3Var = (cm3) taskInfoR0;
                ReportPropertyBuilder.e().setEventName("Upgrade").setAction("upgrade_from").setProperty("trigger_campaign", cm3Var.V).setProperty("trigger_tag", cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var.Y()).setProperty("arg3", cm3Var.v0).setProperty("arg4", cm3Var.getVersion()).setProperty("config_result", cm3Var.X()).setProperty("file_size", Long.valueOf((cm3Var.a0() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.TRUE).setProperty("scene", cm3Var.d0()).setProperty("download_time", b.b(cm3Var.Z())).setProperty("trigger_pos", cm3Var.d0()).setProperty("upgrade_md5", cm3Var.v).setProperty("md5", vg4.b(cm3Var.i())).reportEvent();
            }
        }
    }

    public class j implements Runnable {
        public final UpgradeConfig a;
        public final String b;
        public final String c;

        public j(UpgradeConfig upgradeConfig, String str, String str2) {
            this.a = upgradeConfig;
            this.b = str;
            this.c = str2;
        }

        @Override
        public void run() {
            TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(com.snaptube.premium.selfupgrade.incremental_upgrade.a.o(this.a, new cm3()).w);
            cm3 cm3Var = taskInfoR0 instanceof cm3 ? (cm3) taskInfoR0 : null;
            ReportPropertyBuilder.e().setEventName("Upgrade").setAction(this.b).setProperty("trigger_campaign", cm3Var == null ? this.c : cm3Var.V).setProperty("trigger_tag", cm3Var == null ? Config.v() : cm3Var.W()).setProperty("previous_upgrade_time", b.b(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("config_type", cm3Var == null ? b.g(this.a) : cm3Var.Y()).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", b.h(this.a)).setProperty("config_result", CheckSelfUpgradeManager.H(this.a)).setProperty("file_size", Long.valueOf((b.e(this.a) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)).setProperty("time_cost", Long.valueOf(b.a(cm3Var))).setProperty("is_downloaded", Boolean.TRUE).setProperty("scene", this.c).setProperty("download_time", b.b(cm3Var == null ? 0L : cm3Var.Z())).setProperty("upgrade_md5", b.f(this.a)).setProperty("md5", vg4.b(cm3Var == null ? "" : cm3Var.i())).reportEvent();
        }
    }

    public interface k {
        void T0(b bVar);
    }

    public b(Context context) {
        ((k) fc1.a(context)).T0(this);
    }

    public static long a(cm3 cm3Var) {
        return c(cm3Var);
    }

    public static String b(long j2) {
        return d(j2);
    }

    public static long c(cm3 cm3Var) {
        if (cm3Var == null) {
            return 0L;
        }
        return (cm3Var.Z() / 1000) - cm3Var.m;
    }

    public static String d(long j2) {
        return nr.a().format((Date) new java.sql.Date(j2));
    }

    public static long e(UpgradeConfig upgradeConfig) {
        if (upgradeConfig != null) {
            return upgradeConfig.getFullFileSize();
        }
        return 0L;
    }

    public static String f(UpgradeConfig upgradeConfig) {
        return upgradeConfig != null ? upgradeConfig.getFullMd5() : "";
    }

    public static String g(UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null) {
            return "";
        }
        if (upgradeConfig.getPriority() != UpgradeConfig.UpdatePriority.STRONG) {
            return upgradeConfig.getPriority().name();
        }
        return upgradeConfig.getPriority().name() + "-" + upgradeConfig.isStrictForceUpdate();
    }

    public static String h(UpgradeConfig upgradeConfig) {
        return upgradeConfig != null ? upgradeConfig.getVersion() : "";
    }

    public static void i(String str, String str2) {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("check_config").setProperty("config_type", str).setProperty("previous_upgrade_time", d(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("trigger_tag", str2).reportEvent();
    }

    public static void j(String str, UpgradeConfig upgradeConfig, String str2) {
        Config.k5(str2);
        ah3 property = ReportPropertyBuilder.e().setEventName("Upgrade").setAction("check_config_result").setProperty("previous_upgrade_time", d(Config.o1())).setProperty("previous_version_code", Integer.valueOf(Config.p1())).setProperty("trigger_tag", str2).setProperty("config_result", str);
        if ("CanFullUpgrade".equals(str) || "CanPathUpgrade".equals(str)) {
            property.setProperty("config_type", g(upgradeConfig)).setProperty("arg3", az7.Q(GlobalConfig.getAppContext())).setProperty("arg4", h(upgradeConfig)).setProperty("upgrade_md5", f(upgradeConfig));
        }
        property.reportEvent();
    }

    public static void k(UpgradeConfig upgradeConfig, String str, boolean z, String str2, String str3) {
        if (upgradeConfig == null) {
            return;
        }
        ThreadPool.a(new g(upgradeConfig, str, z, str2, str3));
    }

    public static void l(cm3 cm3Var, String str) {
        if (cm3Var == null) {
            return;
        }
        ThreadPool.a(new a(cm3Var, str));
    }

    public static void m(String str, UpgradeConfig upgradeConfig, String str2) {
        if (upgradeConfig == null) {
            return;
        }
        ThreadPool.a(new j(upgradeConfig, str, str2));
    }

    public static void q(UpgradeConfig upgradeConfig, String str) {
        ThreadPool.a(new c(str, upgradeConfig));
    }

    public static void r(boolean z, String str) {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("upgrade_install").setProperty("config_type", Boolean.valueOf(z)).setProperty("install_apk_from", str).setProperty("can_write_external_storage", Boolean.valueOf(sq5.c())).reportEvent();
    }

    public static void s(cm3 cm3Var, UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null || cm3Var == null) {
            return;
        }
        ThreadPool.a(new h(cm3Var, upgradeConfig));
    }

    public static void t() {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("show_new_version_tips").reportEvent();
    }

    public static void u(UpgradeConfig upgradeConfig, boolean z) {
        if (upgradeConfig == null) {
            return;
        }
        ThreadPool.a(new RunnableC0447b(upgradeConfig, z));
    }

    public static void v() {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("show_second_dialog").reportEvent();
    }

    public static void w(boolean z) {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("click_second_dialog").setProperty("arg1", Boolean.valueOf(z)).reportEvent();
    }

    public static void x(UpgradeConfig upgradeConfig, String str, boolean z, String str2) {
        if (upgradeConfig == null) {
            return;
        }
        ThreadPool.a(new f(upgradeConfig, str, str2, z));
    }

    public static void y() {
        int iX1 = Config.x1();
        int iP = az7.P(PhoenixApplication.z());
        if (iX1 == 0) {
            Config.l6(iP);
            return;
        }
        if (iX1 == iP) {
            return;
        }
        Config.l6(iP);
        Config.h6(System.currentTimeMillis());
        Config.i6(iX1);
        CheckSelfUpgradeManager.X(0L);
        ThreadPool.a(new i());
    }

    public void n(cm3 cm3Var) {
        if (cm3Var == null) {
            l(new cm3(), "info == null");
        } else {
            if (this.b) {
                return;
            }
            ThreadPool.a(new e(cm3Var));
            this.b = true;
        }
    }

    public void o(cm3 cm3Var) {
        if (cm3Var == null) {
            cm3Var = new cm3();
        }
        cm3Var.B0 = 0L;
        l(cm3Var, "task info is null or status is not finish or filepath is null or download file not exist");
        this.a = true;
    }

    public void p(cm3 cm3Var) {
        if (cm3Var == null) {
            l(new cm3(), "info == null");
            return;
        }
        this.b = false;
        cm3Var.B0 = System.currentTimeMillis();
        ThreadPool.a(new d(cm3Var));
    }
}
