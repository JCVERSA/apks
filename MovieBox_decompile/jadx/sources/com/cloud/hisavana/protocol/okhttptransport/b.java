package com.cloud.hisavana.protocol.okhttptransport;

import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

abstract class b extends ResponseBody {

    private final ResponseBody f20849a;

    protected b(ResponseBody responseBody) {
        this.f20849a = responseBody;
    }

    @Override
    public final void close() {
        this.f20849a.close();
        d();
    }

    @Override
    public final long get$contentLength() {
        return this.f20849a.get$contentLength();
    }

    @Override
    public final MediaType get$contentType() {
        return this.f20849a.get$contentType();
    }

    abstract void d();

    @Override
    public final BufferedSource get$this_asResponseBody() {
        return this.f20849a.get$this_asResponseBody();
    }
}
