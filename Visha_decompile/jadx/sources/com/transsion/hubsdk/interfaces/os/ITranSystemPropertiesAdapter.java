package com.transsion.hubsdk.interfaces.os;

import android.os.RemoteException;

public interface ITranSystemPropertiesAdapter {
    String get(String str, String str2) throws RemoteException;

    boolean getBoolean(String str, boolean z) throws RemoteException;

    int getInt(String str, int i) throws RemoteException;

    long getLong(String str, long j) throws RemoteException;

    void set(String str, String str2) throws RemoteException;
}
