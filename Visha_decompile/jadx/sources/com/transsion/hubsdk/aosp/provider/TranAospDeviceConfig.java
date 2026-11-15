package com.transsion.hubsdk.aosp.provider;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.provider.ITranDeviceConfigAdapter;

public class TranAospDeviceConfig implements ITranDeviceConfigAdapter {
    private static final String TAG = "TranAospDeviceConfig";
    private static Class<?> sClassName = TranDoorMan.getClass("android.provider.DeviceConfig");

    @Override
    public boolean getBoolean(String str, String str2, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBoolean", String.class, String.class, Boolean.TYPE), null, str, str2, Boolean.valueOf(z));
        return objInvokeMethod instanceof Boolean ? ((Boolean) objInvokeMethod).booleanValue() : z;
    }

    @Override
    public int getInt(String str, String str2, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getInt", String.class, String.class, Integer.TYPE), null, str, str2, Integer.valueOf(i));
        return objInvokeMethod instanceof Integer ? ((Integer) objInvokeMethod).intValue() : i;
    }
}
