package defpackage;

import com.google.android.gms.internal.ads.zzbnp;
import org.json.JSONException;
import org.json.JSONObject;

public final class m7f implements c4f {
    public final m6f a;
    public final eff b;
    public final n7f c;

    public m7f(n7f n7fVar, m6f m6fVar, eff effVar) {
        this.c = n7fVar;
        this.a = m6fVar;
        this.b = effVar;
    }

    @Override
    public final void a(JSONObject jSONObject) {
        try {
            try {
                this.b.c(this.c.a.a(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e) {
                this.b.d(e);
            }
        } finally {
            this.a.h();
        }
    }

    @Override
    public final void zza(String str) {
        try {
            if (str == null) {
                this.b.d(new zzbnp());
            } else {
                this.b.d(new zzbnp(str));
            }
        } catch (IllegalStateException unused) {
        } finally {
            this.a.h();
        }
    }
}
