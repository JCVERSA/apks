package com.monetization.ads.core.identifiers.ad.huawei;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.yandex.mobile.ads.impl.sp0;
import defpackage.y45;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class a implements ServiceConnection {
    private final LinkedBlockingQueue a = new LinkedBlockingQueue();

    public final OpenDeviceIdentifierService a() throws InterruptedException {
        return (OpenDeviceIdentifierService) this.a.poll(5L, TimeUnit.SECONDS);
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IInterface proxy;
        y45.j(componentName, "componentName");
        y45.j(iBinder, "binder");
        try {
            int i = OpenDeviceIdentifierService.Stub.a;
            if (iBinder == null) {
                proxy = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                proxy = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof OpenDeviceIdentifierService)) ? new OpenDeviceIdentifierService.Stub.Proxy(iBinder) : (OpenDeviceIdentifierService) iInterfaceQueryLocalInterface;
            }
            this.a.put(proxy);
        } catch (Exception unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        y45.j(componentName, "componentName");
        try {
            this.a.clear();
        } catch (UnsupportedOperationException unused) {
            sp0.c(new Object[0]);
        }
    }
}
