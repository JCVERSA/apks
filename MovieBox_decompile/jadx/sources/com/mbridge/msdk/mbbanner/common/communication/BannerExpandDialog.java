package com.mbridge.msdk.mbbanner.common.communication;

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

public class BannerExpandDialog extends Dialog {

    private final String f35182a;

    private String f35183b;

    private boolean f35184c;

    private FrameLayout f35185d;

    private WindVaneWebView f35186e;

    private TextView f35187f;

    private String f35188g;

    private List<CampaignEx> f35189h;

    private com.mbridge.msdk.mbbanner.common.listener.a f35190i;

    private com.mbridge.msdk.mbsignalcommon.mraid.b f35191j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            BannerExpandDialog.this.dismiss();
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
            BannerExpandDialog.this.c();
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
            BannerExpandDialog.this.a();
        }

        @Override
        public void a(String str) {
            BannerExpandDialog.this.a();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (BannerExpandDialog.this.f35190i != null) {
                BannerExpandDialog.this.f35190i.a(false);
            }
            BannerExpandDialog.this.f35186e.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            BannerExpandDialog.this.f35185d.removeView(BannerExpandDialog.this.f35186e);
            BannerExpandDialog.this.f35186e.release();
            BannerExpandDialog.this.f35186e = null;
            BannerExpandDialog.this.f35190i = null;
        }
    }

    class e implements com.mbridge.msdk.mbsignalcommon.mraid.b {
        e() {
        }

        @Override
        public void close() {
            BannerExpandDialog.this.dismiss();
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
                if (BannerExpandDialog.this.f35186e == null || System.currentTimeMillis() - BannerExpandDialog.this.f35186e.lastTouchTime <= com.mbridge.msdk.click.utils.a.f33614c || !com.mbridge.msdk.click.utils.a.a((CampaignEx) BannerExpandDialog.this.f35189h.get(0), BannerExpandDialog.this.f35186e.getUrl(), com.mbridge.msdk.click.utils.a.f33612a)) {
                    o0.b("BannerExpandDialog", str);
                    if (BannerExpandDialog.this.f35189h.size() > 1) {
                        com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        str = null;
                    }
                    if (BannerExpandDialog.this.f35190i != null) {
                        BannerExpandDialog.this.f35190i.a(true, str);
                    }
                }
            } catch (Throwable th2) {
                o0.b("BannerExpandDialog", MRAIDPresenter.OPEN, th2);
            }
        }

        @Override
        public void unload() {
            close();
        }

        @Override
        public void useCustomClose(boolean z10) {
            try {
                BannerExpandDialog.this.f35187f.setVisibility(z10 ? 4 : 0);
            } catch (Throwable th2) {
                o0.b("BannerExpandDialog", "useCustomClose", th2);
            }
        }
    }

    public BannerExpandDialog(Context context, Bundle bundle, com.mbridge.msdk.mbbanner.common.listener.a aVar) {
        super(context);
        this.f35182a = "BannerExpandDialog";
        this.f35191j = new e();
        if (bundle != null) {
            this.f35183b = bundle.getString("url");
            this.f35184c = bundle.getBoolean("shouldUseCustomClose");
        }
        this.f35190i = aVar;
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
        this.f35188g = str;
        this.f35189h = list;
    }

    private void b() {
        CampaignEx campaignEx;
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f35185d = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext().getApplicationContext());
        this.f35186e = windVaneWebView;
        windVaneWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f35185d.addView(this.f35186e);
        TextView textView = new TextView(getContext());
        this.f35187f = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f35187f.setLayoutParams(layoutParams);
        this.f35187f.setVisibility(this.f35184c ? 4 : 0);
        this.f35187f.setOnClickListener(new a());
        BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f35188g, 296);
        if (bitmapDrawableA != null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            t0.a(imageView, bitmapDrawableA, this.f35185d.getResources().getDisplayMetrics());
            this.f35185d.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        }
        this.f35185d.addView(this.f35187f);
        setContentView(this.f35185d);
        a();
        this.f35186e.setWebViewListener(new b());
        this.f35186e.setObject(this.f35191j);
        this.f35186e.loadUrl(this.f35183b);
        List<CampaignEx> list = this.f35189h;
        if (list != null && list.size() > 0 && (campaignEx = this.f35189h.get(0)) != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(campaignEx);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.gravity = 85;
            layoutParams2.bottomMargin = layoutParams.topMargin;
            layoutParams2.rightMargin = layoutParams.rightMargin;
            mBAdChoice.setFeedbackDialogEventListener(new c());
            this.f35185d.addView(mBAdChoice, layoutParams2);
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
            this.f35186e.getLocationInWindow(iArr);
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f35186e;
            aVarA.b(windVaneWebView, iArr[0], iArr[1], windVaneWebView.getWidth(), this.f35186e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f35186e;
            aVarA2.a(windVaneWebView2, iArr[0], iArr[1], windVaneWebView2.getWidth(), this.f35186e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f35186e, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35186e, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35186e, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35186e);
        } catch (Throwable th2) {
            o0.b("BannerExpandDialog", "notifyMraid", th2);
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
