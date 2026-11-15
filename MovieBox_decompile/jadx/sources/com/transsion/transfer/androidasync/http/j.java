package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.transfer.androidasync.AsyncSSLException;
import java.util.Locale;

public class j {

    private String f53291a;

    private String f53292b;

    Uri f53293c;

    private Headers f53294d;

    private boolean f53295e;

    private tt.a f53296f;

    int f53297g;

    String f53298h;

    int f53299i;

    String f53300j;

    int f53301k;

    long f53302l;

    class a implements y {
        a() {
        }

        public String toString() {
            j jVar = j.this;
            if (jVar.f53298h != null) {
                return String.format(Locale.ENGLISH, "%s %s %s", jVar.f53292b, j.this.p(), j.this.f53291a);
            }
            String strK = jVar.k();
            if (strK == null || strK.length() == 0) {
                strK = "/";
            }
            String encodedQuery = j.this.p().getEncodedQuery();
            if (encodedQuery != null && encodedQuery.length() != 0) {
                strK = strK + UrlUtils.QUESTION_MARK + encodedQuery;
            }
            return String.format(Locale.ENGLISH, "%s %s %s", j.this.f53292b, strK, j.this.f53291a);
        }
    }

    public j(Uri uri, String str) {
        this(uri, str, null);
    }

    protected static String f() {
        String property = System.getProperty("http.agent");
        if (property != null) {
            return property;
        }
        return "Java" + System.getProperty("java.version");
    }

    private String i(String str) {
        return String.format(Locale.ENGLISH, "(%d ms) %s: %s", Long.valueOf(this.f53302l != 0 ? System.currentTimeMillis() - this.f53302l : 0L), p(), str);
    }

    public static void x(Headers headers, Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (uri.getPort() != -1) {
                host = host + ":" + uri.getPort();
            }
            if (host != null) {
                headers.f(HttpHeaders.HOST, host);
            }
        }
        headers.f("User-Agent", f());
        headers.f("Accept-Encoding", "gzip, deflate");
        headers.f("Connection", "keep-alive");
        headers.f("Accept", "*/*");
    }

    public j c(String str, String str2) {
        h().a(str, str2);
        return this;
    }

    public void d(String str, int i10) {
        this.f53298h = str;
        this.f53299i = i10;
    }

    public tt.a e() {
        return this.f53296f;
    }

    public boolean g() {
        return this.f53295e;
    }

    public Headers h() {
        return this.f53294d;
    }

    public String j() {
        return this.f53292b;
    }

    public String k() {
        return p().getEncodedPath();
    }

    public String l() {
        return this.f53298h;
    }

    public int m() {
        return this.f53299i;
    }

    public y n() {
        return new a();
    }

    public int o() {
        return this.f53297g;
    }

    public Uri p() {
        return this.f53293c;
    }

    public boolean q() {
        return true;
    }

    public void r(String str) {
        if (this.f53300j != null && this.f53301k <= 3) {
            i(str);
        }
    }

    public void s(String str, Exception exc) {
        String str2 = this.f53300j;
        if (str2 != null && this.f53301k <= 6) {
            Log.e(str2, i(str));
            Log.e(this.f53300j, exc.getMessage(), exc);
        }
    }

    public void t(String str) {
        if (this.f53300j != null && this.f53301k <= 4) {
            i(str);
        }
    }

    public String toString() {
        Headers headers = this.f53294d;
        return headers == null ? super.toString() : headers.g(this.f53293c.toString());
    }

    public void u(String str) {
        String str2 = this.f53300j;
        if (str2 != null && this.f53301k <= 2) {
            Log.v(str2, i(str));
        }
    }

    public void v(AsyncSSLException asyncSSLException) {
    }

    public void w(tt.a aVar) {
        this.f53296f = aVar;
    }

    public j y(int i10) {
        this.f53297g = i10;
        return this;
    }

    public j(Uri uri, String str, Headers headers) {
        this.f53291a = "HTTP/1.1";
        this.f53294d = new Headers();
        this.f53295e = true;
        this.f53297g = 5000;
        this.f53299i = -1;
        this.f53292b = str;
        this.f53293c = uri;
        if (headers == null) {
            this.f53294d = new Headers();
        } else {
            this.f53294d = headers;
        }
        if (headers == null) {
            x(this.f53294d, uri);
        }
    }
}
