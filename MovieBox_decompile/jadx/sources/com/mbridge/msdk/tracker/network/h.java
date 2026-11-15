package com.mbridge.msdk.tracker.network;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.HashMap;
import java.util.Map;

public abstract class h<T> extends t<T> {
    protected static final String B = "h";
    private boolean A;

    private final long f37746w;

    private Map<String, String> f37747x;

    private Map<String, String> f37748y;

    private x f37749z;

    public h(int i10, String str, int i11, String str2, long j10) {
        super(i10, str, i11, str2);
        this.A = false;
        if (j10 > 0) {
            this.f37746w = j10;
        } else {
            this.f37746w = 60000L;
        }
    }

    public void a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        if (this.f37747x == null) {
            this.f37747x = new HashMap();
        }
        try {
            this.f37747x.putAll(map);
        } catch (Exception e10) {
            o0.b(B, "addParams error: " + e10.getMessage());
        }
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f37748y == null) {
            this.f37748y = new HashMap();
        }
        try {
            this.f37748y.put(str, str2);
        } catch (Exception e10) {
            o0.b(B, "addHeader error: " + e10.getMessage());
        }
    }

    public void d(boolean z10) {
        this.A = z10;
    }

    @Override
    public Map<String, String> f() {
        if (this.f37748y == null) {
            this.f37748y = new HashMap();
        }
        this.f37748y.put("Charset", "UTF-8");
        return this.f37748y;
    }

    @Override
    protected Map<String, String> i() {
        if (this.f37747x == null) {
            this.f37747x = new HashMap();
        }
        return this.f37747x;
    }

    @Override
    public x o() {
        if (this.f37749z == null) {
            this.f37749z = new e(30000, this.f37746w, 3);
        }
        return this.f37749z;
    }

    @Override
    public boolean a() {
        return this.A && com.mbridge.msdk.foundation.same.d.a(p(), t());
    }
}
