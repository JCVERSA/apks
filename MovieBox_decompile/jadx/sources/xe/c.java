package xe;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.iab.omid.library.vungle.adsession.OutputDeviceStatus;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class c {

    private static WindowManager f75323a;

    private static String[] f75324b = {"x", "y", "width", "height"};

    static float f75325c = Resources.getSystem().getDisplayMetrics().density;

    static class a {

        static final int[] f75326a;

        static {
            int[] iArr = new int[OutputDeviceStatus.values().length];
            f75326a = iArr;
            try {
                iArr[OutputDeviceStatus.NOT_DETECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private static class b {

        final float f75327a;

        final float f75328b;

        b(float f10, float f11) {
            this.f75327a = f10;
            this.f75328b = f11;
        }
    }

    static float a(int i10) {
        return i10 / f75325c;
    }

    public static JSONObject b(int i10, int i11, int i12, int i13) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", a(i10));
            jSONObject.put("y", a(i11));
            jSONObject.put("width", a(i12));
            jSONObject.put("height", a(i13));
        } catch (JSONException e10) {
            d.b("Error with creating viewStateObject", e10);
        }
        return jSONObject;
    }

    private static b c(JSONObject jSONObject) {
        float fA;
        float fA2;
        if (f75323a != null) {
            Point point = new Point(0, 0);
            f75323a.getDefaultDisplay().getRealSize(point);
            fA = a(point.x);
            fA2 = a(point.y);
        } else {
            fA = 0.0f;
            fA2 = 0.0f;
        }
        return new b(fA, fA2);
    }

    public static void d(Context context) {
        if (context != null) {
            f75325c = context.getResources().getDisplayMetrics().density;
            f75323a = (WindowManager) context.getSystemService("window");
        }
    }

    public static void e(JSONObject jSONObject, OutputDeviceStatus outputDeviceStatus) {
        try {
            jSONObject.put("noOutputDevice", k(outputDeviceStatus));
        } catch (JSONException e10) {
            d.b("Error with setting output device status", e10);
        }
    }

    public static void f(JSONObject jSONObject, com.iab.omid.library.vungle.walking.a.C0439a c0439a) {
        c0439a.a();
        JSONArray jSONArray = new JSONArray();
        Iterator it = c0439a.b().iterator();
        while (it.hasNext()) {
            jSONArray.put((String) it.next());
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            throw null;
        } catch (JSONException e10) {
            d.b("Error with setting friendly obstruction", e10);
        }
    }

    public static void g(JSONObject jSONObject, Boolean bool) {
        try {
            jSONObject.put("hasWindowFocus", bool);
        } catch (JSONException e10) {
            d.b("Error with setting has window focus", e10);
        }
    }

    public static void h(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e10) {
            d.b("Error with setting ad session id", e10);
        }
    }

    public static void i(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e10) {
            d.b("JSONException during JSONObject.put for name [" + str + "]", e10);
        }
    }

    public static void j(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    private static boolean k(OutputDeviceStatus outputDeviceStatus) {
        return a.f75326a[outputDeviceStatus.ordinal()] == 1;
    }

    private static boolean l(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    public static void m(JSONObject jSONObject) {
        b bVarC = c(jSONObject);
        try {
            jSONObject.put("width", bVarC.f75327a);
            jSONObject.put("height", bVarC.f75328b);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public static void n(JSONObject jSONObject, Boolean bool) {
        if (bool.booleanValue()) {
            try {
                jSONObject.put("isPipActive", bool);
            } catch (JSONException e10) {
                d.b("Error with setting is picture-in-picture active", e10);
            }
        }
    }

    public static void o(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e10) {
            d.b("Error with setting not visible reason", e10);
        }
    }

    private static boolean p(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!l(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            if (!v(jSONArrayOptJSONArray.optJSONObject(i10), jSONArrayOptJSONArray2.optJSONObject(i10))) {
                return false;
            }
        }
        return true;
    }

    private static boolean q(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!l(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            if (!jSONArrayOptJSONArray.optString(i10, "").equals(jSONArrayOptJSONArray2.optString(i10, ""))) {
                return false;
            }
        }
        return true;
    }

    private static boolean r(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")));
    }

    private static boolean s(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice")));
    }

    private static boolean t(JSONObject jSONObject, JSONObject jSONObject2) {
        for (String str : f75324b) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    private static boolean u(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    public static boolean v(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        return t(jSONObject, jSONObject2) && u(jSONObject, jSONObject2) && s(jSONObject, jSONObject2) && r(jSONObject, jSONObject2) && q(jSONObject, jSONObject2) && p(jSONObject, jSONObject2);
    }
}
