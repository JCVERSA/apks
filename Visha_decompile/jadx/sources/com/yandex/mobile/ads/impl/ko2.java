package com.yandex.mobile.ads.impl;

import androidx.annotation.VisibleForTesting;
import java.util.HashSet;
import org.json.JSONObject;

public final class ko2 implements lo2.b {
    private JSONObject a;
    private final po2 b;

    public ko2(po2 po2Var) {
        this.b = po2Var;
    }

    public final void a() {
        this.b.a(new to2(this));
    }

    @VisibleForTesting
    public final JSONObject b() {
        return this.a;
    }

    @VisibleForTesting
    public final void a(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public final void b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.a(new yo2(this, hashSet, jSONObject, j));
    }

    public final void a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.b.a(new bp2(this, hashSet, jSONObject, j));
    }
}
