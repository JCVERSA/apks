package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class aw {
    private static final a a = new a();

    public static final class a extends ThreadLocal<DateFormat> {
        @Override
        public final DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(g92.d);
            return simpleDateFormat;
        }
    }

    public static final String a(Date date) {
        y45.j(date, "<this>");
        String str = a.get().format(date);
        y45.i(str, "format(...)");
        return str;
    }
}
