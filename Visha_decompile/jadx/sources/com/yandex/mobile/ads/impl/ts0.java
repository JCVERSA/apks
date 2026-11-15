package com.yandex.mobile.ads.impl;

import defpackage.y45;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Locale;

public final class ts0 {
    public static String a(Locale locale) {
        y45.j(locale, CommonUrlParts.LOCALE);
        String language = locale.getLanguage();
        String country = locale.getCountry();
        StringBuilder sb = new StringBuilder(language);
        String script = locale.getScript();
        if (script != null && script.length() != 0) {
            sb.append('-');
            sb.append(script);
        }
        if (country != null && country.length() != 0) {
            sb.append('_');
            sb.append(country);
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
