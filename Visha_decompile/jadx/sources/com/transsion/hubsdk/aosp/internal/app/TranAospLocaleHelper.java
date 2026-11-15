package com.transsion.hubsdk.aosp.internal.app;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranLocaleHelper;
import java.util.Locale;

public class TranAospLocaleHelper implements ITranLocaleHelper {
    private static Class sClz = TranDoorMan.getClass("com.android.internal.app.LocaleHelper");

    @Override
    public String getDisplayName(Locale locale, boolean z) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClz, "getDisplayName", Locale.class, Boolean.TYPE), sClz, locale, Boolean.valueOf(z));
    }
}
