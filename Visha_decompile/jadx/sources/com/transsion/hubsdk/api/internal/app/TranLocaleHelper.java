package com.transsion.hubsdk.api.internal.app;

import com.transsion.hubsdk.aosp.internal.app.TranAospLocaleHelper;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.app.TranThubLocaleHelper;
import com.transsion.hubsdk.interfaces.app.ITranLocaleHelper;
import java.util.Locale;

public class TranLocaleHelper {
    private TranAospLocaleHelper mAospService;
    private TranThubLocaleHelper mThubService;

    public String getDisplayName(Locale locale, boolean z) {
        if (locale != null) {
            return getService(TranVersion.Core.VERSION_33211).getDisplayName(locale, z);
        }
        throw new NullPointerException("locale cannot be null");
    }

    public ITranLocaleHelper getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubLocaleHelper tranThubLocaleHelper = this.mThubService;
            if (tranThubLocaleHelper != null) {
                return tranThubLocaleHelper;
            }
            TranThubLocaleHelper tranThubLocaleHelper2 = new TranThubLocaleHelper();
            this.mThubService = tranThubLocaleHelper2;
            return tranThubLocaleHelper2;
        }
        TranAospLocaleHelper tranAospLocaleHelper = this.mAospService;
        if (tranAospLocaleHelper != null) {
            return tranAospLocaleHelper;
        }
        TranAospLocaleHelper tranAospLocaleHelper2 = new TranAospLocaleHelper();
        this.mAospService = tranAospLocaleHelper2;
        return tranAospLocaleHelper2;
    }
}
