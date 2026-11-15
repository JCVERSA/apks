package com.mbridge.msdk.tracker;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.HashMap;
import java.util.Map;

public class v<T> extends com.mbridge.msdk.tracker.network.t<T> {
    private com.mbridge.msdk.tracker.network.e A;

    private Map<String, String> f37904w;

    private com.mbridge.msdk.tracker.network.t.a f37905x;

    private com.mbridge.msdk.tracker.network.v.b<T> f37906y;

    private w f37907z;

    public v(String str, int i10) {
        super(i10, str);
    }

    public com.mbridge.msdk.tracker.network.v.b<T> C() {
        return this.f37906y;
    }

    @Override
    public boolean a() {
        return false;
    }

    @Override
    public Map<String, String> f() {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
        map.put("Charset", "UTF-8");
        return map;
    }

    @Override
    protected Map<String, String> i() {
        return this.f37904w;
    }

    @Override
    public com.mbridge.msdk.tracker.network.t.a l() {
        return this.f37905x;
    }

    @Override
    public com.mbridge.msdk.tracker.network.x o() {
        if (y.b(this.A)) {
            this.A = new com.mbridge.msdk.tracker.network.e(30000, 0);
        }
        return this.A;
    }

    public v(String str, int i10, int i11) {
        super(i10, str, i11);
    }

    public void a(w wVar) {
        this.f37907z = wVar;
    }

    public void a(com.mbridge.msdk.tracker.network.t.a aVar) {
        this.f37905x = aVar;
    }

    public void a(Map<String, String> map) {
        this.f37904w = map;
    }

    public void a(com.mbridge.msdk.tracker.network.v.b<T> bVar) {
        this.f37906y = bVar;
    }

    @Override
    protected com.mbridge.msdk.tracker.network.v<T> a(com.mbridge.msdk.tracker.network.q qVar) {
        return this.f37907z.a(qVar);
    }

    @Override
    protected void a(T t10) {
        com.mbridge.msdk.tracker.network.v.b<T> bVarC = C();
        this.f37906y = bVarC;
        if (bVarC != null) {
            bVarC.a(t10);
        }
    }
}
