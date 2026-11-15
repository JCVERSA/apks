package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public final class v7f implements k7i {
    public final String a = "google.afma.activeView.handleUpdate";
    public final im5 b;

    public v7f(im5 im5Var, String str, w6f w6fVar, v6f v6fVar) {
        this.b = im5Var;
    }

    public static im5 a(v7f v7fVar, Object obj, r6f r6fVar) throws JSONException {
        eff effVar = new eff();
        zzv.zzq();
        String string = UUID.randomUUID().toString();
        m3f.o.c(string, new u7f(v7fVar, effVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TtmlNode.ATTR_ID, string);
        jSONObject.put("args", (JSONObject) obj);
        r6fVar.zzp(v7fVar.a, jSONObject);
        return effVar;
    }

    public final im5 b(final Object obj) {
        return j8.n(this.b, new k7i() {
            @Override
            public final im5 zza(Object obj2) {
                return v7f.a(this.a, obj, (r6f) obj2);
            }
        }, zef.g);
    }

    @Override
    public final im5 zza(Object obj) {
        return b(obj);
    }
}
