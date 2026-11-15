package com.mbridge.msdk.thrid.okhttp.internal.http2;

import okhttp3.internal.http2.Header;

public final class c {

    public static final com.mbridge.msdk.thrid.okio.f f37221d = com.mbridge.msdk.thrid.okio.f.c(":");

    public static final com.mbridge.msdk.thrid.okio.f f37222e = com.mbridge.msdk.thrid.okio.f.c(Header.RESPONSE_STATUS_UTF8);

    public static final com.mbridge.msdk.thrid.okio.f f37223f = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_METHOD_UTF8);

    public static final com.mbridge.msdk.thrid.okio.f f37224g = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_PATH_UTF8);

    public static final com.mbridge.msdk.thrid.okio.f f37225h = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_SCHEME_UTF8);

    public static final com.mbridge.msdk.thrid.okio.f f37226i = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_AUTHORITY_UTF8);

    public final com.mbridge.msdk.thrid.okio.f f37227a;

    public final com.mbridge.msdk.thrid.okio.f f37228b;

    final int f37229c;

    interface a {
    }

    public c(String str, String str2) {
        this(com.mbridge.msdk.thrid.okio.f.c(str), com.mbridge.msdk.thrid.okio.f.c(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f37227a.equals(cVar.f37227a) && this.f37228b.equals(cVar.f37228b);
    }

    public int hashCode() {
        return ((this.f37227a.hashCode() + 527) * 31) + this.f37228b.hashCode();
    }

    public String toString() {
        return com.mbridge.msdk.thrid.okhttp.internal.c.a("%s: %s", this.f37227a.h(), this.f37228b.h());
    }

    public c(com.mbridge.msdk.thrid.okio.f fVar, String str) {
        this(fVar, com.mbridge.msdk.thrid.okio.f.c(str));
    }

    public c(com.mbridge.msdk.thrid.okio.f fVar, com.mbridge.msdk.thrid.okio.f fVar2) {
        this.f37227a = fVar;
        this.f37228b = fVar2;
        this.f37229c = fVar.e() + 32 + fVar2.e();
    }
}
