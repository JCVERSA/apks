package com.transsion.hubsdk.aosp.internal.telephony.util;

import android.content.Context;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.internal.telephony.util.ITranLocaleUtilsAdapter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

public class TranAospLocaleUtils implements ITranLocaleUtilsAdapter {
    private static final String TAG = "TranAospLocaleUtils";
    private static Class<?> sClassName = TranDoorMan.getClass("com.android.internal.telephony.util.LocaleUtils");

    @Override
    public String defaultLanguageForMcc(int i) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "defaultLanguageForMcc", Integer.TYPE), null, Integer.valueOf(i));
    }

    @Override
    public Locale getLocaleFromMcc(Context context, int i, String str) {
        Method method = TranDoorMan.getMethod(sClassName, "getLocaleFromMcc", Context.class, Integer.TYPE, String.class);
        method.setAccessible(true);
        try {
            Object objInvoke = method.invoke(null, context, Integer.valueOf(i), str);
            if (objInvoke == null || !(objInvoke instanceof Locale)) {
                return null;
            }
            return (Locale) objInvoke;
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "getLocaleFromMcc fail " + e);
            return null;
        }
    }
}
