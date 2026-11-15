package com.transsion.sdk.oneid.data;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.Serializable;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

public class EnvironInfo extends OneBaseInfo implements Serializable {
    public String lang;
    public String tz;

    @SuppressLint({"DefaultLocale"})
    public EnvironInfo(Context context) {
        this.tz = "";
        this.lang = "";
        try {
            this.tz = TimeZone.getDefault().getDisplayName(false, 0);
        } catch (AssertionError unused) {
            this.tz = "GMT+00:00";
        }
        if (TimeZones.GMT_ID.equals(this.tz)) {
            this.tz = "GMT+00:00";
        }
        this.lang = Locale.getDefault().getLanguage();
    }
}
