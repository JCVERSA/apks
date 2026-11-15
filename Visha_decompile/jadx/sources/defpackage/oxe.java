package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

public final class oxe extends qxe {
    public oxe(int i, String str, String str2, String str3) {
        super(1, str, str2, str3, null);
    }

    @Override
    public final Object a(JSONObject jSONObject) {
        return jSONObject.optString(l(), (String) k());
    }

    @Override
    public final Object b(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(l())) ? bundle.getString("com.google.android.gms.ads.flag.".concat(l())) : (String) k();
    }

    @Override
    public final Object c(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(l(), (String) k());
    }

    @Override
    public final void d(SharedPreferences.Editor editor, Object obj) {
        editor.putString(l(), (String) obj);
    }
}
