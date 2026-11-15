package me;

import com.iab.omid.library.hisavana.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

public class e extends a {
    public e(b.InterfaceC0813b interfaceC0813b, HashSet hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0813b, hashSet, jSONObject, j10);
    }

    private void e(String str) {
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f66393c.contains(hVar.k())) {
                    hVar.l().h(str, this.f66395e);
                }
            }
        }
    }

    @Override
    public void onPostExecute(String str) {
        e(str);
        super.onPostExecute(str);
    }

    @Override
    public String doInBackground(Object... objArr) {
        return this.f66394d.toString();
    }
}
