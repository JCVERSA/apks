package com.mbridge.msdk.foundation.db.middle;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.k;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class b {

    private com.mbridge.msdk.foundation.same.buffer.a f34276a;

    private k f34277b;

    class a implements Runnable {

        final boolean f34278a;

        final com.mbridge.msdk.foundation.same.buffer.a f34279b;

        a(boolean z10, com.mbridge.msdk.foundation.same.buffer.a aVar) {
            this.f34278a = z10;
            this.f34279b = aVar;
        }

        @Override
        public void run() {
            if (!this.f34278a || b.this.f34277b == null) {
                return;
            }
            for (String str : this.f34279b.a()) {
                b.this.f34277b.a(str, b.this.f34276a.a(str));
            }
        }
    }

    private static class C0459b {

        private static b f34281a = new b(null);
    }

    b(a aVar) {
        this();
    }

    private b() {
        this.f34276a = new com.mbridge.msdk.foundation.same.buffer.a(1000);
        try {
            k kVarA = k.a(g.a(c.m().d()));
            this.f34277b = kVarA;
            a(kVarA.a(), false);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void a(JSONObject jSONObject, boolean z10) {
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            com.mbridge.msdk.foundation.same.buffer.a aVar = new com.mbridge.msdk.foundation.same.buffer.a(100);
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                this.f34276a.a(next, jSONObjectOptJSONObject);
                aVar.a(next, jSONObjectOptJSONObject);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(z10, aVar));
        }
    }

    public JSONArray b() {
        return new JSONArray((Collection) this.f34276a.a());
    }

    public static b a() {
        return C0459b.f34281a;
    }

    public JSONObject a(String str) {
        k kVar;
        JSONObject jSONObjectA = this.f34276a.a(str);
        if (jSONObjectA != null || (kVar = this.f34277b) == null) {
            return jSONObjectA;
        }
        JSONObject jSONObjectB = kVar.b(str);
        if (jSONObjectB != null) {
            this.f34276a.a(str, jSONObjectB);
        }
        return jSONObjectB;
    }
}
