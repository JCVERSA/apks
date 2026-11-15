package com.android.volley;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public interface c {

    public static class a {

        public byte[] f18603a;

        public String f18604b;

        public long f18605c;

        public long f18606d;

        public long f18607e;

        public long f18608f;

        public Map f18609g = Collections.emptyMap();

        public List f18610h;

        public boolean a() {
            return b(System.currentTimeMillis());
        }

        boolean b(long j10) {
            return this.f18607e < j10;
        }

        boolean c(long j10) {
            return this.f18608f < j10;
        }
    }

    a a(String str);

    void b(String str, boolean z10);

    void c(String str, a aVar);

    void initialize();
}
