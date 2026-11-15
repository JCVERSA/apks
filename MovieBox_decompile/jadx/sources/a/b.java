package a;

import com.cloud.tmc.integration.params.TmcStartParams;
import org.json.JSONObject;

public final class b {

    public final long f3a;

    public final int f4b;

    public final int f5c;

    public final long f6d;

    public final String f7e;

    public final String f8f;

    public final String f9g;

    public final boolean f10h;

    public final boolean f11i;

    public final boolean f12j;

    public final boolean f13k;

    public final String f14l;

    public final String f15m;

    public final String f16n;

    public b(long j10, int i10, int i11, long j11, String str, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, String str4, String str5, String str6) {
        this.f3a = j10;
        this.f4b = Math.max(1, i10);
        this.f5c = Math.max(0, i11);
        this.f6d = Math.max(0L, Math.min(j11, 9223372036854775L));
        this.f7e = str;
        this.f8f = str2;
        this.f9g = str3;
        this.f10h = z10;
        this.f11i = z11;
        this.f12j = z12;
        this.f13k = z13;
        this.f14l = str4;
        this.f15m = str5;
        this.f16n = str6;
    }

    public static b a() {
        return new b(0L, 1, 0, 0L, "", "", "", false, false, false, false, "Update Available", "Please download our new version from website.", "Download");
    }

    public static b b(JSONObject jSONObject) {
        boolean zOptBoolean;
        boolean z10;
        if (jSONObject.has("Enabled")) {
            zOptBoolean = jSONObject.optBoolean("Enabled", true);
        } else {
            zOptBoolean = jSONObject.optBoolean("enabled", true);
        }
        if (!zOptBoolean) {
            return a();
        }
        long jOptLong = jSONObject.optLong(TmcStartParams.KEY_APP_VERSION, 0L);
        int iOptInt = jSONObject.optInt("adAfter", 1);
        boolean zOptBoolean2 = false;
        int iOptInt2 = jSONObject.optInt("waitSeconds", 0);
        long jOptLong2 = jSONObject.optLong("supportAdResetSeconds", 0L);
        if (jOptLong < 0 || iOptInt < 1 || iOptInt2 < 0 || jOptLong2 < 0) {
            throw new IllegalArgumentException("Invalid remote config numeric range");
        }
        String strTrim = jSONObject.optString("adUrl", "").trim();
        String strTrim2 = jSONObject.optString("supportAdUrl", "").trim();
        String strTrim3 = jSONObject.optString("webUrl", "").trim();
        boolean zOptBoolean3 = jSONObject.has("playAdEnabled") ? jSONObject.optBoolean("playAdEnabled", false) : c(strTrim);
        boolean zOptBoolean4 = jSONObject.has("supportEnabled") ? jSONObject.optBoolean("supportEnabled", false) : c(strTrim2);
        if (jSONObject.has("updateEnabled")) {
            zOptBoolean2 = jSONObject.optBoolean("updateEnabled", false);
        } else {
            if (jOptLong > 0 && c(strTrim3)) {
                z10 = true;
            }
            if (!zOptBoolean3 && !c(strTrim)) {
                throw new IllegalArgumentException("Enabled play ad requires a valid adUrl");
            }
            if (!zOptBoolean4 && !c(strTrim2)) {
                throw new IllegalArgumentException("Enabled support requires a valid supportAdUrl");
            }
            if (!z10 && (jOptLong <= 0 || !c(strTrim3))) {
                throw new IllegalArgumentException("Enabled update requires appVersion and webUrl");
            }
            boolean zOptBoolean5 = jSONObject.optBoolean("forceUpdate", true);
            String strOptString = jSONObject.optString("updateTitle", "Update Available");
            String strOptString2 = jSONObject.optString("updateMessage", "Please download our new version from website.");
            String strOptString3 = jSONObject.optString("updateButton", "Download");
            jSONObject.optString("laterButton", "Later");
            return new b(jOptLong, iOptInt, iOptInt2, jOptLong2, strTrim, strTrim2, strTrim3, zOptBoolean3, zOptBoolean4, z10, zOptBoolean5, strOptString, strOptString2, strOptString3);
        }
        z10 = zOptBoolean2;
        if (!zOptBoolean3) {
        }
        if (!zOptBoolean4) {
        }
        if (!z10) {
        }
        boolean zOptBoolean6 = jSONObject.optBoolean("forceUpdate", true);
        String strOptString4 = jSONObject.optString("updateTitle", "Update Available");
        String strOptString5 = jSONObject.optString("updateMessage", "Please download our new version from website.");
        String strOptString6 = jSONObject.optString("updateButton", "Download");
        jSONObject.optString("laterButton", "Later");
        return new b(jOptLong, iOptInt, iOptInt2, jOptLong2, strTrim, strTrim2, strTrim3, zOptBoolean3, zOptBoolean4, z10, zOptBoolean6, strOptString4, strOptString5, strOptString6);
    }

    public static boolean c(String str) {
        if (str != null) {
            return str.startsWith("https://") || str.startsWith("http://");
        }
        return false;
    }
}
