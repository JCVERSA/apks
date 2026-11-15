package com.transsion.hubsdk.aosp.internal.app;

import android.content.Context;
import com.android.internal.app.LocaleStore;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public class TranAospLocaleStoreExt {

    public class TranAospLocaleInfo {
        private String mFullNameNative;
        private final String mId;
        private final Locale mLocale;
        private Locale mParent;

        public TranAospLocaleInfo(Locale locale, String str, String str2) {
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

        public void setParent(Locale locale) {
            this.mParent = locale;
        }

        public String toString() {
            return this.mId;
        }
    }

    public Set<TranAospLocaleInfo> getLevelLocales(Context context, Set<String> set, TranAospLocaleInfo tranAospLocaleInfo, boolean z) {
        Set<LocaleStore.LocaleInfo> levelLocales = LocaleStore.getLevelLocales(context, set, (LocaleStore.LocaleInfo) null, z);
        HashSet hashSet = new HashSet();
        if (tranAospLocaleInfo != null) {
            for (LocaleStore.LocaleInfo localeInfo : levelLocales) {
                if (tranAospLocaleInfo.getId() == localeInfo.getId()) {
                    levelLocales = LocaleStore.getLevelLocales(context, set, localeInfo, z);
                    break;
                }
            }
        }
        for (LocaleStore.LocaleInfo localeInfo2 : levelLocales) {
            hashSet.add(new TranAospLocaleInfo(localeInfo2.getLocale(), localeInfo2.getId(), localeInfo2.getFullNameNative()));
        }
        return hashSet;
    }

    public Set<TranAospLocaleInfo> getLevelLocalesExt(Context context, Set<String> set, TranAospLocaleInfo tranAospLocaleInfo, boolean z) {
        Set<LocaleStore.LocaleInfo> levelLocales = LocaleStore.getLevelLocales(context, set, (LocaleStore.LocaleInfo) null, z);
        HashSet hashSet = new HashSet();
        if (tranAospLocaleInfo != null) {
            for (LocaleStore.LocaleInfo localeInfo : levelLocales) {
                if (tranAospLocaleInfo.getId() == localeInfo.getId()) {
                    levelLocales = LocaleStore.getLevelLocales(context, set, localeInfo, z);
                    break;
                }
            }
        }
        for (LocaleStore.LocaleInfo localeInfo2 : levelLocales) {
            TranAospLocaleInfo tranAospLocaleInfo2 = new TranAospLocaleInfo(localeInfo2.getLocale(), localeInfo2.getId(), localeInfo2.getFullNameNative());
            tranAospLocaleInfo2.setParent(localeInfo2.getParent());
            hashSet.add(tranAospLocaleInfo2);
        }
        return hashSet;
    }
}
