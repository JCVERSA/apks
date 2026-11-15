package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import org.json.JSONObject;

public final class Mi extends Gg {
    public final Cif b;

    public Mi(@NonNull C2706m5 c2706m5) {
        this(c2706m5, C2910ua.j().s());
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        JSONObject jSONObjectOptJSONObject;
        try {
            jSONObjectOptJSONObject = new JSONObject(c2408a6.getValue()).optJSONObject("preloadInfo");
        } catch (Throwable unused) {
            jSONObjectOptJSONObject = null;
        }
        this.b.b(C2542ff.a(jSONObjectOptJSONObject));
        return false;
    }

    public Mi(C2706m5 c2706m5, Cif cif) {
        super(c2706m5);
        this.b = cif;
    }
}
