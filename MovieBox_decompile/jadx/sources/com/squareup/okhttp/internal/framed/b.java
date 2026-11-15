package com.squareup.okhttp.internal.framed;

import okhttp3.internal.http2.Header;
import okio.ByteString;

public final class b {

    public static final ByteString f39531d = ByteString.encodeUtf8(Header.RESPONSE_STATUS_UTF8);

    public static final ByteString f39532e = ByteString.encodeUtf8(Header.TARGET_METHOD_UTF8);

    public static final ByteString f39533f = ByteString.encodeUtf8(Header.TARGET_PATH_UTF8);

    public static final ByteString f39534g = ByteString.encodeUtf8(Header.TARGET_SCHEME_UTF8);

    public static final ByteString f39535h = ByteString.encodeUtf8(Header.TARGET_AUTHORITY_UTF8);

    public static final ByteString f39536i = ByteString.encodeUtf8(":host");

    public static final ByteString f39537j = ByteString.encodeUtf8(":version");

    public final ByteString f39538a;

    public final ByteString f39539b;

    final int f39540c;

    public b(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f39538a.equals(bVar.f39538a) && this.f39539b.equals(bVar.f39539b);
    }

    public int hashCode() {
        return ((527 + this.f39538a.hashCode()) * 31) + this.f39539b.hashCode();
    }

    public String toString() {
        return String.format("%s: %s", this.f39538a.utf8(), this.f39539b.utf8());
    }

    public b(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public b(ByteString byteString, ByteString byteString2) {
        this.f39538a = byteString;
        this.f39539b = byteString2;
        this.f39540c = byteString.size() + 32 + byteString2.size();
    }
}
