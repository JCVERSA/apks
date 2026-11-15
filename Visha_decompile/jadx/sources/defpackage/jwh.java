package defpackage;

import java.util.HashSet;
import org.json.JSONObject;

public final class jwh extends fwh {
    public jwh(dwh dwhVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(dwhVar, hashSet, jSONObject, j);
    }

    @Override
    public final void onPostExecute(String str) {
        c(str);
        super.onPostExecute(str);
    }

    public final void c(String str) {
        cvh cvhVarA = cvh.a();
        if (cvhVarA != null) {
            for (suh suhVar : cvhVarA.c()) {
                if (this.c.contains(suhVar.h())) {
                    suhVar.g().d(str, this.e);
                }
            }
        }
    }

    @Override
    public final Object doInBackground(Object[] objArr) {
        return this.d.toString();
    }

    @Override
    public final void onPostExecute(Object obj) {
        String str = (String) obj;
        c(str);
        super.onPostExecute(str);
    }
}
