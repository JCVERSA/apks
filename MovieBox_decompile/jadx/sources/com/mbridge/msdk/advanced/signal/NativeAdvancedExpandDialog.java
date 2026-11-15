package com.mbridge.msdk.advanced.signal;

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

public class NativeAdvancedExpandDialog extends Dialog {

    private final String f33381a;

    private String f33382b;

    private boolean f33383c;

    private FrameLayout f33384d;

    private WindVaneWebView f33385e;

    private TextView f33386f;

    private String f33387g;

    private List<CampaignEx> f33388h;

    private com.mbridge.msdk.advanced.middle.a f33389i;

    private com.mbridge.msdk.mbsignalcommon.mraid.b f33390j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            NativeAdvancedExpandDialog.this.dismiss();
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
            NativeAdvancedExpandDialog.this.c();
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
            NativeAdvancedExpandDialog.this.a();
        }

        @Override
        public void a(String str) {
            NativeAdvancedExpandDialog.this.a();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (NativeAdvancedExpandDialog.this.f33389i != null) {
                NativeAdvancedExpandDialog.this.f33389i.a(false);
            }
            NativeAdvancedExpandDialog.this.f33385e.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            NativeAdvancedExpandDialog.this.f33384d.removeView(NativeAdvancedExpandDialog.this.f33385e);
            NativeAdvancedExpandDialog.this.f33385e.release();
            NativeAdvancedExpandDialog.this.f33385e = null;
            NativeAdvancedExpandDialog.this.f33389i = null;
        }
    }

    class e implements com.mbridge.msdk.mbsignalcommon.mraid.b {
        e() {
        }

        @Override
        public void close() {
            NativeAdvancedExpandDialog.this.dismiss();
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
                if (NativeAdvancedExpandDialog.this.f33385e == null || System.currentTimeMillis() - NativeAdvancedExpandDialog.this.f33385e.lastTouchTime <= com.mbridge.msdk.click.utils.a.f33614c || !com.mbridge.msdk.click.utils.a.a((CampaignEx) NativeAdvancedExpandDialog.this.f33388h.get(0), NativeAdvancedExpandDialog.this.f33385e.getUrl(), com.mbridge.msdk.click.utils.a.f33612a)) {
                    o0.b("NativeAdvancedExpandDialog", str);
                    if (NativeAdvancedExpandDialog.this.f33388h.size() > 1) {
                        com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        str = null;
                    }
                    if (NativeAdvancedExpandDialog.this.f33389i != null) {
                        NativeAdvancedExpandDialog.this.f33389i.a(true, str);
                    }
                }
            } catch (Throwable th2) {
                o0.b("NativeAdvancedExpandDialog", MRAIDPresenter.OPEN, th2);
            }
        }

        @Override
        public void unload() {
            close();
        }

        @Override
        public void useCustomClose(boolean z10) {
            try {
                NativeAdvancedExpandDialog.this.f33386f.setVisibility(z10 ? 4 : 0);
            } catch (Throwable th2) {
                o0.b("NativeAdvancedExpandDialog", "useCustomClose", th2);
            }
        }
    }

    public NativeAdvancedExpandDialog(Context context, Bundle bundle, com.mbridge.msdk.advanced.middle.a aVar) {
        super(context);
        this.f33381a = "NativeAdvancedExpandDialog";
        this.f33390j = new e();
        if (bundle != null) {
            this.f33382b = bundle.getString("url");
            this.f33383c = bundle.getBoolean("shouldUseCustomClose");
        }
        this.f33389i = aVar;
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
        this.f33387g = str;
        this.f33388h = list;
    }

    private void b() {
        CampaignEx campaignEx;
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f33384d = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext().getApplicationContext());
        this.f33385e = windVaneWebView;
        windVaneWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f33384d.addView(this.f33385e);
        TextView textView = new TextView(getContext());
        this.f33386f = textView;
        textView.setBackgroundColor(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams.setMargins(30, 30, 30, 30);
        this.f33386f.setLayoutParams(layoutParams);
        this.f33386f.setVisibility(this.f33383c ? 4 : 0);
        this.f33386f.setOnClickListener(new a());
        this.f33384d.addView(this.f33386f);
        setContentView(this.f33384d);
        a();
        this.f33385e.setWebViewListener(new b());
        this.f33385e.setObject(this.f33390j);
        this.f33385e.loadUrl(this.f33382b);
        List<CampaignEx> list = this.f33388h;
        if (list != null && list.size() > 0 && (campaignEx = this.f33388h.get(0)) != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(campaignEx);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.gravity = 85;
            layoutParams2.bottomMargin = layoutParams.topMargin;
            layoutParams2.rightMargin = layoutParams.rightMargin;
            mBAdChoice.setFeedbackDialogEventListener(new c());
            this.f33384d.addView(mBAdChoice, layoutParams2);
        }
        BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f33387g, 296);
        if (bitmapDrawableA != null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            t0.a(imageView, bitmapDrawableA, this.f33384d.getResources().getDisplayMetrics());
            this.f33384d.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
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
            map.put("placementType", "inline");
            map.put("state", "expanded");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            int[] iArr = new int[2];
            this.f33385e.getLocationInWindow(iArr);
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView = this.f33385e;
            aVarA.b(windVaneWebView, iArr[0], iArr[1], windVaneWebView.getWidth(), this.f33385e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a aVarA2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
            WindVaneWebView windVaneWebView2 = this.f33385e;
            aVarA2.a(windVaneWebView2, iArr[0], iArr[1], windVaneWebView2.getWidth(), this.f33385e.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f33385e, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f33385e, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f33385e, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f33385e);
        } catch (Throwable th2) {
            o0.b("NativeAdvancedExpandDialog", "notifyMraid", th2);
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
