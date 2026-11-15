package com.transsion.hubsdk.core.internal.telephony.util;

import android.content.Context;
import com.transsion.hubsdk.aosp.internal.telephony.util.TranAospLocaleUtils;
import com.transsion.hubsdk.interfaces.internal.telephony.util.ITranLocaleUtilsAdapter;
import java.util.Locale;

public class TranThubLocaleUtils implements ITranLocaleUtilsAdapter {
    @Override
    public String defaultLanguageForMcc(int i) {
        return new TranAospLocaleUtils().defaultLanguageForMcc(i);
    }

    @Override
    public Locale getLocaleFromMcc(Context context, int i, String str) {
        return null;
    }
}
