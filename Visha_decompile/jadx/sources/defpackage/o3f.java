package defpackage;

import android.text.TextUtils;
import java.util.Map;

public final class o3f implements n3f {
    public final zog a;

    public o3f(zog zogVar) {
        wd8.m(zogVar, "The Inspector Manager must not be null");
        this.a = zogVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        if (map == null || !map.containsKey("persistentData") || TextUtils.isEmpty((CharSequence) map.get("persistentData"))) {
            return;
        }
        this.a.k((String) map.get("persistentData"));
    }
}
