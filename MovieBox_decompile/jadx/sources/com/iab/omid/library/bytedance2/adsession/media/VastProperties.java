package com.iab.omid.library.bytedance2.adsession.media;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.iab.omid.library.bytedance2.utils.d;
import com.iab.omid.library.bytedance2.utils.g;
import org.json.JSONException;
import org.json.JSONObject;

public final class VastProperties {

    private final boolean f32586a;

    private final Float f32587b;

    private final boolean f32588c;

    private final Position f32589d;

    private VastProperties(boolean z10, Float f10, boolean z11, Position position) {
        this.f32586a = z10;
        this.f32587b = f10;
        this.f32588c = z11;
        this.f32589d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z10, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(false, null, z10, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f10, boolean z10, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f10), z10, position);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f32586a);
            if (this.f32586a) {
                jSONObject.put("skipOffset", this.f32587b);
            }
            jSONObject.put("autoPlay", this.f32588c);
            jSONObject.put(RequestParameters.POSITION, this.f32589d);
        } catch (JSONException e10) {
            d.a("VastProperties: JSON error", e10);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f32589d;
    }

    public Float getSkipOffset() {
        return this.f32587b;
    }

    public boolean isAutoPlay() {
        return this.f32588c;
    }

    public boolean isSkippable() {
        return this.f32586a;
    }
}
