package defpackage;

import java.util.Map;
import org.json.JSONObject;

public final class n2f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        JSONObject jSONObjectZzb;
        ejf ejfVar = (ejf) obj;
        z0f z0fVarZzK = ejfVar.zzK();
        if (z0fVarZzK == null || (jSONObjectZzb = z0fVarZzK.zzb()) == null) {
            ejfVar.zze("nativeClickMetaReady", new JSONObject());
        } else {
            ejfVar.zze("nativeClickMetaReady", jSONObjectZzb);
        }
    }
}
