package defpackage;

import com.google.android.gms.internal.ads.zzbnp;
import org.json.JSONException;
import org.json.JSONObject;

public final class u7f implements c4f {
    public final eff a;

    public u7f(v7f v7fVar, eff effVar) {
        this.a = effVar;
    }

    @Override
    public final void a(JSONObject jSONObject) {
        try {
            this.a.c(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.a.d(e);
        }
    }

    @Override
    public final void zza(String str) {
        try {
            if (str == null) {
                this.a.d(new zzbnp());
            } else {
                this.a.d(new zzbnp(str));
            }
        } catch (IllegalStateException unused) {
        }
    }
}
