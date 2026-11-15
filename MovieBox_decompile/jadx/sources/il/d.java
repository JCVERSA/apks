package il;

import android.content.Context;
import com.transsion.http.d.h;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public class d extends c {

    private boolean f62144l;

    private Context f62145m;

    public d(Context context, String str, boolean z10, Object obj, h hVar, Map map, boolean z11, int i10, int i11, boolean z12, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        super(str, obj, hVar, map, z11, i10, i11, z12, sSLSocketFactory, hostnameVerifier);
        this.f62144l = z10;
        this.f62145m = context;
        jl.a.f63170a.d("image", "origin image url:" + str);
    }

    @Override
    protected e b() {
        return this.f62143k.m(this.f62144l).c(this.f62145m).j();
    }
}
