package com.mbridge.msdk.thrid.okhttp;

import java.io.Closeable;
import java.io.InputStream;

public abstract class z implements Closeable {

    static class a extends z {

        final long f37584a;

        final com.mbridge.msdk.thrid.okio.e f37585b;

        a(s sVar, long j10, com.mbridge.msdk.thrid.okio.e eVar) {
            this.f37584a = j10;
            this.f37585b = eVar;
        }

        @Override
        public long h() {
            return this.f37584a;
        }

        @Override
        public com.mbridge.msdk.thrid.okio.e k() {
            return this.f37585b;
        }
    }

    public static z a(s sVar, byte[] bArr) {
        return a(sVar, bArr.length, new com.mbridge.msdk.thrid.okio.c().write(bArr));
    }

    @Override
    public void close() {
        com.mbridge.msdk.thrid.okhttp.internal.c.a(k());
    }

    public final InputStream d() {
        return k().j();
    }

    public abstract long h();

    public abstract com.mbridge.msdk.thrid.okio.e k();

    public static z a(s sVar, long j10, com.mbridge.msdk.thrid.okio.e eVar) {
        if (eVar != null) {
            return new a(sVar, j10, eVar);
        }
        throw new NullPointerException("source == null");
    }
}
