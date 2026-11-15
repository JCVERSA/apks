package com.amazonaws.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.util.StringUtils;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.Map;

public class HttpRequest {

    private final String f17772a;

    private URI f17773b;

    private final Map f17774c;

    private final InputStream f17775d;

    private boolean f17776e;

    public HttpRequest(String str, URI uri, Map map, InputStream inputStream) {
        this.f17772a = StringUtils.c(str);
        this.f17773b = uri;
        this.f17774c = map == null ? Collections.EMPTY_MAP : Collections.unmodifiableMap(map);
        this.f17775d = inputStream;
    }

    public InputStream a() {
        return this.f17775d;
    }

    public long b() {
        String str;
        Map map = this.f17774c;
        if (map == null || (str = (String) map.get(HttpHeaders.CONTENT_LENGTH)) == null || str.isEmpty()) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }

    public Map c() {
        return this.f17774c;
    }

    public String d() {
        return this.f17772a;
    }

    public URI e() {
        return this.f17773b;
    }

    public boolean f() {
        return this.f17776e;
    }

    public void g(boolean z10) {
        this.f17776e = z10;
    }
}
