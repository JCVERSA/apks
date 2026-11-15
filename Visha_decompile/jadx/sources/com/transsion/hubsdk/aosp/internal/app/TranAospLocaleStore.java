package com.transsion.hubsdk.aosp.internal.app;

import android.content.Context;
import com.transsion.hubsdk.aosp.internal.app.TranAospLocaleStoreExt.TranAospLocaleInfo;
import com.transsion.hubsdk.api.internal.app.TranLocaleStore;
import com.transsion.hubsdk.interfaces.internal.app.ITranLocaleStoreAdapter;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public class TranAospLocaleStore implements ITranLocaleStoreAdapter {
    private TranAospLocaleStoreExt mTranAospExt;

    private TranAospLocaleStoreExt getTranAospExt() {
        if (this.mTranAospExt == null) {
            this.mTranAospExt = new TranAospLocaleStoreExt();
        }
        return this.mTranAospExt;
    }

    @Override
    public Set<TranLocaleStore.TranLocaleInfo> getLevelLocales(Context context, Set<String> set, TranLocaleStore.TranLocaleInfo tranLocaleInfo, boolean z) {
        Set<TranAospLocaleStoreExt.TranAospLocaleInfo> levelLocales = getTranAospExt().getLevelLocales(context, set, null, z);
        HashSet hashSet = new HashSet();
        if (tranLocaleInfo != null) {
            for (TranAospLocaleStoreExt.TranAospLocaleInfo tranAospLocaleInfo : levelLocales) {
                if (tranLocaleInfo.getId() == tranAospLocaleInfo.getId()) {
                    levelLocales = getTranAospExt().getLevelLocales(context, set, tranAospLocaleInfo, z);
                    break;
                }
            }
        }
        for (TranAospLocaleStoreExt.TranAospLocaleInfo tranAospLocaleInfo2 : levelLocales) {
            hashSet.add(new TranLocaleStore.TranLocaleInfo(tranAospLocaleInfo2.getLocale(), tranAospLocaleInfo2.getId(), tranAospLocaleInfo2.getFullNameNative()));
        }
        return hashSet;
    }

    @Override
    public Set<TranLocaleStore.TranLocaleInfo> getLevelLocalesExt(Context context, Set<String> set, TranLocaleStore.TranLocaleInfo tranLocaleInfo, boolean z) {
        TranAospLocaleStoreExt.TranAospLocaleInfo tranAospLocaleInfo;
        if (tranLocaleInfo != null) {
            TranAospLocaleStoreExt tranAospExt = getTranAospExt();
            Objects.requireNonNull(tranAospExt);
            tranAospLocaleInfo = tranAospExt.new TranAospLocaleInfo(tranLocaleInfo.getLocale(), tranLocaleInfo.getId(), tranLocaleInfo.getFullNameNative());
        } else {
            tranAospLocaleInfo = null;
        }
        Set<TranAospLocaleStoreExt.TranAospLocaleInfo> levelLocalesExt = getTranAospExt().getLevelLocalesExt(context, set, tranAospLocaleInfo, z);
        HashSet hashSet = new HashSet();
        if (tranLocaleInfo != null) {
            for (TranAospLocaleStoreExt.TranAospLocaleInfo tranAospLocaleInfo2 : levelLocalesExt) {
                if (tranLocaleInfo.getId() == tranAospLocaleInfo2.getId()) {
                    levelLocalesExt = getTranAospExt().getLevelLocalesExt(context, set, tranAospLocaleInfo2, z);
                    break;
                }
            }
        }
        for (TranAospLocaleStoreExt.TranAospLocaleInfo tranAospLocaleInfo3 : levelLocalesExt) {
            TranLocaleStore.TranLocaleInfo tranLocaleInfo2 = new TranLocaleStore.TranLocaleInfo(tranAospLocaleInfo3.getLocale(), tranAospLocaleInfo3.getId(), tranAospLocaleInfo3.getFullNameNative());
            tranLocaleInfo2.setParent(tranAospLocaleInfo3.getParent());
            hashSet.add(tranLocaleInfo2);
        }
        return hashSet;
    }
}
