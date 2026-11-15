package com.apm.insight.l;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

public final class b {

    private static DateFormat f19041a;

    public static DateFormat a() {
        if (f19041a == null) {
            f19041a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        }
        return f19041a;
    }
}
