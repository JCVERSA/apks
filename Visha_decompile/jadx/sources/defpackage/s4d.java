package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.hunantv.media.drm.IDrmManager;
import java.io.File;
import java.util.HashMap;
import mgtv.qt.c;
import mgtv.qt.e;
import mgtv.qt.i;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class s4d {
    public long a;
    public String b;
    public String c;
    public boolean d;
    public boolean e;

    public s4d(long j, String str, String str2) {
        System.currentTimeMillis();
        this.d = true;
        this.e = true;
        this.a = j;
        this.b = str;
        this.c = str2;
    }

    public static String a(Context context, String str, String str2) throws Throwable {
        String str3 = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                str3 = e.p(context) + str2;
                byte[] bArrV = y4d.v(str);
                if (bArrV != null && bArrV.length > 0) {
                    i.b(str3, bArrV);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str3;
    }

    public static xyd b(Context context, String str) {
        xyd xydVar = new xyd();
        try {
            String packageName = context.getPackageName();
            xydVar.b("00", y4d.p(context));
            xydVar.b("01", y4d.m(hld.x(context)));
            xydVar.b("02", packageName);
            xydVar.b("03", hld.r(context));
            xydVar.b("04", y4d.o());
            xydVar.b("05", Build.MANUFACTURER);
            xydVar.b("06", y4d.r());
            xydVar.b("07", String.valueOf(hld.G()));
            xydVar.b("08", hld.y());
            xydVar.b("09", y4d.m(hld.D(context)));
            xydVar.b("10", y4d.m(hld.F(context)));
            xydVar.b("11", hld.o());
            xydVar.b("12", Build.VERSION.RELEASE);
            xydVar.b("13", y4d.m(""));
            xydVar.b("14", tid.d(context));
            xydVar.b("15", hld.A());
            xydVar.b("16", hld.z(context));
            xydVar.b("17", hld.C());
            hld.d();
            xydVar.b("18", "0");
            xydVar.b("19", hld.E());
            xydVar.b(IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES, hld.B(context));
            xydVar.b("21", hld.w());
            xydVar.b("22", str);
            xydVar.b("23", String.valueOf(System.currentTimeMillis() / 1000));
            xydVar.b("24", tid.c(context));
            xydVar.b("25", "");
            xydVar.b("26", hld.m());
            xydVar.b("27", y4d.m(y4d.l(context)));
            xydVar.b("28", tid.e(context));
            xydVar.b("29", c.h);
            xydVar.b("30", String.valueOf(hld.K()));
            xydVar.b("31", "1");
        } catch (JSONException unused) {
        }
        return xydVar;
    }

    public static void c(Context context, String str) throws Throwable {
        File[] fileArrListFiles;
        JSONArray jSONArray;
        if (hld.e(context)) {
            String str2 = "qt.csv." + System.currentTimeMillis() + ".txt";
            StringBuilder sb = new StringBuilder();
            sb.append(context.getPackageName());
            sb.append("\t");
            sb.append(hld.r(context));
            sb.append("\t");
            sb.append(y4d.r());
            sb.append("\t");
            sb.append(tid.c(context));
            sb.append("\t");
            sb.append(tid.b(context));
            sb.append("\t");
            sb.append(y4d.m(hld.D(context)));
            sb.append("\t");
            sb.append(y4d.m(hld.F(context)));
            sb.append("\t");
            sb.append(y4d.m(1 == m4d.a.optInt("phnum", 0) ? hld.j() : ""));
            sb.append("\t");
            sb.append(hld.w());
            sb.append("\t");
            sb.append(hld.y());
            sb.append("\t");
            sb.append(String.valueOf(hld.G()));
            sb.append("\t");
            sb.append(hld.E());
            sb.append("\t");
            sb.append(y4d.m(""));
            sb.append("\t");
            sb.append("-\t");
            sb.append(Build.MANUFACTURER);
            sb.append("\t");
            sb.append(hld.o());
            sb.append("\t");
            sb.append(hld.A());
            sb.append("\t");
            sb.append(hld.C());
            sb.append("\t");
            sb.append(Build.VERSION.RELEASE);
            sb.append("\t");
            sb.append(hld.B(context));
            sb.append("\t");
            sb.append(hld.z(context));
            sb.append("\t");
            hld.d();
            sb.append("0\t");
            sb.append(y4d.m(hld.x(context)));
            sb.append("\t");
            sb.append(System.currentTimeMillis() / 1000);
            sb.append("\t");
            sb.append(hld.m());
            sb.append("\t");
            sb.append("1");
            String str3 = str + "\t" + sb.toString();
            if (str3 != null) {
                a(context, str3, str2);
                File file = new File(e.p(context));
                if (!file.isDirectory() || (fileArrListFiles = file.listFiles(new t4d())) == null) {
                    return;
                }
                HashMap map = new HashMap();
                for (File file2 : fileArrListFiles) {
                    map.put(file2.getName(), file2);
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("appkey", y4d.p(context));
                    jSONObject.put("uid", tid.c(context));
                    jSONObject.put("sdk", 20250401);
                    jSONObject.put("type", 3);
                    jSONObject.put("ft", "2");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                aqd.g();
                String strConcat = "?".concat(String.valueOf(aqd.e(jSONObject).toString()));
                try {
                    jSONArray = m4d.a.optJSONArray("trinfo2urls");
                } catch (Throwable th) {
                    th.printStackTrace();
                    jSONArray = null;
                }
                if (jSONArray == null || jSONArray.length() == 0) {
                    jSONArray = new JSONArray();
                    jSONArray.put("https://truth.qchannel03.cn/truth");
                }
                boolean z = m4d.a.optInt("repeatReportGrowth", 0) == 0;
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (e.f(jSONArray.optString(i, "https://truth.qchannel03.cn/truth") + (strConcat + "&r=" + i), new JSONObject(), map).e() && z) {
                        break;
                    }
                }
                i.c(file);
            }
        }
    }

    public s4d(long j, String str, String str2, byte b) {
        System.currentTimeMillis();
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = false;
        this.e = false;
    }
}
