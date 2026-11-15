package com.transsion.hubsdk.aosp.hardware.devicestate;

import android.content.Context;
import android.hardware.devicestate.DeviceState;
import android.hardware.devicestate.DeviceStateManager;
import java.util.concurrent.Executor;

public class TranAospDeviceStateManagerExt {
    private static final String TAG = "TranAospDeviceStateManagerExt";
    private ITranDeviceStateCallback mCallback;
    private Context mContext;

    @Deprecated
    private final DeviceStateManager.DeviceStateCallback mDeviceStateCallback = new DeviceStateManager.DeviceStateCallback() {
        public void onDeviceStateChanged(DeviceState deviceState) {
            if (TranAospDeviceStateManagerExt.this.mCallback != null) {
                TranAospDeviceStateManagerExt.this.mCallback.onStateChanged(deviceState.getIdentifier());
            }
        }
    };
    private DeviceStateManager mDeviceStateManager;

    @Deprecated
    public interface ITranDeviceStateCallback {
        void onBaseStateChanged(int i);

        void onStateChanged(int i);

        void onSupportedStatesChanged(int[] iArr);
    }

    public TranAospDeviceStateManagerExt(Context context) {
        this.mContext = context;
        this.mDeviceStateManager = (DeviceStateManager) context.getSystemService(DeviceStateManager.class);
    }

    @Deprecated
    public void registerCallback(Executor executor, ITranDeviceStateCallback iTranDeviceStateCallback) {
        this.mCallback = iTranDeviceStateCallback;
        this.mDeviceStateManager.registerCallback(executor, this.mDeviceStateCallback);
    }

    @Deprecated
    public void unregisterCallback(ITranDeviceStateCallback iTranDeviceStateCallback) {
        if (iTranDeviceStateCallback != null) {
            this.mDeviceStateManager.unregisterCallback(this.mDeviceStateCallback);
        }
    }
}
