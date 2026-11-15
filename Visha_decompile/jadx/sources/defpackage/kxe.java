package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

public final class kxe extends qxe {
    public kxe(int i, String str, Boolean bool, Boolean bool2) {
        super(i, str, bool, bool2, null);
    }

    @Override
    public final Object a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(l(), ((Boolean) k()).booleanValue()));
    }

    @Override
    public final Object b(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(l())) ? Boolean.valueOf(bundle.getBoolean("com.google.android.gms.ads.flag.".concat(l()))) : (Boolean) k();
    }

    @Override
    public final Object c(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(l(), ((Boolean) k()).booleanValue()));
    }

    @Override
    public final void d(SharedPreferences.Editor editor, Object obj) {
        editor.putBoolean(l(), ((Boolean) obj).booleanValue());
    }
}
