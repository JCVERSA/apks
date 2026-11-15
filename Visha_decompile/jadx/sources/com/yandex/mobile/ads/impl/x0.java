package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.view.Window;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yandex.mobile.ads.impl.x0;
import defpackage.y45;

public final class x0 implements m1, h3.c {
    private final Context a;
    private final RelativeLayout b;
    private final j1 c;
    private final Window d;
    private final String e;
    private h3 f;
    private final LinearLayout g;
    private final TextView h;
    private final ProgressBar i;
    private final y82 j;

    public x0(Context context, RelativeLayout relativeLayout, v1 v1Var, Window window, String str, h3 h3Var, LinearLayout linearLayout, TextView textView, ProgressBar progressBar, y82 y82Var) {
        y45.j(context, "context");
        y45.j(relativeLayout, "rootLayout");
        y45.j(v1Var, "adActivityListener");
        y45.j(window, "window");
        y45.j(str, "browserUrl");
        y45.j(h3Var, "adBrowserView");
        y45.j(linearLayout, "controlPanel");
        y45.j(textView, "browserTitle");
        y45.j(progressBar, "browserProgressBar");
        y45.j(y82Var, "urlViewerLauncher");
        this.a = context;
        this.b = relativeLayout;
        this.c = v1Var;
        this.d = window;
        this.e = str;
        this.f = h3Var;
        this.g = linearLayout;
        this.h = textView;
        this.i = progressBar;
        this.j = y82Var;
    }

    private final void a(ImageView imageView, ImageView imageView2) {
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                x0.a(this.b, view);
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                x0.b(this.b, view);
            }
        });
    }

    public static final void b(x0 x0Var, View view) {
        y45.j(x0Var, "this$0");
        x0Var.c.a();
    }

    @Override
    public final boolean e() {
        boolean z;
        if (this.f.canGoBack()) {
            h3 h3Var = this.f;
            if (h3Var.canGoBack()) {
                h3Var.goBack();
            }
            z = true;
        } else {
            z = false;
        }
        return !z;
    }

    @Override
    public final void g() {
        this.d.requestFeature(1);
        if (pa.a(16)) {
            this.d.getDecorView().setSystemUiVisibility(256);
        }
    }

    @Override
    public final void onAdClosed() {
        this.c.a(8, null);
    }

    @Override
    public final void c() {
        this.b.setBackgroundDrawable(g8.a);
        LinearLayout linearLayout = this.g;
        ImageView imageViewB = h8.b(this.a);
        ImageView imageViewA = h8.a(this.a);
        a(imageViewB, imageViewA);
        linearLayout.addView(this.h, new LinearLayout.LayoutParams(0, -1, 1.0f));
        linearLayout.addView(imageViewB, new LinearLayout.LayoutParams(-2, -1));
        linearLayout.addView(imageViewA, new LinearLayout.LayoutParams(-2, -1));
        RelativeLayout relativeLayout = this.b;
        LinearLayout linearLayout2 = this.g;
        Context context = this.a;
        y45.j(context, "context");
        i8 i8Var = i8.d;
        y45.j(context, "context");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, wh2.a(context, i8Var.a(context)));
        layoutParams.addRule(10);
        relativeLayout.addView(linearLayout2, layoutParams);
        Context context2 = this.a;
        LinearLayout linearLayout3 = this.g;
        y45.j(context2, "context");
        y45.j(linearLayout3, "anchorView");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, wh2.a(context2, 2.0f));
        layoutParams2.addRule(3, linearLayout3.getId());
        this.b.addView(this.i, layoutParams2);
        a(8);
        RelativeLayout relativeLayout2 = this.b;
        h3 h3Var = this.f;
        LinearLayout linearLayout4 = this.g;
        y45.j(linearLayout4, "anchorView");
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(3, linearLayout4.getId());
        relativeLayout2.addView(h3Var, layoutParams3);
        this.f.loadUrl(this.e);
        this.c.a(6, null);
        sp0.d(new Object[0]);
    }

    @Override
    public final void d() {
        this.f.d();
    }

    public static final void a(x0 x0Var, View view) {
        y45.j(x0Var, "this$0");
        String url = x0Var.f.getUrl();
        if (url != null) {
            x0Var.j.a(x0Var.a, url);
        }
    }

    @Override
    public final void b(WebView webView) {
        y45.j(webView, "view");
        a(8);
    }

    @Override
    public final void b() {
        this.f.e();
    }

    @Override
    public final void a(WebView webView) {
        y45.j(webView, "view");
        a(0);
    }

    @Override
    public final void a(WebView webView, int i) {
        y45.j(webView, "view");
        int i2 = i * 100;
        this.i.setProgress(i2);
        if (10000 > i2) {
            a(0);
        } else {
            this.h.setText(webView.getTitle());
            a(8);
        }
    }

    @Override
    public final void a() {
        this.f.f();
    }

    private final void a(int i) {
        if (i == 0 && this.i.getVisibility() != 0) {
            this.i.bringToFront();
            this.b.requestLayout();
            this.b.invalidate();
        }
        this.i.setVisibility(i);
    }
}
