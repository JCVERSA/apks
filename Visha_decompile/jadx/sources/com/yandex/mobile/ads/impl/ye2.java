package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import kotlin.Result;
import org.json.JSONObject;

public final class ye2 {
    private final xj a;
    private final o92 b;
    private final dc2<kb1> c;
    private final ua2 d;
    private final bg2 e;
    private final pj0 f;

    public ye2(Context context, sp1 sp1Var, xj xjVar) {
        this(context, sp1Var, xjVar, p92.a(xjVar.b()), new dc2(context, new lb1()), new ua2(context, sp1Var), new bg2(), new pj0());
    }

    public final Object a(JSONObject jSONObject) throws t61 {
        u92 u92VarA;
        ag2 ag2Var;
        Object objM279constructorimpl;
        y45.j(jSONObject, "jsonValue");
        try {
            u92VarA = this.d.a(this.b.a("vast", jSONObject), this.a);
        } catch (Exception unused) {
            u92VarA = null;
        }
        if (u92VarA == null || u92VarA.b().isEmpty()) {
            throw new t61("Invalid VAST in response");
        }
        ArrayList arrayListA = this.c.a(u92VarA.b());
        if (arrayListA.isEmpty()) {
            throw new t61("Invalid VAST in response");
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject != null) {
            this.e.getClass();
            y45.j(jSONObjectOptJSONObject, "settingsJson");
            boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("volumeControlVisible", true);
            boolean zOptBoolean2 = jSONObjectOptJSONObject.optBoolean("isProgressBarHidden", false);
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(Double.valueOf(jSONObjectOptJSONObject.getDouble("initialVolume")));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            ag2Var = new ag2(zOptBoolean, zOptBoolean2, (Double) objM279constructorimpl);
        } else {
            ag2Var = null;
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("preview");
        return new lb2(arrayListA, ag2Var, jSONObjectOptJSONObject2 != null ? this.f.b(jSONObjectOptJSONObject2) : null);
    }

    public ye2(Context context, sp1 sp1Var, xj xjVar, o92 o92Var, dc2<kb1> dc2Var, ua2 ua2Var, bg2 bg2Var, pj0 pj0Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(xjVar, "base64EncodingParameters");
        y45.j(o92Var, "valueReader");
        y45.j(dc2Var, "videoAdInfoListCreator");
        y45.j(ua2Var, "vastXmlParser");
        y45.j(bg2Var, "videoSettingsParser");
        y45.j(pj0Var, "imageParser");
        this.a = xjVar;
        this.b = o92Var;
        this.c = dc2Var;
        this.d = ua2Var;
        this.e = bg2Var;
        this.f = pj0Var;
    }
}
