package defpackage;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbs;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public final class lmh {
    public final String a;
    public final String b;
    public final JSONObject c;
    public final JSONObject d;

    public lmh(JsonReader jsonReader) throws JSONException, IOException {
        JSONObject jSONObjectZzi = zzbs.zzi(jsonReader);
        this.d = jSONObjectZzi;
        this.a = jSONObjectZzi.optString("ad_html", null);
        this.b = jSONObjectZzi.optString("ad_base_url", null);
        this.c = jSONObjectZzi.optJSONObject("ad_json");
    }
}
