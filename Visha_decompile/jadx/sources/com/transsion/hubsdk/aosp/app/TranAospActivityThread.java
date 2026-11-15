package com.transsion.hubsdk.aosp.app;

import android.app.Application;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranActivityThreadAdapter;

public class TranAospActivityThread implements ITranActivityThreadAdapter {
    private static final String TAG = "TranAospActivityThread";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.ActivityThread");

    @Override
    public Application currentApplication() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "currentApplication", new Class[0]), null, new Object[0]);
        if (objInvokeMethod instanceof Application) {
            return (Application) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Application getApplication() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getApplication", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "currentActivityThread", new Class[0]), null, new Object[0]), new Object[0]);
        if (objInvokeMethod instanceof Application) {
            return (Application) objInvokeMethod;
        }
        return null;
    }
}
