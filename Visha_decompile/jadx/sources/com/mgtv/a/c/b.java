package com.mgtv.a.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.webkit.ProxyConfig;
import com.google.gson.Gson;
import com.mgadplus.brower.ImgoAdWebView;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgadplus.viewgroup.dynamicview.ContainerLayout;
import com.mgmi.R;
import com.mgmi.ads.api.AdSize;
import com.mgmi.ads.api.render.MySimpleDraweeView;
import com.mgmi.model.ADCreativeInfo;
import com.mgmi.model.ADEventBean;
import com.mgmi.model.CreativeMediaData;
import com.mgmi.model.VASTAd;
import com.mgmi.model.creative.ClickPosition;
import com.mgmi.model.m;
import com.mgmi.net.bean.BootDataItem;
import defpackage.aud;
import defpackage.ckd;
import defpackage.d2d;
import defpackage.dkd;
import defpackage.ey4;
import defpackage.g4d;
import defpackage.j4d;
import defpackage.l4d;
import defpackage.lbd;
import defpackage.mbd;
import defpackage.mpd;
import defpackage.y9d;
import defpackage.z9d;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class b extends a {
    protected ImageView A;
    protected CreativeMediaData B;
    protected d C;
    protected ADCreativeInfo G;
    private boolean H;
    private volatile boolean K;
    protected String s;
    protected View t;
    protected ImgoAdWebView u;
    protected ImgoAdWebView v;
    protected ViewGroup w;
    protected ContainerLayout x;
    protected ViewGroup y;
    protected MySimpleDraweeView z;
    private boolean I = false;
    private boolean J = false;
    boolean D = false;
    boolean E = false;
    boolean F = true;

    public b(Context context) {
        try {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.mgmi_h5_playerview, (ViewGroup) null);
            this.t = viewInflate;
            this.u = (ImgoAdWebView) viewInflate.findViewById(R.id.ad_h5_webview);
            this.p = (MySimpleDraweeView) this.t.findViewById(R.id.ad_h5_style_imagetext_ivImageup);
        } catch (Throwable unused) {
        }
    }

    public void A() {
        z();
    }

    public void B() {
        try {
            ContainerLayout containerLayout = this.x;
            if (containerLayout != null) {
                l4d.g(this.y, containerLayout);
            }
            z();
            C();
            ImgoAdWebView imgoAdWebView = this.u;
            if (imgoAdWebView != null) {
                imgoAdWebView.a("closeMedia", null, null);
            }
            this.F = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void C() {
        ImgoAdWebView imgoAdWebView = this.v;
        if (imgoAdWebView != null) {
            try {
                imgoAdWebView.loadUrl("about:blank");
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                this.v.clearHistory();
                this.v.destroy();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public String D() {
        AdSize adSizeK;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TtmlNode.ATTR_ID, this.o.n());
            jSONObject.put("adstyle", this.o.o());
            jSONObject.put("type", this.o.l());
            jSONObject.put("clk_area", this.o.m());
            d dVar = this.C;
            if (dVar != null && (adSizeK = dVar.k()) != null) {
                jSONObject.put("width", adSizeK.width);
                jSONObject.put("height", adSizeK.height);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    private void x() {
        ImgoAdWebView imgoAdWebView = this.u;
        if (imgoAdWebView != null) {
            imgoAdWebView.setWebViewLifeCycleCallback(new mbd() {
                @Override
                public void a(WebView webView, int i, String str, String str2) {
                    if (!TextUtils.isEmpty(str2) && str2.equals(b.this.s)) {
                        l4d.f(b.this.z, 0);
                        SourceKitLogger.a("SspH5Player", "onReceivedError" + webView.getHeight() + "" + webView.getWidth());
                        b bVar = b.this;
                        if (bVar.o != null && bVar.b() != null) {
                            if (b.this.H) {
                                b bVar2 = b.this;
                                e eVar = bVar2.q;
                                if (eVar != null) {
                                    eVar.a(bVar2.b(), 301005, "1");
                                }
                            } else {
                                b bVar3 = b.this;
                                e eVar2 = bVar3.q;
                                if (eVar2 != null) {
                                    eVar2.a(bVar3.s, 301006, "1");
                                }
                            }
                        }
                    }
                    SourceKitLogger.a("adh5", i + " ; " + str2);
                }

                @Override
                public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    if (webResourceRequest == null || webResourceRequest.getUrl() == null || !webResourceRequest.getUrl().toString().equals(b.this.s)) {
                        return;
                    }
                    l4d.f(b.this.z, 0);
                    SourceKitLogger.a("SspH5Player", "onReceivedHttpError" + webView.getHeight() + "" + webView.getWidth());
                    b bVar = b.this;
                    if (bVar.o != null && bVar.b() != null) {
                        if (b.this.H) {
                            b bVar2 = b.this;
                            e eVar = bVar2.q;
                            if (eVar != null) {
                                eVar.a(bVar2.b(), 301005, "1");
                            }
                        } else {
                            b bVar3 = b.this;
                            e eVar2 = bVar3.q;
                            if (eVar2 != null) {
                                eVar2.a(bVar3.s, 301006, "1");
                            }
                        }
                    }
                    SourceKitLogger.a("adh5", webResourceResponse.getStatusCode() + " ; " + webResourceRequest.getUrl());
                }

                @Override
                public void a(WebView webView, String str) {
                    super.a(webView, str);
                    e eVar = b.this.q;
                    if (eVar != null) {
                        eVar.b();
                    }
                }

                @Override
                public void a(WebView webView, String str, Bitmap bitmap) {
                    super.a(webView, str, bitmap);
                    SourceKitLogger.a("SspH5Player", "onPageStarted url " + webView.getHeight() + " " + webView.getWidth());
                    e eVar = b.this.q;
                    if (eVar != null) {
                        eVar.a();
                    }
                }
            });
        }
    }

    private void y() {
        ImgoAdWebView imgoAdWebView = this.v;
        if (imgoAdWebView != null) {
            imgoAdWebView.setWebViewLifeCycleCallback(new mbd() {
                @Override
                public void a(WebView webView, String str, Bitmap bitmap) {
                    super.a(webView, str, bitmap);
                    b.this.D = false;
                }

                @Override
                public void a(WebView webView, String str) {
                    super.a(webView, str);
                    b bVar = b.this;
                    d dVar = bVar.C;
                    if (dVar != null) {
                        bVar.E = dVar.l();
                    }
                    b bVar2 = b.this;
                    if (bVar2.E) {
                        ImgoAdWebView imgoAdWebView2 = bVar2.v;
                        if (imgoAdWebView2 != null) {
                            imgoAdWebView2.a("orientationChange", "landscape", null);
                        }
                    } else {
                        ImgoAdWebView imgoAdWebView3 = bVar2.v;
                        if (imgoAdWebView3 != null) {
                            imgoAdWebView3.a("orientationChange", "portrait", null);
                        }
                    }
                    b bVar3 = b.this;
                    if (bVar3.D) {
                        bVar3.A();
                    }
                }

                @Override
                public void a(WebView webView, int i, String str, String str2) {
                    super.a(webView, i, str, str2);
                    b bVar = b.this;
                    bVar.D = true;
                    bVar.A();
                    ImgoAdWebView imgoAdWebView2 = b.this.u;
                    if (imgoAdWebView2 != null) {
                        imgoAdWebView2.a("closeMedia", null, null);
                    }
                }

                @Override
                @RequiresApi(api = 21)
                public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    super.a(webView, webResourceRequest, webResourceResponse);
                    b bVar = b.this;
                    bVar.D = true;
                    bVar.A();
                    ImgoAdWebView imgoAdWebView2 = b.this.u;
                    if (imgoAdWebView2 != null) {
                        imgoAdWebView2.a("closeMedia", null, null);
                    }
                }
            });
        }
    }

    public void z() {
        l4d.f(this.y, 8);
        w();
    }

    @Override
    public int h() {
        return this.b;
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public void j() {
        super.j();
        SourceKitLogger.a("SspH5Player", "pause playStop ");
        this.K = true;
        ImgoAdWebView imgoAdWebView = this.u;
        if (imgoAdWebView != null) {
            imgoAdWebView.d();
            this.u.a("playStop", null, null);
            this.u.a("hideAd", null, null);
        }
        l4d.g(this.y, this.x);
        z();
        C();
    }

    @Override
    public void k() {
        super.k();
        SourceKitLogger.a("SspH5Player", "resume playStart ");
        c();
    }

    @Override
    public void q() {
        super.q();
        v();
    }

    public ImgoAdWebView s() {
        return this.u;
    }

    public void t() {
        ImgoAdWebView imgoAdWebView = this.v;
        if (imgoAdWebView != null) {
            imgoAdWebView.a("openWebview", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    b.this.B();
                    if (TextUtils.isEmpty(str)) {
                        if (b.this.C != null) {
                            b.this.C.a(new dkd(-999.0f, -999.0f, -999.0f, -999.0f, -999.0f, -999.0f));
                            return;
                        }
                        return;
                    }
                    try {
                        ClickPosition clickPosition = (ClickPosition) new Gson().fromJson(str, ClickPosition.class);
                        if (clickPosition == null || b.this.C == null) {
                            return;
                        }
                        dkd dkdVar = new dkd(clickPosition.x, clickPosition.y, -999.0f, -999.0f, -999.0f, -999.0f);
                        dkdVar.b(clickPosition.noClickReport);
                        b.this.C.a(dkdVar);
                    } catch (Exception unused) {
                    }
                }
            });
            this.v.a("interactReport", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    if (TextUtils.isEmpty(str)) {
                        b.this.a("-999", 1);
                        return;
                    }
                    try {
                        ClickPosition clickPosition = (ClickPosition) new Gson().fromJson(str, ClickPosition.class);
                        if (clickPosition != null) {
                            b bVar = b.this;
                            String str2 = clickPosition.type;
                            d dVar = bVar.C;
                            bVar.a(str2, dVar != null ? dVar.i() : 1);
                        }
                    } catch (Exception unused) {
                    }
                }
            });
            this.v.a("pageReady", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                }
            });
            this.v.a("playEnd", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    b.this.z();
                    b.this.C();
                }
            });
            this.v.a("playError", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    b bVar = b.this;
                    d dVar = bVar.C;
                    if (dVar != null) {
                        dVar.a(bVar.m, -1, "");
                    }
                    b.this.z();
                }
            });
            this.v.a("muteChange", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    d dVar = b.this.C;
                    if (dVar != null) {
                        dVar.a(str);
                    }
                }
            });
            this.v.a("disableNativeEvent", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    if ("1".equals(str)) {
                        ImgoAdWebView imgoAdWebView2 = b.this.v;
                        if (imgoAdWebView2 != null) {
                            imgoAdWebView2.c();
                        }
                    } else {
                        ImgoAdWebView imgoAdWebView3 = b.this.v;
                        if (imgoAdWebView3 != null) {
                            imgoAdWebView3.d();
                        }
                    }
                    b.this.e(str);
                }
            });
            this.v.a("showNativeVoiceButton", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    d dVar = b.this.C;
                    if (dVar != null) {
                        dVar.c(str);
                    }
                }
            });
            ImgoAdWebView imgoAdWebView2 = this.v;
            if (imgoAdWebView2 != null) {
                imgoAdWebView2.a("triggerNativeAction", new d2d() {
                    @Override
                    public void a(String str, z9d z9dVar) {
                        b.this.u();
                    }
                });
            }
            this.v.a("postMessage", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    ImgoAdWebView imgoAdWebView3 = b.this.u;
                    if (imgoAdWebView3 != null) {
                        imgoAdWebView3.a("receiveMessage", str, null);
                    }
                }
            });
            this.v.a("getH5Config", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    d dVar = b.this.C;
                    if (dVar != null) {
                        String strE = dVar.e("interactJson");
                        if (z9dVar != null) {
                            z9dVar.a(strE);
                        }
                    }
                }
            });
            this.v.a("getAdspaceInfo", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    if (z9dVar != null) {
                        z9dVar.a(b.this.D());
                    }
                }
            });
        }
    }

    public void u() {
        try {
            ((Vibrator) com.mgmi.ads.api.c.a().getSystemService("vibrator")).vibrate(200L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void v() {
        this.K = true;
        this.J = false;
        ImgoAdWebView imgoAdWebView = this.u;
        if (imgoAdWebView != null) {
            imgoAdWebView.d();
            this.u.a("playStop", null, null);
            this.u.a("hideAd", null, null);
            try {
                this.u.loadUrl("about:blank");
            } catch (Exception unused) {
            }
            try {
                this.u.clearHistory();
                this.u.clearView();
                this.u.destroy();
            } catch (Exception unused2) {
            }
            this.u = null;
        }
        l4d.g(this.y, this.x);
        z();
        if (this.F) {
            return;
        }
        this.F = true;
        C();
        this.x = null;
        this.y = null;
    }

    public void w() {
    }

    private void c(@NonNull CreativeMediaData creativeMediaData, m mVar) {
        CreativeMediaData.MediaParams mediaParams;
        if (creativeMediaData == null || (mediaParams = creativeMediaData.params) == null) {
            z();
            return;
        }
        String str = mediaParams.src;
        if (TextUtils.isEmpty(str)) {
            z();
            return;
        }
        if (str.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
            if (TextUtils.isEmpty(str)) {
                z();
                return;
            } else {
                a(str, true);
                return;
            }
        }
        String strA = mVar != null ? mVar.a() : "";
        if (TextUtils.isEmpty(strA)) {
            z();
            return;
        }
        String strA2 = com.mgmi.b.c.a().a(strA);
        if (TextUtils.isEmpty(strA2)) {
            z();
        } else if (new File(strA2).exists()) {
            a(str.startsWith("/") ? strA2.replace("/index.html", str) : strA2.replace("index.html", str), false);
        } else {
            z();
        }
    }

    private void d(final String str) {
        MySimpleDraweeView mySimpleDraweeView = this.z;
        if (mySimpleDraweeView != null) {
            ey4.c(mySimpleDraweeView, str, lbd.E, new ckd() {
                public void a() {
                }

                public void b() {
                    b.this.z();
                    com.mgmi.e.d.a().a(b.this.o, 301006, str, "加载在线webp失败");
                }
            });
        }
    }

    public void e(String str) {
        d dVar = this.C;
        if (dVar != null) {
            dVar.b(str);
        }
    }

    public void b(final m mVar) {
        ImgoAdWebView imgoAdWebView;
        if (mVar == null || (imgoAdWebView = this.u) == null) {
            return;
        }
        imgoAdWebView.a("openWebview", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                ClickPosition clickPosition;
                if (TextUtils.isEmpty(str)) {
                    if (b.this.C != null) {
                        b.this.C.a(new dkd(-999.0f, -999.0f, -999.0f, -999.0f, -999.0f, -999.0f));
                        return;
                    }
                    return;
                }
                try {
                    clickPosition = (ClickPosition) new Gson().fromJson(str, ClickPosition.class);
                } catch (Exception unused) {
                    clickPosition = null;
                }
                try {
                    if (clickPosition != null) {
                        if (b.this.C != null) {
                            dkd dkdVar = new dkd(clickPosition.x, clickPosition.y, -999.0f, -999.0f, -999.0f, -999.0f);
                            dkdVar.b(clickPosition.noClickReport);
                            b.this.C.a(dkdVar);
                        }
                    } else if (b.this.C != null) {
                        b.this.C.a(new dkd(-999.0f, -999.0f, -999.0f, -999.0f, -999.0f, -999.0f));
                    }
                } catch (Exception unused2) {
                }
            }
        });
        this.u.a("interactReport", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                if (TextUtils.isEmpty(str)) {
                    b.this.a("-999", 1);
                    return;
                }
                try {
                    ClickPosition clickPosition = (ClickPosition) new Gson().fromJson(str, ClickPosition.class);
                    if (clickPosition != null) {
                        b bVar = b.this;
                        String str2 = clickPosition.type;
                        d dVar = bVar.C;
                        bVar.a(str2, dVar != null ? dVar.i() : 1);
                    }
                } catch (Exception unused) {
                }
            }
        });
        this.u.a("pageReady", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                b.this.K = false;
                b.this.e();
                b.this.a(300L);
                System.out.println("comment H5 pageReady");
                try {
                    if (!TextUtils.isEmpty(str)) {
                        b.this.G = (ADCreativeInfo) new Gson().fromJson(str, ADCreativeInfo.class);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                l4d.f(b.this.p, 8);
                e eVar = b.this.q;
                if (eVar != null) {
                    eVar.d();
                }
            }
        });
        this.u.a("showMedia", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                System.out.println("comment H5 showMedia imgData = " + str + " isFinished = " + b.this.K);
                if (b.this.K) {
                    return;
                }
                b bVar = b.this;
                bVar.F = false;
                try {
                    bVar.B = (CreativeMediaData) new Gson().fromJson(str, CreativeMediaData.class);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                b bVar2 = b.this;
                bVar2.a(bVar2.B, mVar);
            }
        });
        this.u.a("hideMedia", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                b bVar = b.this;
                l4d.g(bVar.y, bVar.x);
                b.this.z();
                b bVar2 = b.this;
                bVar2.x = null;
                bVar2.y = null;
                bVar2.F = true;
                bVar2.C();
            }
        });
        this.u.a("playEnd", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                d dVar;
                System.out.println("comment H5  playEnd  ");
                if ("user".equals(str) && (dVar = b.this.C) != null) {
                    dVar.d(str);
                }
                e eVar = b.this.q;
                if (eVar != null) {
                    eVar.g();
                }
                b.this.z();
            }
        });
        this.u.a("playError", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                b bVar = b.this;
                e eVar = bVar.q;
                if (eVar != null) {
                    eVar.a(bVar.s, 100, str);
                }
                b.this.z();
            }
        });
        this.u.a("muteChange", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                d dVar = b.this.C;
                if (dVar != null) {
                    dVar.a(str);
                }
            }
        });
        this.u.a("disableNativeEvent", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                if ("1".equals(str)) {
                    ImgoAdWebView imgoAdWebView2 = b.this.u;
                    if (imgoAdWebView2 != null) {
                        imgoAdWebView2.c();
                    }
                } else {
                    ImgoAdWebView imgoAdWebView3 = b.this.u;
                    if (imgoAdWebView3 != null) {
                        imgoAdWebView3.d();
                    }
                }
                b.this.e(str);
            }
        });
        this.u.a("showNativeVoiceButton", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                d dVar = b.this.C;
                if (dVar != null) {
                    dVar.c(str);
                }
            }
        });
        ImgoAdWebView imgoAdWebView2 = this.u;
        if (imgoAdWebView2 != null) {
            imgoAdWebView2.a("triggerNativeAction", new d2d() {
                @Override
                public void a(String str, z9d z9dVar) {
                    b.this.u();
                }
            });
        }
        this.u.a("postMessage", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                ImgoAdWebView imgoAdWebView3 = b.this.v;
                if (imgoAdWebView3 != null) {
                    imgoAdWebView3.a("receiveMessage", str, null);
                }
            }
        });
        this.u.a("getH5Config", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                d dVar = b.this.C;
                if (dVar != null) {
                    String strE = dVar.e("interactJson");
                    if (z9dVar != null) {
                        z9dVar.a(strE);
                    }
                }
            }
        });
        this.u.a("interactionStart", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                d dVar = b.this.C;
                if (dVar != null) {
                    dVar.f("1");
                }
            }
        });
        this.u.a("interactionEnd", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                d dVar = b.this.C;
                if (dVar != null) {
                    dVar.f("0");
                }
            }
        });
        this.u.a("adEventReport", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                d dVar;
                try {
                    final ADEventBean aDEventBean = (ADEventBean) com.mgadplus.netlib.json.b.a(str, ADEventBean.class);
                    if (aDEventBean == null || (dVar = b.this.C) == null) {
                        return;
                    }
                    aDEventBean.isFullScreen = dVar.l();
                    m mVar2 = b.this.o;
                    if (mVar2 != null) {
                        int i = mVar2.m;
                        if (i > 0) {
                            j4d.c(new Runnable() {
                                @Override
                                public void run() {
                                    com.mgmi.e.d.a().a(aDEventBean, b.this.o);
                                }
                            }, i);
                        } else {
                            com.mgmi.e.d.a().a(aDEventBean, b.this.o);
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
        this.u.a("getAdspaceInfo", new d2d() {
            @Override
            public void a(String str, z9d z9dVar) {
                if (z9dVar != null) {
                    z9dVar.a(b.this.D());
                }
            }
        });
        this.u.setWebViewJsCallBack(new y9d() {
            @Override
            public void a(@Nullable String str, String str2) {
                m mVar2;
                if (b.this.C == null || (mVar2 = mVar) == null || mVar2.c() == null || TextUtils.isEmpty(str2)) {
                    return;
                }
                String strC = mVar.c();
                mVar.a(str2);
                b.this.C.a(mVar.h(), new dkd(-999.0f, -999.0f, -999.0f, -999.0f, -999.0f, -999.0f));
                mVar.b(strC);
            }

            @Override
            public void b(@Nullable String str, String str2) {
                if (TextUtils.isEmpty(str2) || mVar == null) {
                    return;
                }
                com.mgmi.net.b.a().b().a(g4d.e(str2, mVar.e()));
            }

            @Override
            public String c() {
                d dVar = b.this.C;
                return dVar != null ? dVar.j() : "new AdSize(-1, webViewHeight).toString()";
            }
        });
    }

    @Override
    public void a(Context context) {
        x();
        y();
    }

    @Override
    public void a(e eVar) {
        super.a(eVar);
        if (eVar instanceof d) {
            this.C = (d) eVar;
        }
    }

    @Override
    public boolean a(String str) {
        e eVar;
        super.a(str);
        if (!this.J && this.u != null) {
            l4d.f(this.p, 0);
            b(this.n);
            if (!TextUtils.isEmpty(this.m)) {
                String strA = com.mgmi.b.c.a().a(this.m);
                if (aud.e(strA)) {
                    this.s = "file://" + strA;
                    this.H = true;
                } else {
                    m mVar = this.o;
                    if (mVar != null) {
                        this.s = mVar.b();
                    }
                }
            } else {
                m mVar2 = this.o;
                if (mVar2 != null) {
                    this.s = mVar2.b();
                }
            }
            this.J = true;
            SourceKitLogger.a("SspH5Player", "prepare load " + this.s);
            if (TextUtils.isEmpty(this.s) && (eVar = this.q) != null) {
                eVar.a(str, 301005, "素材为空");
            }
            this.u.loadUrl(this.s);
        }
        return true;
    }

    @Override
    public String b() {
        m mVar = this.o;
        if (mVar != null) {
            if (mVar.h() instanceof VASTAd) {
                return ((VASTAd) this.o.h()).getCurrentStaticResource() != null ? ((VASTAd) this.o.h()).getCurrentStaticResource().getUrl() : "";
            }
            if ((this.o.h() instanceof BootDataItem) && ((BootDataItem) this.o.h()).url != null) {
                return ((BootDataItem) this.o.h()).url;
            }
        }
        return "";
    }

    public lbd c(String str) {
        return lbd.c(str, lbd.E).n(1).t();
    }

    @Override
    public void c() {
        super.c();
        if (this.u != null) {
            SourceKitLogger.a("SspH5Player", "start playStart ");
            this.u.a("playStart", com.mgmi.platform.c.e(), null);
        }
    }

    public void b(@NonNull CreativeMediaData creativeMediaData, m mVar) {
        String strA;
        String strReplace;
        String str = creativeMediaData.params.src;
        if (TextUtils.isEmpty(str)) {
            z();
            return;
        }
        if (str.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
            d(str);
            return;
        }
        if (mVar != null) {
            strA = mVar.a();
        } else {
            strA = "";
        }
        if (TextUtils.isEmpty(strA)) {
            z();
            return;
        }
        String strA2 = com.mgmi.b.c.a().a(strA);
        if (TextUtils.isEmpty(strA2)) {
            z();
            return;
        }
        if (str.startsWith("/")) {
            strReplace = strA2.replace("/index.html", str);
        } else {
            strReplace = strA2.replace("index.html", str);
        }
        if (this.z != null && !TextUtils.isEmpty(strReplace)) {
            File file = new File(strReplace);
            if (file.exists()) {
                a(strReplace, this.z, file);
                return;
            } else {
                z();
                return;
            }
        }
        z();
    }

    @Override
    public void a(m mVar) {
        super.a(mVar);
        this.n = this.o.j();
        b(mVar);
    }

    @Override
    public View a() {
        return this.t;
    }

    public void a(CreativeMediaData creativeMediaData) {
        Context contextH;
        d dVar = this.C;
        if (dVar == null || creativeMediaData == null || creativeMediaData.params == null || (contextH = dVar.h()) == null) {
            return;
        }
        int i = creativeMediaData.params.fullScreen;
        if (this.y == null) {
            this.y = this.C.a(i);
        }
        ViewGroup viewGroup = this.y;
        if (viewGroup == null) {
            return;
        }
        ContainerLayout containerLayout = this.x;
        if (containerLayout != null) {
            l4d.g(viewGroup, containerLayout);
        }
        l4d.f(this.y, 0);
        a(i, creativeMediaData);
        ContainerLayout containerLayout2 = (ContainerLayout) LayoutInflater.from(contextH).inflate(R.layout.layout_creative_interact, (ViewGroup) null);
        this.x = containerLayout2;
        this.w = (ViewGroup) containerLayout2.findViewById(R.id.ad_container);
        this.z = (MySimpleDraweeView) this.x.findViewById(R.id.creative_img);
        this.v = (ImgoAdWebView) this.x.findViewById(R.id.creative_webview);
        this.A = (ImageView) this.x.findViewById(R.id.creative_close);
        a(creativeMediaData, this.w);
        if (creativeMediaData.params.showCloseButton == 1) {
            l4d.f(this.A, 0);
            ImageView imageView = this.A;
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        b.this.B();
                    }
                });
            }
        } else {
            l4d.f(this.A, 8);
        }
        if (i == 1) {
            this.y.setBackgroundColor(Color.parseColor("#99000000"));
        } else {
            this.y.setBackgroundColor(Color.parseColor("#00000000"));
        }
        l4d.c(this.y, this.x, new FrameLayout.LayoutParams(-1, -1));
    }

    public void b(String str, int i) {
        List<String> listF;
        com.mgmi.e.a.d dVarB = com.mgmi.net.b.a().b();
        m mVar = this.o;
        if (mVar == null || dVarB == null || (listF = mVar.f()) == null || listF.size() <= 0) {
            return;
        }
        Iterator<String> it = listF.iterator();
        while (it.hasNext()) {
            dVarB.a(it.next().replace("[EV_KEY]", "interact_ad").replace("[EV_V1]", str).replace("[EV_V4]", String.valueOf(i)));
        }
    }

    public void b(String str) {
        if (this.p == null || TextUtils.isEmpty(str)) {
            return;
        }
        ey4.d(this.p, Uri.parse(str), c(str), null);
    }

    public void a(int i, CreativeMediaData creativeMediaData) {
        if (i == 1) {
            this.y.setClickable(true);
        } else {
            this.y.setClickable(false);
        }
    }

    public void a(CreativeMediaData creativeMediaData, ViewGroup viewGroup) {
        CreativeMediaData creativeMediaData2 = this.B;
        if (creativeMediaData2 == null || creativeMediaData2.params == null || this.y == null || viewGroup == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewGroup.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(14);
            layoutParams.addRule(10);
        }
        CreativeMediaData.MediaParams mediaParams = this.B.params;
        float f = mediaParams.width;
        float f2 = mediaParams.height;
        int width = this.y.getWidth();
        int height = this.y.getHeight();
        if (width <= 0) {
            width = mpd.a(com.mgmi.ads.api.c.a());
        }
        if (height <= 0) {
            height = mpd.n(com.mgmi.ads.api.c.a());
        }
        if (f == 0.0f) {
            f = width;
        }
        if (f2 == 0.0f) {
            f2 = height;
        }
        float f3 = f / f2;
        if ("width".equals(!TextUtils.isEmpty(this.B.params.baseOn) ? this.B.params.baseOn : "width")) {
            float f4 = width;
            if ((f != f4 || f2 != height) && width > 0) {
                f2 = f4 / f3;
                f = f4;
            }
        } else {
            float f5 = height;
            if ((f2 != f5 || f != width) && height > 0) {
                f = f5 * f3;
                f2 = f5;
            }
        }
        layoutParams.width = (int) f;
        layoutParams.height = (int) f2;
        CreativeMediaData.MediaParams mediaParams2 = creativeMediaData.params;
        int i = mediaParams2.fullScreen;
        CreativeMediaData.MediaParams.Position position = mediaParams2.position;
        if (i == 1) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.A.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            }
            layoutParams2.rightMargin = (int) (((double) width) * 0.05d);
            layoutParams2.topMargin = (int) (((double) height) * 0.14d);
            this.A.setLayoutParams(layoutParams2);
        }
        boolean z = false;
        if (position != null && position.y > height) {
            z = true;
        }
        if (i == 1 && !z) {
            try {
                layoutParams.removeRule(10);
                layoutParams.removeRule(14);
            } catch (Throwable unused) {
            }
            layoutParams.addRule(13);
        } else if (position != null) {
            layoutParams.leftMargin = (int) (width * position.x);
            layoutParams.topMargin = (int) (height * position.y);
        }
        viewGroup.setLayoutParams(layoutParams);
    }

    public void a(@NonNull CreativeMediaData creativeMediaData, final m mVar) {
        if (creativeMediaData == null) {
            return;
        }
        a(creativeMediaData);
        if ("image".equals(creativeMediaData.type)) {
            MySimpleDraweeView mySimpleDraweeView = this.z;
            if (mySimpleDraweeView != null) {
                mySimpleDraweeView.setVisibility(0);
                this.z.setClickable(true);
            }
            ImgoAdWebView imgoAdWebView = this.v;
            if (imgoAdWebView != null) {
                imgoAdWebView.setVisibility(8);
            }
            MySimpleDraweeView mySimpleDraweeView2 = this.z;
            if (mySimpleDraweeView2 != null && creativeMediaData.params.clickOpenWebview == 1) {
                mySimpleDraweeView2.setTapclickListener(new MySimpleDraweeView.a() {
                    @Override
                    public void a(View view, float f, float f2, float f3, float f4, float f5, float f6) {
                        b.this.B();
                        d dVar = b.this.C;
                        if (dVar != null) {
                            dVar.a(mVar.h(), new dkd(f, f2, f3, f4, f5, f6));
                        }
                    }
                });
            }
            b(creativeMediaData, mVar);
            return;
        }
        if ("h5".equals(creativeMediaData.type)) {
            MySimpleDraweeView mySimpleDraweeView3 = this.z;
            if (mySimpleDraweeView3 != null) {
                mySimpleDraweeView3.setVisibility(8);
            }
            ImgoAdWebView imgoAdWebView2 = this.v;
            if (imgoAdWebView2 != null) {
                imgoAdWebView2.setVisibility(0);
                this.v.c();
            }
            t();
            c(creativeMediaData, mVar);
            return;
        }
        "video".equals(creativeMediaData.type);
    }

    public void a(final String str, ImageView imageView, File file) {
        ey4.a(imageView, file, lbd.c(str, lbd.E).n(0).t(), new ckd() {
            public void a() {
            }

            public void b() {
                b.this.z();
                e eVar = b.this.q;
                if (eVar != null) {
                    String str2 = str;
                    eVar.a(str2, 301005, str2);
                }
            }
        });
    }

    private void a(String str, boolean z) {
        if (this.v != null) {
            y();
            l4d.f(this.v, 0);
            this.v.c();
            this.v.setBackgroundColor(0);
            if (z) {
                this.v.loadUrl(str);
                return;
            }
            this.v.loadUrl("file://" + str);
        }
    }

    public void a(final String str, final int i) {
        int i2;
        m mVar = this.o;
        if (mVar != null && (i2 = mVar.m) > 0) {
            j4d.c(new Runnable() {
                @Override
                public void run() {
                    b.this.b(str, i);
                }
            }, i2);
        } else {
            b(str, i);
        }
    }
}
