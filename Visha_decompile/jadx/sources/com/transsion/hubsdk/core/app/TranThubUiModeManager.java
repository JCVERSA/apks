package com.transsion.hubsdk.core.app;

import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.app.ITranUiModeManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranUiModeManagerAdapter;

public class TranThubUiModeManager implements ITranUiModeManagerAdapter {
    private static final String TAG = "TranThubUiModeManager";
    private ITranUiModeManager mService = ITranUiModeManager.Stub.asInterface(TranServiceManager.getServiceIBinder("uimode"));

    public Object lambda$setNightModeActivated$0(boolean z) throws RemoteException {
        ITranUiModeManager iTranUiModeManager = this.mService;
        return iTranUiModeManager != null ? Boolean.valueOf(iTranUiModeManager.setNightModeActivated(z)) : Boolean.FALSE;
    }

    @Override
    public boolean setNightModeActivated(final boolean z) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setNightModeActivated$0(z);
            }
        }, "uimode")).booleanValue();
        TranSdkLog.i(TAG, "setNightModeActivated result:" + zBooleanValue);
        return zBooleanValue;
    }

    @VisibleForTesting
    public void setService(ITranUiModeManager iTranUiModeManager) {
        this.mService = iTranUiModeManager;
    }
}
