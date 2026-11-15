package com.transsion.hubsdk.interfaces.internal.app;

import android.os.LocaleList;
import com.transsion.hubsdk.api.internal.app.TranLocaleInfo;
import java.util.List;
import java.util.Locale;

public interface ITranLocalePickerManagerAdapter {
    List<TranLocaleInfo> getAllAssetLocales(boolean z);

    void updateLocale(Locale locale);

    void updateLocales(LocaleList localeList);
}
