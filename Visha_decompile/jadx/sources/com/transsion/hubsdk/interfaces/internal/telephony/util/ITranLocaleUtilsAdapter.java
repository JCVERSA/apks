package com.transsion.hubsdk.interfaces.internal.telephony.util;

import android.content.Context;
import java.util.Locale;

public interface ITranLocaleUtilsAdapter {
    String defaultLanguageForMcc(int i);

    Locale getLocaleFromMcc(Context context, int i, String str);
}
