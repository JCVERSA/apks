package defpackage;

import java.util.Map;
import org.json.JSONObject;

public final class m2f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        JSONObject jSONObjectZza;
        ejf ejfVar = (ejf) obj;
        z0f z0fVarZzK = ejfVar.zzK();
        if (z0fVarZzK == null || (jSONObjectZza = z0fVarZzK.zza()) == null) {
            ejfVar.zze("nativeAdViewSignalsReady", new JSONObject());
        } else {
            ejfVar.zze("nativeAdViewSignalsReady", jSONObjectZza);
        }
    }
}
