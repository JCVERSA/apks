package com.mbridge.msdk.splash.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.dycreator.listener.DyCountDownListener;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class MBSplashView extends RelativeLayout {

    private static String f36860r = "MBSplashView";

    private int f36861a;

    private MBSplashWebview f36862b;

    private com.mbridge.msdk.splash.view.a f36863c;

    private ViewGroup f36864d;

    private View f36865e;

    private View f36866f;

    private int f36867g;

    private boolean f36868h;

    private boolean f36869i;

    private boolean f36870j;

    private ViewGroup f36871k;

    private View f36872l;

    private boolean f36873m;

    private boolean f36874n;

    private RelativeLayout.LayoutParams f36875o;

    private com.mbridge.msdk.splash.signal.b f36876p;

    private DyCountDownListener f36877q;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            try {
                o0.a(MBSplashView.f36860r, "webviewshow");
                String string = "";
                try {
                    int[] iArr = new int[2];
                    MBSplashView.this.f36862b.getLocationOnScreen(iArr);
                    o0.b(MBSplashView.f36860r, "coordinate:" + iArr[0] + "--" + iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("startX", t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), (float) iArr[0]));
                    jSONObject.put("startY", t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), (float) iArr[1]));
                    string = jSONObject.toString();
                } catch (Throwable th2) {
                    o0.b(MBSplashView.f36860r, th2.getMessage(), th2);
                }
                int[] iArr2 = new int[2];
                MBSplashView.this.f36862b.getLocationInWindow(iArr2);
                MBSplashView.transInfoForMraid(MBSplashView.this.f36862b, iArr2[0], iArr2[1], MBSplashView.this.f36862b.getWidth(), MBSplashView.this.f36862b.getHeight());
                f.a().a((WebView) MBSplashView.this.f36862b, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements View.OnTouchListener {

        final boolean f36879a;

        b(boolean z10) {
            this.f36879a = z10;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return !this.f36879a;
        }
    }

    class c implements View.OnTouchListener {

        final boolean f36881a;

        c(boolean z10) {
            this.f36881a = z10;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return !this.f36881a;
        }
    }

    public MBSplashView(Context context) {
        this(context, null);
    }

    private void b() {
        setBackgroundColor(0);
        this.f36861a = getResources().getConfiguration().orientation;
    }

    private void c() {
        View view;
        View view2;
        View view3;
        if (this.f36866f != null) {
            if (this.f36864d == null) {
                RelativeLayout relativeLayout = new RelativeLayout(getContext());
                this.f36864d = relativeLayout;
                relativeLayout.setId(2147482647);
            }
            if (this.f36861a == 2) {
                this.f36867g = t0.g(getContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(0, this.f36864d.getId());
                if (!this.f36873m || (view2 = this.f36872l) == null) {
                    MBSplashWebview mBSplashWebview = this.f36862b;
                    if (mBSplashWebview != null && mBSplashWebview.getParent() == null) {
                        addView(this.f36862b, layoutParams);
                    }
                    d();
                } else {
                    if (view2.getParent() != null) {
                        c1.a(this.f36872l);
                    }
                    addView(this.f36872l, layoutParams);
                }
                ViewGroup viewGroup = this.f36864d;
                if (viewGroup != null && viewGroup.getParent() == null) {
                    int i10 = this.f36875o.width;
                    c1.a(this.f36866f);
                    int i11 = this.f36867g / 4;
                    if (i10 > i11) {
                        this.f36864d.addView(this.f36866f, i11, -1);
                        i10 = i11;
                    } else {
                        this.f36864d.addView(this.f36866f, i10, -1);
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i10, -1);
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(13);
                    addView(this.f36864d, layoutParams2);
                }
            } else {
                this.f36867g = t0.f(getContext());
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(2, this.f36864d.getId());
                if (!this.f36873m || (view = this.f36872l) == null) {
                    MBSplashWebview mBSplashWebview2 = this.f36862b;
                    if (mBSplashWebview2 != null && mBSplashWebview2.getParent() == null) {
                        addView(this.f36862b, layoutParams3);
                    }
                    d();
                } else {
                    if (view.getParent() != null) {
                        c1.a(this.f36872l);
                    }
                    addView(this.f36872l, layoutParams3);
                }
                ViewGroup viewGroup2 = this.f36864d;
                if (viewGroup2 != null && viewGroup2.getParent() == null) {
                    int i12 = this.f36875o.height;
                    int i13 = this.f36867g / 4;
                    if (i12 > i13) {
                        i12 = i13;
                    }
                    c1.a(this.f36866f);
                    this.f36864d.addView(this.f36866f, -1, i12);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, i12);
                    layoutParams4.addRule(12);
                    addView(this.f36864d, layoutParams4);
                }
            }
        } else if (!this.f36873m || (view3 = this.f36872l) == null) {
            MBSplashWebview mBSplashWebview3 = this.f36862b;
            if (mBSplashWebview3 != null && mBSplashWebview3.getParent() == null) {
                addView(this.f36862b, new ViewGroup.LayoutParams(-1, -1));
            }
            d();
        } else {
            if (view3.getParent() != null) {
                c1.a(this.f36872l);
            }
            addView(this.f36872l, new ViewGroup.LayoutParams(-1, -1));
        }
        View view4 = this.f36865e;
        if (view4 != null) {
            if (view4.getParent() != null) {
                bringChildToFront(this.f36865e);
                return;
            }
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(t0.a(getContext(), 100.0f), t0.a(getContext(), 30.0f));
            layoutParams5.addRule(10);
            layoutParams5.addRule(11);
            layoutParams5.rightMargin = t0.a(getContext(), 10.0f);
            layoutParams5.topMargin = t0.a(getContext(), 10.0f);
            addView(this.f36865e, layoutParams5);
        }
    }

    private void d() {
        MBSplashWebview mBSplashWebview = this.f36862b;
        if (mBSplashWebview != null) {
            mBSplashWebview.setObject(this.f36876p);
            this.f36862b.post(new a());
        }
    }

    public static void transInfoForMraid(WebView webView, int i10, int i11, int i12, int i13) {
        String str;
        o0.b(f36860r, "transInfoForMraid");
        try {
            int i14 = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i14 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            } else {
                str = i14 == 1 ? "portrait" : "undefined";
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
            map.put("state", "default");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            float f10 = i10;
            float f11 = i11;
            float f12 = i12;
            float f13 = i13;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView);
        } catch (Throwable th2) {
            o0.b(f36860r, "transInfoForMraid", th2);
        }
    }

    public void changeCloseBtnState(int i10) {
        View view = this.f36865e;
        if (view != null) {
            if (i10 == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.f36870j = false;
        this.f36869i = false;
        this.f36868h = false;
    }

    public void destroy() {
        removeAllViews();
        ViewGroup viewGroup = this.f36871k;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        MBSplashWebview mBSplashWebview = this.f36862b;
        if (mBSplashWebview == null || mBSplashWebview.isDestoryed()) {
            return;
        }
        this.f36862b.finishAdSession();
        com.mbridge.msdk.splash.signal.c.a(this.f36862b, "onSystemDestory", "");
        this.f36862b.release();
        this.f36862b = null;
    }

    public View getCloseView() {
        return this.f36865e;
    }

    public ViewGroup getDevContainer() {
        return this.f36871k;
    }

    public View getIconVg() {
        return this.f36866f;
    }

    public com.mbridge.msdk.splash.signal.b getSplashSignalCommunicationImpl() {
        return this.f36876p;
    }

    public MBSplashWebview getSplashWebview() {
        return this.f36862b;
    }

    public boolean isAttach() {
        return this.f36874n;
    }

    public boolean isDynamicView() {
        return this.f36873m;
    }

    public boolean isH5Ready() {
        return this.f36868h;
    }

    public boolean isImageReady() {
        return this.f36870j;
    }

    public boolean isVideoReady() {
        return this.f36869i;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f36874n = true;
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    public void onPause() {
        View view = this.f36872l;
        if (view == null || !(view instanceof MBSplashNativeView)) {
            return;
        }
        ((MBSplashNativeView) view).setIsPause(true);
    }

    public void onResume() {
        View view = this.f36872l;
        if (view == null || !(view instanceof MBSplashNativeView)) {
            return;
        }
        ((MBSplashNativeView) view).setIsPause(false);
    }

    public void resetLoadState() {
        this.f36869i = false;
        this.f36868h = false;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setAllowClickSplash(boolean z10) {
        MBSplashWebview mBSplashWebview = this.f36862b;
        if (mBSplashWebview != null) {
            mBSplashWebview.setOnTouchListener(new b(z10));
        }
        setOnTouchListener(new c(z10));
    }

    public void setCloseView(View view) {
        this.f36865e = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setDevContainer(ViewGroup viewGroup) {
        this.f36871k = viewGroup;
    }

    public void setDyCountDownListener(DyCountDownListener dyCountDownListener) {
        this.f36877q = dyCountDownListener;
    }

    public void setDynamicView(boolean z10) {
        this.f36873m = z10;
    }

    public void setH5Ready(boolean z10) {
        this.f36868h = z10;
    }

    public void setIconVg(View view, RelativeLayout.LayoutParams layoutParams) {
        this.f36866f = view;
        this.f36875o = layoutParams;
    }

    public void setImageReady(boolean z10) {
        this.f36870j = z10;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        View view = this.f36872l;
        if (view != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).setNotchPadding(i10, i11, i12, i13);
        }
        if (this.f36862b != null) {
            f.a().a((WebView) this.f36862b, "oncutoutfetched", Base64.encodeToString(b0.a(-999, i10, i11, i12, i13).getBytes(), 0));
        }
    }

    public void setSplashNativeView(View view) {
        if (view != null) {
            this.f36872l = view;
        }
    }

    public void setSplashSignalCommunicationImpl(com.mbridge.msdk.splash.signal.b bVar) {
        this.f36876p = bVar;
        MBSplashWebview mBSplashWebview = this.f36862b;
        if (mBSplashWebview != null) {
            mBSplashWebview.setObject(bVar);
        }
    }

    public void setSplashWebView() {
        if (this.f36862b == null) {
            try {
                MBSplashWebview mBSplashWebview = new MBSplashWebview(getContext());
                this.f36862b = mBSplashWebview;
                com.mbridge.msdk.splash.signal.b bVar = this.f36876p;
                if (bVar != null) {
                    mBSplashWebview.setObject(bVar);
                }
                com.mbridge.msdk.splash.view.a aVar = this.f36863c;
                if (aVar != null) {
                    this.f36862b.setWebViewClient(aVar);
                    return;
                }
                com.mbridge.msdk.splash.view.a aVar2 = new com.mbridge.msdk.splash.view.a();
                this.f36863c = aVar2;
                this.f36862b.setWebViewClient(aVar2);
            } catch (Throwable th2) {
                o0.b(f36860r, th2.getMessage());
            }
        }
    }

    public void setVideoReady(boolean z10) {
        this.f36869i = z10;
    }

    public void show() {
        ViewGroup viewGroup;
        if (this.f36876p != null && (viewGroup = this.f36871k) != null && (viewGroup.getContext() instanceof Activity)) {
            this.f36876p.a(this.f36871k.getContext());
            com.mbridge.msdk.splash.view.a aVar = this.f36863c;
            if (aVar != null) {
                aVar.a(this.f36876p.a());
            }
        }
        c();
        clearResState();
    }

    public void updateCountdown(int i10) {
        DyCountDownListener dyCountDownListener;
        View view;
        if (this.f36862b != null && !this.f36873m) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("countdown", i10);
                f.a().a((WebView) this.f36862b, "updateCountdown", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        if (this.f36873m && (view = this.f36872l) != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).updateCountDown(i10);
        }
        if (!this.f36873m || (dyCountDownListener = this.f36877q) == null) {
            return;
        }
        dyCountDownListener.getCountDownValue(i10);
    }

    public MBSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBSplashView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b();
    }
}
