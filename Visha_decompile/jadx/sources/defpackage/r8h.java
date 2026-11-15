package defpackage;

import android.os.Bundle;
import org.json.JSONObject;

public final class r8h implements deh {
    public final JSONObject a;
    public final JSONObject b;

    public r8h(JSONObject jSONObject, JSONObject jSONObject2) {
        this.a = jSONObject;
        this.b = jSONObject2;
    }

    @Override
    public final void zza(Object obj) {
        JSONObject jSONObject = this.b;
        kyf kyfVar = (kyf) obj;
        if (jSONObject != null) {
            kyfVar.b.putString("fwd_common_cld", jSONObject.toString());
        }
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        JSONObject jSONObject = this.a;
        if (jSONObject != null) {
            bundle.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.b;
        if (jSONObject2 != null) {
            bundle.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
