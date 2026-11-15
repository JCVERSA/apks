package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import defpackage.m02;
import defpackage.wd8;
import defpackage.xda;
import defpackage.ye;
import defpackage.zda;
import defpackage.ze;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class a implements ye {
    public static ye e;
    public final Context a;
    public boolean b;
    public final ScheduledExecutorService c;
    public final ExecutorService d;

    public a(Context context) {
        this.b = false;
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.c = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.d = Executors.newSingleThreadExecutor();
        this.a = context;
        if (this.b) {
            return;
        }
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new zzj(this, null), 0L, 86400L, TimeUnit.SECONDS);
        this.b = true;
    }

    public static synchronized ye d(Context context) {
        try {
            wd8.m(context, "Context must not be null");
            if (e == null) {
                e = new a(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return e;
    }

    public static final void f(Context context) {
        if (!g(context).edit().remove(CommonUrlParts.APP_SET_ID).commit()) {
            String strValueOf = String.valueOf(context.getPackageName());
            Log.e("AppSet", strValueOf.length() != 0 ? "Failed to clear app set ID generated for App ".concat(strValueOf) : new String("Failed to clear app set ID generated for App "));
        }
        if (g(context).edit().remove("app_set_id_last_used_time").commit()) {
            return;
        }
        String strValueOf2 = String.valueOf(context.getPackageName());
        Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to clear app set ID last used time for App ".concat(strValueOf2) : new String("Failed to clear app set ID last used time for App "));
    }

    public static final SharedPreferences g(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    public static final void h(Context context) throws zzk {
        if (g(context).edit().putLong("app_set_id_last_used_time", m02.a().currentTimeMillis()).commit()) {
            return;
        }
        String strValueOf = String.valueOf(context.getPackageName());
        Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID last used time for App ".concat(strValueOf) : new String("Failed to store app set ID last used time for App "));
        throw new zzk("Failed to store the app set ID last used time.");
    }

    @Override
    public final xda a() {
        final zda zdaVar = new zda();
        this.d.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.e(zdaVar);
            }
        });
        return zdaVar.a();
    }

    public final long b() {
        long j = g(this.a).getLong("app_set_id_last_used_time", -1L);
        if (j != -1) {
            return j + 33696000000L;
        }
        return -1L;
    }

    public final void e(zda zdaVar) {
        String string = g(this.a).getString(CommonUrlParts.APP_SET_ID, null);
        long jB = b();
        if (string == null || m02.a().currentTimeMillis() > jB) {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.a;
                if (!g(context).edit().putString(CommonUrlParts.APP_SET_ID, string).commit()) {
                    String strValueOf = String.valueOf(context.getPackageName());
                    Log.e("AppSet", strValueOf.length() != 0 ? "Failed to store app set ID generated for App ".concat(strValueOf) : new String("Failed to store app set ID generated for App "));
                    throw new zzk("Failed to store the app set ID.");
                }
                h(context);
                Context context2 = this.a;
                if (!g(context2).edit().putLong("app_set_id_creation_time", m02.a().currentTimeMillis()).commit()) {
                    String strValueOf2 = String.valueOf(context2.getPackageName());
                    Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to store app set ID creation time for App ".concat(strValueOf2) : new String("Failed to store app set ID creation time for App "));
                    throw new zzk("Failed to store the app set ID creation time.");
                }
            } catch (zzk e2) {
                zdaVar.b(e2);
                return;
            }
        } else {
            try {
                h(this.a);
            } catch (zzk e3) {
                zdaVar.b(e3);
                return;
            }
        }
        zdaVar.c(new ze(string, 1));
    }
}
