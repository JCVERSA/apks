package se;

import com.iab.omid.library.mmadbridge.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

public class e extends a {
    public e(b.InterfaceC0883b interfaceC0883b, HashSet hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0883b, hashSet, jSONObject, j10);
    }

    private void e(String str) {
        com.iab.omid.library.mmadbridge.internal.c cVarE = com.iab.omid.library.mmadbridge.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f72048c.contains(hVar.s())) {
                    hVar.t().j(str, this.f72050e);
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
        return this.f72049d.toString();
    }
}
