package com.yandex.mobile.ads.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.Charset;
import okio.ByteString;

public final class ev {
    public static final String a(String str, String str2, Charset charset) {
        y45.j(str, "username");
        y45.j(str2, "password");
        y45.j(charset, "charset");
        return "Basic " + ByteString.INSTANCE.encodeString(str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2, charset).base64();
    }
}
