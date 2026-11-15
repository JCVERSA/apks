package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.a;
import com.google.android.exoplayer2.upstream.h;
import defpackage.u5b;
import java.io.IOException;

public final class h implements a {
    public static final h a = new h();
    public static final a.InterfaceC0084a b = new a.InterfaceC0084a() {
        @Override
        public final a createDataSource() {
            return h.c();
        }
    };

    public static h c() {
        return new h();
    }

    @Override
    public long a(b bVar) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override
    public void b(u5b u5bVar) {
    }

    @Override
    public void close() {
    }

    @Override
    public Uri getUri() {
        return null;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }
}
