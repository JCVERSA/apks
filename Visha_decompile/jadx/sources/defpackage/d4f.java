package defpackage;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.hisavana.common.tracking.TrackingKey;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public final class d4f implements n3f {
    public final Object a = new Object();
    public final Map b = new HashMap();

    @Override
    public final void a(Object obj, Map map) {
        String str = (String) map.get(TtmlNode.ATTR_ID);
        String str2 = (String) map.get("fail");
        String str3 = (String) map.get(TrackingKey.FAIL_REASON);
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get("result");
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        String strConcat = TextUtils.isEmpty(str4) ? "" : "\n".concat(String.valueOf(str4));
        synchronized (this.a) {
            try {
                c4f c4fVar = (c4f) this.b.remove(str);
                if (c4fVar == null) {
                    String str6 = "Received result for unexpected method invocation: " + str;
                    int i = zze.zza;
                    zzo.zzj(str6);
                    return;
                }
                if (!TextUtils.isEmpty(str2)) {
                    c4fVar.zza(str3 + strConcat);
                    return;
                }
                if (str5 == null) {
                    c4fVar.a(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (zze.zzc()) {
                        zze.zza("Result GMSG: " + jSONObject.toString(2));
                    }
                    c4fVar.a(jSONObject);
                } catch (JSONException e) {
                    c4fVar.zza(e.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final im5 b(x5f x5fVar, String str, JSONObject jSONObject) {
        eff effVar = new eff();
        zzv.zzq();
        String string = UUID.randomUUID().toString();
        c(string, new b4f(this, effVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(TtmlNode.ATTR_ID, string);
            jSONObject2.put("args", jSONObject);
            x5fVar.zzp(str, jSONObject2);
        } catch (Exception e) {
            effVar.d(e);
        }
        return effVar;
    }

    public final void c(String str, c4f c4fVar) {
        synchronized (this.a) {
            this.b.put(str, c4fVar);
        }
    }
}
