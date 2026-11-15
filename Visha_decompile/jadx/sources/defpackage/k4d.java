package defpackage;

import android.content.Context;
import android.os.Build;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.io.File;
import mgtv.qt.e;
import org.json.JSONException;
import org.json.JSONObject;

public final class k4d {
    public String a;
    public String b;
    public Context c;
    public JSONObject d;

    public k4d(Context context, String str, String str2) {
        this.d = null;
        this.c = context;
        String str3 = (String) sjd.f(context, "cfgver", "");
        String packageName = context.getPackageName();
        String strC = tid.c(context);
        StringBuilder sb = new StringBuilder(str);
        sb.append("?tp=1");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app", packageName);
            jSONObject.put("uid", strC);
            jSONObject.put("sv", 20250401);
            jSONObject.put("svname", TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2);
            jSONObject.put("appver", hld.r(context));
            jSONObject.put("osver", Build.VERSION.SDK_INT);
            jSONObject.put("cver", str3);
            jSONObject.put("chl", y4d.r());
            jSONObject.put("yz", "1");
            jSONObject.put("cgft", false);
            jSONObject.put("ise", "1");
            JSONObject jSONObjectD = y4d.d(jSONObject);
            this.d = jSONObjectD;
            if (jSONObjectD != null) {
                sb.append("&ts=");
                sb.append(this.d.getString(TrackingKey.TS));
                sb.append("&uid=".concat(String.valueOf(strC)));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.a = sb.toString();
        this.b = str2;
    }

    public final File a() {
        if (!hld.e(this.c)) {
            return null;
        }
        JSONObject jSONObject = this.d;
        File fileC = jSONObject != null ? e.c(this.a, jSONObject, this.b) : e.b(this.a, this.b);
        if (fileC != null && fileC.exists()) {
            fileC.isFile();
        }
        return fileC;
    }
}
