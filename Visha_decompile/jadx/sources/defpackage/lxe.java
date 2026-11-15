package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

public final class lxe extends qxe {
    public lxe(int i, String str, Integer num, Integer num2) {
        super(1, str, num, num2, null);
    }

    @Override
    public final Object a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(l(), ((Integer) k()).intValue()));
    }

    @Override
    public final Object b(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(l())) ? Integer.valueOf(bundle.getInt("com.google.android.gms.ads.flag.".concat(l()))) : (Integer) k();
    }

    @Override
    public final Object c(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(l(), ((Integer) k()).intValue()));
    }

    @Override
    public final void d(SharedPreferences.Editor editor, Object obj) {
        editor.putInt(l(), ((Integer) obj).intValue());
    }
}
