package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

public final class d0 implements k {

    public static final d0 f26622a = new d0();

    public static final k.a f26623b = new k.a() {
        @Override
        public final k createDataSource() {
            return d0.f();
        }
    };

    private d0() {
    }

    public static d0 f() {
        return new d0();
    }

    @Override
    public long a(n nVar) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override
    public Map getResponseHeaders() {
        return j.a(this);
    }

    @Override
    public Uri getUri() {
        return null;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void close() {
    }

    @Override
    public void e(k0 k0Var) {
    }
}
