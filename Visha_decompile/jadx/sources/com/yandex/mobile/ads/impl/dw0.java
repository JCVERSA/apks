package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

public final class dw0 {
    private final vn2 a;

    private dw0(vn2 vn2Var) {
        this.a = vn2Var;
    }

    public final void a() {
        lp0 lp0Var = lp0.c;
        xo2.a(this.a);
        JSONObject jSONObject = new JSONObject();
        io2.a(jSONObject, "interactionType", lp0Var);
        this.a.j().a("adUserInteraction", jSONObject);
    }

    public final void b() {
        xo2.a(this.a);
        this.a.j().a("bufferFinish");
    }

    public final void c() {
        xo2.a(this.a);
        this.a.j().a("bufferStart");
    }

    public final void d() {
        xo2.a(this.a);
        this.a.j().a("complete");
    }

    public final void e() {
        xo2.a(this.a);
        this.a.j().a("firstQuartile");
    }

    public final void f() {
        xo2.a(this.a);
        this.a.j().a("midpoint");
    }

    public final void g() {
        xo2.a(this.a);
        this.a.j().a("pause");
    }

    public final void h() {
        xo2.a(this.a);
        this.a.j().a("resume");
    }

    public final void i() {
        xo2.a(this.a);
        this.a.j().a("skipped");
    }

    public final void j() {
        xo2.a(this.a);
        this.a.j().a("thirdQuartile");
    }

    public static dw0 a(vn2 vn2Var) {
        if (vn2Var.m()) {
            if (!vn2Var.h()) {
                if (!vn2Var.k()) {
                    if (vn2Var.j().d() == null) {
                        dw0 dw0Var = new dw0(vn2Var);
                        vn2Var.j().a(dw0Var);
                        return dw0Var;
                    }
                    throw new IllegalStateException("MediaEvents already exists for AdSession");
                }
                throw new IllegalStateException("AdSession is finished");
            }
            throw new IllegalStateException("AdSession is started");
        }
        throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
    }

    public final void a(float f, float f2) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Invalid Media duration");
        }
        if (f2 >= 0.0f && f2 <= 1.0f) {
            xo2.a(this.a);
            JSONObject jSONObject = new JSONObject();
            io2.a(jSONObject, "duration", Float.valueOf(f));
            io2.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
            io2.a(jSONObject, "deviceVolume", Float.valueOf(cp2.a().d()));
            this.a.j().a(TtmlNode.START, jSONObject);
            return;
        }
        throw new IllegalArgumentException("Invalid Media volume");
    }

    public final void a(float f) {
        if (f >= 0.0f && f <= 1.0f) {
            xo2.a(this.a);
            JSONObject jSONObject = new JSONObject();
            io2.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
            io2.a(jSONObject, "deviceVolume", Float.valueOf(cp2.a().d()));
            this.a.j().a("volumeChange", jSONObject);
            return;
        }
        throw new IllegalArgumentException("Invalid Media volume");
    }
}
