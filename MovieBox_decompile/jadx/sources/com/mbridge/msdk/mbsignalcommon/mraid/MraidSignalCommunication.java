package com.mbridge.msdk.mbsignalcommon.mraid;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import org.json.JSONObject;

public class MraidSignalCommunication extends BaseMraidSignalCommunication {

    public static final int f35671h = 0;

    private b f35672g;

    public void close(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b, "close");
        }
        try {
            o0.b("MraidSignalCommunication", "MRAID close");
            b bVar = this.f35672g;
            if (bVar != null) {
                bVar.close();
            }
        } catch (Throwable th2) {
            o0.b("MraidSignalCommunication", "MRAID close", th2);
        }
    }

    public void expand(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b, "expand");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            String strOptString2 = jSONObject.optString("shouldUseCustomClose");
            o0.b("MraidSignalCommunication", "MRAID expand " + strOptString + " " + strOptString2);
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || this.f35672g == null) {
                return;
            }
            this.f35672g.expand(strOptString, strOptString2.toLowerCase().equals("true"));
        } catch (Throwable th2) {
            o0.b("MraidSignalCommunication", "MRAID expand", th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (context instanceof b) {
                this.f35672g = (b) context;
                return;
            }
            if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof b)) {
                this.f35672g = (b) windVaneWebView.getObject();
            }
            if (windVaneWebView.getMraidObject() == null || !(windVaneWebView.getMraidObject() instanceof b)) {
                return;
            }
            this.f35672g = (b) windVaneWebView.getMraidObject();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void open(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
            windVaneWebView = aVar.f35709b;
            a.a().b(aVar.f35709b, MRAIDPresenter.OPEN);
        } else {
            windVaneWebView = null;
        }
        try {
            String strOptString = new JSONObject(str).optString("url");
            o0.b("MraidSignalCommunication", "MRAID Open " + strOptString);
            if (this.f35672g == null || TextUtils.isEmpty(strOptString)) {
                return;
            }
            if (windVaneWebView == null || System.currentTimeMillis() - windVaneWebView.lastTouchTime <= com.mbridge.msdk.click.utils.a.f33614c || !com.mbridge.msdk.click.utils.a.a(this.f35672g.getMraidCampaign(), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f33612a)) {
                this.f35672g.open(strOptString);
            }
        } catch (Throwable th2) {
            o0.b("MraidSignalCommunication", "MRAID Open", th2);
        }
    }

    public void setOrientationProperties(Object obj, String str) {
        String str2;
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b, MRAIDPresenter.SET_ORIENTATION_PROPERTIES);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("allowOrientationChange");
            String strOptString2 = jSONObject.optString("forceOrientation");
            o0.b("MraidSignalCommunication", "MRAID setOrientationProperties");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || this.f35672g == null) {
                return;
            }
            strOptString.toLowerCase().equals("true");
            String lowerCase = strOptString2.toLowerCase();
            int iHashCode = lowerCase.hashCode();
            if (iHashCode == 729267099) {
                str2 = "portrait";
            } else if (iHashCode != 1430647483) {
                return;
            } else {
                str2 = TmcStartParams.KEY_LANDSCAPE;
            }
            lowerCase.equals(str2);
        } catch (Throwable th2) {
            o0.b("MraidSignalCommunication", "MRAID setOrientationProperties", th2);
        }
    }

    public void unload(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b, "unload");
        }
        try {
            o0.b("MraidSignalCommunication", "MRAID unload");
            b bVar = this.f35672g;
            if (bVar != null) {
                bVar.unload();
            }
        } catch (Throwable th2) {
            o0.b("MraidSignalCommunication", "MRAID unload", th2);
        }
    }

    public void useCustomClose(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b, "useCustomClose");
        }
        try {
            String strOptString = new JSONObject(str).optString("shouldUseCustomClose");
            o0.b("MraidSignalCommunication", "MRAID useCustomClose " + strOptString);
            if (TextUtils.isEmpty(strOptString) || this.f35672g == null) {
                return;
            }
            this.f35672g.useCustomClose(strOptString.toLowerCase().equals("true"));
        } catch (Throwable th2) {
            o0.b("MraidSignalCommunication", "MRAID useCustomClose", th2);
        }
    }
}
