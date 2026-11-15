package defpackage;

import com.transsion.http.request.HttpMethod;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public abstract class jhd {
    public final String a;
    public final Object b;
    public final HttpMethod c;
    public final boolean d;
    public final Map e;
    public int f;
    public int g;
    public boolean h;
    public SSLSocketFactory i;
    public HostnameVerifier j;
    public boolean k;
    public hnd.a l;

    public jhd(String str, Object obj, HttpMethod httpMethod, Map map, boolean z, int i, int i2, boolean z2, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z3) {
        hnd.a aVar = new hnd.a();
        this.l = aVar;
        this.a = str;
        this.b = obj;
        this.c = httpMethod;
        this.e = map;
        this.d = z;
        this.f = i;
        this.g = i2;
        this.h = z2;
        this.i = sSLSocketFactory;
        this.j = hostnameVerifier;
        this.k = z3;
        aVar.q(str).f(obj).d(httpMethod).h(map).t(z).b(this.f).n(this.g).o(this.h).j(this.i).i(this.j).w(this.k);
    }

    public ct8 a() {
        return new ct8(this);
    }

    public abstract hnd b();

    public hnd c() {
        return b();
    }
}
