package com.transsion.hubsdk.core.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.bluetooth.TranBluetoothA2dp;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.bluetooth.ITranBluetoothA2dpAdapter;

public class TranThubBluetoothA2dp implements ITranBluetoothA2dpAdapter {
    private static final String TAG = "TranThubBluetoothA2dp";
    private TranBluetoothA2dp mService = new TranBluetoothA2dp();

    @Override
    public boolean connect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        TranBluetoothA2dp tranBluetoothA2dp = this.mService;
        if (tranBluetoothA2dp == null) {
            return false;
        }
        try {
            return tranBluetoothA2dp.connect(bluetoothA2dp, bluetoothDevice);
        } catch (RuntimeException e) {
            TranSdkLog.e(TAG, "connect fail " + e);
            return false;
        }
    }

    @Override
    public BluetoothDevice getActiveDevice(BluetoothA2dp bluetoothA2dp) {
        TranBluetoothA2dp tranBluetoothA2dp = this.mService;
        if (tranBluetoothA2dp == null) {
            return null;
        }
        try {
            return tranBluetoothA2dp.getActiveDevice(bluetoothA2dp);
        } catch (RuntimeException e) {
            TranSdkLog.e(TAG, "getActiveDevice fail " + e);
            return null;
        }
    }

    @Override
    public int getConnectionStateFromAdapter(BluetoothAdapter bluetoothAdapter) {
        return new TranBluetoothA2dp().getConnectionStateFromAdapter(bluetoothAdapter);
    }

    @Override
    public Object setScanMode(BluetoothAdapter bluetoothAdapter, int i) {
        TranBluetoothA2dp tranBluetoothA2dp = this.mService;
        if (tranBluetoothA2dp != null) {
            try {
                return Integer.valueOf(tranBluetoothA2dp.setScanMode(bluetoothAdapter, i));
            } catch (RuntimeException e) {
                TranSdkLog.e(TAG, "setScanMode fail " + e);
            }
        }
        return -1;
    }

    @VisibleForTesting
    public void setService(TranBluetoothA2dp tranBluetoothA2dp) {
        this.mService = tranBluetoothA2dp;
    }
}
