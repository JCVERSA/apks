package ye;

import com.iab.omid.library.vungle.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

public class e extends a {
    public e(b.InterfaceC0947b interfaceC0947b, HashSet hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0947b, hashSet, jSONObject, j10);
    }

    private void e(String str) {
        com.iab.omid.library.vungle.internal.c cVarE = com.iab.omid.library.vungle.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f76233c.contains(hVar.j())) {
                    hVar.k().h(str, this.f76235e);
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
        return this.f76234d.toString();
    }
}
