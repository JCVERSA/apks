package com.transsion.hubsdk.aosp.app;

import android.app.Activity;
import com.android.internal.app.AlertActivity;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityAdapter;
import java.lang.reflect.Method;

public class TranAospActivity implements ITranActivityAdapter {
    private static final String TAG = "TranAospActivity";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.Activity");

    @Override
    public String getReferrer(Activity activity) {
        try {
            return (String) TranDoorMan.getField(sClassName, "mReferrer").get(activity);
        } catch (IllegalAccessException e) {
            TranSdkLog.e(TAG, "getReferrer fail " + e);
            return null;
        }
    }

    @Override
    @Deprecated
    public void sceneHappen(int i, String str, String str2, String str3, boolean z) {
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.app.TranActivity");
        if (cls != null) {
            Method method = TranDoorMan.getMethod(cls, "sceneHappen", Integer.TYPE, String.class, String.class, String.class, Boolean.TYPE);
            if (method == null) {
                TranSdkLog.i(TAG, "TranAospActivity sceneHappen method is null!");
                return;
            }
            try {
                TranDoorMan.invokeMethod(method, cls.newInstance(), Integer.valueOf(i), str, str2, str3, Boolean.valueOf(z));
            } catch (Exception e) {
                TranSdkLog.e(getClass().getSimpleName(), " sceneHappen fail:" + e);
            }
        }
    }

    @Override
    public void setupAlert(Object obj) {
        Method method;
        AlertActivity alertActivity = obj instanceof AlertActivity ? (AlertActivity) obj : null;
        if (TranDoorMan.getClass("com.android.internal.app.AlertActivity") == null || alertActivity == null || (method = TranDoorMan.getMethod(alertActivity.getClass(), "setupAlert", new Class[0])) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, obj, new Object[0]);
        TranSdkLog.i(TAG, "setupAlert success");
    }
}
