package se;

import android.text.TextUtils;
import com.iab.omid.library.mmadbridge.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

public class f extends a {
    public f(b.InterfaceC0883b interfaceC0883b, HashSet hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0883b, hashSet, jSONObject, j10);
    }

    private void e(String str) {
        com.iab.omid.library.mmadbridge.internal.c cVarE = com.iab.omid.library.mmadbridge.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f72048c.contains(hVar.s())) {
                    hVar.t().p(str, this.f72050e);
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
        if (re.c.v(this.f72049d, this.f72052b.a())) {
            return null;
        }
        this.f72052b.a(this.f72049d);
        return this.f72049d.toString();
    }
}
