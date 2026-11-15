package com.mbridge.msdk.tracker;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public final class m {

    private static final ConcurrentHashMap<String, m> f37712b = new ConcurrentHashMap<>();

    private final k f37713a;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            try {
                u.a().b();
                m.this.f37713a.p().b();
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    Log.e("TrackManager", "flush error", e10);
                }
            }
        }
    }

    class b implements Runnable {

        final e f37715a;

        final JSONObject f37716b;

        b(e eVar, JSONObject jSONObject) {
            this.f37715a = eVar;
            this.f37716b = jSONObject;
        }

        @Override
        public void run() {
            try {
                m.this.f37713a.g().a(this.f37715a);
                JSONObject jSONObject = this.f37716b;
                if (jSONObject != null) {
                    jSONObject.put("session_id", m.this.d());
                    long[] jArrE = m.this.e();
                    this.f37716b.put("track_time", jArrE[0]);
                    this.f37716b.put("track_count", jArrE[1]);
                    this.f37715a.a(this.f37716b);
                }
                this.f37715a.b(m.this.f37713a.b().f37913f);
                m.this.f37713a.g().b(this.f37715a);
            } catch (Exception unused) {
            }
        }
    }

    private m(String str, Context context, x xVar) {
        k kVar = new k(str, this);
        this.f37713a = kVar;
        kVar.a(context);
        kVar.a(xVar);
    }

    public static m[] b() {
        ConcurrentHashMap<String, m> concurrentHashMap = f37712b;
        m[] mVarArr = new m[concurrentHashMap.size()];
        try {
            Iterator<Map.Entry<String, m>> it = concurrentHashMap.entrySet().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                mVarArr[i10] = it.next().getValue();
                i10++;
            }
        } catch (Exception e10) {
            if (com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", "getAllTrackManager error", e10);
            }
        }
        return mVarArr;
    }

    public JSONObject c() {
        return this.f37713a.o();
    }

    public String d() {
        return this.f37713a.s();
    }

    public long[] e() {
        return this.f37713a.g().a();
    }

    public String f() {
        return this.f37713a.v();
    }

    public boolean g() {
        return !this.f37713a.w();
    }

    public String h() {
        if (!g()) {
            return this.f37713a.x();
        }
        if (com.mbridge.msdk.tracker.a.f37664a) {
            Log.e("TrackManager", "MBridgeTrackManager is already running");
        }
        return d();
    }

    public static m a(String str, Context context, x xVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ConcurrentHashMap<String, m> concurrentHashMap = f37712b;
        m mVar = concurrentHashMap.get(str);
        if (!y.b(mVar)) {
            return mVar;
        }
        m mVar2 = new m(str, context, xVar);
        concurrentHashMap.put(str, mVar2);
        return mVar2;
    }

    public void c(e eVar) {
        d(eVar);
    }

    public void d(e eVar) {
        if (this.f37713a.w()) {
            boolean z10 = com.mbridge.msdk.tracker.a.f37664a;
            return;
        }
        if (eVar != null && b(eVar)) {
            JSONObject jSONObjectD = eVar.d();
            if (jSONObjectD != null && !jSONObjectD.has("ts")) {
                try {
                    jSONObjectD.put("ts", System.currentTimeMillis());
                } catch (Exception e10) {
                    Log.e("TrackManager", "trackEvent error", e10);
                }
            }
            try {
                this.f37713a.h().a(new b(eVar, jSONObjectD));
            } catch (Exception e11) {
                if (com.mbridge.msdk.tracker.a.f37664a) {
                    Log.e("TrackManager", "trackEvent error", e11);
                }
            }
        }
    }

    private boolean b(e eVar) {
        if (y.b(eVar) || TextUtils.isEmpty(eVar.b())) {
            return false;
        }
        return this.f37713a.a(eVar);
    }

    public void a() {
        try {
            this.f37713a.h().a(new a());
        } catch (Exception e10) {
            if (com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", "flush error", e10);
            }
        }
    }

    public void a(JSONObject jSONObject) {
        this.f37713a.a(jSONObject);
    }

    public boolean a(String str) {
        return a(new e(str));
    }

    public boolean a(e eVar) {
        try {
            return b(eVar);
        } catch (Exception unused) {
            return false;
        }
    }
}
