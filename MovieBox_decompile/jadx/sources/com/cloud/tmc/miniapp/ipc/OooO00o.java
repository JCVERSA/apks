package com.cloud.tmc.miniapp.ipc;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.miniapp.ipc.multiprogress.IpcMiniProcessClientService;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

public class OooO00o extends Service {
    public static final C0308OooO00o OooO00o = new C0308OooO00o();

    public static final class C0308OooO00o {
        @JvmStatic
        public final void OooO00o(Context context) {
            Intrinsics.h(context, "context");
            TmcLogger.d("Tmcintegration:IpcMiniClientService", "startService: " + Log.getStackTraceString(new Throwable("Just print")));
            try {
                Intent intent = new Intent(context, (Class<?>) IpcMiniProcessClientService.class);
                AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
                context.startService(intent);
            } catch (Throwable th2) {
                TmcLogger.e("Tmcintegration:IpcMiniClientService", "Exception startService", th2);
            }
        }
    }

    public String OooO00o() {
        return "Tmcintegration:IpcMiniClientService";
    }

    @Override
    public IBinder onBind(Intent intent) {
        TmcLogger.d(OooO00o(), "onBind");
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        TmcLogger.d(OooO00o(), "onCreate, processName: " + ProcessUtils.getProcessName());
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        TmcLogger.d(OooO00o(), "onDestroy");
    }

    @Override
    public void onLowMemory() {
        super.onLowMemory();
        TmcLogger.d(OooO00o(), "onLowMemory");
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        TmcLogger.d(OooO00o(), "onStartCommand");
        return 2;
    }

    @Override
    public void onTrimMemory(int i10) {
        super.onTrimMemory(i10);
        TmcLogger.d(OooO00o(), "onTrimMemory: " + i10);
    }

    @Override
    public boolean onUnbind(Intent intent) {
        TmcLogger.d(OooO00o(), "onUnbind");
        return super.onUnbind(intent);
    }
}
