package androidx.media3.datasource;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import w1.h;
import w1.n;

public final class f implements a {

    public static final f f10602a = new f();

    public static final a.InterfaceC0085a f10603b = new a.InterfaceC0085a() {
        @Override
        public final androidx.media3.datasource.a createDataSource() {
            return androidx.media3.datasource.f.d();
        }
    };

    private f() {
    }

    public static f d() {
        return new f();
    }

    @Override
    public long a(h hVar) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override
    public Map getResponseHeaders() {
        return w1.e.a(this);
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
    public void c(n nVar) {
    }
}
