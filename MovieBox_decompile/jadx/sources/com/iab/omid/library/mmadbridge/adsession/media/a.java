package com.iab.omid.library.mmadbridge.adsession.media;

import com.iab.omid.library.mmadbridge.adsession.h;
import com.iab.omid.library.mmadbridge.internal.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;
import re.c;
import re.g;

public final class a {

    private final h f32847a;

    private a(h hVar) {
        this.f32847a = hVar;
    }

    private void e(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Invalid Media duration");
        }
    }

    private void f(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }

    public static a g(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        h hVar = (h) bVar;
        g.d(bVar, "AdSession is null");
        g.k(hVar);
        g.h(hVar);
        g.g(hVar);
        g.m(hVar);
        a aVar = new a(hVar);
        hVar.t().h(aVar);
        return aVar;
    }

    public void a(InteractionType interactionType) {
        g.d(interactionType, "InteractionType is null");
        g.c(this.f32847a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "interactionType", interactionType);
        this.f32847a.t().k("adUserInteraction", jSONObject);
    }

    public void b() {
        g.c(this.f32847a);
        this.f32847a.t().i("bufferFinish");
    }

    public void c() {
        g.c(this.f32847a);
        this.f32847a.t().i("bufferStart");
    }

    public void d() {
        g.c(this.f32847a);
        this.f32847a.t().i(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
    }

    public void h() {
        g.c(this.f32847a);
        this.f32847a.t().i("firstQuartile");
    }

    public void i() {
        g.c(this.f32847a);
        this.f32847a.t().i(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
    }

    public void j() {
        g.c(this.f32847a);
        this.f32847a.t().i("pause");
    }

    public void k(PlayerState playerState) {
        g.d(playerState, "PlayerState is null");
        g.c(this.f32847a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "state", playerState);
        this.f32847a.t().k("playerStateChange", jSONObject);
    }

    public void l() {
        g.c(this.f32847a);
        this.f32847a.t().i(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
    }

    public void m() {
        g.c(this.f32847a);
        this.f32847a.t().i("skipped");
    }

    public void n(float f10, float f11) {
        e(f10);
        f(f11);
        g.c(this.f32847a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "duration", Float.valueOf(f10));
        c.i(jSONObject, "mediaPlayerVolume", Float.valueOf(f11));
        c.i(jSONObject, "deviceVolume", Float.valueOf(i.d().c()));
        this.f32847a.t().k("start", jSONObject);
    }

    public void o() {
        g.c(this.f32847a);
        this.f32847a.t().i("thirdQuartile");
    }

    public void p(float f10) {
        f(f10);
        g.c(this.f32847a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "mediaPlayerVolume", Float.valueOf(f10));
        c.i(jSONObject, "deviceVolume", Float.valueOf(i.d().c()));
        this.f32847a.t().k("volumeChange", jSONObject);
    }
}
