package com.transsion.hubsdk.aosp.bluetooth;

import android.bluetooth.BluetoothDevice;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.bluetooth.ITranBluetoothDeviceAdapter;
import java.lang.reflect.Method;

public class TranAospBluetoothDevice implements ITranBluetoothDeviceAdapter {
    @Override
    public boolean cancelBondProcess(BluetoothDevice bluetoothDevice) {
        Method method = TranDoorMan.getMethod(bluetoothDevice.getClass(), "cancelBondProcess", new Class[0]);
        if (method == null) {
            return false;
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(method, bluetoothDevice, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean createBond(BluetoothDevice bluetoothDevice) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(bluetoothDevice.getClass(), "createBond", new Class[0]), bluetoothDevice, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public int getBatteryLevel(BluetoothDevice bluetoothDevice) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(bluetoothDevice.getClass(), "getBatteryLevel", new Class[0]), bluetoothDevice, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(bluetoothDevice.getClass(), "isConnected", new Class[0]), bluetoothDevice, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean removeBond(BluetoothDevice bluetoothDevice) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(bluetoothDevice.getClass(), "removeBond", new Class[0]), bluetoothDevice, new Object[0]);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public boolean createBond(BluetoothDevice bluetoothDevice, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(bluetoothDevice.getClass(), "createBond", Integer.TYPE), bluetoothDevice, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }
}
