package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import java.util.Objects;

public final class f implements ServiceConnection {
    public final int b;
    public final a c;

    public f(a aVar, int i) {
        Objects.requireNonNull(aVar);
        this.c = aVar;
        this.b = i;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.c.x(16);
            return;
        }
        a aVar = this.c;
        synchronized (aVar.z()) {
            try {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                aVar.A((iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGmsServiceBroker)) ? new zzaa(iBinder) : (IGmsServiceBroker) iInterfaceQueryLocalInterface);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.c.t(0, null, this.b);
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        a aVar = this.c;
        synchronized (aVar.z()) {
            aVar.A(null);
        }
        a aVar2 = this.c;
        int i = this.b;
        Handler handler = aVar2.m;
        handler.sendMessage(handler.obtainMessage(6, i, 1));
    }
}
