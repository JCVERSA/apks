package com.iab.omid.library.mmadbridge.walking;

import java.util.HashSet;
import org.json.JSONObject;
import se.d;
import se.e;
import se.f;

public class b implements se.b.InterfaceC0883b {

    private JSONObject f32931a;

    private final se.c f32932b;

    public b(se.c cVar) {
        this.f32932b = cVar;
    }

    @Override
    public JSONObject a() {
        return this.f32931a;
    }

    public void b(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f32932b.c(new e(this, hashSet, jSONObject, j10));
    }

    public void c() {
        this.f32932b.c(new d(this));
    }

    public void d(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f32932b.c(new f(this, hashSet, jSONObject, j10));
    }

    @Override
    public void a(JSONObject jSONObject) {
        this.f32931a = jSONObject;
    }
}
