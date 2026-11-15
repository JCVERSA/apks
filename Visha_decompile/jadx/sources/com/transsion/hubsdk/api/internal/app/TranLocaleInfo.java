package com.transsion.hubsdk.api.internal.app;

import java.util.Locale;

public class TranLocaleInfo {
    String mLabel;
    Locale mLocale;

    public TranLocaleInfo(String str, Locale locale) {
        this.mLabel = str;
        this.mLocale = locale;
    }

    public String getLabel() {
        return this.mLabel;
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public String toString() {
        return this.mLabel;
    }
}
