package il;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.transsion.http.d.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

public class f implements Cloneable {

    protected final e f62176a;

    private HttpURLConnection f62177b = null;

    private InputStream f62178c = null;

    private int f62179d = 480;

    public f(e eVar) {
        this.f62176a = eVar;
    }

    public void a() {
        InputStream inputStream = this.f62178c;
        if (inputStream != null) {
            kl.d.a(inputStream);
            this.f62178c = null;
        }
        HttpURLConnection httpURLConnection = this.f62177b;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public long b() {
        int iAvailable;
        HttpURLConnection httpURLConnection = this.f62177b;
        long contentLength = 0;
        try {
            if (httpURLConnection != null) {
                try {
                    contentLength = httpURLConnection.getContentLength();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                if (contentLength >= 1) {
                    return contentLength;
                }
                iAvailable = c().available();
            } else {
                iAvailable = c().available();
            }
            contentLength = iAvailable;
            return contentLength;
        } catch (Throwable unused) {
            return contentLength;
        }
    }

    public InputStream c() {
        HttpURLConnection httpURLConnection = this.f62177b;
        if (httpURLConnection != null && this.f62178c == null) {
            this.f62178c = httpURLConnection.getResponseCode() >= 400 ? this.f62177b.getErrorStream() : this.f62177b.getInputStream();
        }
        return this.f62178c;
    }

    public e e() {
        return this.f62176a;
    }

    public int g() {
        return this.f62177b != null ? this.f62179d : TTAdConstant.DEEPLINK_FALLBACK_CODE;
    }

    public void i() throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new el.c(this.f62176a.n()).b().openConnection()));
        this.f62177b = httpURLConnection;
        httpURLConnection.setReadTimeout(this.f62176a.j());
        this.f62177b.setConnectTimeout(this.f62176a.a());
        HttpURLConnection httpURLConnection2 = this.f62177b;
        if (httpURLConnection2 instanceof HttpsURLConnection) {
            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(this.f62176a.l());
            ((HttpsURLConnection) this.f62177b).setHostnameVerifier(this.f62176a.g());
        }
        h hVarH = this.f62176a.h();
        this.f62177b.setRequestMethod(hVarH.toString());
        if (this.f62176a.f() != null) {
            for (String str : this.f62176a.f().keySet()) {
                this.f62177b.setRequestProperty(str, (String) this.f62176a.f().get(str));
            }
        }
        if (hVarH == h.f44578b || hVarH == h.f44579c || hVarH == h.f44580d || hVarH == h.f44584h) {
            this.f62177b.setRequestProperty("connection", "Keep-Alive");
            this.f62177b.setRequestProperty("charset", "utf-8");
            this.f62177b.setRequestProperty(HttpHeaders.CONTENT_TYPE, this.f62176a.d().toString());
            long length = this.f62176a.c().getBytes().length;
            if (length < 0) {
                this.f62177b.setChunkedStreamingMode(262144);
            } else if (length < 2147483647L) {
                this.f62177b.setFixedLengthStreamingMode((int) length);
            } else {
                this.f62177b.setFixedLengthStreamingMode(length);
            }
            this.f62177b.setRequestProperty(HttpHeaders.CONTENT_LENGTH, String.valueOf(length));
            this.f62177b.setDoOutput(true);
            OutputStream outputStream = this.f62177b.getOutputStream();
            this.f62179d = 481;
            outputStream.write(this.f62176a.c().getBytes());
            outputStream.flush();
            outputStream.close();
        }
        int responseCode = this.f62177b.getResponseCode();
        this.f62179d = responseCode;
        if (302 == responseCode || 301 == responseCode) {
            String headerField = this.f62177b.getHeaderField(HttpHeaders.LOCATION);
            if (TextUtils.isEmpty(headerField)) {
                return;
            }
            a();
            this.f62176a.b(headerField);
            i();
        }
    }
}
