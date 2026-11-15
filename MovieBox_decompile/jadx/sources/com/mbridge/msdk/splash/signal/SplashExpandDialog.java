package com.mbridge.msdk.splash.signal;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.widget.MBAdChoice;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

public class SplashExpandDialog extends Dialog {

    private final String f36754a;

    private String f36755b;

    private boolean f36756c;

    private FrameLayout f36757d;

    private WindVaneWebView f36758e;

    private TextView f36759f;

    private String f36760g;

    private List<CampaignEx> f36761h;

    private com.mbridge.msdk.splash.middle.a f36762i;

    private com.mbridge.msdk.mbsignalcommon.mraid.b f36763j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            SplashExpandDialog.this.dismiss();
        }
    }

    class b extends com.mbridge.msdk.mbsignalcommon.listener.b {

        class a implements ValueCallback<String> {
            a() {
            }

            @Override
            public void onReceiveValue(String str) {
            }
        }

        b() {
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            webView.evaluateJavascript("javascript:" + com.mbridge.msdk.setting.util.a.a().b(), new a());
            SplashExpandDialog.this.c();
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override
        public void a() {
        }

        @Override
        public void close() {
            SplashExpandDialog.this.a();
        }

        @Override
        public void a(String str) {
            SplashExpandDialog.this.a();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (SplashExpandDialog.this.f36762i != null) {
                SplashExpandDialog.this.f36762i.a(false);
                SplashExpandDialog.this.f36762i.close();
            }
            SplashExpandDialog.this.f36758e.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            SplashExpandDialog.this.f36757d.removeView(SplashExpandDialog.this.f36758e);
            SplashExpandDialog.this.f36758e.release();
            SplashExpandDialog.this.f36758e = null;
            SplashExpandDialog.this.f36762i = null;
        }
    }

    class e implements com.mbridge.msdk.mbsignalcommon.mraid.b {
        e() {
        }

        @Override
        public void close() {
            SplashExpandDialog.this.dismiss();
        }

        @Override
        public void expand(String str, boolean z10) {
        }

        @Override
        public CampaignEx getMraidCampaign() {
            return null;
        }

        @Override
        public void open(String str) {
            try {
                if (SplashExpandDialog.this.f36758e == null || System.currentTimeMillis() - SplashExpandDialog.this.f36758e.lastTouchTime <= com.mbridge.msdk.click.utils.a.f33614c || !com.mbridge.msdk.click.utils.a.a((CampaignEx) SplashExpandDialog.this.f36761h.get(0), SplashExpandDialog.this.f36758e.getUrl(), com.mbridge.msdk.click.utils.a.f33612a)) {
                    o0.b("SplashExpandDialog", str);
                    if (SplashExpandDialog.this.f36761h.size() > 1) {
                        com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        str = null;
                    }
                    if (SplashExpandDialog.this.f36762i != null) {
                        SplashExpandDialog.this.f36762i.a(true, str);
                    }
                }
            } catch (Throwable th2) {
                o0.b("SplashExpandDialog", MRAIDPresenter.OPEN, th2);
            }
        }

        @Override
        public void unload() {
            close();
        }

        @Override
        public void useCustomClose(boolean z10) {
            try {
                SplashExpandDialog.this.f36759f.setVisibility(z10 ? 4 : 0);
            } catch (Throwable th2) {
                o0.b("SplashExpandDialog", "useCustomClose", th2);
            }
        }
    }

    public SplashExpandDialog(Context context, Bundle bundle, com.mbridge.msdk.splash.middle.a aVar) {
        super(context);
        this.f36754a = "SplashExpandDialog";
        this.f36763j = new e();
        if (bundle != null) {
            this.f36755b = bundle.getString("url");
            this.f36756c = bundle.getBoolean("shouldUseCustomClose");
        }
        this.f36762i = aVar;
    }

    @Override
    public void dismiss() {
        super.dismiss();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        b();
    }

    public void setCampaignList(String str, List<CampaignEx> list) {
        this.f36760g = str;
        this.f36761h = list;
    }

    private void b() {
        CampaignEx campaignEx;
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f36757d = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext().getApplicationContext());
        this.f36758e = windVaneWebView;
        windVaneWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f36757d.addView(this.f36758e);
        TextView textView = new TextView(getContext());
        this.f36759f = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f36759f.setLayoutParams(layoutParams);
        this.f36759f.setVisibility(this.f36756c ? 4 : 0);
        this.f36759f.setOnClickListener(new a());
        this.f36757d.addView(this.f36759f);
        setContentView(this.f36757d);
        a();
        this.f36758e.setWebViewListener(new b());
        this.f36758e.setObject(this.f36763j);
        this.f36758e.loadUrl(this.f36755b);
        List<CampaignEx> list = this.f36761h;
        if (list != null && !list.isEmpty() && (campaignEx = this.f36761h.get(0)) != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(campaignEx);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.gravity = 85;
            layoutParams2.bottomMargin = layoutParams.topMargin;
            layoutParams2.rightMargin = layoutParams.rightMargin;
            mBAdChoice.setFeedbackDialogEventListener(new c());
            this.f36757d.addView(mBAdChoice, layoutParams2);
        }
        BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f36760g, 297);
        if (bitmapDrawableA != null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            t0.a(imageView, bitmapDrawableA, this.f36757d.getResources().getDisplayMetrics());
            this.f36757d.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        }
        setOnDismissListener(new d());
    }

    public void c() {
        String str;
        try {
            int i10 = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i10 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            } else {
                str = i10 == 1 ? "portrait" : "undefined";
            }
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
            float fN = k0.n(com.mbridge.msdk.foundation.controller.c.m().d());
            float fM = k0.m(com.mbridge.msdk.foundation.controller.c.m().d());
            HashMap mapV = k0.v(com.mbridge.msdk.foundation.controller.c.m().d());
            int iIntValue = ((Integer) mapV.get("width")).intValue();
            int iIntValue2 = ((Integer) mapV.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "Interstitial");
            map.put("state", "expanded");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            int[] iArr = new int[2];
            this.f36758e.getLocationInWindow(iArr);
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f36758e;
            aVarA.b(windVaneWebView, iArr[0], iArr[1], windVaneWebView.getWidth(), this.f36758e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f36758e;
            aVarA2.a(windVaneWebView2, iArr[0], iArr[1], windVaneWebView2.getWidth(), this.f36758e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f36758e, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f36758e, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f36758e, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f36758e);
        } catch (Throwable th2) {
            o0.b("SplashExpandDialog", "notifyMraid", th2);
        }
    }

    public void a() {
        if (getWindow() != null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            getWindow().setAttributes(attributes);
            getWindow().getDecorView().setSystemUiVisibility(4615);
        }
    }
}
