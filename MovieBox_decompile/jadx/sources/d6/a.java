package d6;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import org.json.JSONObject;
import z5.b;

public abstract class a {

    private static b f58904a = null;

    public static int f58905b = 10;

    public static int f58906c = 10;

    public static int f58907d = 10;

    public static int f58908e = 10;

    public static int a() {
        return f58907d;
    }

    public static int b() {
        return f58908e;
    }

    public static void c() {
        b bVar = f58904a;
        if (bVar != null) {
            bVar.EjP();
        }
    }

    public static void d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            f58905b = jSONObject.optInt("splash", 10);
            f58906c = jSONObject.optInt("reward", 10);
            f58907d = jSONObject.optInt("brand", 10);
            int iOptInt = jSONObject.optInt(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, 10);
            f58908e = iOptInt;
            if (f58905b < 0) {
                f58905b = 10;
            }
            if (f58906c < 0) {
                f58906c = 10;
            }
            if (f58907d < 0) {
                f58907d = 10;
            }
            if (iOptInt < 0) {
                f58908e = 10;
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public static void e(b bVar) {
        f58904a = bVar;
    }

    public static int f() {
        return f58906c;
    }

    public static int g() {
        return f58905b;
    }
}
