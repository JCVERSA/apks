package com.transsion.hubsdk.api.bluetooth;

import android.bluetooth.BluetoothDevice;
import com.transsion.hubsdk.aosp.bluetooth.TranAospBluetoothDevice;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.bluetooth.TranThubBluetoothDevice;
import com.transsion.hubsdk.interfaces.bluetooth.ITranBluetoothDeviceAdapter;

public class TranBluetoothDeviceManager {
    private static final String TAG = "TranBluetoothDeviceManager";
    private TranAospBluetoothDevice mAospService;
    private TranThubBluetoothDevice mThubService;

    public boolean cancelBondProcess(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice != null) {
            return getService(TranVersion.Core.VERSION_33281).cancelBondProcess(bluetoothDevice);
        }
        throw new NullPointerException("device cannot be null");
    }

    public boolean createBond(BluetoothDevice bluetoothDevice) {
        return getService(TranVersion.Core.VERSION_33161).createBond(bluetoothDevice);
    }

    public int getBatteryLevel(BluetoothDevice bluetoothDevice) {
        return getService(TranVersion.Core.VERSION_33161).getBatteryLevel(bluetoothDevice);
    }

    public ITranBluetoothDeviceAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubBluetoothDevice");
            TranThubBluetoothDevice tranThubBluetoothDevice = this.mThubService;
            if (tranThubBluetoothDevice != null) {
                return tranThubBluetoothDevice;
            }
            TranThubBluetoothDevice tranThubBluetoothDevice2 = new TranThubBluetoothDevice();
            this.mThubService = tranThubBluetoothDevice2;
            return tranThubBluetoothDevice2;
        }
        TranSdkLog.i(TAG, "TranAospBluetoothDevice");
        TranAospBluetoothDevice tranAospBluetoothDevice = this.mAospService;
        if (tranAospBluetoothDevice != null) {
            return tranAospBluetoothDevice;
        }
        TranAospBluetoothDevice tranAospBluetoothDevice2 = new TranAospBluetoothDevice();
        this.mAospService = tranAospBluetoothDevice2;
        return tranAospBluetoothDevice2;
    }

    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        return getService(TranVersion.Core.VERSION_33141).isConnected(bluetoothDevice);
    }

    @TranLevel(level = 1)
    public boolean removeBond(BluetoothDevice bluetoothDevice) {
        return getService(TranVersion.Core.VERSION_33161).removeBond(bluetoothDevice);
    }

    public boolean createBond(BluetoothDevice bluetoothDevice, int i) {
        return getService(TranVersion.Core.VERSION_33171).createBond(bluetoothDevice, i);
    }
}
