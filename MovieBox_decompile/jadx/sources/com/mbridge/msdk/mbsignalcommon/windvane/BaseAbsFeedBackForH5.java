package com.mbridge.msdk.mbsignalcommon.windvane;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;

public class BaseAbsFeedBackForH5 extends g {

    private static int f35688e = 0;

    private static int f35689f = 1;

    private String f35690d = "AbsFeedBackForH5";

    public void callbackExcep(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f35689f);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            o0.a(this.f35690d, e10.getMessage());
        }
    }

    public void callbackSuccess(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f35688e);
            jSONObject.put("message", "");
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            callbackExcep(obj, e10.getMessage());
            o0.a(this.f35690d, e10.getMessage());
        }
    }

    public void callbackSuccessWithData(Object obj, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", f35688e);
            jSONObject2.put("message", "");
            jSONObject2.put("data", jSONObject);
            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (Exception e10) {
            callbackExcep(obj, e10.getMessage());
            o0.a(this.f35690d, e10.getMessage());
        }
    }

    public void feedbackLayoutOperate(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt("width", -1);
                int iOptInt2 = jSONObject.optInt("height", -1);
                int iOptInt3 = jSONObject.optInt(TtmlNode.LEFT, -1);
                int iOptInt4 = jSONObject.optInt(IntegrationConstants.TAB_BAR_POSITION_TOP, -1);
                double dOptDouble = jSONObject.optDouble("opacity", 1.0d);
                int iOptInt5 = jSONObject.optInt("radius", 20);
                String strOptString = jSONObject.optString("fontColor", "");
                String strOptString2 = jSONObject.optString("bgColor", "");
                com.mbridge.msdk.foundation.feedback.b.b().a(jSONObject.optString("key", ""), iOptInt, iOptInt2, iOptInt5, iOptInt3, iOptInt4, (float) dOptDouble, strOptString, strOptString2, (float) jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE, -1.0d), jSONObject.optJSONArray("padding"));
            }
            callbackSuccess(obj);
        } catch (Throwable th2) {
            callbackExcep(obj, th2.getMessage());
            th2.printStackTrace();
        }
    }

    public void feedbackOperate(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt("view_visible", 1);
                com.mbridge.msdk.foundation.feedback.b.b().a(jSONObject.optString("key", ""), iOptInt == 1 ? 8 : 0, aVar.f35709b);
            }
            callbackSuccess(obj);
        } catch (Throwable th2) {
            callbackExcep(obj, th2.getMessage());
            th2.printStackTrace();
        }
    }

    public void feedbackPopupOperate(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt("view_visible", 1);
                com.mbridge.msdk.foundation.feedback.b.b().a(jSONObject.optString("key", ""), iOptInt, new a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b));
            }
            callbackSuccess(obj);
        } catch (Throwable th2) {
            callbackExcep(obj, th2.getMessage());
            th2.printStackTrace();
        }
    }

    class a implements com.mbridge.msdk.foundation.feedback.a {

        final WindVaneWebView f35691a;

        a(WindVaneWebView windVaneWebView) {
            this.f35691a = windVaneWebView;
        }

        @Override
        public void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(BaseAbsFeedBackForH5.this.f35690d, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) this.f35691a, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(BaseAbsFeedBackForH5.this.f35690d, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) this.f35691a, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(BaseAbsFeedBackForH5.this.f35690d, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) this.f35691a, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }
}
