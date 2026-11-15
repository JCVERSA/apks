package com.transsion.sdk.oneid.data;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.Serializable;
import java.util.Locale;
import java.util.TimeZone;

public class EnvironInfo extends OneBaseInfo implements Serializable {
    public String lang;

    public String f49912tz;

    @SuppressLint({"DefaultLocale"})
    public EnvironInfo(Context context) {
        this.f49912tz = "";
        this.lang = "";
        try {
            this.f49912tz = TimeZone.getDefault().getDisplayName(false, 0);
        } catch (AssertionError unused) {
            this.f49912tz = "GMT+00:00";
        }
        if ("GMT".equals(this.f49912tz)) {
            this.f49912tz = "GMT+00:00";
        }
        this.lang = Locale.getDefault().getLanguage();
    }
}
