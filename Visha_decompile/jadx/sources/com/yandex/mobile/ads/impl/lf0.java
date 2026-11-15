package com.yandex.mobile.ads.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import okhttp3.internal.http2.Header;
import okio.ByteString;
import org.mozilla.javascript.ES6Iterator;

public final class lf0 {
    public static final ByteString d;
    public static final ByteString e;
    public static final ByteString f;
    public static final ByteString g;
    public static final ByteString h;
    public static final ByteString i;
    public final ByteString a;
    public final ByteString b;
    public final int c;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        d = companion.encodeUtf8(StringUtils.PROCESS_POSTFIX_DELIMITER);
        e = companion.encodeUtf8(Header.RESPONSE_STATUS_UTF8);
        f = companion.encodeUtf8(Header.TARGET_METHOD_UTF8);
        g = companion.encodeUtf8(Header.TARGET_PATH_UTF8);
        h = companion.encodeUtf8(Header.TARGET_SCHEME_UTF8);
        i = companion.encodeUtf8(Header.TARGET_AUTHORITY_UTF8);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public lf0(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        ByteString.Companion companion = ByteString.INSTANCE;
        this(companion.encodeUtf8(str), companion.encodeUtf8(str2));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lf0)) {
            return false;
        }
        lf0 lf0Var = (lf0) obj;
        return y45.e(this.a, lf0Var.a) && y45.e(this.b, lf0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return this.a.utf8() + ": " + this.b.utf8();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public lf0(ByteString byteString, String str) {
        this(byteString, ByteString.INSTANCE.encodeUtf8(str));
        y45.j(byteString, "name");
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
    }

    public lf0(ByteString byteString, ByteString byteString2) {
        y45.j(byteString, "name");
        y45.j(byteString2, ES6Iterator.VALUE_PROPERTY);
        this.a = byteString;
        this.b = byteString2;
        this.c = byteString2.size() + byteString.size() + 32;
    }
}
