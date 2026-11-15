package w1;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

public final class l implements androidx.media3.datasource.a {

    private final androidx.media3.datasource.a f74123a;

    private long f74124b;

    private Uri f74125c = Uri.EMPTY;

    private Map f74126d = Collections.emptyMap();

    public l(androidx.media3.datasource.a aVar) {
        this.f74123a = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
    }

    @Override
    public long a(h hVar) {
        this.f74125c = hVar.f74097a;
        this.f74126d = Collections.emptyMap();
        try {
            return this.f74123a.a(hVar);
        } finally {
            Uri uri = getUri();
            if (uri != null) {
                this.f74125c = uri;
            }
            this.f74126d = getResponseHeaders();
        }
    }

    @Override
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f74123a.c(nVar);
    }

    @Override
    public void close() {
        this.f74123a.close();
    }

    public long d() {
        return this.f74124b;
    }

    public Uri e() {
        return this.f74125c;
    }

    public Map f() {
        return this.f74126d;
    }

    public void g() {
        this.f74124b = 0L;
    }

    @Override
    public Map getResponseHeaders() {
        return this.f74123a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f74123a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        int i12 = this.f74123a.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f74124b += (long) i12;
        }
        return i12;
    }
}
