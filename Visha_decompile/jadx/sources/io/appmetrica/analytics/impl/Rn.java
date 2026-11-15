package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import org.json.JSONObject;

public final class Rn implements Qn {
    public final H8 a;

    public Rn() {
        this(new H8());
    }

    @Override
    @NonNull
    public final byte[] a(@NonNull R8 r8, @NonNull C2469ch c2469ch) {
        if (!((C2706m5) c2469ch.l).A() && !TextUtils.isEmpty(r8.b)) {
            try {
                JSONObject jSONObject = new JSONObject(r8.b);
                jSONObject.remove("preloadInfo");
                r8.b = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        return this.a.a(r8, c2469ch);
    }

    public Rn(H8 h8) {
        this.a = h8;
    }
}
