package io.appmetrica.analytics.networktasks.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;

public class ResponseDataHolder {
    private int a;
    private byte[] b;
    private Map c;
    private final ResponseValidityChecker d;

    public ResponseDataHolder(@NonNull ResponseValidityChecker responseValidityChecker) {
        this.d = responseValidityChecker;
    }

    public int getResponseCode() {
        return this.a;
    }

    @Nullable
    public byte[] getResponseData() {
        return this.b;
    }

    @Nullable
    public Map<String, List<String>> getResponseHeaders() {
        return this.c;
    }

    public boolean isValidResponse() {
        return this.d.isResponseValid(this.a);
    }

    public void setResponseCode(int i) {
        this.a = i;
    }

    public void setResponseData(@Nullable byte[] bArr) {
        this.b = bArr;
    }

    public void setResponseHeaders(@Nullable Map<String, List<String>> map) {
        this.c = map;
    }
}
