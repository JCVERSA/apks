package com.transsion.lib_web.download_render.utils;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f44823a = new e();

    private e() {
    }

    public final String a(String url) {
        Intrinsics.h(url, "url");
        String string = Uri.parse(url).buildUpon().clearQuery().build().toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
