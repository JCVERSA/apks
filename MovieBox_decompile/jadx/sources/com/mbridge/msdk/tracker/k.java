package com.mbridge.msdk.tracker;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

class k {

    private static volatile String f37697o = "";

    private final String f37698a;

    private final m f37699b;

    private Context f37700c;

    private x f37701d;

    private JSONObject f37702e;

    private List<String> f37703f;

    private List<String> f37704g;

    private volatile c f37705h;

    private volatile l f37706i;

    private volatile d f37707j;

    private volatile j f37708k;

    private volatile s f37709l;

    private volatile boolean f37710m = true;

    private volatile o f37711n;

    k(String str, m mVar) {
        this.f37698a = str;
        this.f37699b = mVar;
    }

    void a(Context context) {
        this.f37700c = context;
    }

    x b() {
        x xVar = this.f37701d;
        if (xVar != null) {
            return xVar;
        }
        x xVarA = new x.b().a();
        this.f37701d = xVarA;
        return xVarA;
    }

    Context c() {
        return this.f37700c;
    }

    c d() {
        if (y.b(this.f37705h)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f37705h)) {
                        String strT = t();
                        this.f37705h = new c(new b(c(), e(), strT), strT);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f37705h;
    }

    String e() {
        return TextUtils.isEmpty(v()) ? String.format("track_manager_%s.db", "default") : String.format("track_manager_%s.db", v());
    }

    d f() {
        if (y.b(this.f37707j)) {
            this.f37707j = b().f37915h;
        }
        return this.f37707j;
    }

    l g() {
        if (y.b(this.f37706i)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f37706i)) {
                        this.f37706i = new q(new g(d(), p()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f37706i;
    }

    j h() {
        if (y.b(this.f37708k)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f37708k)) {
                        this.f37708k = new j();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f37708k;
    }

    int i() {
        if (b().f37908a < 0) {
            return 50;
        }
        return b().f37908a;
    }

    int j() {
        return Math.max(b().f37912e, 0);
    }

    int k() {
        if (b().f37911d <= 0) {
            return 2;
        }
        return b().f37911d;
    }

    int l() {
        return Math.max(b().f37909b, 0);
    }

    o m() {
        if (y.b(this.f37711n)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f37711n)) {
                        this.f37711n = new o(k(), n(), r(), q());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f37711n;
    }

    p n() {
        return b().f37914g;
    }

    JSONObject o() {
        JSONObject jSONObject = this.f37702e;
        if (jSONObject != null) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        this.f37702e = jSONObject2;
        return jSONObject2;
    }

    s p() {
        if (y.b(this.f37709l)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f37709l)) {
                        this.f37709l = new s(this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f37709l;
    }

    int q() {
        return b().f37910c;
    }

    w r() {
        return b().f37916i;
    }

    String s() {
        if (!TextUtils.isEmpty(f37697o)) {
            return f37697o;
        }
        String string = UUID.randomUUID().toString();
        f37697o = string;
        return string;
    }

    String t() {
        return "event_table";
    }

    m u() {
        return this.f37699b;
    }

    String v() {
        return this.f37698a;
    }

    boolean w() {
        return this.f37710m;
    }

    String x() {
        if (!y.b(this.f37700c) && !y.b(this.f37701d)) {
            try {
                p().j();
                this.f37710m = false;
                if (TextUtils.isEmpty(f37697o)) {
                    f37697o = UUID.randomUUID().toString();
                }
                return f37697o;
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "start error", e10);
                }
                this.f37710m = true;
            }
        }
        return "";
    }

    void a(x xVar) {
        this.f37701d = xVar;
    }

    void a(JSONObject jSONObject) {
        this.f37702e = jSONObject;
    }

    boolean a(e eVar) {
        if (y.b(eVar)) {
            return false;
        }
        f fVar = b().f37917j;
        if (y.a(fVar)) {
            try {
                return fVar.a(eVar);
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "event filter apply exception", e10);
                }
            }
        }
        String strB = eVar.b();
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        List<String> list = this.f37704g;
        if (list != null) {
            try {
                return !list.contains(strB);
            } catch (Exception e11) {
                if (a.f37664a) {
                    Log.e("TrackManager", "disallowTrackEventNames contains exception", e11);
                }
            }
        }
        List<String> list2 = this.f37703f;
        if (list2 != null) {
            try {
                return list2.contains(strB);
            } catch (Exception e12) {
                if (a.f37664a) {
                    Log.e("TrackManager", "allowTrackEventNames contains exception", e12);
                }
            }
        }
        return true;
    }

    boolean a() throws IllegalStateException {
        if (!y.b(b())) {
            if (!y.b(f())) {
                if (!y.b(r())) {
                    if (!y.b(n()) && !y.b(n().b())) {
                        if (TextUtils.isEmpty(n().c())) {
                            throw new IllegalStateException("report url is null");
                        }
                        return true;
                    }
                    throw new IllegalStateException("networkStackConfig or stack can not be null");
                }
                throw new IllegalStateException("responseHandler can not be null");
            }
            throw new IllegalStateException("decorate can not be null");
        }
        throw new IllegalStateException("config can not be null");
    }
}
