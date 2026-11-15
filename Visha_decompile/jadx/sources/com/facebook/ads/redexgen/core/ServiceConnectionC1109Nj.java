package com.facebook.ads.redexgen.core;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;

public class ServiceConnectionC1109Nj implements ServiceConnection {
    public final HandlerC1110Nk A00;

    public ServiceConnectionC1109Nj(HandlerC1110Nk handlerC1110Nk) {
        this.A00 = handlerC1110Nk;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.A00.A04.removeCallbacks(this.A00.A08);
        this.A00.A00 = new Messenger(iBinder);
        if (!UA.A09(this.A00.A07)) {
            return;
        }
        this.A00.A07(this.A00.A00);
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        this.A00.A09();
    }
}
