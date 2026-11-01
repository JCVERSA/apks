package com.snaptube.extractor.pluginlib.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.PluginProvider;
import com.snaptube.extractor.pluginlib.piratical.OfficialWarningDialog;
import o.ja9;
import o.pz5;
import o.st6;
import o.w44;
import o.xj3;
import o.y48;

public class PluginContextUtil {
    private static final String INTENT_EXTRA_AUTO_DOWNLOAD = "auto_download";
    public static final String METHOD_SET_CONTEXT = "setAppContext";

    @SuppressLint({"StaticFieldLeak"})
    private static Context sAppContext;

    public class a extends st6 {
        @Override
        public void a() throws Throwable {
            if (OfficialWarningDialog.x(PluginContextUtil.access$000())) {
                xj3.a("https://intranet.thejeu.com/cmchvh6zg0001070ul7bc7nog", OfficialWarningDialog.r(PluginContextUtil.access$000(), "guide_download"));
                xj3.a("https://intranet.thejeu.com/cmchvnc060002070u9x1ny5sg", OfficialWarningDialog.r(PluginContextUtil.access$000(), "guide_uninstall"));
            }
        }
    }

    public class b implements Application.ActivityLifecycleCallbacks {
        public final Context a;

        public b(Context context) {
            this.a = context;
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intent intent = activity.getIntent();
            if (intent == null || !"com.snaptube.premium.activity.YoutubeVideoWebViewActivity".equals(activity.getClass().getName()) || ja9.e(this.a)) {
                return;
            }
            if (intent.getBooleanExtra(PluginContextUtil.INTENT_EXTRA_AUTO_DOWNLOAD, false)) {
                intent.putExtra(PluginContextUtil.INTENT_EXTRA_AUTO_DOWNLOAD, false);
            }
            if ("intent".equals(intent.getStringExtra(IntentUtil.POS))) {
                intent.putExtra(IntentUtil.POS, "intent_forbidden");
            }
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
        }

        @Override
        public void onActivityPaused(Activity activity) {
        }

        @Override
        public void onActivityResumed(Activity activity) {
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override
        public void onActivityStarted(Activity activity) {
        }

        @Override
        public void onActivityStopped(Activity activity) {
        }
    }

    public static Context access$000() {
        return sAppContext;
    }

    private static void avoidNoClassDefFoundError() {
        System.out.println(SharedPreferences.class.getName());
    }

    private static void checkOfficialWarning() {
        y48.k(new a());
    }

    public static Context getAppContext() {
        return sAppContext;
    }

    @Nullable
    public static ClassLoader getContextClassLoader() {
        Context appContext = getAppContext();
        if (appContext != null) {
            return appContext.getClassLoader();
        }
        return null;
    }

    public static int getVersionCode(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    private static void interceptWebAutoDownload(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(new b(context));
        }
    }

    public static void setAppContext(Context context) {
        int versionCode;
        if (context == null) {
            return;
        }
        sAppContext = context.getApplicationContext();
        if (context.getClassLoader() != PluginContextUtil.class.getClassLoader() && ((versionCode = getVersionCode(context)) == 4664010 || versionCode == 4663910 || (versionCode >= 4670000 && versionCode < 4671710))) {
            setAppContextToPlugin(context.getClassLoader(), context);
        }
        avoidNoClassDefFoundError();
        interceptWebAutoDownload(sAppContext);
        pz5.e(sAppContext);
        PluginProvider.init(sAppContext);
        w44.k(sAppContext);
        updateFromPlugin();
        checkOfficialWarning();
    }

    public static void setAppContextToPlugin(ClassLoader classLoader, Context context) {
        try {
            classLoader.loadClass(PluginContextUtil.class.getName()).getMethod(METHOD_SET_CONTEXT, Context.class).invoke(null, context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void updateFromPlugin() {
        if (pz5.d()) {
            updateUnconfirmedTitleRegex();
        }
    }

    private static void updateUnconfirmedTitleRegex() {
    }
}
