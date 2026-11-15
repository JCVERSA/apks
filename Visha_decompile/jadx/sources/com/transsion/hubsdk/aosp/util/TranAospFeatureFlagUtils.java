package com.transsion.hubsdk.aosp.util;

import android.content.Context;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.util.ITranFeatureFlagUtilsAdapter;

public class TranAospFeatureFlagUtils implements ITranFeatureFlagUtilsAdapter {
    private static final String TAG = "TranAospFeatureFlagUtils";
    private static Class<?> sClassName = TranDoorMan.getClass("android.util.FeatureFlagUtils");

    @Override
    public boolean isEnabled(Context context, String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "isEnabled", Context.class, String.class), sClassName, context, str);
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }
}
