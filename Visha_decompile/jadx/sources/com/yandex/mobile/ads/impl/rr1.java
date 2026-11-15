package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import defpackage.y45;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Arrays;
import java.util.Locale;
import org.mozilla.javascript.ES6Iterator;

public final class rr1 {
    private final DecimalFormat a;

    public rr1() {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        decimalFormatSymbols.setGroupingSeparator(' ');
        this.a = new DecimalFormat("#,###,###", decimalFormatSymbols);
    }

    public final String a(String str) throws t61, IOException {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (!kotlin.text.a.c(cCharAt)) {
                    sb.append(cCharAt);
                }
            }
            String string = sb.toString();
            y45.i(string, "toString(...)");
            String str2 = this.a.format(Long.parseLong(string));
            y45.i(str2, "format(...)");
            return str2;
        } catch (NumberFormatException e) {
            hz9 hz9Var = hz9.a;
            y45.i(String.format("Could not parse review count value. Review Count value is %s", Arrays.copyOf(new Object[]{str}, 1)), "format(...)");
            int i2 = sp0.b;
            y45.j(new Object[]{e}, "args");
            throw new t61("Native Ad json has not required attributes");
        }
    }
}
