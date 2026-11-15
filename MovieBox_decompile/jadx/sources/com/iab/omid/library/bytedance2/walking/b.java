package com.iab.omid.library.bytedance2.walking;

import com.iab.omid.library.bytedance2.walking.async.d;
import com.iab.omid.library.bytedance2.walking.async.e;
import com.iab.omid.library.bytedance2.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;

public class b implements com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0433b {

    private JSONObject f32697a;

    private final com.iab.omid.library.bytedance2.walking.async.c f32698b;

    public b(com.iab.omid.library.bytedance2.walking.async.c cVar) {
        this.f32698b = cVar;
    }

    @Override
    public JSONObject a() {
        return this.f32697a;
    }

    public void b() {
        this.f32698b.b(new d(this));
    }

    @Override
    public void a(JSONObject jSONObject) {
        this.f32697a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f32698b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f32698b.b(new e(this, hashSet, jSONObject, j10));
    }
}
