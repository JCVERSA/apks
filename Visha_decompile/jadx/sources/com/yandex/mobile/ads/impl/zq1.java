package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.Closeable;
import okio.Buffer;
import okio.BufferedSource;

public abstract class zq1 implements Closeable {

    public static final class a {
        private a() {
        }

        public static yq1 a(byte[] bArr) {
            y45.j(bArr, "<this>");
            Buffer bufferWrite = new Buffer().write(bArr);
            long length = bArr.length;
            y45.j(bufferWrite, "<this>");
            return new yq1(length, null, bufferWrite);
        }

        public a(int i) {
            this();
        }
    }

    public abstract long a();

    public abstract cx0 b();

    public abstract BufferedSource c();

    @Override
    public final void close() {
        g92.a((Closeable) c());
    }
}
