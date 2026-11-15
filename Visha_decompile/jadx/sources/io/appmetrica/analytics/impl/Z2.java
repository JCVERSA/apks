package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.Iterator;

public final class Z2 implements Vj {
    public final ArrayList a;
    public Intent b;
    public final Context c;
    public final R5 d;

    public Z2(@NonNull Context context, @NonNull ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, 0);
    }

    @Nullable
    public final synchronized Intent a(@NonNull Consumer<Intent> consumer) {
        this.a.add(consumer);
        return this.b;
    }

    public final void b() {
        this.b = null;
        R5 r5 = this.d;
        Context context = this.c;
        synchronized (r5) {
            if (r5.b) {
                try {
                    context.unregisterReceiver(r5.a);
                    r5.b = false;
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override
    public final synchronized void onCreate() {
        Intent intentA = a();
        this.b = intentA;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(intentA);
        }
    }

    @Override
    public final synchronized void onDestroy() {
        this.b = null;
        b();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(null);
        }
    }

    public Z2(Context context, ICommonExecutor iCommonExecutor, int i) {
        this.a = new ArrayList();
        this.b = null;
        this.c = context;
        this.d = Q5.a(new D2(new Y2(this), iCommonExecutor));
    }

    public final Intent a() {
        Intent intentRegisterReceiver;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        R5 r5 = this.d;
        Context context = this.c;
        synchronized (r5) {
            try {
                intentRegisterReceiver = context.registerReceiver(r5.a, intentFilter);
                try {
                    r5.b = true;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                intentRegisterReceiver = null;
            }
        }
        return intentRegisterReceiver;
    }
}
