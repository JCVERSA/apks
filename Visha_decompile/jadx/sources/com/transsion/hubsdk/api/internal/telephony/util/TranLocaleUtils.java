package com.transsion.hubsdk.api.internal.telephony.util;

import android.content.Context;
import com.transsion.hubsdk.aosp.internal.telephony.util.TranAospLocaleUtils;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.telephony.util.TranThubLocaleUtils;
import com.transsion.hubsdk.interfaces.internal.telephony.util.ITranLocaleUtilsAdapter;
import java.util.Locale;

public class TranLocaleUtils {
    private static final int MAX_MCC = 1000;
    private TranAospLocaleUtils mAospService;
    private TranThubLocaleUtils mThubService;

    public String defaultLanguageForMcc(int i) {
        return getService(TranVersion.Core.VERSION_33211).defaultLanguageForMcc(i);
    }

    public Locale getLocaleFromMcc(Context context, int i, String str) {
        if (context == null || i < 0 || i >= 1000) {
            throw new IllegalArgumentException("arguement is illegal");
        }
        if (this.mAospService == null) {
            this.mAospService = new TranAospLocaleUtils();
        }
        return this.mAospService.getLocaleFromMcc(context, i, str);
    }

    public ITranLocaleUtilsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubLocaleUtils tranThubLocaleUtils = this.mThubService;
            if (tranThubLocaleUtils != null) {
                return tranThubLocaleUtils;
            }
            TranThubLocaleUtils tranThubLocaleUtils2 = new TranThubLocaleUtils();
            this.mThubService = tranThubLocaleUtils2;
            return tranThubLocaleUtils2;
        }
        TranAospLocaleUtils tranAospLocaleUtils = this.mAospService;
        if (tranAospLocaleUtils != null) {
            return tranAospLocaleUtils;
        }
        TranAospLocaleUtils tranAospLocaleUtils2 = new TranAospLocaleUtils();
        this.mAospService = tranAospLocaleUtils2;
        return tranAospLocaleUtils2;
    }
}
