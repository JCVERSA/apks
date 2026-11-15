package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public interface tm {

    public static class a {
        public byte[] a;
        public String b;
        public long c;
        public long d;
        public long e;
        public long f;
        public Map<String, String> g = Collections.emptyMap();
        public List<kf0> h;
    }

    void a();

    void a(String str);

    void a(String str, a aVar);

    @Nullable
    a get(String str);
}
