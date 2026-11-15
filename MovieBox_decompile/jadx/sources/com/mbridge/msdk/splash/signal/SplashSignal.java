package com.mbridge.msdk.splash.signal;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.AbsFeedBackForH5;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import org.json.JSONException;
import org.json.JSONObject;

public class SplashSignal extends AbsFeedBackForH5 {

    private static String f36770h = "SplashSignal";

    public static final int f36771i = 0;

    private b f36772g;

    public void getFileInfo(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            c.a(obj, new JSONObject(str));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public void handlerH5Exception(Object obj, String str) {
        if (obj != null) {
            try {
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().a(windVaneWebView, 0, str.toString(), windVaneWebView.getUrl());
            } catch (Throwable th2) {
                o0.b(f36770h, "handlerH5Exception", th2);
            }
        }
    }

    public void increaseOfferFrequence(Object obj, String str) {
        try {
            c.b(obj, new JSONObject(str));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public void init(Object obj, String str) {
        o0.b(f36770h, "initialize" + str);
        b bVar = this.f36772g;
        if (bVar != null) {
            bVar.init(obj, str);
        }
    }

    @Override
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (windVaneWebView.getObject() == null || !(windVaneWebView.getObject() instanceof b)) {
                return;
            }
            this.f36772g = (b) windVaneWebView.getObject();
        } catch (Throwable th2) {
            o0.b(f36770h, "initialize", th2);
        }
    }

    public void install(Object obj, String str) {
        b bVar = this.f36772g;
        if (bVar != null) {
            bVar.install(obj, str);
        }
    }

    public void onSignalCommunication(Object obj, String str) {
        try {
            o0.b(f36770h, "onSignalCommunication");
            b bVar = this.f36772g;
            if (bVar != null) {
                bVar.c(obj, str);
            }
        } catch (Throwable th2) {
            o0.b(f36770h, "onSignalCommunication", th2);
        }
    }

    public void openURL(Object obj, String str) {
        o0.b(f36770h, "openURL" + str);
        b bVar = this.f36772g;
        if (bVar != null) {
            bVar.openURL(obj, str);
        }
    }

    public void pauseCountDown(Object obj, String str) {
        try {
            o0.b(f36770h, "pauseCountDown");
            b bVar = this.f36772g;
            if (bVar != null) {
                bVar.e(obj, str);
            }
        } catch (Throwable th2) {
            o0.b(f36770h, "pauseCountDown", th2);
        }
    }

    public void readyStatus(Object obj, String str) {
        if (obj != null) {
            try {
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b;
                if (windVaneWebView == null || windVaneWebView.getWebViewListener() == null) {
                    return;
                }
                windVaneWebView.getWebViewListener().a(windVaneWebView, iOptInt);
            } catch (Throwable th2) {
                o0.b(f36770h, "readyStatus", th2);
            }
        }
    }

    public void reportUrls(Object obj, String str) {
        try {
            o0.b(f36770h, "reportUrls");
            b bVar = this.f36772g;
            if (bVar != null) {
                bVar.reportUrls(obj, str);
            }
        } catch (Throwable th2) {
            o0.b(f36770h, "reportUrls", th2);
        }
    }

    public void resetCountdown(Object obj, String str) {
        o0.b(f36770h, "resetCountdown" + str);
        b bVar = this.f36772g;
        if (bVar != null) {
            bVar.a(obj, str);
        }
    }

    public void resumeCountDown(Object obj, String str) {
        try {
            o0.b(f36770h, "resumeCountDown");
            b bVar = this.f36772g;
            if (bVar != null) {
                bVar.f(obj, str);
            }
        } catch (Throwable th2) {
            o0.b(f36770h, "resumeCountDown", th2);
        }
    }

    public void sendImpressions(Object obj, String str) {
        try {
            o0.b(f36770h, "sendImpressions");
            b bVar = this.f36772g;
            if (bVar != null) {
                bVar.d(obj, str);
            }
        } catch (Throwable th2) {
            o0.b(f36770h, "sendImpressions", th2);
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        o0.b(f36770h, "toggleCloseBtn" + str);
        b bVar = this.f36772g;
        if (bVar != null) {
            bVar.toggleCloseBtn(obj, str);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        o0.b(f36770h, "triggerCloseBtn" + str);
        b bVar = this.f36772g;
        if (bVar != null) {
            bVar.triggerCloseBtn(obj, str);
        }
    }
}
