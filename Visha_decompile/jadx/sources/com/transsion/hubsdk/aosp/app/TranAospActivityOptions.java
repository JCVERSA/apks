package com.transsion.hubsdk.aosp.app;

import android.app.ActivityOptions;
import android.os.Bundle;
import android.os.Messenger;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranActivityOptionsAdapter;
import java.lang.reflect.Method;

public class TranAospActivityOptions implements ITranActivityOptionsAdapter {
    private static final String TAG = "TranAospActivityOptions";
    private static Class<?> sClassName = TranDoorMan.getClass("android.app.ActivityOptions");

    @Override
    public ActivityOptions fromBundle(Bundle bundle) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "fromBundle", Bundle.class), null, bundle);
        if (objInvokeMethod instanceof ActivityOptions) {
            return (ActivityOptions) objInvokeMethod;
        }
        return null;
    }

    @Override
    public void setActivitySurfaceShownCallback(ActivityOptions activityOptions, Messenger messenger, long j, long j2) {
        Class cls = Long.TYPE;
        Method method = TranDoorMan.getMethod(ActivityOptions.class, "setActivitySurfaceShownCallback", Messenger.class, cls, cls);
        if (method != null) {
            TranDoorMan.invokeMethod(method, activityOptions, messenger, Long.valueOf(j), Long.valueOf(j2));
            TranSdkLog.i(TAG, "setActivitySurfaceShownCallback success");
        }
    }

    @Override
    public void setDisallowEnterPictureInPictureWhileLaunching(boolean z) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "setDisallowEnterPictureInPictureWhileLaunching", Boolean.TYPE), sClassName, Boolean.valueOf(z));
    }

    @Override
    public void setLaunchTaskId(ActivityOptions activityOptions, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "setLaunchTaskId", Integer.TYPE), activityOptions, Integer.valueOf(i));
    }

    @Override
    public void setLaunchWindowingMode(ActivityOptions activityOptions, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "setLaunchTaskId", Integer.TYPE), activityOptions, Integer.valueOf(i));
    }

    @Override
    public void setRotationAnimationHint(int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "setRotationAnimationHint", Integer.TYPE), null, Integer.valueOf(i));
    }

    @Override
    public void setStartMultiWindowByRecent(ActivityOptions activityOptions, int i) {
        Method method = TranDoorMan.getMethod(activityOptions.getClass(), "setStartMultiWindowByRecent", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, activityOptions, Integer.valueOf(i));
        }
    }

    @Override
    public void setThunderBackSupport(ActivityOptions activityOptions, boolean z) {
        Method method = TranDoorMan.getMethod(activityOptions.getClass(), "setThunderBackSupport", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, activityOptions, Boolean.valueOf(z));
        }
    }

    @Override
    public Bundle toBundle() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "toBundle", new Class[0]), null, new Object[0]);
        return objInvokeMethod instanceof Bundle ? (Bundle) objInvokeMethod : new Bundle();
    }
}
