package defpackage;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;

public final class kwh extends fwh {
    public kwh(dwh dwhVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(dwhVar, hashSet, jSONObject, j);
    }

    @Override
    public final void onPostExecute(String str) {
        cvh cvhVarA;
        if (!TextUtils.isEmpty(str) && (cvhVarA = cvh.a()) != null) {
            for (suh suhVar : cvhVarA.c()) {
                if (this.c.contains(suhVar.h())) {
                    suhVar.g().h(str, this.e);
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override
    public final Object doInBackground(Object[] objArr) {
        dwh dwhVar = this.b;
        JSONObject jSONObject = this.d;
        if (vvh.g(jSONObject, dwhVar.a())) {
            return null;
        }
        dwhVar.e(jSONObject);
        return jSONObject.toString();
    }

    @Override
    public final void onPostExecute(Object obj) {
        onPostExecute((String) obj);
    }
}
