package ye;

import android.text.TextUtils;
import com.iab.omid.library.vungle.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

public class f extends a {
    public f(b.InterfaceC0947b interfaceC0947b, HashSet hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0947b, hashSet, jSONObject, j10);
    }

    private void e(String str) {
        com.iab.omid.library.vungle.internal.c cVarE = com.iab.omid.library.vungle.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f76233c.contains(hVar.j())) {
                    hVar.k().m(str, this.f76235e);
                }
            }
        }
    }

    @Override
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            e(str);
        }
        super.onPostExecute(str);
    }

    @Override
    public String doInBackground(Object... objArr) {
        if (xe.c.v(this.f76234d, this.f76237b.a())) {
            return null;
        }
        this.f76237b.a(this.f76234d);
        return this.f76234d.toString();
    }
}
