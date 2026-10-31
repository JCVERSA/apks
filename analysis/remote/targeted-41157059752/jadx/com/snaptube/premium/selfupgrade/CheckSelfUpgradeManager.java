package com.snaptube.premium.selfupgrade;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.google.gson.reflect.TypeToken;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.selfupgrade.incremental_upgrade.IUpgradeDownloader$DownloadMode;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.snaptube.util.ProductionEnv;
import com.tencent.matrix.util.DeviceUtil;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.download.rpc.DownloadConstants;
import com.wandoujia.download.utils.StorageUtil;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Random;
import o.an5;
import o.ap3;
import o.az7;
import o.b88;
import o.bq5;
import o.cm3;
import o.dp3;
import o.fc1;
import o.fp5;
import o.hn1;
import o.ix6;
import o.j23;
import o.l3;
import o.me7;
import o.pq5;
import o.rh8;
import o.rl0;
import o.s5;
import o.sh;
import o.sl0;
import o.sq5;
import o.tu7;
import o.wl8;
import o.xw2;
import o.zp6;

public class CheckSelfUpgradeManager implements com.snaptube.premium.selfupgrade.incremental_upgrade.a.d {
    public static ProgressDialog c;
    public static CheckSelfUpgradeManager d;
    public static UpgradeConfig e;
    public static UpgradeConfig f;
    public com.snaptube.premium.selfupgrade.incremental_upgrade.a a;
    public com.snaptube.premium.selfupgrade.incremental_upgrade.a b;

    public class AnonymousClass6 extends TypeToken<LocalUpdateConfig> {
    }

    public class AnonymousClass7 extends TypeToken<LocalUpdateConfig> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class ConfigFetcher {
        private UpgradeConfig cachedConfig;
        private Object lock;
        public static final ConfigFetcher UPGRADE = new AnonymousClass1("UPGRADE", 0, null);
        private static final ConfigFetcher[] $VALUES = a();

        public final enum AnonymousClass1 extends ConfigFetcher {
            private AnonymousClass1(String str, int i) {
                super(str, i, null);
            }

            public AnonymousClass1(String str, int i, rl0 rl0Var) {
                this(str, i);
            }

            @Override
            public UpgradeConfig getCachedConfig() {
                return CheckSelfUpgradeManager.M();
            }

            @Override
            public rx.c<UpgradeConfig> getConfigFromServer(String str) {
                return CheckSelfUpgradeManager.e(PhoenixApplication.z(), str);
            }

            @Override
            public long getLastCheckTime() {
                return CheckSelfUpgradeManager.K();
            }
        }

        public class a implements xw2 {
            public final String a;

            public a(String str) {
                this.a = str;
            }

            public rx.c a(Boolean bool) {
                synchronized (ConfigFetcher.c(ConfigFetcher.this)) {
                    try {
                        if (bool.booleanValue() && ConfigFetcher.b(ConfigFetcher.this) != null) {
                            return rx.c.Q(ConfigFetcher.b(ConfigFetcher.this));
                        }
                        ConfigFetcher configFetcher = ConfigFetcher.this;
                        ConfigFetcher.d(configFetcher, (UpgradeConfig) zp6.e(configFetcher.getConfigFromServer(this.a)));
                        return rx.c.Q(ConfigFetcher.b(ConfigFetcher.this));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override
            public Object call(Object obj) {
                return a((Boolean) obj);
            }
        }

        private ConfigFetcher(String str, int i) {
            super(str, i);
            this.cachedConfig = null;
            this.lock = new Object();
        }

        public ConfigFetcher(String str, int i, sl0 sl0Var) {
            this(str, i);
        }

        public static ConfigFetcher[] a() {
            return new ConfigFetcher[]{UPGRADE};
        }

        public static UpgradeConfig b(ConfigFetcher configFetcher) {
            return configFetcher.cachedConfig;
        }

        public static Object c(ConfigFetcher configFetcher) {
            return configFetcher.lock;
        }

        public static void d(ConfigFetcher configFetcher, UpgradeConfig upgradeConfig) {
            configFetcher.cachedConfig = upgradeConfig;
        }

        public static ConfigFetcher valueOf(String str) {
            return (ConfigFetcher) Enum.valueOf(ConfigFetcher.class, str);
        }

        public static ConfigFetcher[] values() {
            return (ConfigFetcher[]) $VALUES.clone();
        }

        public rx.c<UpgradeConfig> fetchUpgradeConfig(boolean z, String str) {
            return fetchUpgradeConfig(z, true, str);
        }

        public rx.c<UpgradeConfig> fetchUpgradeConfig(boolean z, boolean z2, String str) {
            UpgradeConfig cachedConfig;
            if (z) {
                if (Math.abs(System.currentTimeMillis() - getLastCheckTime()) < Config.a2(GlobalConfig.getAppContext()) && ((cachedConfig = getCachedConfig()) != null || !z2)) {
                    return rx.c.Q(cachedConfig);
                }
            }
            CheckSelfUpgradeManager.a0();
            return rx.c.Q(Boolean.valueOf(z)).H(new a(str));
        }

        public abstract UpgradeConfig getCachedConfig();

        public abstract rx.c<UpgradeConfig> getConfigFromServer(String str);

        public abstract long getLastCheckTime();
    }

    public static class LocalUpdateConfig implements Serializable {
        private UpgradeConfig config;
        private int versionCode;

        public UpgradeConfig getConfig() {
            return this.config;
        }

        public int getVersionCode() {
            return this.versionCode;
        }

        public void setConfig(UpgradeConfig upgradeConfig) {
            this.config = upgradeConfig;
        }

        public void setVersionCode(int i) {
            this.versionCode = i;
        }
    }

    public class a extends tu7 {
        public final TextView a;
        public final TextView b;
        public final Context c;
        public final com.wandoujia.base.view.c d;
        public final String e;

        public a(TextView textView, TextView textView2, Context context, com.wandoujia.base.view.c cVar, String str) {
            this.a = textView;
            this.b = textView2;
            this.c = context;
            this.d = cVar;
            this.e = str;
        }

        public void c(UpgradeConfig upgradeConfig) {
            CheckSelfUpgradeManager.d(upgradeConfig, this.a, this.c, this.b, this.d, this.e);
        }

        @Override
        public void onCompleted() {
        }

        @Override
        public void onError(Throwable th) {
            this.a.setText(R.string.setting_toast_update_failed);
            CheckSelfUpgradeManager.f(this.b);
        }

        @Override
        public void onNext(Object obj) {
            c((UpgradeConfig) obj);
        }
    }

    public class b implements l3 {
        public void a(UpgradeConfig upgradeConfig) {
            zp6.g("upgrade_2");
        }

        @Override
        public void call(Object obj) {
            a((UpgradeConfig) obj);
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public final UpgradeConfig a;
        public final Activity b;
        public final UpgradeConfig c;
        public final String d;
        public final Context e;

        public class a extends me7 {
            public final DialogInterface a;

            public a(DialogInterface dialogInterface) {
                this.a = dialogInterface;
            }

            @Override
            public void d() {
                if (sq5.c()) {
                    c.a(c.this, this.a);
                }
            }
        }

        public c(UpgradeConfig upgradeConfig, Activity activity, UpgradeConfig upgradeConfig2, String str, Context context) {
            this.a = upgradeConfig;
            this.b = activity;
            this.c = upgradeConfig2;
            this.d = str;
            this.e = context;
        }

        public static void a(c cVar, DialogInterface dialogInterface) {
            cVar.c(dialogInterface);
        }

        public final boolean b(DialogInterface dialogInterface) {
            if (sq5.c()) {
                return false;
            }
            CheckSelfUpgradeManager.u(s5.d(), new a(dialogInterface));
            return true;
        }

        public final void c(DialogInterface dialogInterface) {
            if (!ap3.a(PhoenixApplication.z(), this.a.getFilePath())) {
                com.snaptube.premium.selfupgrade.a.a.h(this.b.getWindow().getDecorView(), new com.snaptube.premium.selfupgrade.a.b("manual_upgrade_no_enough_space_guide_popup", true));
                return;
            }
            dialogInterface.dismiss();
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.u(this.c, false);
            CheckSelfUpgradeManager.J().C(IUpgradeDownloader$DownloadMode.MANUALLY, this.a, this.d);
            NavigationManager.a0(this.e);
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (b(dialogInterface)) {
                return;
            }
            c(dialogInterface);
        }
    }

    public class d implements l3 {
        public final String a;

        public d(String str) {
            this.a = str;
        }

        public void a(UpgradeConfig upgradeConfig) {
            CheckSelfUpgradeManager.c(upgradeConfig, this.a);
        }

        @Override
        public void call(Object obj) {
            a((UpgradeConfig) obj);
        }
    }

    public class e implements xw2 {
        public final String a;
        public final Context b;

        public e(String str, Context context) {
            this.a = str;
            this.b = context;
        }

        public rx.c a(String[] strArr) {
            zp6.g("upgrade_6");
            if (!Config.v4()) {
                return rx.c.Q(UpgradeConfig.NEWEST);
            }
            fp5 fp5VarA = ((com.snaptube.premium.app.a) fc1.a(PhoenixApplication.z())).A();
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.i("Upgrade", this.a);
            long jF = DeviceUtil.f(this.b);
            return fp5VarA.a(strArr[2], strArr[1], strArr[0], Build.MANUFACTURER, Build.MODEL, String.valueOf(jF), DeviceUtil.c(this.b).getValue());
        }

        @Override
        public Object call(Object obj) {
            return a((String[]) obj);
        }
    }

    public static class f extends tu7 {
        public Context a;
        public IUpgradeDownloader$DownloadMode b;
        public boolean c;
        public String d;

        public f(Context context, IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, boolean z, String str) {
            this.a = context;
            this.b = iUpgradeDownloader$DownloadMode;
            this.c = z;
            this.d = str;
        }

        public void c(UpgradeConfig upgradeConfig) {
            Context context;
            if (CheckSelfUpgradeManager.k(upgradeConfig)) {
                CheckSelfUpgradeManager.J().C(this.b, upgradeConfig, this.d);
            } else {
                if (!this.c || (context = this.a) == null) {
                    return;
                }
                b88.l(context, R.string.setting_dialog_already_new_version);
            }
        }

        @Override
        public void onCompleted() {
            CheckSelfUpgradeManager.b();
        }

        @Override
        public void onError(Throwable th) {
            CheckSelfUpgradeManager.b();
        }

        @Override
        public void onNext(Object obj) {
            c((UpgradeConfig) obj);
        }
    }

    public static void A(UpgradeConfig upgradeConfig, TextView textView, Context context, TextView textView2, com.wandoujia.base.view.c cVar, String str) {
        UpgradeConfig upgradeConfigP = P(upgradeConfig);
        if (!k(upgradeConfigP)) {
            textView.setText(context.getString(R.string.version_format_short, an5.d(context)));
            i0(textView2);
            return;
        }
        textView.setText(context.getString(R.string.upgrade_default_title_version_format, upgradeConfigP.getBigVersion()));
        h0(textView2);
        if (az7.U(context)) {
            cVar.s(-1, context.getString(R.string.update), new c(upgradeConfigP, (Activity) context, upgradeConfig, str, context), null);
            cVar.show();
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.u(upgradeConfig, true);
        }
    }

    public static String E(UpgradeConfig upgradeConfig) {
        LocalUpdateConfig localUpdateConfig = new LocalUpdateConfig();
        localUpdateConfig.setVersionCode(az7.P(PhoenixApplication.z()));
        localUpdateConfig.setConfig(upgradeConfig);
        return j23.i(localUpdateConfig, new AnonymousClass7().getType());
    }

    public static UpgradeConfig F() {
        return N("last_apk_downloaded_upgrade_config", f);
    }

    public static UpgradeConfig G() {
        if (e == null) {
            e = M();
        }
        if (k(e)) {
            return e;
        }
        return null;
    }

    public static String H(UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null) {
            return "ConfigIsNull";
        }
        if (!upgradeConfig.update) {
            return "CannotUpgrade";
        }
        if (upgradeConfig.usePatchUpdate()) {
            return upgradeConfig.canPatchUpdate() ? "CanPathUpgrade" : "CannotUpgrade";
        }
        return upgradeConfig.canFullUpdate() ? "CanFullUpgrade" : "CannotUpgrade";
    }

    public static long I() {
        return Config.b0().getLong("firset_get_config_time", 0L);
    }

    public static CheckSelfUpgradeManager J() {
        synchronized (CheckSelfUpgradeManager.class) {
            try {
                if (d == null) {
                    d = new CheckSelfUpgradeManager();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return d;
    }

    public static long K() {
        return Config.b0().getLong("last_check_self_upgrade_time", 0L);
    }

    public static long L() {
        return Config.b0().getLong("last_get_fresh_config_time", 0L);
    }

    public static UpgradeConfig M() {
        return N(O(), e);
    }

    public static UpgradeConfig N(String str, UpgradeConfig upgradeConfig) {
        if (upgradeConfig != null) {
            return upgradeConfig;
        }
        String string = Config.b0().getString(str, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            LocalUpdateConfig localUpdateConfig = (LocalUpdateConfig) j23.c(string, new AnonymousClass6().getType());
            if (localUpdateConfig != null && localUpdateConfig.getVersionCode() >= az7.P(PhoenixApplication.z())) {
                return localUpdateConfig.getConfig();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static String O() {
        return "last_self_upgrade_result";
    }

    public static UpgradeConfig P(UpgradeConfig upgradeConfig) {
        UpgradeConfig upgradeConfigM = M();
        return f0(upgradeConfig, upgradeConfigM) ? upgradeConfig : upgradeConfigM;
    }

    public static rx.c Q(Context context, String str) {
        return wl8.f(context).H(new e(str, context)).y(new d(str));
    }

    public static boolean R(UpgradeConfig upgradeConfig, UpgradeConfig upgradeConfig2) {
        return !TextUtils.isEmpty(upgradeConfig.getVersion()) && (upgradeConfig.getVersionCode() != upgradeConfig2.getVersionCode() || j(upgradeConfig, upgradeConfig2)) && rh8.a(upgradeConfig);
    }

    public static void S(String str, boolean z) {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("click_" + str).setProperty("arg1", Boolean.valueOf(z)).reportEvent();
    }

    public static void T(String str, boolean z, int i) {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("download_" + str).setProperty("success", Boolean.valueOf(z)).setProperty("arg2", Integer.valueOf(i)).reportEvent();
    }

    public static void U(String str) {
        ReportPropertyBuilder.e().setEventName("Upgrade").setAction("intent_upgrade_dialog_exposure").setProperty("arg1", str).reportEvent();
    }

    public static void V(UpgradeConfig upgradeConfig) {
        Config.b0().edit().remove("last_apk_downloaded_upgrade_config").apply();
        f = null;
        w(upgradeConfig);
    }

    public static boolean W(UpgradeConfig upgradeConfig) {
        boolean z;
        SharedPreferences.Editor editorEdit = Config.b0().edit();
        if (upgradeConfig != null && !upgradeConfig.isStop()) {
            if (f0(upgradeConfig, F())) {
                f = upgradeConfig;
                editorEdit.putString("last_apk_downloaded_upgrade_config", E(upgradeConfig));
                z = true;
            }
            editorEdit.apply();
            return z;
        }
        editorEdit.remove("last_apk_downloaded_upgrade_config");
        f = null;
        z = false;
        editorEdit.apply();
        return z;
    }

    public static void X(long j) {
        if (Config.b0().getLong("firset_get_config_time", 0L) == 0 || j == 0) {
            Config.b0().edit().putLong("firset_get_config_time", j).apply();
        }
    }

    public static void Y() {
        Config.b0().edit().putLong("last_get_fresh_config_time", System.currentTimeMillis()).apply();
    }

    public static boolean Z(UpgradeConfig upgradeConfig) {
        boolean z;
        SharedPreferences.Editor editorEdit = Config.b0().edit();
        if (upgradeConfig != null && !upgradeConfig.isStop()) {
            UpgradeConfig upgradeConfigM = M();
            if (f0(upgradeConfig, upgradeConfigM)) {
                e = upgradeConfig;
                editorEdit.putString(O(), E(upgradeConfig));
                w(upgradeConfigM);
                X(System.currentTimeMillis());
                z = true;
            }
            editorEdit.apply();
            return z;
        }
        V(M());
        editorEdit.remove(O());
        e = null;
        z = false;
        editorEdit.apply();
        return z;
    }

    public static void a0() {
        long timeInMillis;
        if (DateUtils.isToday(K())) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(6, 1);
            calendar.set(11, 15);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            timeInMillis = calendar.getTimeInMillis() + ((long) new Random().nextInt(25200000));
        } else {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(10, 2);
            timeInMillis = calendar2.getTimeInMillis();
        }
        Intent intent = new Intent(PhoenixApplication.z(), (Class<?>) CheckSelfUpgradeReceiver.class);
        intent.setAction("phoenix.intent.action.CHECK_SELF_UPGRADE");
        PendingIntent pendingIntentF = bq5.f(PhoenixApplication.z(), 0, intent, 536870912);
        if (pendingIntentF == null) {
            pendingIntentF = bq5.f(PhoenixApplication.z(), 0, intent, 1073741824);
        }
        Object systemService = PhoenixApplication.z().getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (systemService != null) {
            try {
                ((AlarmManager) systemService).set(0, timeInMillis, pendingIntentF);
            } catch (Exception unused) {
            }
        }
    }

    public static void b() {
        x();
    }

    public static void b0(long j) {
        Config.b0().edit().putLong("last_check_self_upgrade_time", j).apply();
    }

    public static void c(UpgradeConfig upgradeConfig, String str) {
        z(upgradeConfig, str);
    }

    public static void c0(String str) {
        SharedPreferences.Editor editorEdit = Config.b0().edit();
        editorEdit.putString("last_show_me_tab_point_version", str);
        editorEdit.putLong("last_show_me_tab_point_time", System.currentTimeMillis());
        editorEdit.apply();
    }

    public static void d(UpgradeConfig upgradeConfig, TextView textView, Context context, TextView textView2, com.wandoujia.base.view.c cVar, String str) {
        A(upgradeConfig, textView, context, textView2, cVar, str);
    }

    public static void d0(String str) {
        SharedPreferences.Editor editorEdit = Config.b0().edit();
        editorEdit.putString("last_show_popup_self_upgrade_version", str);
        editorEdit.putLong("last_show_popup_self_upgrade_time", System.currentTimeMillis());
        editorEdit.apply();
    }

    public static rx.c e(Context context, String str) {
        return Q(context, str);
    }

    public static void e0(UpgradeConfig upgradeConfig) {
        try {
            if (!TextUtils.isEmpty(upgradeConfig.getVersion()) && sq5.c()) {
                upgradeConfig.setFilePath(StorageUtil.a(GlobalConfig.getAppContext().getPackageName(), upgradeConfig.getFullUrl(), null, null, DownloadConstants.ResourceType.APP, 0L, upgradeConfig.getVersion()));
            }
        } catch (Exception unused) {
        }
    }

    public static void f(TextView textView) {
        h0(textView);
    }

    public static boolean f0(UpgradeConfig upgradeConfig, UpgradeConfig upgradeConfig2) {
        if (!k(upgradeConfig)) {
            return false;
        }
        if (!k(upgradeConfig2)) {
            return true;
        }
        if (TextUtils.isEmpty(upgradeConfig.getVersion()) && TextUtils.isEmpty(upgradeConfig2.getVersion())) {
            return true;
        }
        return R(upgradeConfig, upgradeConfig2);
    }

    public static void g(boolean z, String str) {
        o(IUpgradeDownloader$DownloadMode.AUTOMATIC, z, null, false, str);
    }

    public static boolean g0(UpgradeConfig upgradeConfig) {
        return l(upgradeConfig.getVersion(), upgradeConfig.getPopupInterval(), "last_show_popup_self_upgrade_version", "last_show_popup_self_upgrade_time");
    }

    public static void h0(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setText(textView.getResources().getString(R.string.current_value, an5.d(textView.getContext())));
    }

    public static boolean i(Activity activity, UpgradeConfig upgradeConfig, String str) {
        if (upgradeConfig == null) {
            return false;
        }
        if (!upgradeConfig.isApkExist()) {
            r(activity, str);
            return false;
        }
        if (upgradeConfig.isApkMd5Correct()) {
            return true;
        }
        upgradeConfig.deleteApk();
        r(activity, str);
        return false;
    }

    public static void i0(TextView textView) {
        textView.setText(R.string.setting_dialog_already_new_version);
    }

    public static boolean j(UpgradeConfig upgradeConfig, UpgradeConfig upgradeConfig2) {
        if (TextUtils.isEmpty(upgradeConfig.getFilePath())) {
            return false;
        }
        return !upgradeConfig.getFilePath().equals(upgradeConfig2.getFilePath());
    }

    public static void j0(Context context) {
        c = ProgressDialog.show(context, "", context.getString(R.string.setting_dialog_content_update), true, false);
    }

    public static boolean k(UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null || rh8.b(upgradeConfig) || !upgradeConfig.update) {
            return false;
        }
        return upgradeConfig.usePatchUpdate() ? upgradeConfig.canPatchUpdate() : upgradeConfig.canFullUpdate();
    }

    public static void k0(UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null || !upgradeConfig.isApkExist() || upgradeConfig.isApkMd5Correct()) {
            return;
        }
        upgradeConfig.deleteApk();
    }

    public static boolean l(String str, long j, String str2, String str3) {
        if (TextUtils.equals(Config.b0().getString(str2, ""), str)) {
            return (System.currentTimeMillis() - Config.b0().getLong(str3, 0L)) / 1000 > j;
        }
        return true;
    }

    public static void m(Context context, UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null || upgradeConfig.isApkExist() || hn1.c(context)) {
            return;
        }
        b88.m(context, context.getString(R.string.no_network_tips2));
    }

    public static void n(Context context, com.wandoujia.base.view.c cVar, TextView textView, TextView textView2, String str) {
        y(ConfigFetcher.UPGRADE.fetchUpgradeConfig(false, str), context, cVar, textView, textView2, str);
    }

    public static void o(IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, boolean z, Context context, boolean z2, String str) {
        ConfigFetcher.UPGRADE.fetchUpgradeConfig(z, str).z0(ix6.d()).Y(sh.c()).x0(new f(context, iUpgradeDownloader$DownloadMode, z2, str));
    }

    public static rx.c p(Context context, String str) {
        return ConfigFetcher.UPGRADE.fetchUpgradeConfig(false, str);
    }

    public static void q(Context context, String str) {
        j0(context);
        o(IUpgradeDownloader$DownloadMode.MANUALLY, true, context, true, str);
    }

    public static void r(Activity activity, String str) {
        g(true, str);
    }

    public static void s(Context context, View view, com.wandoujia.base.view.c cVar, String str) {
        n(context, cVar, (TextView) view.findViewById(R.id.tv_about_title), (TextView) view.findViewById(R.id.tv_about_info), str);
    }

    public static void t(String str) {
        g(true, str);
    }

    public static void u(Activity activity, me7 me7Var) {
        if (activity == null) {
            activity = s5.d();
        }
        if (activity == null) {
            return;
        }
        pq5.a().e(activity, new com.snaptube.permission.a.C0392a().h(sq5.e()).i(me7Var).e(1).c(true).j("app_upgrade").a());
    }

    public static void w(UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null) {
            return;
        }
        if (upgradeConfig.isApkExist()) {
            ProductionEnv.d("deleteOldDownloadedApk1:result=" + upgradeConfig.deleteApk());
            return;
        }
        UpgradeConfig upgradeConfigF = F();
        if (upgradeConfigF != null && upgradeConfig.getVersionCode() == upgradeConfigF.getVersionCode() && upgradeConfigF.isApkExist()) {
            ProductionEnv.d("deleteOldDownloadedApk2:result=" + upgradeConfigF.deleteApk());
        }
    }

    public static void x() {
        ProgressDialog progressDialog = c;
        if (progressDialog != null && progressDialog.isShowing() && az7.U(c.getContext())) {
            c.dismiss();
            c = null;
        }
    }

    public static void y(rx.c cVar, Context context, com.wandoujia.base.view.c cVar2, TextView textView, TextView textView2, String str) {
        cVar.z0(ix6.d()).y(new b()).Y(sh.c()).x0(new a(textView, textView2, context, cVar2, str));
    }

    public static void z(UpgradeConfig upgradeConfig, String str) {
        if (upgradeConfig != null) {
            b0(System.currentTimeMillis());
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.j(H(upgradeConfig), upgradeConfig, str);
            e0(upgradeConfig);
            if (Z(upgradeConfig)) {
                Y();
            } else {
                upgradeConfig = M();
            }
        }
        if (k(upgradeConfig)) {
            PhoenixApplication.z().sendBroadcast(new Intent("phoenix.intent.action.NEW_VERSION_AVIABLE"));
        }
    }

    public com.snaptube.premium.selfupgrade.incremental_upgrade.a B(UpgradeConfig upgradeConfig, String str, boolean z, String str2, String str3) {
        com.snaptube.premium.selfupgrade.incremental_upgrade.b.q(upgradeConfig, str);
        IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode = IUpgradeDownloader$DownloadMode.MANUALLY;
        com.snaptube.premium.selfupgrade.incremental_upgrade.a aVarH = h(iUpgradeDownloader$DownloadMode);
        aVarH.A(str);
        aVarH.y(z);
        aVarH.z(str2);
        aVarH.B(str3);
        aVarH.D(iUpgradeDownloader$DownloadMode, upgradeConfig, this);
        return aVarH;
    }

    public void C(IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, UpgradeConfig upgradeConfig, String str) {
        com.snaptube.premium.selfupgrade.incremental_upgrade.b.q(upgradeConfig, str);
        com.snaptube.premium.selfupgrade.incremental_upgrade.a aVarH = h(iUpgradeDownloader$DownloadMode);
        aVarH.A(str);
        aVarH.D(iUpgradeDownloader$DownloadMode, upgradeConfig, this);
    }

    public final void D(boolean z, IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, String str, cm3 cm3Var, UpgradeConfig upgradeConfig) {
        if (z && cm3Var != null && k(upgradeConfig) && TextUtils.equals(str, upgradeConfig.getVersion())) {
            if (iUpgradeDownloader$DownloadMode == IUpgradeDownloader$DownloadMode.MANUALLY) {
                ap3.f(dp3.d(cm3Var, "upgrade_self"));
                com.snaptube.premium.selfupgrade.incremental_upgrade.b.s(cm3Var, upgradeConfig);
            }
            upgradeConfig.setFilePath(cm3Var.i());
            W(upgradeConfig);
        }
    }

    @Override
    public void a(boolean z, IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode, String str, cm3 cm3Var, UpgradeConfig upgradeConfig) {
        D(z, iUpgradeDownloader$DownloadMode, str, cm3Var, upgradeConfig);
    }

    public final com.snaptube.premium.selfupgrade.incremental_upgrade.a h(IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode) {
        if (IUpgradeDownloader$DownloadMode.MANUALLY == iUpgradeDownloader$DownloadMode) {
            com.snaptube.premium.selfupgrade.incremental_upgrade.a aVar = new com.snaptube.premium.selfupgrade.incremental_upgrade.a();
            this.b = aVar;
            return aVar;
        }
        com.snaptube.premium.selfupgrade.incremental_upgrade.a aVar2 = new com.snaptube.premium.selfupgrade.incremental_upgrade.a();
        this.a = aVar2;
        return aVar2;
    }

    public void v(IUpgradeDownloader$DownloadMode iUpgradeDownloader$DownloadMode) {
        if (IUpgradeDownloader$DownloadMode.MANUALLY == iUpgradeDownloader$DownloadMode) {
            this.b = null;
        } else {
            this.a = null;
        }
    }
}
