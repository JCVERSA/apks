package com.iab.omid.library.hisavana.adsession;

import org.json.JSONObject;

public class c {

    private final Owner f32704a;

    private final Owner f32705b;

    private final boolean f32706c;

    private final CreativeType f32707d;

    private final ImpressionType f32708e;

    private c(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        this.f32707d = creativeType;
        this.f32708e = impressionType;
        this.f32704a = owner;
        if (owner2 == null) {
            this.f32705b = Owner.NONE;
        } else {
            this.f32705b = owner2;
        }
        this.f32706c = z10;
    }

    public static c a(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        le.g.d(creativeType, "CreativeType is null");
        le.g.d(impressionType, "ImpressionType is null");
        le.g.d(owner, "Impression owner is null");
        le.g.b(owner, creativeType, impressionType);
        return new c(creativeType, impressionType, owner, owner2, z10);
    }

    public boolean b() {
        return Owner.NATIVE == this.f32704a;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        le.c.i(jSONObject, "impressionOwner", this.f32704a);
        le.c.i(jSONObject, "mediaEventsOwner", this.f32705b);
        le.c.i(jSONObject, "creativeType", this.f32707d);
        le.c.i(jSONObject, "impressionType", this.f32708e);
        le.c.i(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f32706c));
        return jSONObject;
    }
}
