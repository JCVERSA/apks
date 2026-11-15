package com.iab.omid.library.mmadbridge.adsession;

import org.json.JSONObject;

public class c {

    private final Owner f32818a;

    private final Owner f32819b;

    private final boolean f32820c;

    private final CreativeType f32821d;

    private final ImpressionType f32822e;

    private c(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        this.f32821d = creativeType;
        this.f32822e = impressionType;
        this.f32818a = owner;
        if (owner2 == null) {
            this.f32819b = Owner.NONE;
        } else {
            this.f32819b = owner2;
        }
        this.f32820c = z10;
    }

    public static c a(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        re.g.d(creativeType, "CreativeType is null");
        re.g.d(impressionType, "ImpressionType is null");
        re.g.d(owner, "Impression owner is null");
        re.g.b(owner, creativeType, impressionType);
        return new c(creativeType, impressionType, owner, owner2, z10);
    }

    public boolean b() {
        return Owner.NATIVE == this.f32818a;
    }

    public boolean c() {
        return Owner.NATIVE == this.f32819b;
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        re.c.i(jSONObject, "impressionOwner", this.f32818a);
        re.c.i(jSONObject, "mediaEventsOwner", this.f32819b);
        re.c.i(jSONObject, "creativeType", this.f32821d);
        re.c.i(jSONObject, "impressionType", this.f32822e);
        re.c.i(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f32820c));
        return jSONObject;
    }
}
