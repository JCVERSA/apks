package com.cloud.tmc.miniapp.ipc;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.cloud.tmc.kernel.log.TmcLogger;

public final class IpcMiniPSService extends Service {
    @Override
    public IBinder onBind(Intent intent) {
        TmcLogger.d(":IpcTaskManagerService", "onBind");
        return new com.cloud.tmc.miniapp.ipc.binderimpl.OooO0O0();
    }

    @Override
    public void onCreate() {
        super.onCreate();
        TmcLogger.d(":IpcTaskManagerService", "onCreate");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        TmcLogger.d(":IpcTaskManagerService", "onDestroy");
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        TmcLogger.d(":IpcTaskManagerService", "onStartCommand");
        return super.onStartCommand(intent, i10, i11);
    }

    @Override
    public boolean onUnbind(Intent intent) {
        TmcLogger.d(":IpcTaskManagerService", "onUnbind");
        return super.onUnbind(intent);
    }
}
