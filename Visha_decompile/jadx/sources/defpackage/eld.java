package defpackage;

import android.content.Context;
import com.transsion.http.request.HttpMethod;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public class eld extends jhd {
    public boolean m;
    public Context n;
    public boolean o;

    public eld(Context context, String str, boolean z, Object obj, HttpMethod httpMethod, Map map, boolean z2, int i, int i2, boolean z3, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z4, boolean z5) {
        super(str, obj, httpMethod, map, z2, i, i2, z3, sSLSocketFactory, hostnameVerifier, z5);
        this.m = z;
        this.n = context;
        this.o = z4;
        hf1.a.d("image", "origin image url:" + str);
    }

    @Override
    public hnd b() {
        return this.l.r(this.m).k(this.o).c(this.n).l();
    }
}
