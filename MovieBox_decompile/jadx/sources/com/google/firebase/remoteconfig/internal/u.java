package com.google.firebase.remoteconfig.internal;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class u {

    private final kc.b f31748a;

    private final Map f31749b = Collections.synchronizedMap(new HashMap());

    public u(kc.b bVar) {
        this.f31748a = bVar;
    }

    public void a(String str, f fVar) {
        JSONObject jSONObjectOptJSONObject;
        mb.a aVar = (mb.a) this.f31748a.get();
        if (aVar == null) {
            return;
        }
        JSONObject jSONObjectI = fVar.i();
        if (jSONObjectI.length() < 1) {
            return;
        }
        JSONObject jSONObjectG = fVar.g();
        if (jSONObjectG.length() >= 1 && (jSONObjectOptJSONObject = jSONObjectI.optJSONObject(str)) != null) {
            String strOptString = jSONObjectOptJSONObject.optString("choiceId");
            if (strOptString.isEmpty()) {
                return;
            }
            synchronized (this.f31749b) {
                try {
                    if (strOptString.equals(this.f31749b.get(str))) {
                        return;
                    }
                    this.f31749b.put(str, strOptString);
                    Bundle bundle = new Bundle();
                    bundle.putString("arm_key", str);
                    bundle.putString("arm_value", jSONObjectG.optString(str));
                    bundle.putString("personalization_id", jSONObjectOptJSONObject.optString("personalizationId"));
                    bundle.putInt("arm_index", jSONObjectOptJSONObject.optInt("armIndex", -1));
                    bundle.putString("group", jSONObjectOptJSONObject.optString("group"));
                    aVar.a("fp", "personalization_assignment", bundle);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_fpid", strOptString);
                    aVar.a("fp", "_fpc", bundle2);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
