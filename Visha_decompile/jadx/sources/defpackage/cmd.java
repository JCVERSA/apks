package defpackage;

import android.text.TextUtils;
import com.transsion.http.request.HttpMethod;
import com.transsion.http.request.a;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public class cmd extends jhd {
    public String m;
    public a n;

    public cmd(String str, Object obj, HttpMethod httpMethod, Map map, String str2, boolean z, int i, int i2, boolean z2, a aVar, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z3) {
        super(str, obj, httpMethod, map, z, i, i2, z2, sSLSocketFactory, hostnameVerifier, z3);
        this.m = str2;
        this.n = aVar;
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("the content can not be null !");
        }
        hf1.a.d("post", "post url:" + str);
        hf1.a.d("post", "post content:" + str2);
    }

    @Override
    public hnd b() {
        return this.l.g(this.m).e(this.n).l();
    }
}
