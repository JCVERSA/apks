package com.transsion.onlinevideo.web;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.google.gson.Gson;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.transsion.dbdata.beans.onlinevideo.VipOrder;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.web.VipWebActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.OrderCallbackRequest;
import com.transsion.playercommon.data.OrderCancelCallbackRequest;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.playercommon.vishaweb.jsbridge.DefaultJsToNative;
import com.transsion.playercommon.vishaweb.jsbridge.IJsToNative;
import com.transsion.playercommon.vishaweb.jsdata.JsParam;
import com.transsion.playercommon.vishaweb.jsdata.JsPostParam;
import com.transsion.push.PushConstants;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.dy0;
import defpackage.f5;
import defpackage.fi1;
import defpackage.g;
import defpackage.h27;
import defpackage.hb0;
import defpackage.jf;
import defpackage.kfc;
import defpackage.pe0;
import defpackage.r0a;
import defpackage.rdc;
import defpackage.se;
import defpackage.t95;
import defpackage.ul9;
import defpackage.wz5;
import defpackage.zdc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class VipWebActivity extends OnlineBaseActivity implements h27.b {
    public static final String m0;
    public static final String n0;
    public static final String o0;
    public static int p0;
    public BridgeWebView N;
    public int O;
    public int P;
    public long Q;
    public String R;
    public pe0 S;
    public VipViewModel T;
    public String U;
    public String V;
    public String W;
    public String X;
    public String Y;
    public SeekBar Z;
    public String a0;
    public String c0;
    public String d0;
    public String e0;
    public int f0;
    public View g0;
    public LinearLayout h0;
    public View i0;
    public TextView k0;
    public Map b0 = new HashMap();
    public boolean j0 = true;
    public IJsToNative l0 = new DefaultJsToNative() {
        @Override
        public void jsToNative(String str, String str2) {
            LogUtils.j("[VishaUserDebug]", "jsToNative:" + g.a(str) + "-" + str2);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JsParam jsParam = (JsParam) fi1.b(g.a(str), JsParam.class);
            switch (jsParam.getType()) {
                case 1:
                    VipWebActivity.this.f1(jsParam, str2);
                    break;
                case 2:
                    LogUtils.i("[VishaUserDebug]", "close webview");
                    VipWebActivity.this.W0(jsParam);
                    break;
                case 3:
                    VipWebActivity.this.g1();
                    break;
                case 4:
                    VipWebActivity.this.M0(str2);
                    break;
                case 5:
                    VipWebActivity.this.U0(str2);
                    break;
                case 6:
                    String strE = fi1.e(t95.c());
                    LogUtils.j("[VishaUserDebug]", "native->>js:" + strE);
                    VipWebActivity.this.N.sendResponse(g.b(strE), str2);
                    break;
                case 7:
                    VipWebActivity.this.h1(jsParam, str2);
                    break;
                case 8:
                    VipWebActivity.this.V0((JsPostParam) fi1.b(g.a(str), JsPostParam.class));
                    break;
                case 11:
                    VipWebActivity.this.X0(jsParam);
                    break;
                case 12:
                    VipWebActivity.this.b1(jsParam);
                    break;
            }
        }
    };

    public class a extends WebChromeClient {
        public a() {
        }

        @Override
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            VipWebActivity.this.Z.setProgress(i);
            VipWebActivity.this.Z.setVisibility(i == 100 ? 4 : 0);
        }
    }

    public class b extends WebViewClient {
        public b() {
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }
    }

    public class c extends ul9 {
        public c() {
        }

        @Override
        public void a(BillingResult billingResult) {
            super.a(billingResult);
            LogUtils.i("[VishaUserDebug]", "onAcknowledgePurchaseResponse=" + billingResult.getResponseCode());
        }

        @Override
        public void b() {
            VipWebActivity.this.S.l(BillingClient.ProductType.INAPP);
            wz5.F("Google billing service connect success!", 1);
            LogUtils.i("[VishaUserDebug]", "onBillingClientSetupFinished");
        }

        @Override
        public void c(String str, BillingResult billingResult) {
            super.c(str, billingResult);
            LogUtils.i("[VishaUserDebug]", "onConsumeFinished=" + billingResult.getResponseCode());
            String debugMessage = billingResult.getDebugMessage();
            if (billingResult.getResponseCode() != 0) {
                wz5.G("vd_ott_vip_buy_c_order_consume", VipWebActivity.this.W, debugMessage, 0);
            } else {
                OrderManager.h(VipWebActivity.this.W, true);
                wz5.G("vd_ott_vip_buy_c_order_consume", VipWebActivity.this.W, debugMessage, 1);
            }
        }

        @Override
        public void d(int i, String str) {
            wz5.F(str, 0);
            LogUtils.j("[VishaUserDebug]", "buy error [code：" + i + ",message：" + str + "]");
            h27.c().e(1041, Integer.valueOf(i), str);
        }

        @Override
        public void e(List list) {
            VipWebActivity.this.Z0(list);
        }

        @Override
        public void f(int i, String str) {
            VipWebActivity vipWebActivity = VipWebActivity.this;
            wz5.H("vd_ott_vip_buy_c_payment_result", vipWebActivity.W, vipWebActivity.X, str, 0);
            h27.c().e(1040, Integer.valueOf(i), str);
            LogUtils.j("[VishaUserDebug]", "buy fail [code：" + i + ",message：" + str + "]");
        }

        @Override
        public void g(List list) {
            LogUtils.i("[VishaUserDebug]", "Purchases success：" + ((Purchase) list.get(0)).toString());
            VipWebActivity.this.a1(list);
        }

        @Override
        public void h(List list) {
            if (list == null || list.size() <= 0) {
                VipWebActivity.this.c1(-1003, "No matching products found");
                wz5.G("vd_ott_vip_buy_c_sku_query", VipWebActivity.this.W, "No matching products found", 0);
                return;
            }
            pe0 pe0Var = VipWebActivity.this.S;
            ProductDetails productDetails = (ProductDetails) list.get(0);
            VipWebActivity vipWebActivity = VipWebActivity.this;
            pe0Var.x(productDetails, vipWebActivity.W, vipWebActivity.c0, VipWebActivity.this.d0, VipWebActivity.this.e0);
            wz5.I(VipWebActivity.this.W);
            wz5.G("vd_ott_vip_buy_c_sku_query", VipWebActivity.this.W, "", 1);
        }

        @Override
        public void i(int i, String str) {
            super.i(i, str);
            LogUtils.i("[VishaUserDebug]", "onQuerySkuDetailFailure=" + i + "--" + str);
            VipWebActivity.this.c1(i, str);
            wz5.G("vd_ott_vip_buy_c_sku_query", VipWebActivity.this.W, str, 0);
        }
    }

    static {
        String strCreateBaseUrl = OnlineVideoApiManager.getInstance().createBaseUrl();
        m0 = strCreateBaseUrl;
        n0 = strCreateBaseUrl + "/#/result";
        o0 = strCreateBaseUrl + "/#/order";
        p0 = -1;
    }

    public static Intent I0(Context context, int i, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) VipWebActivity.class);
        intent.putExtra("page", 1);
        intent.putExtra("vip_id", i);
        intent.putExtra("title", str);
        intent.putExtra("from", str2);
        return intent;
    }

    public static Intent J0(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) VipWebActivity.class);
        intent.putExtra("page", 4);
        intent.putExtra("title", str);
        return intent;
    }

    public static Intent K0(Context context, int i, String str, String str2, long j) {
        Intent intentI0 = I0(context, i, str, str2);
        intentI0.putExtra("vip_card_id", j);
        return intentI0;
    }

    private void O0() {
        BridgeWebView bridgeWebView = (BridgeWebView) findViewById(R.id.wb);
        this.N = bridgeWebView;
        WebSettings settings = bridgeWebView.getSettings();
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDomStorageEnabled(true);
        settings.setSupportZoom(false);
        settings.setTextZoom(100);
        BridgeWebView bridgeWebView2 = this.N;
        bridgeWebView2.addJavascriptInterface(new rdc(bridgeWebView2.getCallbacks(), this.N, this.l0), "WebViewJavascriptBridge");
        this.N.setGson(new Gson());
        String userAgentString = this.N.getSettings().getUserAgentString();
        this.N.setBackgroundColor(getColor(R.color.transparent));
        this.N.getSettings().setTextZoom(100);
        this.N.getSettings().setCacheMode(-1);
        this.N.getSettings().setUserAgentString(userAgentString + "; VISHAAPP" + jf.h(getApplicationContext()));
        this.N.setWebChromeClient(new a());
        this.N.setWebViewClient(new b());
        int i = MainApp.w;
        if (i == 0) {
            i1(i);
        } else {
            Log.d("[VishaUserDebug]", this.R);
            this.N.loadUrl(this.R);
        }
    }

    public void R0(View view) {
        wz5.E();
        finish();
    }

    public static void T0(Integer num) {
        if (num.intValue() == 1) {
            LogUtils.w("[VishaUserDebug]", "Pay Cancel Server check success");
        } else {
            LogUtils.w("[VishaUserDebug]", "Pay Cancel Server check error");
        }
    }

    private void d1() {
        p0 = 0;
        if (getIntent() != null) {
            StringBuilder sb = new StringBuilder("/?lang=");
            Locale locale = getResources().getConfiguration().locale;
            if (!TextUtils.isEmpty(locale.getLanguage())) {
                sb.append(locale.getLanguage());
            }
            if (!TextUtils.isEmpty(locale.getCountry())) {
                sb.append("-r");
                sb.append(locale.getCountry());
            }
            this.Y = getIntent().getStringExtra("title");
            int intExtra = getIntent().getIntExtra("page", -1);
            this.O = intExtra;
            if (intExtra == 1) {
                this.R = m0 + ((Object) sb);
                this.P = getIntent().getIntExtra("vip_id", -1);
                this.Q = getIntent().getLongExtra("vip_card_id", -1L);
                this.a0 = getIntent().getStringExtra("from");
            } else if (intExtra == 4) {
                this.R = o0 + ((Object) sb);
            } else if (intExtra == 2) {
                this.R = n0 + ((Object) sb);
            } else {
                this.R = getIntent().getStringExtra("url");
            }
            e1();
            N0();
        }
    }

    private void e1() {
        if (r0a.g(this.R) || !URLUtil.isNetworkUrl(this.R)) {
            return;
        }
        String str = isDarkMode() ? "1" : "0";
        if (this.R.contains("dark=")) {
            this.R = this.R.replaceAll("(dark=[^&]*)", "dark=" + str);
            return;
        }
        if (this.R.contains("?")) {
            this.R += "&dark=" + str;
            return;
        }
        this.R += "?dark=" + str;
    }

    public final void G0(final OrderCallbackRequest orderCallbackRequest) {
        this.T.c(orderCallbackRequest);
        if (this.T.f().hasObservers()) {
            return;
        }
        this.T.f().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.P0(orderCallbackRequest, (Integer) obj);
            }
        });
    }

    public final void H0(Purchase purchase) {
        VipOrder vipOrder = (VipOrder) fi1.b(purchase.getOriginalJson(), VipOrder.class);
        vipOrder.setIsSubscribe(this.f0);
        LogUtils.i("[VishaUserDebug]", "vipOrder: " + vipOrder);
        OrderCallbackRequest orderCallbackRequest = new OrderCallbackRequest(purchase.getProducts().get(0), vipOrder.getObfuscatedProfileId(), vipOrder.getPackageName(), vipOrder.getPurchaseToken(), this.f0);
        LogUtils.i("[VishaUserDebug]", "orderCallbackRequest: " + orderCallbackRequest);
        G0(orderCallbackRequest);
    }

    public final void L0() {
        if (this.i0 == null) {
            View viewInflate = ((ViewStub) findViewById(com.transsion.playercommon.R.id.no_network_view)).inflate();
            this.i0 = viewInflate;
            TextView textView = (TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.btn_try);
            this.k0 = textView;
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.Q0(view);
                }
            });
        }
    }

    public final void M0(String str) {
        String strE = fi1.e(this.O == 1 ? t95.a(this.P, this.Q) : t95.c());
        LogUtils.j("[VishaUserDebug]", "vip to js data:" + strE);
        String strB = g.b(strE);
        LogUtils.j("[VishaUserDebug]", "vip to js encrypt data:" + strB);
        this.N.sendResponse(strB, str);
    }

    public final void N0() {
        pe0 pe0Var = new pe0(this, new c());
        this.S = pe0Var;
        pe0Var.z(null);
    }

    public final void P0(OrderCallbackRequest orderCallbackRequest, Integer num) {
        if (num.intValue() == 1) {
            OrderManager.i(orderCallbackRequest.getProfileId(), true);
            OrderManager.f(orderCallbackRequest.getToken());
            kfc.k(true, null);
            LogUtils.w("[VishaUserDebug]", "Pay Consume Server check success");
            wz5.G("vd_ott_vip_buy_c_order_confirm", this.W, "Pay Consume Server check success", 1);
            return;
        }
        wz5.G("vd_ott_vip_buy_c_order_confirm", this.W, "Pay Consume Server check fail", 0);
        LogUtils.w("[VishaUserDebug]", "Pay Consume Server check error: " + this.W);
        int iIntValue = this.b0.get(this.W) == null ? 1 : ((Integer) this.b0.get(this.W)).intValue();
        if (iIntValue < 4) {
            this.T.c(orderCallbackRequest);
        }
        this.b0.put(this.W, Integer.valueOf(iIntValue + 1));
    }

    public final void Q0(View view) {
        if (MainApp.w == 0) {
            ToastUtils.s(com.transsion.playercommon.R.string.no_network);
            return;
        }
        this.i0.setVisibility(8);
        this.N.setVisibility(0);
        BridgeWebView bridgeWebView = this.N;
        if (bridgeWebView != null) {
            bridgeWebView.loadUrl(this.R);
        }
    }

    public final void S0(View view) {
        f5.c(VipHelpActivity.q0(this, OnlineVideoApiManager.getInstance().createBaseUrl() + "/#/faq", getString(R.string.membership_faq)), this);
        hb0.markDirect("vd_ott_vip_buy_qa_cl");
    }

    public final void U0(String str) {
        this.U = str;
        if (!com.transsion.palmsdk.b.s() || r0a.g(zdc.g())) {
            com.transsion.palmsdk.b.g(this);
        } else {
            Y0();
        }
    }

    public final void V0(JsPostParam jsPostParam) {
        if (jsPostParam == null || jsPostParam.getParams() == null) {
            return;
        }
        String event = jsPostParam.getParams().getEvent();
        if (jsPostParam.getParams().getPost() != null && "vd_ott_vip_buy_show".equals(event)) {
            jsPostParam.getParams().getPost().put("from", this.a0);
        }
        wz5.K(jsPostParam.getParams().getEvent(), jsPostParam.getParams().getPost());
    }

    public final void W0(JsParam jsParam) {
        if (jsParam == null || jsParam.getParams() == null || jsParam.getParams().get("pageId") == null) {
            finish();
            return;
        }
        if (Integer.parseInt(jsParam.getParams().get("pageId").toString()) != 1 || jsParam.getParams().get("returnTarget") == null) {
            return;
        }
        int i = Integer.parseInt(jsParam.getParams().get("returnTarget").toString());
        if (i != 1) {
            if (i == 0) {
                ThreadUtils.s(new Runnable() {
                    @Override
                    public void run() {
                        LogUtils.j("[VishaUserDebug]", "go to last page");
                        VipWebActivity vipWebActivity = VipWebActivity.this;
                        BridgeWebView bridgeWebView = vipWebActivity.N;
                        if (bridgeWebView != null) {
                            vipWebActivity.j0 = true;
                            bridgeWebView.loadUrl(vipWebActivity.R);
                        }
                        LinearLayout linearLayout = VipWebActivity.this.h0;
                        if (linearLayout != null) {
                            linearLayout.setVisibility(0);
                        }
                    }
                });
            }
        } else {
            LogUtils.j("[VishaUserDebug]", "finish,to home page");
            Intent intent = new Intent();
            intent.putExtra("close_user_page", true);
            setResult(-1, intent);
            finish();
        }
    }

    public final void X0(JsParam jsParam) {
        if (jsParam == null || jsParam.getParams() == null || jsParam.getParams().get("text") == null) {
            return;
        }
        String str = (String) jsParam.getParams().get("text");
        String str2 = (String) jsParam.getParams().get("prompt");
        if (r0a.g(str)) {
            return;
        }
        dy0.a(str);
        if (r0a.g(str2)) {
            return;
        }
        ToastUtils.w(str2);
    }

    public final void Y0() {
        PlayHandler.getInstance().mIsLogin = true;
        int i = this.O;
        if (i == 1) {
            M0(this.U);
        } else if (i == 4) {
            M0(this.U);
        }
    }

    public void Z0(List list) {
        wz5.H("vd_ott_vip_buy_c_payment_result", this.W, this.X, "Purchases cancel", 2);
        h27.c().e(1042, "Purchases cancel");
        LogUtils.w("[VishaUserDebug]", "onPurchaseCancel" + list);
        this.T.b(new OrderCancelCallbackRequest(this.W, 4));
        if (this.T.d().hasObservers()) {
            return;
        }
        this.T.d().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                VipWebActivity.T0((Integer) obj);
            }
        });
    }

    public void a1(List list) {
        LogUtils.w("[VishaUserDebug]", "onPurchaseDone==" + list);
        if (list == null || list.isEmpty() || ((Purchase) list.get(0)).getPurchaseState() != 1) {
            LogUtils.w("[VishaUserDebug]", "onPurchaseDone: No purchase,pay fail !");
            h27.c().e(1040, -1004, "onPurchaseDone: No purchase,pay fail !");
            wz5.H("vd_ott_vip_buy_c_payment_result", this.W, this.X, "purchase fail", 0);
            return;
        }
        Purchase purchase = (Purchase) list.get(0);
        LogUtils.w("[VishaUserDebug]", "onPurchaseDone_purchase" + purchase.getProducts().get(0) + "--" + this.c0);
        OrderManager.g(OrderManager.e(purchase, this.c0));
        h27.c().e(1039, this.V);
        p0 = 1;
        H0(purchase);
        if (BillingClient.ProductType.SUBS.equals(this.c0) && !purchase.isAcknowledged()) {
            this.S.k(purchase.getPurchaseToken());
            LogUtils.w("[VishaUserDebug]", "acknowledgePurchase success >>> [orderId：" + purchase.getOrderId() + "]");
        } else if (BillingClient.ProductType.INAPP.equals(this.c0)) {
            h27.c().e(1048, purchase);
            this.S.m(purchase.getPurchaseToken());
            LogUtils.w("[VishaUserDebug]", "consumeAsync success >>> [orderId：" + purchase.getOrderId() + "]");
        }
        wz5.H("vd_ott_vip_buy_c_payment_result", this.W, this.X, "", 1);
    }

    public final void b1(JsParam jsParam) {
        if (this.h0 == null || jsParam == null || jsParam.getParams() == null || jsParam.getParams().get("showTitlebar") == null) {
            return;
        }
        final int i = Integer.parseInt(jsParam.getParams().get("showTitlebar").toString());
        this.j0 = false;
        ThreadUtils.s(new Runnable() {
            @Override
            public void run() {
                VipWebActivity.this.h0.setVisibility(i == 1 ? 0 : 8);
            }
        });
    }

    public void c1(int i, String str) {
        LogUtils.w("[VishaUserDebug]", "onSkusError: " + i + "--" + str);
        h27.c().e(1041, Integer.valueOf(i), str);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1031) {
            Y0();
        }
        if (i == 1048) {
            Object obj = objArr[0];
            if (obj != null) {
                Purchase purchase = (Purchase) obj;
                OrderManager.g(OrderManager.e(purchase, this.c0));
                H0(purchase);
                return;
            }
            return;
        }
        switch (i) {
            case 1039:
                this.N.sendResponse(g.b(fi1.e(t95.b(1, 0, ""))), this.V);
                break;
            case 1040:
                this.N.sendResponse(g.b(fi1.e(t95.b(2, ((Integer) objArr[0]).intValue(), String.valueOf(objArr[1])))), this.V);
                break;
            case 1041:
                this.N.sendResponse(g.b(fi1.e(t95.b(4, ((Integer) objArr[0]).intValue(), String.valueOf(objArr[1])))), this.V);
                break;
            case 1042:
                this.N.sendResponse(g.b(fi1.e(t95.b(3, 0, getString(R.string.vip_pay_cancled)))), this.V);
                break;
            case 1043:
                if (!TextUtils.isEmpty(this.W)) {
                    wz5.J(this.W, 1);
                }
                break;
        }
    }

    public final void f1(JsParam jsParam, String str) {
        this.V = str;
        LogUtils.j("[VishaUserDebug]", "startPay obfuscatedProfileId:" + jsParam.getParams().get("obfuscatedProfileId"), "productId:" + jsParam.getParams().get("productId").toString());
        this.W = jsParam.getParams().get("obfuscatedProfileId").toString();
        this.X = jsParam.getParams().get("productId").toString();
        new ArrayList().add(jsParam.getParams().get("productId").toString());
        this.c0 = BillingClient.ProductType.INAPP;
        this.f0 = 0;
        if (jsParam.getParams().get("productId") != null && jsParam.getParams().get(PushConstants.TOPIC_SUBSCRIBE).toString().contains("1")) {
            this.c0 = BillingClient.ProductType.SUBS;
            this.e0 = jsParam.getParams().get("offerId") == null ? "" : jsParam.getParams().get("offerId").toString();
            this.d0 = jsParam.getParams().get("basePlanId") != null ? jsParam.getParams().get("basePlanId").toString() : "";
            LogUtils.i("[VishaUserDebug]", "bpd:" + this.d0);
            this.f0 = 1;
        }
        this.S.y(jsParam.getParams().get("productId").toString(), this.c0);
        wz5.L(jsParam.getParams().get("obfuscatedProfileId").toString(), jsParam.getParams().get("productId").toString());
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public final void g1() {
        Intent intent = new Intent();
        intent.setClassName(this, "com.transsion.magicmovie.activity.VideoPlayerMainActivity");
        f5.c(intent, this);
    }

    public final void h1(JsParam jsParam, String str) {
        if (jsParam == null || jsParam.getParams() == null) {
            return;
        }
        String string = jsParam.getParams().get("url") != null ? jsParam.getParams().get("url").toString() : null;
        String string2 = jsParam.getParams().get("title") != null ? jsParam.getParams().get("title").toString() : "";
        if (TextUtils.isEmpty(string)) {
            return;
        }
        Intent intent = new Intent("com.transsion.sniffer_load.open_html_url");
        intent.setPackage(se.a().getPackageName());
        intent.putExtra(VkConstant.URL, string);
        intent.putExtra("title", string2);
        f5.c(intent, this);
    }

    public final void i1(int i) {
        if (i != 0) {
            View view = this.i0;
            if (view != null) {
                view.setVisibility(8);
                this.N.setVisibility(0);
                return;
            }
            return;
        }
        L0();
        View view2 = this.i0;
        if (view2 != null) {
            view2.setVisibility(0);
            this.N.setVisibility(8);
        }
    }

    @Override
    public void initNotify() {
        super.initNotify();
        this.mNotifys.add(1039);
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED));
        this.mNotifys.add(1040);
        this.mNotifys.add(1041);
        this.mNotifys.add(1043);
        this.mNotifys.add(1042);
        this.mNotifys.add(1048);
    }

    @Override
    public void onBackPressed() {
        if (this.j0) {
            finish();
            return;
        }
        this.j0 = true;
        LinearLayout linearLayout = this.h0;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        BridgeWebView bridgeWebView = this.N;
        if (bridgeWebView != null) {
            bridgeWebView.loadUrl(this.R);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_vip);
        d1();
        this.g0 = ((ViewStub) findViewById(R.id.title_bar)).inflate();
        this.h0 = (LinearLayout) findViewById(R.id.ll_title_bar);
        TextView textView = (TextView) this.g0.findViewById(R.id.title_bar_title);
        View viewFindViewById = this.g0.findViewById(R.id.title_bar_back);
        this.Z = (SeekBar) findViewById(R.id.sb_web);
        textView.setText(this.Y);
        textView.setTextColor(getResources().getColor(R.color.os_text_primary_color));
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.R0(view);
            }
        });
        View viewFindViewById2 = this.g0.findViewById(R.id.iv_faq);
        viewFindViewById2.setVisibility(0);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.S0(view);
            }
        });
        O0();
        this.T = (VipViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(VipViewModel.class);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        pe0 pe0Var = this.S;
        if (pe0Var != null) {
            pe0Var.n();
        }
    }
}
