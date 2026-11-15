package com.transsion.hubsdk.aosp.os;

import android.os.RemoteException;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.os.ITranSystemPropertiesAdapter;
import java.lang.reflect.Method;

public class TranAospSystemProperties implements ITranSystemPropertiesAdapter {
    private static final String TAG = "TranAospSystemProperties";
    private static Class<?> sClassName = TranDoorMan.getClass("android.os.SystemProperties");
    private Method mMethodNameGet = null;
    private Method mMethodNameGetInt = null;
    private Method mMethodNameGetLong = null;
    private Method mMethodNameGetBoolean = null;
    private Method mMethodNameSet = null;

    @Override
    public String get(String str, String str2) throws RemoteException {
        if (this.mMethodNameGet == null) {
            this.mMethodNameGet = TranDoorMan.getMethod(sClassName, "get", String.class, String.class);
        }
        try {
            this.mMethodNameGet.setAccessible(true);
            Object objInvoke = this.mMethodNameGet.invoke(sClassName, str, str2);
            return (objInvoke == null || !(objInvoke instanceof String)) ? str2 : (String) objInvoke;
        } catch (Throwable unused) {
            return str2;
        }
    }

    @Override
    public boolean getBoolean(String str, boolean z) throws RemoteException {
        if (this.mMethodNameGetBoolean == null) {
            this.mMethodNameGetBoolean = TranDoorMan.getMethod(sClassName, "getBoolean", String.class, Boolean.TYPE);
        }
        try {
            this.mMethodNameGetBoolean.setAccessible(true);
            Object objInvoke = this.mMethodNameGetBoolean.invoke(sClassName, str, Boolean.valueOf(z));
            return (objInvoke == null || !(objInvoke instanceof Boolean)) ? z : ((Boolean) objInvoke).booleanValue();
        } catch (Throwable unused) {
            return z;
        }
    }

    @Override
    public int getInt(String str, int i) throws RemoteException {
        if (this.mMethodNameGetInt == null) {
            this.mMethodNameGetInt = TranDoorMan.getMethod(sClassName, "getInt", String.class, Integer.TYPE);
        }
        try {
            this.mMethodNameGetInt.setAccessible(true);
            Object objInvoke = this.mMethodNameGetInt.invoke(sClassName, str, Integer.valueOf(i));
            return (objInvoke == null || !(objInvoke instanceof Integer)) ? i : ((Integer) objInvoke).intValue();
        } catch (Throwable unused) {
            return i;
        }
    }

    @Override
    public long getLong(String str, long j) throws RemoteException {
        if (this.mMethodNameGetLong == null) {
            this.mMethodNameGetLong = TranDoorMan.getMethod(sClassName, "getLong", String.class, Long.TYPE);
        }
        try {
            this.mMethodNameGetLong.setAccessible(true);
            Object objInvoke = this.mMethodNameGetLong.invoke(sClassName, str, Long.valueOf(j));
            return (objInvoke == null || !(objInvoke instanceof Long)) ? j : ((Long) objInvoke).longValue();
        } catch (Throwable unused) {
            return j;
        }
    }

    @Override
    public void set(String str, String str2) throws RemoteException {
        if (this.mMethodNameSet == null) {
            this.mMethodNameSet = TranDoorMan.getMethod(sClassName, "set", String.class, String.class);
        }
        try {
            this.mMethodNameSet.setAccessible(true);
            this.mMethodNameSet.invoke(sClassName, str, str2);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "set fail " + th);
        }
    }
}
