package defpackage;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;

public class red extends u1d {
    public red(c7d.b bVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    private void e(String str) {
        i8d i8dVarE = i8d.e();
        if (i8dVarE != null) {
            for (e3d e3dVar : i8dVarE.c()) {
                if (this.c.contains(e3dVar.k())) {
                    e3dVar.l().m(str, this.e);
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
        if (k8d.v(this.d, this.b.a())) {
            return null;
        }
        this.b.a(this.d);
        return this.d.toString();
    }
}
