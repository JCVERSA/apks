package com.transsion.hubsdk.aosp.hardware.devicestate;

import android.content.Context;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.hardware.devicestate.ITranDeviceStateManagerAdapter;
import java.util.concurrent.Executor;

public class TranAospDeviceStateManager implements ITranDeviceStateManagerAdapter {
    private static final String TAG = "TranAospDeviceStateManager";
    private static Class<?> sClassName = TranDoorMan.getClass("android.hardware.devicestate.DeviceStateManagerGlobal");
    private Context mContext = TranHubSdkManager.getContext();
    private TranAospDeviceStateManagerExt mTranAospDeviceStateManagerExt;

    private TranAospDeviceStateManagerExt getTranAospDeviceStateManagerExt() {
        if (this.mTranAospDeviceStateManagerExt == null) {
            this.mTranAospDeviceStateManagerExt = new TranAospDeviceStateManagerExt(this.mContext);
        }
        return this.mTranAospDeviceStateManagerExt;
    }

    @Override
    public int getCurrentState() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getInstance", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null) {
            return 0;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getCurrentState", new Class[0]), objInvokeMethod, new Object[0]);
        if (objInvokeMethod2 instanceof Integer) {
            return ((Integer) objInvokeMethod2).intValue();
        }
        return 0;
    }

    @Override
    @Deprecated
    public void registerCallback(Executor executor, TranAospDeviceStateManagerExt.ITranDeviceStateCallback iTranDeviceStateCallback) {
        getTranAospDeviceStateManagerExt().registerCallback(executor, iTranDeviceStateCallback);
    }

    @Override
    @Deprecated
    public void unregisterCallback(TranAospDeviceStateManagerExt.ITranDeviceStateCallback iTranDeviceStateCallback) {
        getTranAospDeviceStateManagerExt().unregisterCallback(iTranDeviceStateCallback);
    }
}
