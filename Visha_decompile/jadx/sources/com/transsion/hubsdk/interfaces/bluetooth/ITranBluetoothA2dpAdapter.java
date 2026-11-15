package com.transsion.hubsdk.interfaces.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;

public interface ITranBluetoothA2dpAdapter {
    boolean connect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice);

    BluetoothDevice getActiveDevice(BluetoothA2dp bluetoothA2dp);

    int getConnectionStateFromAdapter(BluetoothAdapter bluetoothAdapter);

    Object setScanMode(BluetoothAdapter bluetoothAdapter, int i);
}
