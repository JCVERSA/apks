package com.transsnet.downloader.core;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;

public class ForegroundService extends Service {

    private static final String f56403a = "ForegroundService";

    static boolean f56404b;

    @Override
    public IBinder onBind(Intent intent) {
        Log.e(f56403a, "onBind");
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.e(f56403a, "onCreate");
    }

    @Override
    public void onDestroy() {
        Log.e(f56403a, "onDestroy");
        f56404b = false;
        stopForeground(true);
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        Log.e(f56403a, "onStartCommand");
        f56404b = true;
        try {
            Toast.makeText(this, intent.getStringExtra("Foreground"), 0).show();
        } catch (Throwable unused) {
        }
        return super.onStartCommand(intent, i10, i11);
    }
}
