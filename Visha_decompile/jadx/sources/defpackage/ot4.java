package defpackage;

import android.text.TextUtils;
import com.danikula.videocache.InterruptedProxyCacheException;
import com.danikula.videocache.ProxyCacheException;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.apache.commons.text.StringSubstitutor;

public class ot4 implements xt9 {
    public static final qq5 f = sq5.j("HttpUrlSource");
    public final bu9 a;
    public final po4 b;
    public au9 c;
    public HttpURLConnection d;
    public InputStream e;

    public ot4(String str) {
        this(str, cu9.a());
    }

    @Override
    public void a(long j) throws ProxyCacheException {
        try {
            HttpURLConnection httpURLConnectionG = g(j, -1);
            this.d = httpURLConnectionG;
            String contentType = httpURLConnectionG.getContentType();
            this.e = new BufferedInputStream(this.d.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.d;
            au9 au9Var = new au9(this.c.a, h(httpURLConnection, j, httpURLConnection.getResponseCode()), contentType);
            this.c = au9Var;
            this.a.a(au9Var.a, au9Var);
        } catch (IOException e) {
            throw new ProxyCacheException("Error opening connection for " + this.c.a + " with offset " + j, e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x008d  */
    public final void b() throws Throwable {
        HttpURLConnection httpURLConnectionG;
        qq5 qq5Var = f;
        qq5Var.debug("Read content info from " + this.c.a);
        InputStream inputStream = null;
        try {
            httpURLConnectionG = g(0L, 10000);
            try {
                try {
                    long jC = c(httpURLConnectionG);
                    String contentType = httpURLConnectionG.getContentType();
                    inputStream = httpURLConnectionG.getInputStream();
                    au9 au9Var = new au9(this.c.a, jC, contentType);
                    this.c = au9Var;
                    this.a.a(au9Var.a, au9Var);
                    qq5Var.debug("Source info fetched: " + this.c);
                    vj8.c(inputStream);
                } catch (IOException e) {
                    e = e;
                    f.error("Error fetching info from " + this.c.a, e);
                    vj8.c(inputStream);
                    if (httpURLConnectionG == null) {
                        return;
                    }
                }
            } catch (Throwable th) {
                th = th;
                vj8.c(inputStream);
                if (httpURLConnectionG != null) {
                    httpURLConnectionG.disconnect();
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            httpURLConnectionG = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnectionG = null;
            vj8.c(inputStream);
            if (httpURLConnectionG != null) {
                httpURLConnectionG.disconnect();
            }
            throw th;
        }
        httpURLConnectionG.disconnect();
    }

    public final long c(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override
    public void close() {
        HttpURLConnection httpURLConnection = this.d;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e) {
                f.error("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(", e);
            } catch (IllegalArgumentException | NullPointerException e2) {
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e2);
            }
        }
    }

    public synchronized String d() {
        try {
            if (TextUtils.isEmpty(this.c.c)) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c.c;
    }

    public String e() {
        return this.c.a;
    }

    public final void f(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry entry : this.b.a(str).entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public final HttpURLConnection g(long j, int i) throws IOException, ProxyCacheException {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z;
        String headerField = this.c.a;
        int i2 = 0;
        do {
            qq5 qq5Var = f;
            StringBuilder sb = new StringBuilder();
            sb.append("Open connection ");
            if (j > 0) {
                str = " with offset " + j;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" to ");
            sb.append(headerField);
            qq5Var.debug(sb.toString());
            httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
            f(httpURLConnection, headerField);
            if (j > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + j + "-");
            }
            if (i > 0) {
                httpURLConnection.setConnectTimeout(i);
                httpURLConnection.setReadTimeout(i);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z) {
                headerField = httpURLConnection.getHeaderField("Location");
                i2++;
                httpURLConnection.disconnect();
            }
            if (i2 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i2);
            }
        } while (z);
        return httpURLConnection;
    }

    public final long h(HttpURLConnection httpURLConnection, long j, int i) {
        long jC = c(httpURLConnection);
        if (i == 200) {
            return jC;
        }
        return i == 206 ? jC + j : this.c.b;
    }

    @Override
    public synchronized long length() {
        try {
            if (this.c.b == -2147483648L) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c.b;
    }

    @Override
    public int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.e;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.c.a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e) {
            throw new InterruptedProxyCacheException("Reading source " + this.c.a + " is interrupted", e);
        } catch (IOException e2) {
            throw new ProxyCacheException("Error reading data from " + this.c.a, e2);
        }
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }

    public ot4(String str, bu9 bu9Var) {
        this(str, bu9Var, new p93());
    }

    public ot4(String str, bu9 bu9Var, po4 po4Var) {
        this.a = (bu9) ae8.d(bu9Var);
        this.b = (po4) ae8.d(po4Var);
        au9 au9Var = bu9Var.get(str);
        this.c = au9Var == null ? new au9(str, -2147483648L, vj8.g(str)) : au9Var;
    }

    public ot4(ot4 ot4Var) {
        this.c = ot4Var.c;
        this.a = ot4Var.a;
        this.b = ot4Var.b;
    }
}
