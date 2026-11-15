package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import org.json.JSONException;
import org.json.JSONObject;

public final class wng {
    public Long a;
    public final String b;
    public String c;
    public Integer d;
    public String e;
    public Integer f;

    public wng(String str, xng xngVar) {
        this.b = str;
    }

    public static String a(wng wngVar) {
        String str = (String) zzbd.zzc().b(cye.da);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", wngVar.a);
            jSONObject.put("eventCategory", wngVar.b);
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, wngVar.c);
            jSONObject.putOpt("errorCode", wngVar.d);
            jSONObject.putOpt("rewardType", wngVar.e);
            jSONObject.putOpt("rewardAmount", wngVar.f);
        } catch (JSONException unused) {
            int i = zze.zza;
            zzo.zzj("Could not convert parameters to JSON.");
        }
        return str + "(\"h5adsEvent\"," + jSONObject.toString() + ");";
    }
}
