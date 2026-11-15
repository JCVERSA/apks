package com.transsion.hubsdk.aosp.view;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranScrollCaptureResponseAdapter;
import java.lang.reflect.Method;

public class TranAospScrollCaptureResponse implements ITranScrollCaptureResponseAdapter {
    private static final String TAG = "TranAospScrollCaptureResponse";
    private static Class<?> sClassName = TranDoorMan.getClass("android.view.ScrollCaptureResponse");

    @Override
    public Object getConnection(Object obj) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "getConnection", new Class[0]);
            method.setAccessible(true);
            return method.invoke(obj, null);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getConnection fail " + th);
            return null;
        }
    }
}
