package il;

import android.content.Context;
import com.transsion.http.d.h;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class e {

    private final int f62146a;

    private final int f62147b;

    private String f62148c;

    private final String f62149d;

    private final Object f62150e;

    private final h f62151f;

    private final boolean f62152g;

    private final Map f62153h;

    private final Context f62154i;

    private final String f62155j;

    private final com.transsion.http.d.a f62156k;

    private final boolean f62157l;

    private final SSLSocketFactory f62158m;

    private final HostnameVerifier f62159n;

    public static final class a {

        private boolean f62160a;

        private int f62161b;

        private int f62162c;

        private boolean f62163d;

        private String f62164e;

        private String f62165f;

        private Object f62166g;

        private h f62167h;

        private boolean f62168i;

        private Context f62169j;

        private String f62170k;

        private com.transsion.http.d.a f62171l;

        private Map f62172m;

        private boolean f62173n;

        private SSLSocketFactory f62174o;

        private HostnameVerifier f62175p;

        public a() {
            jl.a.f63170a.a(this.f62160a);
        }

        public a b(int i10) {
            this.f62161b = i10;
            return this;
        }

        public a c(Context context) {
            this.f62169j = context;
            return this;
        }

        public a d(h hVar) {
            this.f62167h = hVar;
            return this;
        }

        public a e(Object obj) {
            this.f62166g = obj;
            return this;
        }

        public a f(Map map) {
            this.f62172m = map;
            return this;
        }

        public a g(HostnameVerifier hostnameVerifier) {
            this.f62175p = hostnameVerifier;
            return this;
        }

        public a h(SSLSocketFactory sSLSocketFactory) {
            this.f62174o = sSLSocketFactory;
            return this;
        }

        public a i(boolean z10) {
            this.f62163d = z10;
            return this;
        }

        public e j() {
            if (this.f62164e == null) {
                throw new IllegalStateException("url == null");
            }
            if (this.f62174o == null) {
                this.f62174o = new b().a();
            }
            if (this.f62175p == null) {
                this.f62175p = new il.a().a();
            }
            return new e(this);
        }

        public a l(int i10) {
            this.f62162c = i10;
            return this;
        }

        public a m(boolean z10) {
            this.f62168i = z10;
            return this;
        }

        public a n(String str) {
            this.f62164e = str;
            return this;
        }

        public a o(boolean z10) {
            this.f62160a = z10;
            jl.a.f63170a.a(z10);
            return this;
        }
    }

    public e(a aVar) {
        this.f62146a = aVar.f62161b;
        this.f62147b = aVar.f62162c;
        boolean unused = aVar.f62163d;
        this.f62148c = aVar.f62164e;
        this.f62149d = aVar.f62165f;
        this.f62150e = aVar.f62166g != null ? aVar.f62166g : this;
        this.f62151f = aVar.f62167h;
        this.f62153h = aVar.f62172m;
        this.f62152g = aVar.f62168i;
        this.f62154i = aVar.f62169j;
        this.f62155j = aVar.f62170k;
        this.f62156k = aVar.f62171l;
        this.f62157l = aVar.f62173n;
        this.f62158m = aVar.f62174o;
        this.f62159n = aVar.f62175p;
    }

    public int a() {
        return this.f62146a;
    }

    void b(String str) {
        this.f62148c = str;
    }

    public String c() {
        return this.f62149d;
    }

    public com.transsion.http.d.a d() {
        return this.f62156k;
    }

    public Context e() {
        return this.f62154i;
    }

    public Map f() {
        return this.f62153h;
    }

    public HostnameVerifier g() {
        return this.f62159n;
    }

    public h h() {
        return this.f62151f;
    }

    public String i() {
        return this.f62155j;
    }

    public int j() {
        return this.f62147b;
    }

    public boolean k() {
        return this.f62157l;
    }

    public SSLSocketFactory l() {
        return this.f62158m;
    }

    public Object m() {
        return this.f62150e;
    }

    public String n() {
        return this.f62148c;
    }

    public boolean o() {
        return this.f62152g;
    }
}
