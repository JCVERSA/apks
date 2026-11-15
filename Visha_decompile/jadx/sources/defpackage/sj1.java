package defpackage;

import java.util.List;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;

public class sj1 implements CookieJar {
    public vj1 a;

    public sj1(vj1 vj1Var) {
        if (vj1Var == null) {
            throw new IllegalArgumentException("cookieStore can not be null!");
        }
        this.a = vj1Var;
    }

    @Override
    public synchronized List loadForRequest(HttpUrl httpUrl) {
        return this.a.a(httpUrl);
    }

    @Override
    public synchronized void saveFromResponse(HttpUrl httpUrl, List list) {
        this.a.b(httpUrl, list);
    }
}
