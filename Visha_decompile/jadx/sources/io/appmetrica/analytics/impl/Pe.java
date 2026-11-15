package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import org.json.JSONObject;

public final class Pe implements ProtobufConverter {
    public final C2517ef a;

    public Pe() {
        this(new C2517ef());
    }

    @Override
    @NonNull
    public final C2442bf fromModel(@NonNull Re re) {
        C2442bf c2442bf = new C2442bf();
        if (!TextUtils.isEmpty(re.a)) {
            c2442bf.a = re.a;
        }
        c2442bf.b = re.b.toString();
        c2442bf.c = this.a.fromModel(re.c).intValue();
        return c2442bf;
    }

    public Pe(C2517ef c2517ef) {
        this.a = c2517ef;
    }

    @Override
    @NonNull
    public final Re toModel(@NonNull C2442bf c2442bf) {
        JSONObject jSONObject;
        String str = c2442bf.a;
        String str2 = c2442bf.b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
                jSONObject = new JSONObject();
            }
        } else {
            jSONObject = new JSONObject();
        }
        return new Re(str, jSONObject, this.a.toModel(Integer.valueOf(c2442bf.c)));
    }
}
