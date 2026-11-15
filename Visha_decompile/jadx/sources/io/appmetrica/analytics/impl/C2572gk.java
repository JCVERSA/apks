package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import io.appmetrica.analytics.internal.AppMetricaService;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock;
import java.util.HashMap;

public final class C2572gk implements ServiceWakeLock {
    public final Context a;
    public final C2547fk b;
    public final HashMap c = new HashMap();

    public C2572gk(Context context, C2547fk c2547fk) {
        this.a = context;
        this.b = c2547fk;
    }

    public final String a(String str) {
        return "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK." + str;
    }

    @Override
    public final synchronized boolean acquireWakeLock(String str) {
        try {
            if (this.c.get(str) == null) {
                HashMap map = this.c;
                C2547fk c2547fk = this.b;
                Context context = this.a;
                String strA = a(str);
                c2547fk.a.getClass();
                Intent intent = new Intent(context, (Class<?>) AppMetricaService.class);
                intent.setAction(strA);
                ServiceConnectionC2522ek serviceConnectionC2522ek = new ServiceConnectionC2522ek();
                try {
                    context.bindService(intent, serviceConnectionC2522ek, 1);
                } catch (Throwable unused) {
                    serviceConnectionC2522ek = null;
                }
                map.put(str, serviceConnectionC2522ek);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c.get(str) != null;
    }

    @Override
    public final synchronized void releaseWakeLock(String str) {
        ServiceConnection serviceConnection = (ServiceConnection) this.c.get(str);
        if (serviceConnection != null) {
            C2547fk c2547fk = this.b;
            a(str);
            Context context = this.a;
            c2547fk.getClass();
            try {
                context.unbindService(serviceConnection);
            } catch (Throwable unused) {
            }
        }
    }
}
