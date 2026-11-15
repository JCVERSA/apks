package com.iab.omid.library.mmadbridge.adsession.media;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import org.json.JSONException;
import org.json.JSONObject;
import re.d;
import re.g;

public final class b {

    private final boolean f32848a;

    private final Float f32849b;

    private final boolean f32850c;

    private final Position f32851d;

    private b(boolean z10, Float f10, boolean z11, Position position) {
        this.f32848a = z10;
        this.f32849b = f10;
        this.f32850c = z11;
        this.f32851d = position;
    }

    public static b b(boolean z10, Position position) {
        g.d(position, "Position is null");
        return new b(false, null, z10, position);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f32848a);
            if (this.f32848a) {
                jSONObject.put("skipOffset", this.f32849b);
            }
            jSONObject.put("autoPlay", this.f32850c);
            jSONObject.put(RequestParameters.POSITION, this.f32851d);
        } catch (JSONException e10) {
            d.b("VastProperties: JSON error", e10);
        }
        return jSONObject;
    }
}
