package com.transsion.hubsdk.aosp.app;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranAppGlobals;

public class TranAospAppGlobals implements ITranAppGlobals {
    private static final String TAG = "TranAospAppGlobals";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.AppGlobals");

    @Override
    public int getIntCoreSetting(String str, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getIntCoreSetting", String.class, Integer.TYPE), null, str, Integer.valueOf(i));
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }
}
