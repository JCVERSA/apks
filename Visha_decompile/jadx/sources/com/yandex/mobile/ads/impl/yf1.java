package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import com.yandex.mobile.ads.impl.yf1;
import defpackage.y45;

public abstract class yf1 extends vk implements bh0, gh1.b, yh2.a {
    private static boolean j;
    private final Context b;
    private final yh2 c;
    private final gh1 d;
    private final dz1 e;
    private dh0 f;
    private ch0 g;
    private boolean h;
    private boolean i;

    /* JADX WARN: Illegal instructions before constructor call */
    public yf1(Context context) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, applicationContext, new yh2(), gh1.h.a(applicationContext));
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void a(Context context) {
        y45.j(context, "context");
        y45.j(context, "context");
        setBackgroundColor(0);
        setVisibility(4);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setScrollBarStyle(0);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setSupportZoom(false);
        getSettings().setBuiltInZoomControls(false);
        getSettings().setTextZoom(100);
        getSettings().setMinimumFontSize(1);
        getSettings().setMinimumLogicalFontSize(1);
        WebSettings settings = getSettings();
        y45.i(settings, "getSettings(...)");
        if (pa.a(21)) {
            settings.setMixedContentMode(2);
        }
        WebSettings settings2 = getSettings();
        y45.i(settings2, "getSettings(...)");
        settings2.setMediaPlaybackRequiresUserGesture(false);
        setWebViewClient(new ah0(this, dt1.b()));
        setWebChromeClient(new vg0());
    }

    @Override
    public final boolean b() {
        return this.i;
    }

    @Override
    public String c() {
        return "<style type='text/css'> \n  * { \n      -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; \n      -webkit-focus-ring-color: rgba(0, 0, 0, 0) !important; \n      outline: none !important; \n    } \n</style> \n" + rj2.a();
    }

    @Override
    public void d() {
        setHtmlWebViewListener(null);
        super.d();
    }

    @Override
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        dh0 dh0VarJ;
        if (motionEvent != null && motionEvent.getAction() == 0 && (dh0VarJ = j()) != null) {
            dh0VarJ.a();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public abstract void h();

    public final Context i() {
        return this.b;
    }

    public dh0 j() {
        return this.f;
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.i = true;
        this.d.a(this);
        this.c.getClass();
        a(yh2.a(this));
    }

    @Override
    public final void onDetachedFromWindow() {
        this.i = false;
        this.c.getClass();
        a(yh2.a(this));
        this.d.b(this);
        super.onDetachedFromWindow();
    }

    @Override
    public final void onVisibilityChanged(View view, int i) {
        y45.j(view, "changedView");
        super.onVisibilityChanged(view, i);
        this.c.getClass();
        a(yh2.a(this));
    }

    @Override
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.c.getClass();
        a(yh2.a(this));
    }

    public final void setHtmlWebViewErrorListener(ch0 ch0Var) {
        this.g = ch0Var;
    }

    public void setHtmlWebViewListener(dh0 dh0Var) {
        this.f = dh0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yf1(Context context, Context context2, yh2 yh2Var, gh1 gh1Var) {
        super(context2);
        y45.j(context, "context");
        y45.j(context2, "appContext");
        y45.j(yh2Var, "viewableChecker");
        y45.j(gh1Var, "phoneStateTracker");
        this.b = context2;
        this.c = yh2Var;
        this.d = gh1Var;
        this.e = new dz1();
        a(context);
        if (j) {
            return;
        }
        j = true;
    }

    private final void a(boolean z) {
        if (this.h != z) {
            this.h = z;
            dh0 dh0VarJ = j();
            if (dh0VarJ != null) {
                dh0VarJ.a(this.h);
            }
        }
    }

    public void a(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "url");
        dh0 dh0VarJ = j();
        if (dh0VarJ != null) {
            dh0VarJ.a(str);
        }
    }

    public void a() {
        this.e.a(new Runnable() {
            @Override
            public final void run() {
                yf1.a(this.b);
            }
        });
    }

    public static final void a(yf1 yf1Var) {
        y45.j(yf1Var, "this$0");
        yf1Var.h();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001f  */
    @Override
    public final void a(dh1 dh1Var) {
        boolean z;
        y45.j(dh1Var, "phoneState");
        if (dh1Var == dh1.c) {
            z = false;
        } else {
            this.c.getClass();
            if (yh2.a(this) && this.d.b()) {
                z = true;
            } else {
                z = false;
            }
        }
        a(z);
    }

    public void a(int i) {
        ch0 ch0Var = this.g;
        if (ch0Var != null) {
            ch0Var.a(i);
        }
    }
}
