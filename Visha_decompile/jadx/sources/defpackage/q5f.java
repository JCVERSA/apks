package defpackage;

import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class q5f {
    public static void a(r5f r5fVar, String str, Map map) {
        try {
            r5fVar.zze(str, zzbb.zzb().zzk(map));
        } catch (JSONException unused) {
            int i = zze.zza;
            zzo.zzj("Could not convert parameters to JSON.");
        }
    }

    public static void b(r5f r5fVar, String str, JSONObject jSONObject) {
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(string);
        sb.append(");");
        String string2 = sb.toString();
        int i = zze.zza;
        zzo.zze("Dispatching AFMA event: ".concat(string2));
        r5fVar.zza(sb.toString());
    }

    public static void c(r5f r5fVar, String str, String str2) {
        r5fVar.zza(str + "(" + str2 + ");");
    }

    public static void d(r5f r5fVar, String str, JSONObject jSONObject) {
        r5fVar.zzb(str, jSONObject.toString());
    }
}
