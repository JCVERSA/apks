package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

public final class nxe extends qxe {
    public nxe(int i, String str, Float f, Float f2) {
        super(1, str, f, f2, null);
    }

    @Override
    public final Object a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(l(), ((Float) k()).floatValue()));
    }

    @Override
    public final Object b(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(l())) ? Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(l()))) : (Float) k();
    }

    @Override
    public final Object c(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(l(), ((Float) k()).floatValue()));
    }

    @Override
    public final void d(SharedPreferences.Editor editor, Object obj) {
        editor.putFloat(l(), ((Float) obj).floatValue());
    }
}
