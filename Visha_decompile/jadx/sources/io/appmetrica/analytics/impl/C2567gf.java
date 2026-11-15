package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import org.json.JSONObject;

public final class C2567gf implements ProtobufConverter {
    public final C2517ef a = new C2517ef();

    @Override
    @NonNull
    public final C2417af fromModel(@NonNull C2542ff c2542ff) {
        C2417af c2417af = new C2417af();
        if (!TextUtils.isEmpty(c2542ff.a)) {
            c2417af.a = c2542ff.a;
        }
        c2417af.b = c2542ff.b.toString();
        c2417af.c = c2542ff.c;
        c2417af.d = c2542ff.d;
        c2417af.e = this.a.fromModel(c2542ff.e).intValue();
        return c2417af;
    }

    @Override
    @NonNull
    public final C2542ff toModel(@NonNull C2417af c2417af) {
        JSONObject jSONObject;
        String str = c2417af.a;
        String str2 = c2417af.b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
                jSONObject = new JSONObject();
            }
        } else {
            jSONObject = new JSONObject();
        }
        return new C2542ff(str, jSONObject, c2417af.c, c2417af.d, this.a.toModel(Integer.valueOf(c2417af.e)));
    }
}
