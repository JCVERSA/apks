package com.yandex.mobile.ads.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div2.DivData;
import defpackage.y45;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

public final class b30 {
    private final String a;
    private final JSONObject b;
    private final JSONObject c;
    private final List<xj0> d;
    private final DivData e;
    private final defpackage.ei2 f;
    private final Set<s20> g;

    public b30(String str, JSONObject jSONObject, JSONObject jSONObject2, List<xj0> list, DivData divData, defpackage.ei2 ei2Var, Set<s20> set) {
        y45.j(str, TypedValues.AttributesType.S_TARGET);
        y45.j(jSONObject, "card");
        y45.j(divData, "divData");
        y45.j(ei2Var, "divDataTag");
        y45.j(set, "divAssets");
        this.a = str;
        this.b = jSONObject;
        this.c = jSONObject2;
        this.d = list;
        this.e = divData;
        this.f = ei2Var;
        this.g = set;
    }

    public final Set<s20> a() {
        return this.g;
    }

    public final DivData b() {
        return this.e;
    }

    public final defpackage.ei2 c() {
        return this.f;
    }

    public final List<xj0> d() {
        return this.d;
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b30)) {
            return false;
        }
        b30 b30Var = (b30) obj;
        return y45.e(this.a, b30Var.a) && y45.e(this.b, b30Var.b) && y45.e(this.c, b30Var.c) && y45.e(this.d, b30Var.d) && y45.e(this.e, b30Var.e) && y45.e(this.f, b30Var.f) && y45.e(this.g, b30Var.g);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        JSONObject jSONObject = this.c;
        int iHashCode2 = (iHashCode + (jSONObject == null ? 0 : jSONObject.hashCode())) * 31;
        List<xj0> list = this.d;
        return this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((iHashCode2 + (list != null ? list.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "DivKitDesign(target=" + this.a + ", card=" + this.b + ", templates=" + this.c + ", images=" + this.d + ", divData=" + this.e + ", divDataTag=" + this.f + ", divAssets=" + this.g + ")";
    }
}
