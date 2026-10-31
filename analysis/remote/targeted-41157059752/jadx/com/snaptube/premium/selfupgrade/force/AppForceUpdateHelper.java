package com.snaptube.premium.selfupgrade.force;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.snaptube.premium.selfupgrade.normal.NormalUpdateActivity;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.text.StringsKt__StringsKt;
import o.mp6;
import o.or3;
import o.rh8;
import o.sq5;
import o.wu7;

public final class AppForceUpdateHelper {
    public static boolean d;
    public static wu7 e;
    public static final AppForceUpdateHelper a = new AppForceUpdateHelper();
    public static final Set b = new HashSet();
    public static final Set c = new HashSet();
    public static final Application.ActivityLifecycleCallbacks f = new a();

    public static final class a implements Application.ActivityLifecycleCallbacks {
        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            or3.f(activity, "activity");
            AppForceUpdateHelper.c().add(activity);
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
            or3.f(activity, "activity");
            AppForceUpdateHelper.c().remove(activity);
        }

        @Override
        public void onActivityPaused(Activity activity) {
            or3.f(activity, "activity");
        }

        @Override
        public void onActivityResumed(Activity activity) {
            or3.f(activity, "activity");
            AppForceUpdateHelper appForceUpdateHelper = AppForceUpdateHelper.a;
            if (AppForceUpdateHelper.d(appForceUpdateHelper, activity)) {
                AppForceUpdateHelper.a(appForceUpdateHelper, activity);
            }
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            or3.f(activity, "activity");
            or3.f(bundle, "outState");
        }

        @Override
        public void onActivityStarted(Activity activity) {
            or3.f(activity, "activity");
            AppForceUpdateHelper.b().add(activity);
        }

        @Override
        public void onActivityStopped(Activity activity) {
            or3.f(activity, "activity");
            AppForceUpdateHelper.b().remove(activity);
            if (AppForceUpdateHelper.b().isEmpty()) {
                AppForceUpdateHelper appForceUpdateHelper = AppForceUpdateHelper.a;
                if (appForceUpdateHelper.j()) {
                    appForceUpdateHelper.q(false);
                }
            }
        }
    }

    public static final void a(AppForceUpdateHelper appForceUpdateHelper, Activity activity) {
        appForceUpdateHelper.g(activity);
    }

    public static final Set b() {
        return c;
    }

    public static final Set c() {
        return b;
    }

    public static final boolean d(AppForceUpdateHelper appForceUpdateHelper, Activity activity) {
        return appForceUpdateHelper.n(activity);
    }

    public static final void e(AppForceUpdateHelper appForceUpdateHelper, Activity activity, String str) {
        appForceUpdateHelper.s(activity, str);
    }

    public final boolean f(UpgradeConfig upgradeConfig) {
        return (upgradeConfig.isApkExist() || l()) ? false : true;
    }

    public final void g(Activity activity) {
        wu7 wu7Var = e;
        if (wu7Var == null || wu7Var.isUnsubscribed()) {
            e = mp6.d(null, new AppForceUpdateHelper$checkForceUpdateAsync$1(activity), 1, null);
        }
    }

    public final void h() {
        Iterator it2 = b.iterator();
        while (it2.hasNext()) {
            ((Activity) it2.next()).finish();
        }
    }

    public final void i() {
        Set set = b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (!(((Activity) obj) instanceof ForceUpdateActivity)) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Activity) it2.next()).finish();
        }
    }

    public final boolean j() {
        return d;
    }

    public final void k(Application application) {
        or3.f(application, MimeTypes.BASE_TYPE_APPLICATION);
        application.registerActivityLifecycleCallbacks(f);
    }

    public final boolean l() {
        int iZ1 = Config.Z1();
        return iZ1 == 0 || TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - CheckSelfUpgradeManager.I()) <= ((long) iZ1);
    }

    public final void m(Context context, UpgradeConfig upgradeConfig, String str) {
        ForceUpdateActivity.INSTANCE.a(context, upgradeConfig, str);
        i();
    }

    public final boolean n(Activity activity) {
        String canonicalName = activity.getClass().getCanonicalName();
        return ((canonicalName != null && StringsKt__StringsKt.S(canonicalName, "intercom", false, 2, null)) || (activity instanceof ForceUpdateActivity) || (activity instanceof NormalUpdateActivity)) ? false : true;
    }

    public final boolean o(UpgradeConfig upgradeConfig, String str) {
        if (rh8.b(upgradeConfig) || !sq5.c() || !upgradeConfig.isStrongUpdate()) {
            return false;
        }
        if (upgradeConfig.isStrictForceUpdate()) {
            return true;
        }
        if (!upgradeConfig.isApkExist() || d) {
            return f(upgradeConfig);
        }
        if (upgradeConfig.isApkMd5Correct()) {
            return true;
        }
        upgradeConfig.deleteApk();
        CheckSelfUpgradeManager.r(null, str);
        return false;
    }

    public final boolean p(UpgradeConfig upgradeConfig) {
        return !rh8.b(upgradeConfig) && sq5.c() && upgradeConfig.isNormalUpdate() && !upgradeConfig.isApkExist() && !l() && CheckSelfUpgradeManager.g0(upgradeConfig);
    }

    public final void q(boolean z) {
        d = z;
    }

    public final boolean r(Context context, UpgradeConfig upgradeConfig, String str) {
        or3.f(context, "context");
        or3.f(str, "popTriggerScene");
        if (upgradeConfig != null) {
            AppForceUpdateHelper appForceUpdateHelper = a;
            UpgradeConfig upgradeConfig2 = appForceUpdateHelper.o(upgradeConfig, str) ? upgradeConfig : null;
            if (upgradeConfig2 != null) {
                if (appForceUpdateHelper.f(upgradeConfig)) {
                    str = "any_page_visible_force";
                }
                appForceUpdateHelper.m(context, upgradeConfig2, str);
                return true;
            }
        }
        return false;
    }

    public final void s(Activity activity, String str) {
        UpgradeConfig upgradeConfigM = CheckSelfUpgradeManager.M();
        if (upgradeConfigM != null) {
            if (!a.p(upgradeConfigM)) {
                upgradeConfigM = null;
            }
            if (upgradeConfigM != null) {
                NavigationManager.l0(activity, upgradeConfigM, str);
            }
        }
    }
}
