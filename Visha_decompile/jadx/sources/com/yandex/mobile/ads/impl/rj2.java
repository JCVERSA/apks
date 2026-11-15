package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import defpackage.y45;
import defpackage.z0a;
import java.util.Arrays;
import java.util.Locale;

public final class rj2 {
    private static final String a;
    private static final String b;
    public static final int c = 0;

    static {
        hz9 hz9Var = hz9.a;
        Locale locale = Locale.US;
        String str = String.format(locale, "<script type='text/javascript'> \nfunction wrapJsFunction_%1$s() { \n  window['%1$s'] = function(%3$s) { \n      return %4$s.%1$s(%2$s, %3$s); \n  } \n} \n \nwrapJsFunction_%1$s('%1$s'); \n</script> \n", Arrays.copyOf(new Object[]{"onAdRender", "document.querySelector('#rtb').offsetHeight", "testTag", "AdPerformActionsJSI"}, 4));
        y45.i(str, "format(...)");
        a = str;
        String str2 = String.format(locale, "<script type='text/javascript'> \nfunction wrapJsFunction_%1$s() { \n  window['%1$s'] = function() { \n      return %2$s.%1$s(); \n  } \n} \n \nwrapJsFunction_%1$s('%1$s'); \n</script> \n", Arrays.copyOf(new Object[]{"getBannerInfo", "AdPerformActionsJSI"}, 2));
        y45.i(str2, "format(...)");
        b = str2;
    }

    public static String a(int i, int i2) {
        return z0a.j("\n\n        <style>ytag.container { width:" + i + "px; height:" + i2 + "px; }</style>\n\n        ");
    }

    public static String b() {
        return a;
    }

    public static String a(int i) {
        return "<body style='width:" + i + "px;'>";
    }

    public static String a() {
        return b;
    }
}
