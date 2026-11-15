package defpackage;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

public final class x2f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        try {
            JSONArray jSONArray = new JSONArray((String) map.get("args"));
            SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(ejfVar.getContext()).edit();
            for (int i = 0; i < jSONArray.length(); i++) {
                editorEdit.remove(jSONArray.getString(i));
            }
            editorEdit.apply();
        } catch (JSONException e) {
            zzv.zzp().x(e, "GMSG clear local storage keys handler");
        }
    }
}
