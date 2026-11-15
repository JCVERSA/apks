package com.squareup.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import okio.BufferedSource;

public final class i extends ResponseBody {

    private final Headers f39695a;

    private final BufferedSource f39696b;

    public i(Headers headers, BufferedSource bufferedSource) {
        this.f39695a = headers;
        this.f39696b = bufferedSource;
    }

    @Override
    public long contentLength() {
        return OkHeaders.c(this.f39695a);
    }

    @Override
    public MediaType contentType() {
        String str = this.f39695a.get(HttpHeaders.CONTENT_TYPE);
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    @Override
    public BufferedSource source() {
        return this.f39696b;
    }
}
