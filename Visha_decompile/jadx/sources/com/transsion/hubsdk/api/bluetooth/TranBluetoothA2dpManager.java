package com.transsion.hubsdk.api.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import com.transsion.hubsdk.aosp.bluetooth.TranAospBluetoothA2dp;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.bluetooth.TranThubBluetoothA2dp;
import com.transsion.hubsdk.interfaces.bluetooth.ITranBluetoothA2dpAdapter;

public class TranBluetoothA2dpManager {
    private static final String TAG = "TranBluetoothA2dpManager";
    private TranAospBluetoothA2dp mAospService;
    private TranThubBluetoothA2dp mThubService;

    @TranLevel(level = 1)
    public boolean connect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        if (bluetoothA2dp == null || bluetoothDevice == null) {
            throw new IllegalArgumentException("parameter must not be null.");
        }
        return getService(TranVersion.Core.VERSION_33161).connect(bluetoothA2dp, bluetoothDevice);
    }

    @TranLevel(level = 1)
    public BluetoothDevice getActiveDevice(BluetoothA2dp bluetoothA2dp) {
        return getService(TranVersion.Core.VERSION_33161).getActiveDevice(bluetoothA2dp);
    }

    public int getConnectionStateFromAdapter(BluetoothAdapter bluetoothAdapter) {
        return getService(TranVersion.Core.VERSION_33161).getConnectionStateFromAdapter(bluetoothAdapter);
    }

    public ITranBluetoothA2dpAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubBluetoothA2dp");
            TranThubBluetoothA2dp tranThubBluetoothA2dp = this.mThubService;
            if (tranThubBluetoothA2dp != null) {
                return tranThubBluetoothA2dp;
            }
            TranThubBluetoothA2dp tranThubBluetoothA2dp2 = new TranThubBluetoothA2dp();
            this.mThubService = tranThubBluetoothA2dp2;
            return tranThubBluetoothA2dp2;
        }
        TranSdkLog.i(TAG, "TranAospBluetoothA2dp");
        TranAospBluetoothA2dp tranAospBluetoothA2dp = this.mAospService;
        if (tranAospBluetoothA2dp != null) {
            return tranAospBluetoothA2dp;
        }
        TranAospBluetoothA2dp tranAospBluetoothA2dp2 = new TranAospBluetoothA2dp();
        this.mAospService = tranAospBluetoothA2dp2;
        return tranAospBluetoothA2dp2;
    }

    @TranLevel(level = 1)
    public Object setScanMode(BluetoothAdapter bluetoothAdapter, int i) {
        return getService(TranVersion.Core.VERSION_33181).setScanMode(bluetoothAdapter, i);
    }
}
