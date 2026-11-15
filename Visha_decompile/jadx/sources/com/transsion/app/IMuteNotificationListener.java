package com.transsion.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface IMuteNotificationListener extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.app.IMuteNotificationListener";

    public static class Default implements IMuteNotificationListener {
        public Default() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public IBinder asBinder() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void onNotifyMute(List<Ranking> list) throws RemoteException {
            throw new RuntimeException("Stub!");
        }
    }

    public static abstract class Stub extends Binder implements IMuteNotificationListener {
        public Stub() {
            throw new RuntimeException("Stub!");
        }

        public static IMuteNotificationListener asInterface(IBinder iBinder) {
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

    void onNotifyMute(List<Ranking> list) throws RemoteException;
}
