package com.transsion.net;

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface INetworkRuleController extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.net.INetworkRuleController";

    public static class Default implements INetworkRuleController {
        public Default() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public IBinder asBinder() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int clearRule(String str, int i) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int[] getRejectList(String str, int i) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean isNotifyEnabled(String str, int i) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void setNotifyTarget(String str, ComponentName componentName) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int setRuleForUids(String str, int i, int i2, int[] iArr) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int setRuleForUidsInSync(String str, int i, int i2, int[] iArr) throws RemoteException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void toggleNotifyState(String str, int i, boolean z) throws RemoteException {
            throw new RuntimeException("Stub!");
        }
    }

    public static abstract class Stub extends Binder implements INetworkRuleController {
        public Stub() {
            throw new RuntimeException("Stub!");
        }

        public static INetworkRuleController asInterface(IBinder iBinder) {
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

    int clearRule(String str, int i) throws RemoteException;

    int[] getRejectList(String str, int i) throws RemoteException;

    boolean isNotifyEnabled(String str, int i) throws RemoteException;

    void setNotifyTarget(String str, ComponentName componentName) throws RemoteException;

    int setRuleForUids(String str, int i, int i2, int[] iArr) throws RemoteException;

    int setRuleForUidsInSync(String str, int i, int i2, int[] iArr) throws RemoteException;

    void toggleNotifyState(String str, int i, boolean z) throws RemoteException;
}
