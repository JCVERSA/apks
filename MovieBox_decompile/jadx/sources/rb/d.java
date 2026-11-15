package rb;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
import qb.g;

public class d implements b, sb.b {

    private sb.a f70941a;

    private static String b(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override
    public void a(sb.a aVar) {
        this.f70941a = aVar;
        g.f().b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override
    public void c(String str, Bundle bundle) {
        sb.a aVar = this.f70941a;
        if (aVar != null) {
            try {
                aVar.a("$A$:" + b(str, bundle));
            } catch (JSONException unused) {
                g.f().k("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
