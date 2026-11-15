package defpackage;

import android.content.Context;
import org.json.JSONObject;

public final class e8d implements gbd {
    public String a;

    public e8d(String str) {
        this.a = str;
    }

    @Override
    public final JSONObject a(Context context) {
        try {
            JSONObject jSONObjectS = y4d.s(context);
            jSONObjectS.put("tp", this.a);
            jSONObjectS.put("v", y4d.m(y4d.w(context)));
            jSONObjectS.put("dft", "1");
            return jSONObjectS;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
