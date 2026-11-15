package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

public final class mxe extends qxe {
    public mxe(int i, String str, Long l, Long l2) {
        super(1, str, l, l2, null);
    }

    @Override
    public final Object a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(l(), ((Long) k()).longValue()));
    }

    @Override
    public final Object b(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(l())) ? Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(l()))) : (Long) k();
    }

    @Override
    public final Object c(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(l(), ((Long) k()).longValue()));
    }

    @Override
    public final void d(SharedPreferences.Editor editor, Object obj) {
        editor.putLong(l(), ((Long) obj).longValue());
    }
}
