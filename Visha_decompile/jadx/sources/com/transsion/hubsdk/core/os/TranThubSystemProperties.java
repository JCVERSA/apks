package com.transsion.hubsdk.core.os;

import android.os.RemoteException;
import com.transsion.hubsdk.interfaces.os.ITranSystemPropertiesAdapter;
import com.transsion.hubsdk.os.ITranSystemProperties;
import com.transsion.hubsdk.os.TranSystemProperties;

public class TranThubSystemProperties implements ITranSystemPropertiesAdapter {
    private ITranSystemProperties mService;

    @Override
    public String get(String str, String str2) throws RemoteException {
        return TranSystemProperties.get(str, str2);
    }

    @Override
    public boolean getBoolean(String str, boolean z) throws RemoteException {
        return TranSystemProperties.getBoolean(str, z);
    }

    @Override
    public int getInt(String str, int i) throws RemoteException {
        return TranSystemProperties.getInt(str, i);
    }

    @Override
    public long getLong(String str, long j) throws RemoteException {
        return TranSystemProperties.getLong(str, j);
    }

    @Override
    public void set(String str, String str2) throws RemoteException {
        TranSystemProperties.set(str, str2);
    }
}
