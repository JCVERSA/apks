package com.transsion.hubsdk.core.bluetooth;

import android.bluetooth.BluetoothDevice;
import com.transsion.hubsdk.bluetooth.TranBluetoothDevice;
import com.transsion.hubsdk.interfaces.bluetooth.ITranBluetoothDeviceAdapter;

public class TranThubBluetoothDevice implements ITranBluetoothDeviceAdapter {
    private static final String TAG = "TranThubBluetoothDevice";
    private TranBluetoothDevice mTranBluetoothDevice = new TranBluetoothDevice();

    @Override
    public boolean cancelBondProcess(BluetoothDevice bluetoothDevice) {
        return this.mTranBluetoothDevice.cancelBondProcess(bluetoothDevice);
    }

    @Override
    public boolean createBond(BluetoothDevice bluetoothDevice) {
        return this.mTranBluetoothDevice.createBond(bluetoothDevice);
    }

    @Override
    public int getBatteryLevel(BluetoothDevice bluetoothDevice) {
        return this.mTranBluetoothDevice.getBatteryLevel(bluetoothDevice);
    }

    @Override
    public boolean isConnected(BluetoothDevice bluetoothDevice) {
        return this.mTranBluetoothDevice.isConnected(bluetoothDevice);
    }

    @Override
    public boolean removeBond(BluetoothDevice bluetoothDevice) {
        return this.mTranBluetoothDevice.removeBond(bluetoothDevice);
    }

    @Override
    public boolean createBond(BluetoothDevice bluetoothDevice, int i) {
        return this.mTranBluetoothDevice.createBond(bluetoothDevice, i);
    }
}
