package ru.zdevs.zarchiver.service;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import n0.d;

public class ZArchiverClearTemp extends Service {
    @Override
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public final int onStartCommand(Intent intent, int i2, int i3) {
        d.b(false);
        if (Build.VERSION.SDK_INT >= 21) {
            q0.a.a(this);
        }
        stopSelf(i3);
        return 2;
    }
}
