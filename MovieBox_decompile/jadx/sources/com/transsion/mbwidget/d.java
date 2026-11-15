package com.transsion.mbwidget;

import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.WorkManager;
import androidx.work.m;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.gslb.GslbSdk;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.mbwidget.data.SportWidgetPeriodicWorker;
import com.transsion.mbwidget.data.WidgetRefreshWorker;
import com.transsnet.downloader.manager.p;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class d extends ui.a {

    public static final d f44872a;

    private static final Lazy f44873b;

    private static com.transsion.mbwidget.guide.a f44874c;

    private static final long f44875d;

    static {
        d dVar = new d();
        f44872a = dVar;
        f44873b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return d.p();
            }
        });
        f44875d = 604800000L;
        p.f57282a.a(Utils.a()).g(dVar);
        TimeUnit timeUnit = TimeUnit.MINUTES;
        m mVar = (m) ((m.a) new m.a(WidgetRefreshWorker.class, 30L, timeUnit).a("desk_widget")).b();
        try {
            Result.Companion companion = Result.INSTANCE;
            Context contextCreateDeviceProtectedStorageContext = Build.VERSION.SDK_INT >= 24 ? GslbSdk.context.createDeviceProtectedStorageContext() : GslbSdk.context;
            WorkManager workManagerF = WorkManager.f(contextCreateDeviceProtectedStorageContext);
            ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy = ExistingPeriodicWorkPolicy.KEEP;
            workManagerF.e("unique_desk_widget", existingPeriodicWorkPolicy, mVar);
            Result.m453constructorimpl(WorkManager.f(contextCreateDeviceProtectedStorageContext).e("unique_sport_widget_periodic", existingPeriodicWorkPolicy, (m) ((m.a) new m.a(SportWidgetPeriodicWorker.class, 60L, timeUnit).a("sport_widget_periodic")).b()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private d() {
    }

    private final boolean l() {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = cm.f.f17019c.a().c("widget_guide_enable", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) {
            return true;
        }
        return boolM1.booleanValue();
    }

    public static final MMKV p() {
        MMKV mmkvI = MMKV.I("desk_widget");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public static boolean s(d dVar, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = null;
        }
        return dVar.r(function0);
    }

    @Override
    public void e(DownloadBean bean, String str) {
        Intrinsics.h(bean, "bean");
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (Intrinsics.c(activityB != null ? activityB.getLocalClassName() : null, "com.transsion.subroom.activity.MainActivity")) {
            s(this, null, 1, null);
        }
    }

    public final boolean i(Function0 function0) {
        long j10 = k().getLong("desk_widget_guide_show_first", 0L);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("firstStartShow :");
        sb2.append(j10);
        if (j10 == 0) {
            return r(function0);
        }
        if (com.transsion.baselib.report.launch.b.f42221a.b().getInt("k_open_day_count", 0) >= 3) {
            return r(function0);
        }
        return false;
    }

    public final com.transsion.mbwidget.guide.a j() {
        return f44874c;
    }

    public final MMKV k() {
        return (MMKV) f44873b.getValue();
    }

    public final boolean m() {
        int[] appWidgetIds = AppWidgetManager.getInstance(GslbSdk.context).getAppWidgetIds(new ComponentName(GslbSdk.context, (Class<?>) HotSubjectWidgetProvider.class));
        if (appWidgetIds != null) {
            return !(appWidgetIds.length == 0);
        }
        return false;
    }

    public final boolean n() {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.g(MANUFACTURER, "MANUFACTURER");
        String lowerCase = MANUFACTURER.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return StringsKt.H(lowerCase, "xiaomi", true);
    }

    public final boolean o() {
        Object systemService = Utils.a().getSystemService("appwidget");
        AppWidgetManager appWidgetManager = systemService instanceof AppWidgetManager ? (AppWidgetManager) systemService : null;
        if (appWidgetManager == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return appWidgetManager.isRequestPinAppWidgetSupported();
        }
        return true;
    }

    public final void q(com.transsion.mbwidget.guide.a aVar) {
        f44874c = aVar;
    }

    public final boolean r(Function0 function0) {
        return false;
    }
}
