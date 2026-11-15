package defpackage;

import android.content.Context;
import com.transsion.http.request.HttpMethod;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class hnd {
    public final int a;
    public final int b;
    public String c;
    public final String d;
    public final Object e;
    public final HttpMethod f;
    public final boolean g;
    public final Map h;
    public final Context i;
    public final String j;
    public final com.transsion.http.request.a k;
    public final boolean l;
    public final SSLSocketFactory m;
    public final HostnameVerifier n;
    public final boolean o;
    public final boolean p;

    public static final class a {
        public boolean a;
        public int b;
        public int c;
        public boolean d;
        public String e;
        public String f;
        public Object g;
        public HttpMethod h;
        public boolean i;
        public Context j;
        public String k;
        public com.transsion.http.request.a l;
        public Map m;
        public boolean n;
        public SSLSocketFactory o;
        public HostnameVerifier p;
        public boolean q;
        public boolean r = true;

        public a() {
            hf1.a.a(this.a);
        }

        public a b(int i) {
            this.b = i;
            return this;
        }

        public a c(Context context) {
            this.j = context;
            return this;
        }

        public a d(HttpMethod httpMethod) {
            this.h = httpMethod;
            return this;
        }

        public a e(com.transsion.http.request.a aVar) {
            this.l = aVar;
            return this;
        }

        public a f(Object obj) {
            this.g = obj;
            return this;
        }

        public a g(String str) {
            this.f = str;
            return this;
        }

        public a h(Map map) {
            this.m = map;
            return this;
        }

        public a i(HostnameVerifier hostnameVerifier) {
            this.p = hostnameVerifier;
            return this;
        }

        public a j(SSLSocketFactory sSLSocketFactory) {
            this.o = sSLSocketFactory;
            return this;
        }

        public a k(boolean z) {
            this.q = z;
            return this;
        }

        public hnd l() {
            if (this.e == null) {
                throw new IllegalStateException("url == null");
            }
            if (this.o == null) {
                this.o = new k9d().a();
            }
            if (this.p == null) {
                this.p = new k6d().a();
            }
            return new hnd(this);
        }

        public a n(int i) {
            this.c = i;
            return this;
        }

        public a o(boolean z) {
            this.d = z;
            return this;
        }

        public a q(String str) {
            this.e = str;
            return this;
        }

        public a r(boolean z) {
            this.i = z;
            return this;
        }

        public a t(boolean z) {
            this.a = z;
            hf1.a.a(z);
            return this;
        }

        public a w(boolean z) {
            this.r = z;
            return this;
        }
    }

    public hnd(a aVar) {
        this.a = aVar.b;
        this.b = aVar.c;
        boolean unused = aVar.d;
        this.c = aVar.e;
        this.d = aVar.f;
        this.e = aVar.g != null ? aVar.g : this;
        this.f = aVar.h;
        this.h = aVar.m;
        this.g = aVar.i;
        this.i = aVar.j;
        this.j = aVar.k;
        this.k = aVar.l;
        this.l = aVar.n;
        this.m = aVar.o;
        this.n = aVar.p;
        this.o = aVar.q;
        this.p = aVar.r;
    }

    public int a() {
        return this.a;
    }

    public void b(String str) {
        this.c = str;
    }

    public String c() {
        return this.d;
    }

    public com.transsion.http.request.a d() {
        return this.k;
    }

    public Context e() {
        return this.i;
    }

    public Map f() {
        return this.h;
    }

    public HostnameVerifier g() {
        return this.n;
    }

    public HttpMethod h() {
        return this.f;
    }

    public String i() {
        return this.j;
    }

    public int j() {
        return this.b;
    }

    public boolean k() {
        return this.l;
    }

    public SSLSocketFactory l() {
        return this.m;
    }

    public Object m() {
        return this.e;
    }

    public String n() {
        return this.c;
    }

    public boolean o() {
        return this.o;
    }

    public boolean p() {
        return this.g;
    }

    public boolean q() {
        return this.p;
    }
}
