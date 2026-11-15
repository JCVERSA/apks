package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public final class HttpDataSource$InvalidResponseCodeException extends HttpDataSource$HttpDataSourceException {
    public final Map<String, List<String>> headerFields;
    public final byte[] responseBody;
    public final int responseCode;

    @Nullable
    public final String responseMessage;

    @Deprecated
    public HttpDataSource$InvalidResponseCodeException(int i10, Map<String, List<String>> map, n nVar) {
        this(i10, null, null, map, nVar, p0.f26859f);
    }

    @Deprecated
    public HttpDataSource$InvalidResponseCodeException(int i10, @Nullable String str, Map<String, List<String>> map, n nVar) {
        this(i10, str, null, map, nVar, p0.f26859f);
    }

    public HttpDataSource$InvalidResponseCodeException(int i10, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, n nVar, byte[] bArr) {
        super("Response code: " + i10, iOException, nVar, 2004, 1);
        this.responseCode = i10;
        this.responseMessage = str;
        this.headerFields = map;
        this.responseBody = bArr;
    }
}
