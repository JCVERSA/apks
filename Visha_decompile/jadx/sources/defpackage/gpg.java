package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzv;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class gpg implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final JSONObject a = new JSONObject();
    public List b;

    public final JSONObject a() {
        return this.a;
    }

    public final void b(SharedPreferences sharedPreferences, List list) {
        this.b = list;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            onSharedPreferenceChanged(sharedPreferences, (String) it.next());
        }
    }

    @Override
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str != null && this.b.contains(str)) {
            try {
                Object obj = sharedPreferences.getAll().get(str);
                if (obj == null) {
                    this.a.remove(str);
                } else {
                    this.a.put(str, obj);
                }
            } catch (JSONException e) {
                zzv.zzp().w(e, "InspectorSharedPreferenceCollector.onSharedPreferenceChanged");
            }
        }
    }
}
