package com.transsion.hubsdk.aosp.internal.view;

import android.content.Context;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.internal.view.ITranRotationPolicyAdapter;
import java.lang.reflect.Method;

public class TranAospRotationPolicy implements ITranRotationPolicyAdapter {
    private static final String TAG = "TranAospRotationPolicy";
    private static Class<?> sClassName = TranDoorMan.getClass("com.android.internal.view.RotationPolicy");

    @Override
    public boolean isRotationLocked(Context context) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "isRotationLocked", Context.class);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, context);
            if (objInvoke == null || !(objInvoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) objInvoke).booleanValue();
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "isRotationLocked fail" + th);
            return false;
        }
    }
}
