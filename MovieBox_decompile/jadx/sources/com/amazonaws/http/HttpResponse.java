package com.amazonaws.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

public class HttpResponse {

    private final String f17777a;

    private final int f17778b;

    private final InputStream f17779c;

    private final Map f17780d;

    private InputStream f17781e;

    public static class Builder {

        private String f17782a;

        private int f17783b;

        private InputStream f17784c;

        private final Map f17785d = new HashMap();

        public HttpResponse a() {
            return new HttpResponse(this.f17782a, this.f17783b, Collections.unmodifiableMap(this.f17785d), this.f17784c);
        }

        public Builder b(InputStream inputStream) {
            this.f17784c = inputStream;
            return this;
        }

        public Builder c(String str, String str2) {
            this.f17785d.put(str, str2);
            return this;
        }

        public Builder d(int i10) {
            this.f17783b = i10;
            return this;
        }

        public Builder e(String str) {
            this.f17782a = str;
            return this;
        }
    }

    public static Builder a() {
        return new Builder();
    }

    public InputStream b() {
        if (this.f17781e == null) {
            synchronized (this) {
                try {
                    if (this.f17779c == null || !"gzip".equals(this.f17780d.get(HttpHeaders.CONTENT_ENCODING))) {
                        this.f17781e = this.f17779c;
                    } else {
                        this.f17781e = new GZIPInputStream(this.f17779c);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f17781e;
    }

    public Map c() {
        return this.f17780d;
    }

    public InputStream d() {
        return this.f17779c;
    }

    public int e() {
        return this.f17778b;
    }

    public String f() {
        return this.f17777a;
    }

    private HttpResponse(String str, int i10, Map map, InputStream inputStream) {
        this.f17777a = str;
        this.f17778b = i10;
        this.f17780d = map;
        this.f17779c = inputStream;
    }
}
