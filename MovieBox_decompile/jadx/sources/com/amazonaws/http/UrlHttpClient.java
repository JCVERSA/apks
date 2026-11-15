package com.amazonaws.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class UrlHttpClient implements HttpClient {

    private static final Log f17786c = LogFactory.b(UrlHttpClient.class);

    private final ClientConfiguration f17787a;

    private SSLContext f17788b = null;

    protected final class CurlBuilder {

        private final URL f17789a;

        private String f17790b = null;

        private final HashMap f17791c = new HashMap();

        private String f17792d = null;

        private boolean f17793e = false;

        public CurlBuilder(URL url) {
            if (url == null) {
                throw new IllegalArgumentException("Must have a valid url");
            }
            this.f17789a = url;
        }

        public String a() {
            if (!b()) {
                throw new IllegalStateException("Invalid state, cannot create curl command");
            }
            StringBuilder sb2 = new StringBuilder("curl");
            if (this.f17790b != null) {
                sb2.append(" -X ");
                sb2.append(this.f17790b);
            }
            for (Map.Entry entry : this.f17791c.entrySet()) {
                sb2.append(" -H \"");
                sb2.append((String) entry.getKey());
                sb2.append(":");
                sb2.append((String) entry.getValue());
                sb2.append("\"");
            }
            if (this.f17792d != null) {
                sb2.append(" -d '");
                sb2.append(this.f17792d);
                sb2.append("'");
            }
            sb2.append(" ");
            sb2.append(this.f17789a.toString());
            return sb2.toString();
        }

        public boolean b() {
            return !this.f17793e;
        }

        public CurlBuilder c(String str) {
            this.f17792d = str;
            return this;
        }

        public CurlBuilder d(boolean z10) {
            this.f17793e = z10;
            return this;
        }

        public CurlBuilder e(Map map) {
            this.f17791c.clear();
            this.f17791c.putAll(map);
            return this;
        }

        public CurlBuilder f(String str) {
            this.f17790b = str;
            return this;
        }
    }

    public UrlHttpClient(ClientConfiguration clientConfiguration) {
        this.f17787a = clientConfiguration;
    }

    private void e(HttpsURLConnection httpsURLConnection) {
        if (this.f17788b == null) {
            TrustManager[] trustManagerArr = {this.f17787a.g()};
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                this.f17788b = sSLContext;
                sSLContext.init(null, trustManagerArr, null);
            } catch (GeneralSecurityException e10) {
                throw new RuntimeException(e10);
            }
        }
        httpsURLConnection.setSSLSocketFactory(this.f17788b.getSocketFactory());
    }

    private void g(InputStream inputStream, OutputStream outputStream, CurlBuilder curlBuilder, ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return;
            }
            if (byteBuffer != null) {
                try {
                    byteBuffer.put(bArr, 0, i10);
                } catch (BufferOverflowException unused) {
                    curlBuilder.d(true);
                }
            }
            outputStream.write(bArr, 0, i10);
        }
    }

    @Override
    public HttpResponse a(HttpRequest httpRequest) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(httpRequest.e().toURL().openConnection()));
        CurlBuilder curlBuilder = this.f17787a.j() ? new CurlBuilder(httpRequest.e().toURL()) : null;
        c(httpRequest, httpURLConnection);
        b(httpRequest, httpURLConnection, curlBuilder);
        h(httpRequest, httpURLConnection, curlBuilder);
        if (curlBuilder != null) {
            if (curlBuilder.b()) {
                f(curlBuilder.a());
            } else {
                f("Failed to create curl, content too long");
            }
        }
        return d(httpRequest, httpURLConnection);
    }

    HttpURLConnection b(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws ProtocolException {
        if (httpRequest.c() != null && !httpRequest.c().isEmpty()) {
            if (curlBuilder != null) {
                curlBuilder.e(httpRequest.c());
            }
            for (Map.Entry entry : httpRequest.c().entrySet()) {
                String str = (String) entry.getKey();
                if (!str.equals(HttpHeaders.CONTENT_LENGTH) && !str.equals(HttpHeaders.HOST)) {
                    str.equals("Expect");
                    httpURLConnection.setRequestProperty(str, (String) entry.getValue());
                }
            }
        }
        String strD = httpRequest.d();
        httpURLConnection.setRequestMethod(strD);
        if (curlBuilder != null) {
            curlBuilder.f(strD);
        }
        return httpURLConnection;
    }

    void c(HttpRequest httpRequest, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(this.f17787a.a());
        httpURLConnection.setReadTimeout(this.f17787a.f());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        if (httpRequest.f()) {
            httpURLConnection.setChunkedStreamingMode(0);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (this.f17787a.g() != null) {
                e(httpsURLConnection);
            }
        }
    }

    HttpResponse d(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        String responseMessage = httpURLConnection.getResponseMessage();
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null && !"HEAD".equals(httpRequest.d())) {
            try {
                errorStream = httpURLConnection.getInputStream();
            } catch (IOException unused) {
            }
        }
        HttpResponse.Builder builderB = HttpResponse.a().d(responseCode).e(responseMessage).b(errorStream);
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                builderB.c(entry.getKey(), entry.getValue().get(0));
            }
        }
        return builderB.a();
    }

    protected void f(String str) {
        f17786c.a(str);
    }

    void h(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws IOException {
        ByteBuffer byteBufferAllocate;
        if (httpRequest.a() == null || httpRequest.b() < 0) {
            return;
        }
        httpURLConnection.setDoOutput(true);
        if (!httpRequest.f()) {
            httpURLConnection.setFixedLengthStreamingMode((int) httpRequest.b());
        }
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (curlBuilder == null) {
            byteBufferAllocate = null;
        } else if (httpRequest.b() < 2147483647L) {
            byteBufferAllocate = ByteBuffer.allocate((int) httpRequest.b());
        } else {
            curlBuilder.d(true);
            byteBufferAllocate = null;
        }
        g(httpRequest.a(), outputStream, curlBuilder, byteBufferAllocate);
        if (curlBuilder != null && byteBufferAllocate != null && byteBufferAllocate.position() != 0) {
            curlBuilder.c(new String(byteBufferAllocate.array(), "UTF-8"));
        }
        outputStream.flush();
        outputStream.close();
    }

    @Override
    public void shutdown() {
    }
}
