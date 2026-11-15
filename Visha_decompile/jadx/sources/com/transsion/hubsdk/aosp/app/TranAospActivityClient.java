package com.transsion.hubsdk.aosp.app;

import android.app.Activity;
import android.os.IBinder;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityClientAdapter;
import java.lang.reflect.Method;

public class TranAospActivityClient implements ITranActivityClientAdapter {
    private static final String TAG = "TranAospActivityClient";

    @Override
    public void setBackToDynamicIsland(Activity activity, boolean z) {
        Method method = TranDoorMan.getMethod(activity.getClass(), "getActivityToken", new Class[0]);
        Object objInvokeMethod = null;
        IBinder iBinder = method != null ? (IBinder) TranDoorMan.invokeMethod(method, activity, new Object[0]) : null;
        Class cls = TranDoorMan.getClass("android.app.ActivityClient");
        Method method2 = TranDoorMan.getMethod(cls, "getInstance", new Class[0]);
        if (method2 != null && cls != null) {
            objInvokeMethod = TranDoorMan.invokeMethod(method2, null, new Object[0]);
        }
        if (objInvokeMethod != null) {
            Method method3 = TranDoorMan.getMethod(objInvokeMethod.getClass(), "setBackToDynamicIsland", IBinder.class, Boolean.TYPE);
            if (method3 != null) {
                TranDoorMan.invokeMethod(method3, objInvokeMethod, iBinder, Boolean.valueOf(z));
            } else {
                TranSdkLog.i(TAG, "TranAospActivity setBackToDynamicIsland method is null!");
            }
        }
    }

    @Override
    public void setRecoveryWhenError(Activity activity, boolean z) {
        Method method;
        Method method2 = TranDoorMan.getMethod(activity.getClass(), "getActivityToken", new Class[0]);
        Object objInvokeMethod = null;
        IBinder iBinder = method2 != null ? (IBinder) TranDoorMan.invokeMethod(method2, activity, new Object[0]) : null;
        Class cls = TranDoorMan.getClass("android.app.ActivityClient");
        Method method3 = TranDoorMan.getMethod(cls, "getInstance", new Class[0]);
        if (method3 != null && cls != null) {
            objInvokeMethod = TranDoorMan.invokeMethod(method3, null, new Object[0]);
        }
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "setRecoveryWhenError", IBinder.class, Boolean.TYPE)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, objInvokeMethod, iBinder, Boolean.valueOf(z));
    }
}
