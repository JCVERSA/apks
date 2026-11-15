package com.transsion.startup.work;

import android.content.Context;
import android.os.Build;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.WorkManager;
import androidx.work.m;
import cm.f;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class a {

    public static final a f52534a = new a();

    private a() {
    }

    public final void a(Context context) {
        String value;
        Boolean boolM1;
        Intrinsics.h(context, "context");
        boolean zBooleanValue = false;
        ConfigBean configBeanD = f.d(f.f17019c.a(), "key_report_request_off", false, 2, null);
        if (configBeanD != null && (value = configBeanD.getValue()) != null && (boolM1 = StringsKt.m1(value)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        if (zBooleanValue) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (Build.VERSION.SDK_INT >= 24) {
                context = context.createDeviceProtectedStorageContext();
            }
            androidx.work.b bVarA = new androidx.work.b.a().b(NetworkType.CONNECTED).a();
            TimeUnit timeUnit = TimeUnit.HOURS;
            Result.m453constructorimpl(WorkManager.f(context).e("NetworkDataSourceWorker", ExistingPeriodicWorkPolicy.REPLACE, (m) ((m.a) ((m.a) ((m.a) new m.a(NetworkDataSourceWorker.class, 1L, timeUnit).i(bVarA)).a("NetworkDataSourceWorker")).k(1L, timeUnit)).b()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
