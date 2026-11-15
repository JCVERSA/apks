package com.google.net.cronet.okhttptransport;

import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

abstract class b extends ResponseBody {

    private final ResponseBody f31949a;

    protected b(ResponseBody responseBody) {
        this.f31949a = responseBody;
    }

    @Override
    public final void close() {
        this.f31949a.close();
        d();
    }

    @Override
    public final long get$contentLength() {
        return this.f31949a.get$contentLength();
    }

    @Override
    public final MediaType get$contentType() {
        return this.f31949a.get$contentType();
    }

    abstract void d();

    @Override
    public final BufferedSource get$this_asResponseBody() {
        return this.f31949a.get$this_asResponseBody();
    }
}
