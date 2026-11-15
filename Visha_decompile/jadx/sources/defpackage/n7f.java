package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.t3;
import java.util.UUID;
import org.json.JSONObject;

public final class n7f implements t6f {
    public final v6f a;
    public final w6f b;
    public final t3 c;
    public final String d;

    public n7f(t3 t3Var, String str, w6f w6fVar, v6f v6fVar) {
        this.c = t3Var;
        this.d = str;
        this.b = w6fVar;
        this.a = v6fVar;
    }

    public static void b(n7f n7fVar, m6f m6fVar, r6f r6fVar, Object obj, eff effVar) {
        try {
            zzv.zzq();
            String string = UUID.randomUUID().toString();
            m3f.o.c(string, new m7f(n7fVar, m6fVar, effVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TtmlNode.ATTR_ID, string);
            jSONObject.put("args", n7fVar.b.zzb(obj));
            r6fVar.zzp(n7fVar.d, jSONObject);
        } catch (Exception e) {
            try {
                effVar.d(e);
                int i = zze.zza;
                zzo.zzh("Unable to invokeJavascript", e);
            } finally {
                m6fVar.h();
            }
        }
    }

    @Override
    public final im5 zza(Object obj) {
        return zzb(obj);
    }

    @Override
    public final im5 zzb(Object obj) {
        eff effVar = new eff();
        m6f m6fVarB = this.c.b(null);
        zze.zza("callJs > getEngine: Promise created");
        m6fVarB.f(new k7f(this, m6fVarB, obj, effVar), new l7f(this, effVar, m6fVarB));
        return effVar;
    }
}
