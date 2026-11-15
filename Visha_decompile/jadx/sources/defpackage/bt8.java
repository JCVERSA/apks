package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public abstract class bt8 {
    public String a;
    public Object b;
    public SSLSocketFactory h;
    public HostnameVerifier i;
    public Map c = new LinkedHashMap();
    public boolean d = true;
    public int e = 10000;
    public int f = 10000;
    public boolean g = false;
    public boolean j = false;
    public boolean k = true;

    public bt8 a(String str, String str2) {
        this.c.put(str, str2);
        return this;
    }

    public bt8 b(int i) {
        this.e = i;
        return this;
    }

    public bt8 c(boolean z) {
        this.d = z;
        return this;
    }

    public bt8 d(int i) {
        this.f = i;
        return this;
    }

    public bt8 e(SSLSocketFactory sSLSocketFactory) {
        this.h = sSLSocketFactory;
        return this;
    }

    public bt8 f(String str) {
        this.a = str;
        return this;
    }
}
