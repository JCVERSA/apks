package com.mbridge.msdk.video.signal.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.impl.k;
import org.json.JSONException;
import org.json.JSONObject;

public class BaseRewardSignal extends BaseRewardSignalDiff {

    protected BaseIRewardCommunication f38666g;

    private String a(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i10);
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable unused) {
            o0.b("JS-Reward-Brigde", "code to string is error");
        }
        return "";
    }

    @Override
    public void cai(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                String strOptString = new JSONObject(str).optString("packageName");
                if (TextUtils.isEmpty(strOptString)) {
                    d.a(obj, "packageName is empty");
                }
                int i10 = t0.c(c.m().d(), strOptString) ? 1 : 2;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", d.f35664b);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i10);
                    jSONObject.put("data", jSONObject2);
                    f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    d.a(obj, e10.getMessage());
                    o0.a("JS-Reward-Brigde", e10.getMessage());
                }
            } catch (JSONException e11) {
                d.a(obj, "exception: " + e11.getLocalizedMessage());
                o0.b("JS-Reward-Brigde", "cai", e11);
            }
        } catch (Throwable th2) {
            d.a(obj, "exception: " + th2.getLocalizedMessage());
            o0.b("JS-Reward-Brigde", "cai", th2);
        }
    }

    @Override
    public void getEndScreenInfo(Object obj, String str) {
        try {
            BaseIRewardCommunication baseIRewardCommunication = this.f38666g;
            if (baseIRewardCommunication != null) {
                baseIRewardCommunication.getEndScreenInfo(obj, str);
                o0.b("JS-Reward-Brigde", "getEndScreenInfo factory is true");
            } else {
                o0.b("JS-Reward-Brigde", "getEndScreenInfo factory is null");
                if (obj != null) {
                    WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b;
                    if ((windVaneWebView instanceof WindVaneWebView) && windVaneWebView.getWebViewListener() != null) {
                        ((com.mbridge.msdk.mbsignalcommon.listener.a) windVaneWebView.getWebViewListener()).a(obj);
                    }
                }
            }
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "getEndScreenInfo", th2);
        }
    }

    @Override
    public void handlerPlayableException(Object obj, String str) {
        try {
            if (this.f38666g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f38666g.handlerPlayableException(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "handlerPlayableException", th2);
        }
    }

    @Override
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        boolean zIsInstance;
        super.initialize(context, windVaneWebView);
        try {
            zIsInstance = IJSFactory.class.isInstance(context);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            zIsInstance = false;
        }
        try {
            if (zIsInstance) {
                this.f38666g = (BaseIRewardCommunication) BaseRewardSignalH5.class.newInstance();
                BaseRewardSignalH5.class.getMethod("initialize", Context.class, WindVaneWebView.class).invoke(this.f38666g, context, windVaneWebView);
            } else if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof BaseIRewardCommunication)) {
                this.f38666g = (BaseIRewardCommunication) windVaneWebView.getObject();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    @Override
    public void install(Object obj, String str) {
        try {
            BaseIRewardCommunication baseIRewardCommunication = this.f38666g;
            if (baseIRewardCommunication != null) {
                baseIRewardCommunication.install(obj, str);
                return;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (obj != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                if (aVar.f35709b.getObject() instanceof k) {
                    ((k) aVar.f35709b.getObject()).click(1, str);
                    o0.b("JS-Reward-Brigde", "JSCommon install jump success");
                }
            }
            o0.b("JS-Reward-Brigde", "JSCommon install failed");
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "install", th2);
        }
    }

    @Override
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.f38666g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f38666g.notifyCloseBtn(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "notifyCloseBtn", th2);
        }
    }

    @Override
    public void openURL(Object obj, String str) {
        o0.b("JS-Reward-Brigde", "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (iOptInt == 1) {
                com.mbridge.msdk.click.c.c(this.f35732a, strOptString);
            } else if (iOptInt == 2) {
                com.mbridge.msdk.click.c.e(this.f35732a, strOptString);
            }
        } catch (JSONException e10) {
            o0.b("JS-Reward-Brigde", e10.getMessage());
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", th2.getMessage());
        }
    }

    @Override
    public void setOrientation(Object obj, String str) {
        try {
            if (this.f38666g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f38666g.setOrientation(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "setOrientation", th2);
        }
    }

    @Override
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.f38666g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f38666g.toggleCloseBtn(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "toggleCloseBtn", th2);
        }
    }

    @Override
    public void triggerCloseBtn(Object obj, String str) {
        try {
            if (this.f38666g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f38666g.triggerCloseBtn(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "triggerCloseBtn", th2);
            f.a().b(obj, a(-1));
        }
    }

    @Override
    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        boolean zIsInstance;
        super.initialize(obj, windVaneWebView);
        try {
            zIsInstance = IJSFactory.class.isInstance(obj);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            zIsInstance = false;
        }
        try {
            if (zIsInstance) {
                this.f38666g = (BaseIRewardCommunication) BaseRewardSignalH5.class.newInstance();
                BaseRewardSignalH5.class.getMethod("initialize", Object.class, WindVaneWebView.class).invoke(this.f38666g, obj, windVaneWebView);
            } else if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof BaseIRewardCommunication)) {
                this.f38666g = (BaseIRewardCommunication) windVaneWebView.getObject();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }
}
