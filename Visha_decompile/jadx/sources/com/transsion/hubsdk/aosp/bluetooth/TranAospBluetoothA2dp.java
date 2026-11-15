package com.transsion.hubsdk.aosp.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.bluetooth.ITranBluetoothA2dpAdapter;

public class TranAospBluetoothA2dp implements ITranBluetoothA2dpAdapter {
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.BluetoothA2dp");

    @Override
    public boolean connect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "connect", new Class[0]), bluetoothA2dp, bluetoothDevice);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public BluetoothDevice getActiveDevice(BluetoothA2dp bluetoothA2dp) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getActiveDevice", new Class[0]), bluetoothA2dp, new Object[0]);
        if (objInvokeMethod instanceof BluetoothDevice) {
            return (BluetoothDevice) objInvokeMethod;
        }
        return null;
    }

    @Override
    public int getConnectionStateFromAdapter(BluetoothAdapter bluetoothAdapter) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(bluetoothAdapter.getClass(), "getConnectionState", new Class[0]), bluetoothAdapter, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public Object setScanMode(BluetoothAdapter bluetoothAdapter, int i) {
        return TranDoorMan.invokeMethod(TranDoorMan.getMethod(bluetoothAdapter.getClass(), "setScanMode", Integer.TYPE), bluetoothAdapter, Integer.valueOf(i));
    }
}
