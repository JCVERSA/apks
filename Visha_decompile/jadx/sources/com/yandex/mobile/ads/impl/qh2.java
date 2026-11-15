package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.y45;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class qh2 {
    private final SharedPreferences a;
    private final oh2 b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public qh2(Context context) {
        this(by1.a(new by1(), context, "ViewSizeInfoStorage"), new oh2());
        y45.j(context, "context");
    }

    private static String b(sh2 sh2Var) {
        return sh2Var.a() + "-" + sh2Var.b();
    }

    public final String a(sh2 sh2Var) {
        y45.j(sh2Var, "viewSizeKey");
        return this.a.getString(b(sh2Var), null);
    }

    public final void a(sh2 sh2Var, nh2 nh2Var) throws JSONException {
        y45.j(sh2Var, "viewSizeKey");
        y45.j(nh2Var, "viewSizeInfo");
        String strB = b(sh2Var);
        this.b.getClass();
        y45.j(nh2Var, "viewSizeInfo");
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("width", nh2Var.d().b());
        jSONObject2.put("height", nh2Var.d().a());
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("width", nh2Var.b().b());
        jSONObject3.put("height", nh2Var.b().a());
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        jSONObject4.put(ES6Iterator.VALUE_PROPERTY, nh2Var.c().b().b());
        String strName = nh2Var.c().b().a().name();
        Locale locale = Locale.ROOT;
        String lowerCase = strName.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        jSONObject4.put(defpackage.hb0.KEY_NAME_MODE, lowerCase);
        jSONObject5.put(ES6Iterator.VALUE_PROPERTY, nh2Var.c().a().b());
        String lowerCase2 = nh2Var.c().a().a().name().toLowerCase(locale);
        y45.i(lowerCase2, "toLowerCase(...)");
        jSONObject5.put(defpackage.hb0.KEY_NAME_MODE, lowerCase2);
        jSONObject6.put("width", jSONObject4);
        jSONObject6.put("height", jSONObject5);
        JSONObject jSONObject7 = new JSONObject(nh2Var.a());
        jSONObject.put("view", jSONObject2);
        jSONObject.put("layout_params", jSONObject3);
        jSONObject.put("measured", jSONObject6);
        jSONObject.put("additional_info", jSONObject7);
        String string = jSONObject.toString();
        y45.i(string, "toString(...)");
        this.a.edit().putString(strB, string).apply();
    }

    public qh2(SharedPreferences sharedPreferences, oh2 oh2Var) {
        y45.j(sharedPreferences, "preferences");
        y45.j(oh2Var, "viewSizeInfoParser");
        this.a = sharedPreferences;
        this.b = oh2Var;
    }
}
