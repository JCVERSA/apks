package com.transsion.hubsdk.core.internal.app;

import android.content.Context;
import com.transsion.hubsdk.interfaces.internal.app.ITranLocaleStoreAdapter;
import com.transsion.hubsdk.internal.app.TranLocaleStore;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public class TranThubLocaleStore implements ITranLocaleStoreAdapter {
    private TranLocaleStore mTranLocaleStore;

    private TranLocaleStore getTranLocaleStoreImpl() {
        if (this.mTranLocaleStore == null) {
            this.mTranLocaleStore = new TranLocaleStore();
        }
        return this.mTranLocaleStore;
    }

    @Override
    public Set<com.transsion.hubsdk.api.internal.app.TranLocaleStore.TranLocaleInfo> getLevelLocales(Context context, Set<String> set, com.transsion.hubsdk.api.internal.app.TranLocaleStore.TranLocaleInfo tranLocaleInfo, boolean z) {
        Set<TranLocaleStore.TranLocaleInfo> levelLocales = getTranLocaleStoreImpl().getLevelLocales(context, set, (TranLocaleStore.TranLocaleInfo) null, z);
        HashSet hashSet = new HashSet();
        if (tranLocaleInfo != null) {
            for (TranLocaleStore.TranLocaleInfo tranLocaleInfo2 : levelLocales) {
                if (tranLocaleInfo.getId() == tranLocaleInfo2.getId()) {
                    levelLocales = getTranLocaleStoreImpl().getLevelLocales(context, set, tranLocaleInfo2, z);
                    break;
                }
            }
        }
        for (TranLocaleStore.TranLocaleInfo tranLocaleInfo3 : levelLocales) {
            hashSet.add(new com.transsion.hubsdk.api.internal.app.TranLocaleStore.TranLocaleInfo(tranLocaleInfo3.getLocale(), tranLocaleInfo3.getId(), tranLocaleInfo3.getFullNameNative()));
        }
        return hashSet;
    }

    @Override
    public Set<com.transsion.hubsdk.api.internal.app.TranLocaleStore.TranLocaleInfo> getLevelLocalesExt(Context context, Set<String> set, com.transsion.hubsdk.api.internal.app.TranLocaleStore.TranLocaleInfo tranLocaleInfo, boolean z) {
        TranLocaleStore.TranLocaleInfo tranLocaleInfo2;
        if (tranLocaleInfo != null) {
            TranLocaleStore tranLocaleStoreImpl = getTranLocaleStoreImpl();
            Objects.requireNonNull(tranLocaleStoreImpl);
            tranLocaleInfo2 = new TranLocaleStore.TranLocaleInfo(tranLocaleStoreImpl, tranLocaleInfo.getLocale(), tranLocaleInfo.getId(), tranLocaleInfo.getFullNameNative());
        } else {
            tranLocaleInfo2 = null;
        }
        Set<TranLocaleStore.TranLocaleInfo> levelLocalesExt = getTranLocaleStoreImpl().getLevelLocalesExt(context, set, tranLocaleInfo2, z);
        HashSet hashSet = new HashSet();
        if (tranLocaleInfo != null) {
            for (TranLocaleStore.TranLocaleInfo tranLocaleInfo3 : levelLocalesExt) {
                if (tranLocaleInfo.getId() == tranLocaleInfo3.getId()) {
                    levelLocalesExt = getTranLocaleStoreImpl().getLevelLocalesExt(context, set, tranLocaleInfo3, z);
                    break;
                }
            }
        }
        for (TranLocaleStore.TranLocaleInfo tranLocaleInfo4 : levelLocalesExt) {
            com.transsion.hubsdk.api.internal.app.TranLocaleStore.TranLocaleInfo tranLocaleInfo5 = new com.transsion.hubsdk.api.internal.app.TranLocaleStore.TranLocaleInfo(tranLocaleInfo4.getLocale(), tranLocaleInfo4.getId(), tranLocaleInfo4.getFullNameNative());
            tranLocaleInfo5.setParent(tranLocaleInfo4.getParent());
            hashSet.add(tranLocaleInfo5);
        }
        return hashSet;
    }
}
