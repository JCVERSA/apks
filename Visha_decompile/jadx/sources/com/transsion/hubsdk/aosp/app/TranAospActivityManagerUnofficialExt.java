package com.transsion.hubsdk.aosp.app;

import android.app.ActivityManager;
import android.app.IForegroundServiceObserver;
import android.os.IBinder;
import android.os.RemoteException;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranAospActivityManagerUnofficialExt {
    private static final String TAG = "TranAospActivityManagerExtUnofficial";

    public static class TranAospForegroundServiceObserver extends IForegroundServiceObserver.Stub {
        private TranForegroundServiceObserver mObserver;

        public TranAospForegroundServiceObserver(TranForegroundServiceObserver tranForegroundServiceObserver) {
            this.mObserver = tranForegroundServiceObserver;
        }

        public void onForegroundStateChanged(IBinder iBinder, String str, int i, boolean z) {
            TranForegroundServiceObserver tranForegroundServiceObserver = this.mObserver;
            if (tranForegroundServiceObserver != null) {
                tranForegroundServiceObserver.onForegroundStateChanged(iBinder, str, i, z);
            }
        }
    }

    public interface TranForegroundServiceObserver {
        void onForegroundStateChanged(IBinder iBinder, String str, int i, boolean z);
    }

    public boolean registerForegroundServiceObserver(TranForegroundServiceObserver tranForegroundServiceObserver) {
        try {
            return ActivityManager.getService().registerForegroundServiceObserver(new TranAospForegroundServiceObserver(tranForegroundServiceObserver));
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerForegroundServiceObserver: ", e);
            return false;
        }
    }
}
