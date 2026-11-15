package defpackage;

import com.google.android.gms.internal.ads.zzedx;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class k1h implements mxg {
    public final Map a = new HashMap();
    public final jkg b;

    public k1h(jkg jkgVar) {
        this.b = jkgVar;
    }

    @Override
    public final nxg a(String str, JSONObject jSONObject) {
        nxg nxgVar;
        synchronized (this) {
            try {
                Map map = this.a;
                nxgVar = (nxg) map.get(str);
                if (nxgVar == null) {
                    nxgVar = new nxg(this.b.c(str, jSONObject), new zzedx(), str);
                    map.put(str, nxgVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nxgVar;
    }
}
