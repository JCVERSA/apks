package io.appmetrica.analytics.impl;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import io.appmetrica.analytics.internal.IAppMetricaService;

public final class ServiceConnectionC2577h0 implements ServiceConnection {
    public final C2602i0 a;

    public ServiceConnectionC2577h0(C2602i0 c2602i0) {
        this.a = c2602i0;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.a) {
            this.a.d = IAppMetricaService.Stub.asInterface(iBinder);
            this.a.e.countDown();
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.a) {
            this.a.d = null;
        }
    }
}
