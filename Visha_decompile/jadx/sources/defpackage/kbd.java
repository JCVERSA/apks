package defpackage;

import java.util.HashSet;
import org.json.JSONObject;

public class kbd extends u1d {
    public kbd(c7d.b bVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    @Override
    public void onPostExecute(String str) {
        e(str);
        super.onPostExecute(str);
    }

    @Override
    public String doInBackground(Object... objArr) {
        return this.d.toString();
    }

    public final void e(String str) {
        i8d i8dVarE = i8d.e();
        if (i8dVarE != null) {
            for (e3d e3dVar : i8dVarE.c()) {
                if (this.c.contains(e3dVar.k())) {
                    e3dVar.l().h(str, this.e);
                }
            }
        }
    }
}
