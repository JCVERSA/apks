package defpackage;

import android.text.TextUtils;
import com.transsion.http.request.HttpMethod;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

public class kod implements Cloneable {
    public final hnd b;
    public HttpURLConnection c = null;
    public InputStream d = null;
    public int e = 480;

    public kod(hnd hndVar) {
        this.b = hndVar;
    }

    public void a() {
        try {
            InputStream inputStream = this.d;
            if (inputStream != null) {
                lv4.a(inputStream);
                this.d = null;
            }
            HttpURLConnection httpURLConnection = this.c;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public long c() {
        int iAvailable;
        HttpURLConnection httpURLConnection = this.c;
        long contentLength = 0;
        try {
            if (httpURLConnection != null) {
                try {
                    contentLength = httpURLConnection.getContentLength();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                if (contentLength >= 1) {
                    return contentLength;
                }
                iAvailable = d().available();
            } else {
                iAvailable = d().available();
            }
            contentLength = iAvailable;
            return contentLength;
        } catch (Throwable unused) {
            return contentLength;
        }
    }

    public InputStream d() {
        HttpURLConnection httpURLConnection = this.c;
        if (httpURLConnection != null && this.d == null) {
            this.d = httpURLConnection.getResponseCode() >= 400 ? this.c.getErrorStream() : this.c.getInputStream();
        }
        return this.d;
    }

    public hnd e() {
        return this.b;
    }

    public int f() {
        if (this.c != null) {
            return this.e;
        }
        return 404;
    }

    public Map g() {
        HttpURLConnection httpURLConnection = this.c;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    public void h() throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new x7d(this.b.n()).b().openConnection();
        this.c = httpURLConnection;
        httpURLConnection.setReadTimeout(this.b.j());
        this.c.setConnectTimeout(this.b.a());
        if ((this.c instanceof HttpsURLConnection) && this.b.q()) {
            ((HttpsURLConnection) this.c).setSSLSocketFactory(this.b.l());
            ((HttpsURLConnection) this.c).setHostnameVerifier(this.b.g());
        }
        HttpMethod httpMethodH = this.b.h();
        this.c.setRequestMethod(httpMethodH.toString());
        if (this.b.f() != null) {
            for (String str : this.b.f().keySet()) {
                this.c.setRequestProperty(str, (String) this.b.f().get(str));
            }
        }
        if (HttpMethod.permitsRequestBody(httpMethodH)) {
            this.c.setRequestProperty("connection", "Keep-Alive");
            this.c.setRequestProperty("charset", "utf-8");
            this.c.setRequestProperty("Content-Type", this.b.d().toString());
            long length = this.b.c().getBytes().length;
            if (length < 0) {
                this.c.setChunkedStreamingMode(262144);
            } else if (length < 2147483647L) {
                this.c.setFixedLengthStreamingMode((int) length);
            } else {
                this.c.setFixedLengthStreamingMode(length);
            }
            this.c.setRequestProperty("Content-Length", String.valueOf(length));
            this.c.setDoOutput(true);
            OutputStream outputStream = this.c.getOutputStream();
            this.e = 481;
            outputStream.write(this.b.c().getBytes());
            outputStream.flush();
            outputStream.close();
        }
        int responseCode = this.c.getResponseCode();
        this.e = responseCode;
        if (302 == responseCode || 301 == responseCode) {
            String headerField = this.c.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                return;
            }
            a();
            this.b.b(headerField);
            h();
        }
    }
}
