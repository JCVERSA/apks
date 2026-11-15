package com.transsion.content;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IParticularFeatureManager extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.content.IParticularFeatureManager";

    public static class Default implements IParticularFeatureManager {
        public Default() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public IBinder asBinder() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public IBinder getFeature(String str, String str2) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean hasFeature(String str, String str2) throws RemoteException {
            throw new RuntimeException("Stub!");
        }
    }

    public static abstract class Stub extends Binder implements IParticularFeatureManager {
        public Stub() {
            throw new RuntimeException("Stub!");
        }

        public static IParticularFeatureManager asInterface(IBinder iBinder) {
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

    IBinder getFeature(String str, String str2) throws RemoteException;

    boolean hasFeature(String str, String str2) throws RemoteException;
}
