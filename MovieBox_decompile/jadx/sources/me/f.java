package me;

import android.text.TextUtils;
import com.iab.omid.library.hisavana.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

public class f extends a {
    public f(b.InterfaceC0813b interfaceC0813b, HashSet hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0813b, hashSet, jSONObject, j10);
    }

    private void e(String str) {
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f66393c.contains(hVar.k())) {
                    hVar.l().m(str, this.f66395e);
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
        if (le.c.v(this.f66394d, this.f66397b.a())) {
            return null;
        }
        this.f66397b.a(this.f66394d);
        return this.f66394d.toString();
    }
}
