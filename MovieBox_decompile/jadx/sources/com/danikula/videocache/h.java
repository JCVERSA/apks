package com.danikula.videocache;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

public class h {

    private final r7.b f23386a;

    private o f23387b;

    private HttpURLConnection f23388c;

    private InputStream f23389d;

    public h(String str) {
        this(str, new r7.a());
    }

    private long b(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(HttpHeaders.CONTENT_LENGTH);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    private void c(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry entry : this.f23386a.a(str).entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
    }

    private HttpURLConnection e(long j10, int i10) throws IOException, ProxyCacheException {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z10;
        String headerField = this.f23387b.f23406a;
        int i11 = 0;
        do {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Open connection ");
            if (j10 > 0) {
                str = " with offset " + j10;
            } else {
                str = "";
            }
            sb2.append(str);
            sb2.append(" to ");
            sb2.append(headerField);
            q.a(sb2.toString());
            httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(headerField).openConnection()));
            c(httpURLConnection, headerField);
            if (j10 > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + j10 + "-");
            }
            if (i10 > 0) {
                httpURLConnection.setConnectTimeout(i10);
                httpURLConnection.setReadTimeout(i10);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z10 = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z10) {
                headerField = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                i11++;
                httpURLConnection.disconnect();
            }
            if (i11 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i11);
            }
        } while (z10);
        return httpURLConnection;
    }

    private long g(HttpURLConnection httpURLConnection, long j10, int i10) {
        long jB = b(httpURLConnection);
        if (i10 == 200) {
            return jB;
        }
        return i10 == 206 ? jB + j10 : this.f23387b.f23407b;
    }

    public void a() {
        HttpURLConnection httpURLConnection = this.f23388c;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException unused) {
                q.b("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue.");
            } catch (IllegalArgumentException e10) {
                e = e10;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e11) {
                e = e11;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    public void d(long j10) throws ProxyCacheException {
        try {
            HttpURLConnection httpURLConnectionE = e(j10, -1);
            this.f23388c = httpURLConnectionE;
            String contentType = httpURLConnectionE.getContentType();
            this.f23389d = new BufferedInputStream(this.f23388c.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f23388c;
            this.f23387b = new o(this.f23387b.f23406a, g(httpURLConnection, j10, httpURLConnection.getResponseCode()), contentType);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error opening connection for " + this.f23387b.f23406a + " with offset " + j10, e10);
        }
    }

    public int f(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.f23389d;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.f23387b.f23406a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e10) {
            throw new InterruptedProxyCacheException("Reading source " + this.f23387b.f23406a + " is interrupted", e10);
        } catch (IOException e11) {
            throw new ProxyCacheException("Error reading data from " + this.f23387b.f23406a, e11);
        }
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f23387b + "}";
    }

    public h(String str, r7.b bVar) {
        this.f23386a = (r7.b) l.c(bVar);
        this.f23387b = new o(str, -2147483648L, n.d(str));
    }
}
