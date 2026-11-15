package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;

public abstract class x {

    static class a extends x {

        final int f37556a;

        final byte[] f37557b;

        final int f37558c;

        a(s sVar, int i10, byte[] bArr, int i11) {
            this.f37556a = i10;
            this.f37557b = bArr;
            this.f37558c = i11;
        }

        @Override
        public long a() {
            return this.f37556a;
        }

        @Override
        public s b() {
            return null;
        }

        @Override
        public void a(com.mbridge.msdk.thrid.okio.d dVar) throws IOException {
            dVar.write(this.f37557b, this.f37558c, this.f37556a);
        }
    }

    public static x a(s sVar, byte[] bArr) {
        return a(sVar, bArr, 0, bArr.length);
    }

    public abstract long a() throws IOException;

    public abstract void a(com.mbridge.msdk.thrid.okio.d dVar) throws IOException;

    public abstract s b();

    public static x a(s sVar, byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(bArr.length, i10, i11);
        return new a(sVar, i11, bArr, i10);
    }
}
