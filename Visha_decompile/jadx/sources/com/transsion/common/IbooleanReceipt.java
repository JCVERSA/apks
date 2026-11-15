package com.transsion.common;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IbooleanReceipt extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.common.IbooleanReceipt";

    public static class Default implements IbooleanReceipt {
        public Default() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public IBinder asBinder() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void receipt(boolean z) throws RemoteException {
            throw new RuntimeException("Stub!");
        }
    }

    public static abstract class Stub extends Binder implements IbooleanReceipt {
        public Stub() {
            throw new RuntimeException("Stub!");
        }

        public static IbooleanReceipt asInterface(IBinder iBinder) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public IBinder asBinder() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            throw new RuntimeException("Stub!");
        }
    }

    void receipt(boolean z) throws RemoteException;
}
