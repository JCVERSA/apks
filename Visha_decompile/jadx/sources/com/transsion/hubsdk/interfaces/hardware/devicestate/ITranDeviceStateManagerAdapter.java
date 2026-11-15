package com.transsion.hubsdk.interfaces.hardware.devicestate;

import com.transsion.hubsdk.aosp.hardware.devicestate.TranAospDeviceStateManagerExt;
import java.util.concurrent.Executor;

public interface ITranDeviceStateManagerAdapter {
    int getCurrentState();

    void registerCallback(Executor executor, TranAospDeviceStateManagerExt.ITranDeviceStateCallback iTranDeviceStateCallback);

    void unregisterCallback(TranAospDeviceStateManagerExt.ITranDeviceStateCallback iTranDeviceStateCallback);
}
