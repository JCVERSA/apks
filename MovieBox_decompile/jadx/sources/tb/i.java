package tb;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import org.json.JSONObject;

public abstract class i {

    public static final dc.a f72657a = new fc.d().j(a.f72611a).i();

    static i a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return b(jSONObject.getString("rolloutId"), jSONObject.getString("parameterKey"), jSONObject.getString("parameterValue"), jSONObject.getString("variantId"), jSONObject.getLong("templateVersion"));
    }

    public static i b(String str, String str2, String str3, String str4, long j10) {
        return new b(str, str2, i(str3), str4, j10);
    }

    private static String i(String str) {
        return str.length() > 256 ? str.substring(0, 256) : str;
    }

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract long f();

    public abstract String g();

    public CrashlyticsReport.e.d.AbstractC0411e h() {
        return CrashlyticsReport.e.d.AbstractC0411e.a().d(CrashlyticsReport.e.d.AbstractC0411e.b.a().c(g()).b(e()).a()).b(c()).c(d()).e(f()).a();
    }
}
