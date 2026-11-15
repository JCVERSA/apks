package com.iab.omid.library.vungle.walking;

import java.util.HashSet;
import org.json.JSONObject;
import ye.d;
import ye.e;
import ye.f;

public class b implements ye.b.InterfaceC0947b {

    private JSONObject f33039a;

    private final ye.c f33040b;

    public b(ye.c cVar) {
        this.f33040b = cVar;
    }

    @Override
    public JSONObject a() {
        return this.f33039a;
    }

    public void b(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f33040b.c(new e(this, hashSet, jSONObject, j10));
    }

    public void c() {
        this.f33040b.c(new d(this));
    }

    public void d(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f33040b.c(new f(this, hashSet, jSONObject, j10));
    }

    @Override
    public void a(JSONObject jSONObject) {
        this.f33039a = jSONObject;
    }
}
