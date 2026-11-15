package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class bef {
    public final Map a = new HashMap();
    public final List b = new ArrayList();
    public final Context c;
    public final idf d;

    public bef(Context context, idf idfVar) {
        this.c = context;
        this.d = idfVar;
    }

    public static void b(bef befVar, Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            befVar.d.d();
        }
    }

    public final synchronized void c(String str) {
        try {
            Map map = this.a;
            if (map.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.c) : this.c.getSharedPreferences(str, 0);
            aef aefVar = new aef(this, str);
            map.put(str, aefVar);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(aefVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d(udf udfVar) {
        this.b.add(udfVar);
    }
}
