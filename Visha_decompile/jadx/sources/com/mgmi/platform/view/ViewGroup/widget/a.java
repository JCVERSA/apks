package com.mgmi.platform.view.ViewGroup.widget;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mgadplus.brower.ImgoAdWebView;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.R;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.i;
import com.mgmi.model.m;
import com.transsion.hubsdk.interaction.BuildConfig;
import defpackage.l4d;
import defpackage.mbd;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class a extends b {
    protected boolean a;
    protected ImgoAdWebView b;
    protected com.mgtv.a.c.b c;
    protected ViewGroup d;
    protected ViewGroup e;
    protected ImageView f;
    protected View g;
    protected ImageView h;
    private boolean p;
    private boolean q;
    private String r;
    private String s;
    private com.mgmi.ads.api.a t;
    private WeakReference<com.mgmi.ads.api.d.a> u;

    private void w() {
        this.b.setWebViewLifeCycleCallback(new mbd() {
            @Override
            public void a(WebView webView, int i, String str, String str2) {
                if (!TextUtils.isEmpty(str2) && str2.equals(a.this.r)) {
                    a.this.p = true;
                    a.this.y();
                    a.this.v();
                    if (a.this.q) {
                        a aVar = a.this;
                        aVar.a(301005, aVar.s);
                    } else {
                        a aVar2 = a.this;
                        aVar2.a(301006, aVar2.r);
                    }
                }
                SourceKitLogger.a("creative", i + " ; " + str2);
            }

            @Override
            public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (webResourceRequest == null || webResourceRequest.getUrl() == null || !webResourceRequest.getUrl().toString().equals(a.this.r)) {
                    return;
                }
                a.this.p = true;
                a.this.y();
                a.this.v();
                if (a.this.q) {
                    a aVar = a.this;
                    aVar.a(301005, aVar.s);
                } else {
                    a aVar2 = a.this;
                    aVar2.a(301006, aVar2.r);
                }
                SourceKitLogger.a("creative", webResourceResponse.getStatusCode() + " ; " + webResourceRequest.getUrl());
            }

            @Override
            public void a(WebView webView, String str) {
                ImgoAdWebView imgoAdWebView = a.this.b;
                if (imgoAdWebView != null) {
                    imgoAdWebView.a("playStart", com.mgmi.platform.c.e(), null);
                    if (a.this.t != null) {
                        a aVar = a.this;
                        aVar.a = aVar.t.isFullScreen();
                    }
                    a aVar2 = a.this;
                    if (aVar2.a) {
                        aVar2.b.a("orientationChange", "landscape", null);
                    } else {
                        aVar2.b.a("orientationChange", "portrait", null);
                    }
                    a.this.x();
                }
            }
        });
    }

    public void x() {
        WeakReference<com.mgmi.ads.api.d.a> weakReference;
        if (this.m == 0 || (weakReference = this.u) == null || weakReference == null) {
            return;
        }
        try {
            if (weakReference.get() != null) {
                T t = this.m;
                if (t instanceof d) {
                    ((d) t).a().a(false);
                    this.u.get().a(0, ((d) this.m).a());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void y() {
        l4d.f(this.d, 8);
        l4d.g(this.d, this.g);
        com.mgtv.a.c.b bVar = this.c;
        if (bVar != null) {
            bVar.v();
            a("0");
        }
    }

    @Override
    public void b() {
        super.b();
        this.a = false;
        c();
        ImgoAdWebView imgoAdWebView = this.b;
        if (imgoAdWebView != null) {
            imgoAdWebView.a("orientationChange", "portrait", null);
        }
    }

    public void c() {
        View view = this.g;
        if (view == null || this.b == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.gravity = 17;
            this.g.setLayoutParams(layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.b.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.removeRule(13);
            layoutParams2.addRule(13);
            this.b.setLayoutParams(layoutParams2);
        }
    }

    @Override
    public void d() {
        super.d();
        y();
    }

    @Override
    public View a(g gVar) {
        a(this.j);
        return null;
    }

    private void a(Context context) {
        ViewGroup viewGroup;
        if (this.j == null || (viewGroup = this.d) == null) {
            return;
        }
        View view = this.g;
        if (view != null) {
            l4d.g(viewGroup, view);
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_creative_interact_ex, (ViewGroup) null);
        this.g = viewInflate;
        this.e = (ViewGroup) viewInflate.findViewById(R.id.ad_container);
        this.f = (ImageView) this.g.findViewById(R.id.creative_img);
        FrameLayout frameLayout = (FrameLayout) this.g.findViewById(R.id.creative_webview);
        com.mgtv.a.c.b bVar = new com.mgtv.a.c.b(this.j);
        this.c = bVar;
        bVar.a(this.j);
        this.c.a(new m().a(this.o));
        this.b = this.c.s();
        l4d.b(frameLayout, this.c.a());
        w();
        ImageView imageView = (ImageView) this.g.findViewById(R.id.creative_close);
        this.h = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view2) {
                    a.this.y();
                    a.this.t();
                }
            });
        }
        this.d.setBackgroundColor(Color.parseColor("#30000000"));
        l4d.f(this.d, 0);
        l4d.f(this.b, 0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        l4d.c(this.d, this.g, layoutParams);
    }

    @Override
    public void a() {
        super.a();
        this.a = true;
        c();
        ImgoAdWebView imgoAdWebView = this.b;
        if (imgoAdWebView != null) {
            imgoAdWebView.a("orientationChange", "landscape", null);
        }
    }

    public void a(int i, String str) {
        i iVarA;
        T t = this.m;
        if (t == 0 || t == 0) {
            return;
        }
        try {
            if (!(t instanceof d) || (iVarA = ((d) t).a()) == null) {
                return;
            }
            List<String> listE = iVarA.e();
            ArrayList arrayList = new ArrayList();
            if (listE != null) {
                for (String str2 : listE) {
                    SourceKitLogger.a("mgmi", "reportErrors url=" + str2);
                    arrayList.add(str2.replace("[ERRORCODE]", String.valueOf(i)).replace("[ERRORURL]", str));
                }
                com.mgmi.net.b.a().b().a(arrayList);
            }
        } catch (Throwable unused) {
        }
    }

    private void a(String str) {
        com.mgmi.ads.api.a.EnumC0161a enumC0161a;
        if ("1".equalsIgnoreCase(str)) {
            enumC0161a = com.mgmi.ads.api.a.EnumC0161a.AD_INTERACTION_START;
        } else {
            enumC0161a = com.mgmi.ads.api.a.EnumC0161a.AD_INTERACTION_OVER;
        }
        com.mgmi.ads.api.a aVar = this.t;
        if (aVar != null) {
            aVar.onAdListener(enumC0161a, new AdWidgetInfo(BuildConfig.FLAVOR));
        }
    }
}
