package com.transsion.hubsdk.aosp.internal.policy;

import android.content.Context;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.internal.policy.ITranSystemBarUtilsAdapter;

public class TranAospSystemBarUtils implements ITranSystemBarUtilsAdapter {
    private static Class<?> sClassName = TranDoorMan.getClass("com.android.internal.policy.SystemBarUtils");

    @Override
    public int getStatusBarHeight(Context context) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getStatusBarHeight", Context.class), null, context);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }
}
