package defpackage;

import androidx.datastore.preferences.core.Preferences;

public abstract class f75 {
    public static final Object a(Preferences preferences, Preferences.Key key, Object obj) {
        y45.j(preferences, "<this>");
        y45.j(key, "key");
        Object obj2 = preferences.get(key);
        return obj2 == null ? obj : obj2;
    }
}
