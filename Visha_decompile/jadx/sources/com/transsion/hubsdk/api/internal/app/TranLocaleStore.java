package com.transsion.hubsdk.api.internal.app;

import android.content.Context;
import com.transsion.hubsdk.aosp.internal.app.TranAospLocaleStore;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.app.TranThubLocaleStore;
import com.transsion.hubsdk.interfaces.internal.app.ITranLocaleStoreAdapter;
import java.util.Locale;
import java.util.Set;

public class TranLocaleStore {
    private TranAospLocaleStore mAospService;
    private TranThubLocaleStore mThubService;

    public static class TranLocaleInfo {
        private String mFullNameNative;
        private final String mId;
        private final Locale mLocale;
        private Locale mParent;

        public TranLocaleInfo(Locale locale, String str, String str2) {
            this.mLocale = locale;
            this.mId = str;
            this.mFullNameNative = str2;
        }

        public String getFullNameNative() {
            return this.mFullNameNative;
        }

        public String getId() {
            return this.mId;
        }

        public Locale getLocale() {
            return this.mLocale;
        }

        public Locale getParent() {
            return this.mParent;
        }

        public void setFullNameNative(String str) {
            this.mFullNameNative = str;
        }

        public void setParent(Locale locale) {
            this.mParent = locale;
        }

        public String toString() {
            return this.mId;
        }
    }

    public Set<TranLocaleInfo> getLevelLocales(Context context, Set<String> set, TranLocaleInfo tranLocaleInfo, boolean z) {
        return getService(TranVersion.Core.VERSION_33181).getLevelLocales(context, set, tranLocaleInfo, z);
    }

    public Set<TranLocaleInfo> getLevelLocalesExt(Context context, Set<String> set, TranLocaleInfo tranLocaleInfo, boolean z) {
        return getService(TranVersion.Core.VERSION_33311).getLevelLocalesExt(context, set, tranLocaleInfo, z);
    }

    public ITranLocaleStoreAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubLocaleStore tranThubLocaleStore = this.mThubService;
            if (tranThubLocaleStore != null) {
                return tranThubLocaleStore;
            }
            TranThubLocaleStore tranThubLocaleStore2 = new TranThubLocaleStore();
            this.mThubService = tranThubLocaleStore2;
            return tranThubLocaleStore2;
        }
        TranAospLocaleStore tranAospLocaleStore = this.mAospService;
        if (tranAospLocaleStore != null) {
            return tranAospLocaleStore;
        }
        TranAospLocaleStore tranAospLocaleStore2 = new TranAospLocaleStore();
        this.mAospService = tranAospLocaleStore2;
        return tranAospLocaleStore2;
    }
}
