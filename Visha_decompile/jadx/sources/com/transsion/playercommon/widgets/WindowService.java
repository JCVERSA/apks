package com.transsion.playercommon.widgets;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

public class WindowService extends Service {
    public a b = new a();

    public class a extends Binder {
        public a() {
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.b;
    }

    @Override
    public void onCreate() {
        super.onCreate();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }

    @Override
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
