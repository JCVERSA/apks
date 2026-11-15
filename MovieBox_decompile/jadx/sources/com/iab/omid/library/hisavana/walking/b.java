package com.iab.omid.library.hisavana.walking;

import java.util.HashSet;
import me.d;
import me.e;
import me.f;
import org.json.JSONObject;

public class b implements me.b.InterfaceC0813b {

    private JSONObject f32811a;

    private final me.c f32812b;

    public b(me.c cVar) {
        this.f32812b = cVar;
    }

    @Override
    public JSONObject a() {
        return this.f32811a;
    }

    public void b(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f32812b.c(new e(this, hashSet, jSONObject, j10));
    }

    public void c() {
        this.f32812b.c(new d(this));
    }

    public void d(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f32812b.c(new f(this, hashSet, jSONObject, j10));
    }

    @Override
    public void a(JSONObject jSONObject) {
        this.f32811a = jSONObject;
    }
}
