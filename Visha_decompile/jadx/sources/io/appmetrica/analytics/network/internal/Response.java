package io.appmetrica.analytics.network.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.network.impl.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Response {
    private final boolean a;
    private final int b;
    private final byte[] c;
    private final byte[] d;
    private final Map e;
    private final Throwable f;

    public Response(@Nullable Throwable th) {
        this(false, 0, new byte[0], new byte[0], new HashMap(), th);
    }

    public int getCode() {
        return this.b;
    }

    @NonNull
    public byte[] getErrorData() {
        return this.d;
    }

    @Nullable
    public Throwable getException() {
        return this.f;
    }

    @NonNull
    public Map<String, List<String>> getHeaders() {
        return this.e;
    }

    @NonNull
    public byte[] getResponseData() {
        return this.c;
    }

    public boolean isCompleted() {
        return this.a;
    }

    public String toString() {
        return "Response{completed=" + this.a + ", code=" + this.b + ", responseDataLength=" + this.c.length + ", errorDataLength=" + this.d.length + ", headers=" + this.e + ", exception=" + this.f + '}';
    }

    public Response(boolean z, int i, @NonNull byte[] bArr, @NonNull byte[] bArr2, @Nullable Map<String, List<String>> map, @Nullable Throwable th) {
        this.a = z;
        this.b = i;
        this.c = bArr;
        this.d = bArr2;
        this.e = map == null ? Collections.emptyMap() : e.a(map);
        this.f = th;
    }
}
