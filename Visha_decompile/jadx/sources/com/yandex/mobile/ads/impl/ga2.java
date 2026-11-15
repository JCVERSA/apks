package com.yandex.mobile.ads.impl;

import android.util.Log;
import com.transsion.tools.fragments.SettingFragment;
import org.json.JSONException;
import org.json.JSONObject;

public final class ga2 {
    private final boolean a;
    private final Float b;
    private final boolean c = true;
    private final oj1 d;

    private ga2(boolean z, Float f, oj1 oj1Var) {
        this.a = z;
        this.b = f;
        this.d = oj1Var;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.a);
            if (this.a) {
                jSONObject.put("skipOffset", this.b);
            }
            jSONObject.put(SettingFragment.SHAKE_ITEM_AUTO_PLAY, this.c);
            jSONObject.put("position", this.d);
        } catch (JSONException e) {
            Log.e("OMIDLIB", "VastProperties: JSON error", e);
        }
        return jSONObject;
    }

    public static ga2 a(oj1 oj1Var) {
        return new ga2(false, null, oj1Var);
    }

    public static ga2 a(float f, oj1 oj1Var) {
        return new ga2(true, Float.valueOf(f), oj1Var);
    }
}
