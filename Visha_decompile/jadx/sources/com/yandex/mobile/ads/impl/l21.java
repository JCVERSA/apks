package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.regex.Pattern;

public final class l21 {
    private static final Pattern a = Pattern.compile("(<script)(.*)(src=\"mraid\\.js\")(.*)(<\\/script>)");

    public static boolean a(String str) {
        y45.j(str, "htmlResponse");
        return a.matcher(str).find();
    }
}
