package il;

import com.transsion.http.d.h;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public abstract class c {

    protected final String f62133a;

    protected final Object f62134b;

    protected final h f62135c;

    protected final boolean f62136d;

    protected final Map f62137e;

    protected int f62138f;

    protected int f62139g;

    protected boolean f62140h;

    protected SSLSocketFactory f62141i;

    protected HostnameVerifier f62142j;

    protected e.a f62143k;

    public c(String str, Object obj, h hVar, Map map, boolean z10, int i10, int i11, boolean z11, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        e.a aVar = new e.a();
        this.f62143k = aVar;
        this.f62133a = str;
        this.f62134b = obj;
        this.f62135c = hVar;
        this.f62137e = map;
        this.f62136d = z10;
        this.f62138f = i10;
        this.f62139g = i11;
        this.f62140h = z11;
        this.f62141i = sSLSocketFactory;
        this.f62142j = hostnameVerifier;
        aVar.n(str).e(obj).d(hVar).f(map).o(z10).b(this.f62138f).l(this.f62139g).i(this.f62140h).h(this.f62141i).g(this.f62142j);
    }

    public el.b a() {
        return new el.b(this);
    }

    protected abstract e b();

    public e c() {
        return b();
    }
}
