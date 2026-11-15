package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.webkit.WebView;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.bt.component.d;
import org.json.JSONObject;

public class MBridgeBTLayout extends BTBaseView {

    private WebView f38054p;

    public MBridgeBTLayout(Context context) {
        super(context);
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.f38054p != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", BTBaseView.f37977n);
                jSONObject2.put("id", getInstanceId());
                jSONObject2.put(EventConstants.KEY_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                f.a().a(this.f38054p, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                d.c().a(this.f38054p, "broadcast", getInstanceId());
            }
        }
    }

    public WebView getBtWebView() {
        return this.f38054p;
    }

    @Override
    public void init(Context context) {
    }

    public void notifyEvent(String str) {
        WebView webView = this.f38054p;
        if (webView != null) {
            BTBaseView.a(webView, str, this.f37982d);
        }
    }

    public void onBackPressed() {
        if (this.f38054p != null) {
            d.c().a(this.f38054p, "onSystemBackPressed", this.f37982d);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        if (this.f38054p != null) {
            try {
                CampaignEx campaignEx = this.f37980b;
                if (campaignEx == null || !campaignEx.isDynamicView()) {
                    JSONObject jSONObject = new JSONObject();
                    if (configuration.orientation == 2) {
                        jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
                    } else {
                        jSONObject.put("orientation", "portrait");
                    }
                    jSONObject.put("instanceId", this.f37982d);
                    f.a().a(this.f38054p, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void onDestory() {
    }

    public void setWebView(WebView webView) {
        this.f38054p = webView;
    }

    public MBridgeBTLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
