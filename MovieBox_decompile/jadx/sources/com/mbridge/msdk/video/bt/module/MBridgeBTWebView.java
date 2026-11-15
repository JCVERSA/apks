package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.video.signal.impl.k;
import java.util.List;
import org.json.JSONObject;

public class MBridgeBTWebView extends MBridgeBTWebViewDiff {

    private String f38101p;

    private String f38102q;

    private String f38103r;

    private boolean f38104s;

    private ImageView f38105t;

    private boolean f38106u;

    private com.mbridge.msdk.videocommon.setting.c f38107v;

    private List<CampaignEx> f38108w;

    private WebView f38109x;

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            if (MBridgeBTWebView.this.f38109x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f37977n);
                    jSONObject.put("id", MBridgeBTWebView.this.f37982d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", String.valueOf(view.getX()));
                    jSONObject2.put("y", String.valueOf(view.getY()));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38109x, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception unused) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38109x, "onClicked", MBridgeBTWebView.this.f37982d);
                }
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            MBridgeBTWebView.this.close();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            try {
                WindVaneWebView windVaneWebView = MBridgeBTWebView.this.webView;
                if (windVaneWebView != null) {
                    windVaneWebView.clearWebView();
                    MBridgeBTWebView.this.webView.release();
                }
                MBridgeBTWebView.this.f38101p = null;
                MBridgeBTWebView.this.f38102q = null;
                MBridgeBTWebView.this.f38103r = null;
                if (MBridgeBTWebView.this.f38109x != null) {
                    MBridgeBTWebView.this.f38109x = null;
                }
            } catch (Throwable th2) {
                o0.a(BTBaseView.TAG, th2.getMessage());
            }
        }
    }

    public MBridgeBTWebView(Context context) {
        super(context);
        this.f38104s = false;
        this.f38106u = false;
    }

    private void setIntentFilter(com.mbridge.msdk.mbsignalcommon.base.c cVar) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setFilter(cVar);
        }
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.webView != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", BTBaseView.f37977n);
                jSONObject2.put("id", this.f37982d);
                jSONObject2.put(EventConstants.KEY_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                f.a().a((WebView) this.webView, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "broadcast", this.f37982d);
            }
        }
    }

    @Override
    public void close() {
        WebView webView = this.f38109x;
        if (webView != null) {
            BTBaseView.a(webView, "onPlayerCloseBtnClicked", this.f37982d);
        }
    }

    @Override
    public void expand(String str, boolean z10) {
    }

    public List<CampaignEx> getCampaigns() {
        return this.f38108w;
    }

    public String getFilePath() {
        return this.f38102q;
    }

    public String getFileURL() {
        return this.f38101p;
    }

    public String getHtml() {
        return this.f38103r;
    }

    @Override
    public CampaignEx getMraidCampaign() {
        return this.f37980b;
    }

    public com.mbridge.msdk.videocommon.setting.c getRewardUnitSetting() {
        return this.f38107v;
    }

    public WindVaneWebView getWebView() {
        return this.webView;
    }

    @Override
    public void init(Context context) {
        WindVaneWebView windVaneWebView = new WindVaneWebView(context);
        this.webView = windVaneWebView;
        windVaneWebView.setBackgroundColor(0);
        this.webView.setVisibility(0);
        k kVar = new k(null, this.f37980b, this.f38108w);
        this.jsCommon = kVar;
        kVar.setUnitId(this.f37981c);
        if (com.mbridge.msdk.util.b.a()) {
            setChinaAlertInstallState(this.jsCommon);
        }
        this.webView.setObject(this.jsCommon);
        this.webView.setMraidObject(this);
        this.webView.setWebViewListener(new a());
        addView(this.webView, new FrameLayout.LayoutParams(-1, -1));
        setOnClickListener(new b());
        try {
            ImageView imageView = new ImageView(getContext());
            this.f38105t = imageView;
            imageView.setImageResource(findDrawable("mbridge_reward_close"));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
            layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
            layoutParams.setMargins(30, 30, 30, 30);
            this.f38105t.setLayoutParams(layoutParams);
            this.f38105t.setVisibility(this.f38104s ? 4 : 8);
            CampaignEx campaignEx = this.f37980b;
            if (campaignEx != null && campaignEx.isMraid()) {
                this.f38105t.setVisibility(4);
            }
            this.f38105t.setOnClickListener(new c());
            addView(this.f38105t);
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void onBackPressed() {
        if (this.webView != null) {
            com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "onSystemBackPressed", this.f37982d);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        if (this.webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (configuration.orientation == 2) {
                    jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
                } else {
                    jSONObject.put("orientation", "portrait");
                }
                jSONObject.put("instanceId", this.f37982d);
                f.a().a((WebView) this.webView, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void onDestory() {
        if (this.f38106u) {
            return;
        }
        this.f38106u = true;
        try {
            if (this.webView != null) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.webView, "onSystemDestory", this.f37982d);
            }
            new Handler(Looper.getMainLooper()).postDelayed(new d(), 500L);
            setOnClickListener(null);
            removeAllViews();
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    @Override
    public void onFinishRedirection(Campaign campaign, String str) {
        s0.a(campaign, this);
    }

    @Override
    public void onRedirectionFailed(Campaign campaign, String str) {
        s0.a(campaign, this);
    }

    @Override
    public void onStartRedirection(Campaign campaign, String str) {
        s0.b(campaign, this);
    }

    @Override
    public void open(String str) {
        try {
            String clickURL = this.f37980b.getClickURL();
            if (!TextUtils.isEmpty(str)) {
                this.f37980b.setClickURL(str);
                reportOpen(str);
            }
            this.f37980b.setClickTempSource(2);
            this.f37980b.setClickType(2);
            this.f37980b.setTriggerClickSource(2);
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getContext(), this.f37981c);
            aVar.a(this);
            aVar.a(this.f37980b);
            this.f37980b.setClickURL(clickURL);
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void preload() {
        if (!TextUtils.isEmpty(this.f38101p)) {
            this.webView.loadUrl(this.f38101p);
        } else if (!TextUtils.isEmpty(this.f38102q)) {
            this.webView.loadUrl(this.f38102q);
        } else {
            if (TextUtils.isEmpty(this.f38103r)) {
                return;
            }
            this.webView.loadDataWithBaseURL("", this.f38103r, "text/html", "UTF-8", null);
        }
    }

    @Override
    public void reportOpen(String str) {
        try {
            CampaignEx mraidCampaign = getMraidCampaign();
            if (mraidCampaign != null) {
                new h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.f37981c, str, this.f37980b.isBidCampaign());
            }
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void setCampaigns(List<CampaignEx> list) {
        this.f38108w = list;
    }

    public void setCreateWebView(WebView webView) {
        this.f38109x = webView;
    }

    public void setFilePath(String str) {
        this.f38102q = str;
    }

    public void setFileURL(String str) {
        this.f38101p = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean zContains = str.contains(Constants.GP_DEEPLINK);
        setWebviewClickable(!zContains);
        if (zContains) {
            setIntentFilter(new com.mbridge.msdk.mbsignalcommon.base.c());
        }
    }

    public void setHtml(String str) {
        this.f38103r = str;
    }

    @Override
    public void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar) {
        this.f38107v = cVar;
    }

    public void setTempTypeForMetrics(int i10) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setTempTypeForMetrics(i10);
        }
    }

    public void setWebViewLocalRequestId(String str) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setLocalRequestId(str);
        }
    }

    public void setWebViewRid(String str) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setRid(str);
        }
    }

    public void setWebviewClickable(boolean z10) {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setClickable(z10);
        }
    }

    @Override
    public void unload() {
        close();
    }

    @Override
    public void useCustomClose(boolean z10) {
        try {
            this.f38105t.setVisibility(z10 ? 4 : 0);
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage());
        }
    }

    public boolean webviewGoBack() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView == null || !windVaneWebView.canGoBack()) {
            return false;
        }
        this.webView.goBack();
        return true;
    }

    public boolean webviewGoForward() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView == null || !windVaneWebView.canGoForward()) {
            return false;
        }
        this.webView.goForward();
        return true;
    }

    public void webviewLoad(int i10) {
        if (this.jsCommon == null) {
            this.jsCommon = new k(null, this.f37980b, this.f38108w);
        }
        CampaignEx campaignEx = this.f37980b;
        if (campaignEx != null) {
            this.jsCommon.c(campaignEx);
        } else {
            List<CampaignEx> list = this.f38108w;
            if (list != null && list.size() > 0) {
                this.jsCommon.a(this.f38108w);
                if (this.f38108w.size() == 1) {
                    this.jsCommon.c(this.f38108w.get(0));
                }
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.f38107v;
        if (cVar != null) {
            this.jsCommon.setRewardUnitSetting(cVar);
        }
        this.jsCommon.setUnitId(this.f37981c);
        this.jsCommon.c(this.f37982d);
        if (com.mbridge.msdk.util.b.a()) {
            setChinaAlertInstallState(this.jsCommon);
        }
        if (i10 == 1) {
            this.jsCommon.r();
        }
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView != null) {
            windVaneWebView.setObject(this.jsCommon);
        }
        CampaignEx campaignEx2 = this.f37980b;
        if (campaignEx2 != null && campaignEx2.isMraid()) {
            this.f38105t.setVisibility(4);
        }
        preload();
    }

    public boolean webviewReload() {
        WindVaneWebView windVaneWebView = this.webView;
        if (windVaneWebView == null) {
            return false;
        }
        windVaneWebView.reload();
        return true;
    }

    public MBridgeBTWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38104s = false;
        this.f38106u = false;
    }

    class a extends com.mbridge.msdk.mbsignalcommon.listener.a {
        a() {
        }

        @Override
        public void a(Object obj) {
            super.a(obj);
            try {
                k kVar = MBridgeBTWebView.this.jsCommon;
                String strEncodeToString = "";
                String strC = kVar != null ? kVar.c() : "";
                if (TextUtils.isEmpty(strC)) {
                    o0.a("RVWindVaneWebView", "getEndScreenInfo failed");
                } else {
                    strEncodeToString = Base64.encodeToString(strC.getBytes(), 2);
                    o0.a("RVWindVaneWebView", "getEndScreenInfo success");
                }
                f.a().b(obj, strEncodeToString);
            } catch (Throwable th2) {
                o0.a("RVWindVaneWebView", th2.getMessage());
            }
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            if (MBridgeBTWebView.this.f38109x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f37982d);
                    jSONObject.put("code", BTBaseView.f37977n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f37982d);
                    jSONObject2.put("result", 1);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38109x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38109x, e10.getMessage());
                    o0.a("RVWindVaneWebView", e10.getMessage());
                }
            }
            f.a().a(MBridgeBTWebView.this.webView);
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            if (MBridgeBTWebView.this.f38109x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f37982d);
                    jSONObject.put("code", BTBaseView.f37977n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f37982d);
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38109x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38109x, e10.getMessage());
                    o0.a("RVWindVaneWebView", e10.getMessage());
                }
            }
        }

        @Override
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            if (MBridgeBTWebView.this.f38109x != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("id", MBridgeBTWebView.this.f37982d);
                    jSONObject.put("code", BTBaseView.f37977n);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", MBridgeBTWebView.this.f37982d);
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", sslError.toString());
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTWebView.this.f38109x, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTWebView.this.f38109x, e10.getMessage());
                    o0.a("RVWindVaneWebView", e10.getMessage());
                }
            }
        }

        @Override
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
        }
    }
}
