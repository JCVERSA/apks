package com.transsion.hubsdk.aosp.content.pm;

import android.content.pm.ActivityInfo;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.content.pm.ITranActivityInfoAdapter;

public class TranAospActivityInfo implements ITranActivityInfoAdapter {
    private static final String TAG = "TranAospActivityInfo";
    private static Class<?> sClassName = TranDoorMan.getClass("android.content.pm.ActivityInfo");

    @Override
    public boolean isResizeableMode(int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isResizeableMode", Integer.TYPE), null, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public int resizeMode(ActivityInfo activityInfo) {
        try {
            return TranDoorMan.getField(sClassName, "resizeMode").getInt(activityInfo);
        } catch (IllegalAccessException | IllegalArgumentException e) {
            TranSdkLog.e(TAG, "isResizeableMode fail:" + e);
            return 0;
        }
    }
}
