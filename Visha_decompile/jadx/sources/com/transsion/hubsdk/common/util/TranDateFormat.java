package com.transsion.hubsdk.common.util;

import com.transsion.hubsdk.common.reflect.TranDoorMan;

public class TranDateFormat {
    private static Class<?> sClassName = TranDoorMan.getClass("android.text.format.DateFormat");

    public static boolean hasSeconds(CharSequence charSequence) {
        return ((Boolean) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "hasSeconds", CharSequence.class), null, charSequence)).booleanValue();
    }
}
