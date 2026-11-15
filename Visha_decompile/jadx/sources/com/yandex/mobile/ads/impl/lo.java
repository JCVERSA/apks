package com.yandex.mobile.ads.impl;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

public final class lo {
    public static final Charset a = Charset.forName(CharEncoding.US_ASCII);
    public static final Charset b = Charset.forName(CharEncoding.ISO_8859_1);
    public static final Charset c = Charset.forName("UTF-8");
    public static final Charset d;
    public static final Charset e;

    static {
        Charset.forName(CharEncoding.UTF_16BE);
        d = Charset.forName(CharEncoding.UTF_16LE);
        e = Charset.forName(CharEncoding.UTF_16);
    }
}
