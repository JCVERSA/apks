package com.transsion.dragdrop;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IDragDropManager extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.dragdrop.IDragDropManager";

    public static class Default implements IDragDropManager {
        public Default() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public IBinder asBinder() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public float[] getDragDropLocation() throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public String getDragDropPkg() throws RemoteException {
            throw new RuntimeException("Stub!");
        }
    }

    public static abstract class Stub extends Binder implements IDragDropManager {
        public Stub() {
            throw new RuntimeException("Stub!");
        }

        public static IDragDropManager asInterface(IBinder iBinder) {
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

    float[] getDragDropLocation() throws RemoteException;

    String getDragDropPkg() throws RemoteException;
}
