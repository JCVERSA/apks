package com.transsion.hubsdk.core.app;

import android.os.IBinder;
import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.app.TranActivityManagerUnofficial;
import com.transsion.hubsdk.app.ITranActivityManager;
import com.transsion.hubsdk.app.ITranForegroundServiceObserver;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityManagerUnofficialAdapter;

public class TranThubActivityManagerUnofficial implements ITranActivityManagerUnofficialAdapter {
    private static final String TAG = TranThubActivityManager.class.getSimpleName();
    private ITranActivityManager mService = ITranActivityManager.Stub.asInterface(TranServiceManager.getServiceIBinder("activity"));

    public class TranThubForegroundServiceObserver extends ITranForegroundServiceObserver.Stub {
        private TranActivityManagerUnofficial.TranForegroundServiceObserver mObserver;

        public TranThubForegroundServiceObserver(TranActivityManagerUnofficial.TranForegroundServiceObserver tranForegroundServiceObserver) {
            this.mObserver = tranForegroundServiceObserver;
        }

        public void onForegroundStateChanged(IBinder iBinder, String str, int i, boolean z) throws RemoteException {
            TranActivityManagerUnofficial.TranForegroundServiceObserver tranForegroundServiceObserver = this.mObserver;
            if (tranForegroundServiceObserver != null) {
                tranForegroundServiceObserver.onForegroundStateChanged(iBinder, str, i, z);
            }
        }
    }

    @Override
    public boolean registerForegroundServiceObserver(TranActivityManagerUnofficial.TranForegroundServiceObserver tranForegroundServiceObserver) {
        TranThubForegroundServiceObserver tranThubForegroundServiceObserver = new TranThubForegroundServiceObserver(tranForegroundServiceObserver);
        ITranActivityManager iTranActivityManager = this.mService;
        if (iTranActivityManager == null) {
            return false;
        }
        try {
            return iTranActivityManager.registerForegroundServiceObserver(tranThubForegroundServiceObserver);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "registerForegroundServiceObserver error: " + e);
            return false;
        }
    }
}
