package io.appmetrica.analytics.network.internal;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import io.appmetrica.analytics.network.impl.e;
import java.util.HashMap;
import java.util.Map;

public class Request {
    private final String a;
    private final String b;
    private final byte[] c;
    private final Map d;

    public static class Builder {
        private final String a;
        private String b;
        private byte[] c = new byte[0];
        private final HashMap d = new HashMap();

        public Builder(@NonNull String str) {
            this.a = str;
        }

        @NonNull
        public Builder addHeader(@NonNull String str, @Nullable String str2) {
            this.d.put(str, str2);
            return this;
        }

        public Request build() {
            return new Request(this.a, this.b, this.c, this.d, 0);
        }

        @NonNull
        public Builder post(@NonNull byte[] bArr) {
            this.c = bArr;
            return withMethod("POST");
        }

        @NonNull
        public Builder withMethod(@NonNull String str) {
            this.b = str;
            return this;
        }
    }

    public Request(String str, String str2, byte[] bArr, HashMap map, int i) {
        this(str, str2, bArr, map);
    }

    @NonNull
    public byte[] getBody() {
        return this.c;
    }

    @NonNull
    public Map<String, String> getHeaders() {
        return this.d;
    }

    @NonNull
    public String getMethod() {
        return this.b;
    }

    @NonNull
    public String getUrl() {
        return this.a;
    }

    public String toString() {
        return "Request{url=" + this.a + ", method='" + this.b + "', bodyLength=" + this.c.length + ", headers=" + this.d + '}';
    }

    private Request(String str, String str2, byte[] bArr, HashMap map) {
        this.a = str;
        this.b = TextUtils.isEmpty(str2) ? ShareTarget.METHOD_GET : str2;
        this.c = bArr;
        this.d = e.a(map);
    }
}
