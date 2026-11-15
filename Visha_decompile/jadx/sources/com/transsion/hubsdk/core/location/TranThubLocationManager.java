package com.transsion.hubsdk.core.location;

import android.os.RemoteException;
import android.os.UserHandle;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.location.ITranLocationManagerAdapter;
import com.transsion.hubsdk.location.ITranLocationManager;

public class TranThubLocationManager implements ITranLocationManagerAdapter {
    private static final String TAG = "TranThubLocationManager";
    private ITranLocationManager mService = ITranLocationManager.Stub.asInterface(TranServiceManager.getServiceIBinder("location"));

    public Object lambda$setLocationEnabledForUser$0(boolean z, UserHandle userHandle) throws RemoteException {
        ITranLocationManager iTranLocationManager = this.mService;
        if (iTranLocationManager == null) {
            return null;
        }
        iTranLocationManager.setLocationEnabledForUser(z, userHandle);
        return null;
    }

    @Override
    public void setLocationEnabledForUser(final boolean z, final UserHandle userHandle) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setLocationEnabledForUser$0(z, userHandle);
            }
        }, "location");
        TranSdkLog.d(TAG, "setLocationEnabledForUser sucess");
    }

    @VisibleForTesting
    public void setService(ITranLocationManager iTranLocationManager) {
        this.mService = iTranLocationManager;
    }
}
