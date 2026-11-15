package defpackage;

import org.json.JSONObject;

public final class qaf {
    public final boolean a;
    public final String b;
    public final boolean c;

    public qaf(boolean z, String str, boolean z2) {
        this.a = z;
        this.b = str;
        this.c = z2;
    }

    public static qaf a(JSONObject jSONObject) {
        return new qaf(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", ""), jSONObject.optBoolean("skip_offline_notification_flow", false));
    }
}
