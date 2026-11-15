package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.c0;
import org.json.JSONObject;

public class f {

    private final c0 f30937a;

    f(c0 c0Var) {
        this.f30937a = c0Var;
    }

    private static g a(int i10) {
        if (i10 == 3) {
            return new j();
        }
        qb.g.f().d("Could not determine SettingsJsonTransform for settings version " + i10 + ". Using default settings values.");
        return new a();
    }

    public c b(JSONObject jSONObject) {
        return a(jSONObject.getInt("settings_version")).a(this.f30937a, jSONObject);
    }
}
