package defpackage;

import android.net.Uri;
import androidx.collection.SimpleArrayMap;

public final class yyi {
    public final SimpleArrayMap a;

    public yyi(SimpleArrayMap simpleArrayMap) {
        this.a = simpleArrayMap;
    }

    public final String a(Uri uri, String str, String str2, String str3) {
        if (uri == null) {
            return null;
        }
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.a.get(uri.toString());
        if (simpleArrayMap == null) {
            return null;
        }
        return (String) simpleArrayMap.get("".concat(String.valueOf(str3)));
    }
}
