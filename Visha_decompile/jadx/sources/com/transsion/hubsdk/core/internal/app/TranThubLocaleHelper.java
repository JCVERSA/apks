package com.transsion.hubsdk.core.internal.app;

import com.transsion.hubsdk.aosp.internal.app.TranAospLocaleHelper;
import com.transsion.hubsdk.interfaces.app.ITranLocaleHelper;
import java.util.Locale;

public class TranThubLocaleHelper implements ITranLocaleHelper {
    @Override
    public String getDisplayName(Locale locale, boolean z) {
        return new TranAospLocaleHelper().getDisplayName(locale, z);
    }
}
