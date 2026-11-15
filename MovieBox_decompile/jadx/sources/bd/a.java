package bd;

import android.util.Log;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.internal.f;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a {

    com.google.firebase.remoteconfig.internal.e f15778a;

    com.google.firebase.remoteconfig.internal.e f15779b;

    a(com.google.firebase.remoteconfig.internal.e eVar, com.google.firebase.remoteconfig.internal.e eVar2) {
        this.f15778a = eVar;
        this.f15779b = eVar2;
    }

    public static a a(com.google.firebase.remoteconfig.internal.e eVar, com.google.firebase.remoteconfig.internal.e eVar2) {
        return new a(eVar, eVar2);
    }

    private String c(String str) {
        String strD = d(this.f15778a, str);
        if (strD != null) {
            return strD;
        }
        String strD2 = d(this.f15779b, str);
        return strD2 != null ? strD2 : "";
    }

    private static String d(com.google.firebase.remoteconfig.internal.e eVar, String str) {
        f fVarF = eVar.f();
        if (fVarF == null) {
            return null;
        }
        try {
            return fVarF.g().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    dd.e b(f fVar) throws FirebaseRemoteConfigClientException {
        JSONArray jSONArrayJ = fVar.j();
        long jK = fVar.k();
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < jSONArrayJ.length(); i10++) {
            try {
                JSONObject jSONObject = jSONArrayJ.getJSONObject(i10);
                String string = jSONObject.getString("rolloutId");
                JSONArray jSONArray = jSONObject.getJSONArray("affectedParameterKeys");
                if (jSONArray.length() > 1) {
                    Log.w("FirebaseRemoteConfig", String.format("Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s", string, jSONArray));
                }
                String strOptString = jSONArray.optString(0, "");
                hashSet.add(dd.d.a().d(string).f(jSONObject.getString("variantId")).b(strOptString).c(c(strOptString)).e(jK).a());
            } catch (JSONException e10) {
                throw new FirebaseRemoteConfigClientException("Exception parsing rollouts metadata to create RolloutsState.", e10);
            }
        }
        return dd.e.a(hashSet);
    }
}
