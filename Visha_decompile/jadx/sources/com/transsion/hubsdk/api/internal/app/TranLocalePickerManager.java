package com.transsion.hubsdk.api.internal.app;

import android.os.LocaleList;
import com.transsion.hubsdk.aosp.internal.app.TranAospLocalePickerManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.app.TranThubLocalePickerManager;
import com.transsion.hubsdk.interfaces.internal.app.ITranLocalePickerManagerAdapter;
import java.util.List;
import java.util.Locale;

public class TranLocalePickerManager {
    private static final String TAG = "TranLocalePickerManager";
    private TranAospLocalePickerManager mAospService;
    private TranThubLocalePickerManager mThubService;

    @TranLevel(level = 1)
    public List<TranLocaleInfo> getAllAssetLocales(boolean z) {
        return getService(TranVersion.Core.VERSION_33121).getAllAssetLocales(z);
    }

    public ITranLocalePickerManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubLocalePickerManager tranThubLocalePickerManager = this.mThubService;
            if (tranThubLocalePickerManager != null) {
                return tranThubLocalePickerManager;
            }
            TranThubLocalePickerManager tranThubLocalePickerManager2 = new TranThubLocalePickerManager();
            this.mThubService = tranThubLocalePickerManager2;
            return tranThubLocalePickerManager2;
        }
        TranAospLocalePickerManager tranAospLocalePickerManager = this.mAospService;
        if (tranAospLocalePickerManager != null) {
            return tranAospLocalePickerManager;
        }
        TranAospLocalePickerManager tranAospLocalePickerManager2 = new TranAospLocalePickerManager();
        this.mAospService = tranAospLocalePickerManager2;
        return tranAospLocalePickerManager2;
    }

    public void updateLocale(Locale locale) {
        getService(TranVersion.Core.VERSION_33211).updateLocale(locale);
    }

    @TranLevel(level = 1)
    public void updateLocales(LocaleList localeList) {
        getService(TranVersion.Core.VERSION_33171).updateLocales(localeList);
    }
}
