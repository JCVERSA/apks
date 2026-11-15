package com.mbridge.msdk.video.bt.component;

import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c {

    private String f37972a;

    int f37973b;

    int f37974c;

    private static final class b {

        private static c f37975a = new c();
    }

    public static c a() {
        return b.f37975a;
    }

    private c() {
        this.f37972a = "handlerNativeResult";
        this.f37973b = 0;
        this.f37974c = 1;
    }

    public void a(Object obj, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (!TextUtils.isEmpty(jSONObject.toString())) {
                    String strOptString = jSONObject.optString("uniqueIdentifier");
                    String strOptString2 = jSONObject.optString("name");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("parameters");
                        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("result");
                        int iOptInt = 0;
                        if (jSONObjectOptJSONObject != null && !TextUtils.isEmpty(jSONObjectOptJSONObject.toString())) {
                            iOptInt = jSONObjectOptJSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 0);
                        }
                        a(this.f37973b, "receivedMessage", obj);
                        if (strOptString.equalsIgnoreCase("reporter")) {
                            com.mbridge.msdk.mbsignalcommon.Report.a.a().a(obj, strOptString2, jSONArrayOptJSONArray, iOptInt);
                            return;
                        } else {
                            if (strOptString.equalsIgnoreCase("MediaPlayer")) {
                                com.mbridge.msdk.video.bt.component.b.a().a(obj, strOptString2, jSONArrayOptJSONArray, iOptInt);
                                return;
                            }
                            return;
                        }
                    }
                    a(this.f37974c, "module or method is null", obj);
                    return;
                }
            } catch (Exception e10) {
                o0.a("HandlerH5MessageManager", e10.getMessage());
                a(this.f37974c, e10.getMessage(), obj);
                return;
            } catch (Throwable th2) {
                o0.a("HandlerH5MessageManager", th2.getMessage());
                a(this.f37974c, th2.getMessage(), obj);
                return;
            }
        }
        a(this.f37974c, "params is null", obj);
    }

    public void a(int i10, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i10);
            jSONObject.put("message", str);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e10) {
            o0.a("HandlerH5MessageManager", e10.getMessage());
        } catch (Throwable th2) {
            o0.a("HandlerH5MessageManager", th2.getMessage());
        }
    }
}
