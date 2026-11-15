package defpackage;

import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

public abstract class ol1 extends ResponseBody {
    public final ResponseBody b;

    public ol1(ResponseBody responseBody) {
        this.b = responseBody;
    }

    public abstract void b();

    @Override
    public final void close() {
        this.b.close();
        b();
    }

    @Override
    public final long get$contentLength() {
        return this.b.get$contentLength();
    }

    @Override
    public final MediaType get$contentType() {
        return this.b.get$contentType();
    }

    @Override
    public final BufferedSource get$this_asResponseBody() {
        return this.b.get$this_asResponseBody();
    }
}
