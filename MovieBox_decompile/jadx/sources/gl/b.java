package gl;

import java.util.LinkedHashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public abstract class b {

    protected String f61072a;

    protected Object f61073b;

    protected Map f61074c = new LinkedHashMap();

    protected boolean f61075d = true;

    protected int f61076e = 10000;

    protected int f61077f = 10000;

    protected boolean f61078g = false;

    protected SSLSocketFactory f61079h;

    protected HostnameVerifier f61080i;

    public b a(int i10) {
        this.f61076e = i10;
        return this;
    }

    public b b(boolean z10) {
        this.f61075d = z10;
        return this;
    }

    public b c(int i10) {
        this.f61077f = i10;
        return this;
    }

    public b d(String str) {
        this.f61072a = str;
        return this;
    }
}
