package com.transsion.hubsdk.interfaces.internal.app;

import android.content.Context;
import com.transsion.hubsdk.api.internal.app.TranLocaleStore;
import java.util.Set;

public interface ITranLocaleStoreAdapter {
    Set<TranLocaleStore.TranLocaleInfo> getLevelLocales(Context context, Set<String> set, TranLocaleStore.TranLocaleInfo tranLocaleInfo, boolean z);

    Set<TranLocaleStore.TranLocaleInfo> getLevelLocalesExt(Context context, Set<String> set, TranLocaleStore.TranLocaleInfo tranLocaleInfo, boolean z);
}
