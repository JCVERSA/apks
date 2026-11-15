package com.iab.omid.library.bytedance2.walking.async;

import java.util.HashSet;
import org.json.JSONObject;

public abstract class a extends b {

    protected final HashSet<String> f32688c;

    protected final JSONObject f32689d;

    protected final long f32690e;

    public a(b.InterfaceC0433b interfaceC0433b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0433b);
        this.f32688c = new HashSet<>(hashSet);
        this.f32689d = jSONObject;
        this.f32690e = j10;
    }
}
