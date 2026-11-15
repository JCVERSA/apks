package com.transsion.hubsdk.interfaces.bluetooth;

import android.bluetooth.BluetoothDevice;

public interface ITranBluetoothDeviceAdapter {
    boolean cancelBondProcess(BluetoothDevice bluetoothDevice);

    boolean createBond(BluetoothDevice bluetoothDevice);

    boolean createBond(BluetoothDevice bluetoothDevice, int i);

    int getBatteryLevel(BluetoothDevice bluetoothDevice);

    boolean isConnected(BluetoothDevice bluetoothDevice);

    boolean removeBond(BluetoothDevice bluetoothDevice);
}
