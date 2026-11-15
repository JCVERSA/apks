package com.iab.omid.library.vungle.adsession;

import org.json.JSONObject;

public class c {

    private final Owner f32938a;

    private final Owner f32939b;

    private final boolean f32940c;

    private final CreativeType f32941d;

    private final ImpressionType f32942e;

    private c(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        this.f32941d = creativeType;
        this.f32942e = impressionType;
        this.f32938a = owner;
        if (owner2 == null) {
            this.f32939b = Owner.NONE;
        } else {
            this.f32939b = owner2;
        }
        this.f32940c = z10;
    }

    public static c a(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        xe.g.d(creativeType, "CreativeType is null");
        xe.g.d(impressionType, "ImpressionType is null");
        xe.g.d(owner, "Impression owner is null");
        xe.g.b(owner, creativeType, impressionType);
        return new c(creativeType, impressionType, owner, owner2, z10);
    }

    public boolean b() {
        return Owner.NATIVE == this.f32938a;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        xe.c.i(jSONObject, "impressionOwner", this.f32938a);
        xe.c.i(jSONObject, "mediaEventsOwner", this.f32939b);
        xe.c.i(jSONObject, "creativeType", this.f32941d);
        xe.c.i(jSONObject, "impressionType", this.f32942e);
        xe.c.i(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f32940c));
        return jSONObject;
    }
}
