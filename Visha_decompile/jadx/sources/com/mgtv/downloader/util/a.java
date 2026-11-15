package com.mgtv.downloader.util;

import com.hunantv.imgo.util.u;
import java.util.UUID;

public final class a {
    public static String a() {
        String str = com.hunantv.imgo.b.c.a().h;
        if (!u.a((CharSequence) str)) {
            return str;
        }
        String string = UUID.randomUUID().toString();
        com.hunantv.imgo.b.c.a().h = string;
        return string;
    }
}
