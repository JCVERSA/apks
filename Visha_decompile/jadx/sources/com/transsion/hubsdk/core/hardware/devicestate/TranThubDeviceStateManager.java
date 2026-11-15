package com.transsion.hubsdk.core.hardware.devicestate;

import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.aosp.hardware.devicestate.TranAospDeviceStateManagerExt;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.hardware.devicestate.ITranDeviceStateManager;
import com.transsion.hubsdk.interfaces.hardware.devicestate.ITranDeviceStateManagerAdapter;
import java.util.concurrent.Executor;

public class TranThubDeviceStateManager implements ITranDeviceStateManagerAdapter {
    private static final String TAG = "TranThubDeviceStateManager";
    private ITranDeviceStateManager mService = ITranDeviceStateManager.Stub.asInterface(TranServiceManager.getServiceIBinder("device_state"));

    public Object lambda$getCurrentState$0() throws RemoteException {
        ITranDeviceStateManager iTranDeviceStateManager = this.mService;
        if (iTranDeviceStateManager != null) {
            return Integer.valueOf(iTranDeviceStateManager.getCurrentState());
        }
        return 0;
    }

    @Override
    public int getCurrentState() {
        return ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getCurrentState$0();
            }
        }, "device_state")).intValue();
    }

    @Override
    public void registerCallback(Executor executor, TranAospDeviceStateManagerExt.ITranDeviceStateCallback iTranDeviceStateCallback) {
    }

    @VisibleForTesting
    public void setService(ITranDeviceStateManager iTranDeviceStateManager) {
        this.mService = iTranDeviceStateManager;
    }

    @Override
    public void unregisterCallback(TranAospDeviceStateManagerExt.ITranDeviceStateCallback iTranDeviceStateCallback) {
    }
}
