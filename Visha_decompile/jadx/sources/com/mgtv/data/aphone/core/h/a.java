package com.mgtv.data.aphone.core.h;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import com.mgtv.data.aphone.core.j.c;

public class a extends Service {
    private static final String a = "a";
    private com.mgtv.data.aphone.core.g.a b;

    private void a() {
        c.b("big_data_sdk", "注册监听器 regeisterReceiver() 方法 ");
        b();
        this.b = new com.mgtv.data.aphone.core.g.a();
        registerReceiver(this.b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    private void b() {
        c.b("big_data_sdk", "反注册 unregeisterReceiver() 方法体 " + this.b);
        com.mgtv.data.aphone.core.g.a aVar = this.b;
        if (aVar != null) {
            unregisterReceiver(aVar);
            this.b = null;
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        c.b("big_data_sdk", " DataReporterService  onCreate()");
        a();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        c.c("big_data_sdk", "############## DataReporterService onDestroy() ");
        b();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        return 2;
    }
}
