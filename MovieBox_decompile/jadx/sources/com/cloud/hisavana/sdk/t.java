package com.cloud.hisavana.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class t {

    private final p2 f22291a;

    private ImageView f22294d;

    private ImageView f22295e;

    private AdChoicesView f22296f;

    private TadmWebView f22297g;

    private InteractiveWebView f22298h;

    private boolean f22300j;

    private long f22306p;

    private q f22308r;

    private AdsDTO f22292b = null;

    private View f22293c = null;

    private boolean f22299i = false;

    private final g7.n f22301k = new g7.n(com.cloud.sdk.commonutil.util.e.a());

    private float f22302l = -1.0f;

    private float f22303m = -1.0f;

    private float f22304n = -1.0f;

    private float f22305o = -1.0f;

    DrawableResponseListener f22309s = new e();

    private final g f22307q = new g(this);

    class a implements InteractiveWebView.c {

        final AdsDTO f22310a;

        final InteractiveWebView f22311b;

        a(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
            this.f22310a = adsDTO;
            this.f22311b = interactiveWebView;
        }

        @Override
        public void a(String str) {
            AthenaTracker.y(this.f22310a, str);
        }

        @Override
        public void b() {
            t.this.d(this.f22311b);
        }

        @Override
        public void c() {
            b4.b().d("BannerGemini", "timeoutShutdown");
        }
    }

    class b implements f4 {

        final TadmWebView f22313a;

        b(TadmWebView tadmWebView) {
            this.f22313a = tadmWebView;
        }

        @Override
        public void a() {
        }

        @Override
        public int b(float f10, float f11, float f12, float f13, boolean z10) {
            t.this.f22302l = f10;
            t.this.f22303m = f11;
            t.this.f22304n = f12;
            t.this.f22305o = f13;
            return t.this.q(this.f22313a);
        }

        @Override
        public void a(String str, int i10) {
            if (t.this.f22291a != null) {
                t.this.f22291a.P();
                Bundle bundle = new Bundle();
                bundle.putString("s_err_code", i10 + "");
                bundle.putString("error_url", str);
                t.this.f22291a.L(TaErrorCode.ERROR_SHOW_ADM_LOAD_MATERIAL_ERROR, bundle);
            }
        }
    }

    private class f implements View.OnClickListener {
        private f() {
        }

        @Override
        public void onClick(View view) {
            if (t.this.f22292b != null) {
                J0.k(view.getContext(), t.this.f22292b);
            }
        }

        f(t tVar, a aVar) {
            this();
        }
    }

    private static class g extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        private final WeakReference f22321b;

        public g(t tVar) {
            this.f22321b = new WeakReference(tVar);
        }

        @Override
        public void a(AdsDTO adsDTO) {
            p2 p2Var;
            super.a(adsDTO);
            b4.b().d("BannerGemini", "onViewImpressed: start impression report");
            t tVar = (t) this.f22321b.get();
            if (tVar == null || (p2Var = tVar.f22291a) == null) {
                return;
            }
            p2Var.V();
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            O.g().k(adsDTO.getImpBeanRequest().pmid);
            if (adsDTO.getSource() == 4) {
                Y.f20925a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
            } else if (adsDTO.isOfflineAd()) {
                adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                p.F().q(adsDTO);
            }
        }
    }

    private class h implements View.OnClickListener {
        private h() {
        }

        @Override
        public void onClick(View view) {
            t.this.d(view);
        }

        h(t tVar, a aVar) {
            this();
        }
    }

    private class i implements View.OnTouchListener {
        private i() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                t.this.f22302l = motionEvent.getX();
                t.this.f22303m = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            t.this.f22304n = motionEvent.getX();
            t.this.f22305o = motionEvent.getY();
            return false;
        }

        i(t tVar, a aVar) {
            this();
        }
    }

    public t(p2 p2Var) {
        this.f22291a = p2Var;
    }

    private void A(ViewGroup viewGroup) {
        if (this.f22292b == null) {
            p2 p2Var = this.f22291a;
            if (p2Var != null) {
                p2Var.K(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                return;
            }
            return;
        }
        InteractiveWebView interactiveWebView = this.f22298h;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
        }
        try {
            InteractiveWebView interactiveWebView2 = new InteractiveWebView(com.cloud.sdk.commonutil.util.e.a());
            this.f22298h = interactiveWebView2;
            i(interactiveWebView2, viewGroup);
        } catch (Throwable th2) {
            b4.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th2));
            this.f22298h = null;
            p2 p2Var2 = this.f22291a;
            if (p2Var2 != null) {
                p2Var2.K(TaErrorCode.ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR);
            }
        }
    }

    private void B(ViewGroup viewGroup) {
        int i10;
        AdsDTO adsDTO = this.f22292b;
        if (adsDTO == null) {
            p2 p2Var = this.f22291a;
            if (p2Var != null) {
                p2Var.K(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                return;
            }
            return;
        }
        String adImgUrl = adsDTO.getAdImgUrl();
        if ((!TextUtils.equals(this.f22292b.getMaterialStyle(), "B20301") && !TextUtils.equals(this.f22292b.getMaterialStyle(), "B20302") && !TextUtils.equals(this.f22292b.getMaterialStyle(), "B20303")) || this.f22292b.getPackageName() == null || this.f22292b.getNativeObject() == null) {
            i10 = 2;
        } else {
            adImgUrl = this.f22292b.getNativeObject().getLogoUrl();
            i10 = 1;
        }
        e(viewGroup);
        if (this.f22292b.getSource() == 4) {
            AdsDTO adsDTO2 = this.f22292b;
            DrawableResponseListener drawableResponseListener = this.f22309s;
            ImageView imageView = this.f22294d;
            if (imageView == null) {
                imageView = this.f22295e;
            }
            DownLoadRequest.n(adImgUrl, adsDTO2, drawableResponseListener, imageView);
            return;
        }
        AdsDTO adsDTO3 = this.f22292b;
        DrawableResponseListener drawableResponseListener2 = this.f22309s;
        ImageView imageView2 = this.f22294d;
        if (imageView2 == null) {
            imageView2 = this.f22295e;
        }
        DownLoadRequest.o(adImgUrl, adsDTO3, i10, drawableResponseListener2, imageView2);
    }

    public void d(View view) {
        try {
            AdsDTO adsDTO = this.f22292b;
            if (adsDTO != null) {
                if (adsDTO.getPslinkInfo() != null) {
                    if (view.getId() == R$id.tvBtn) {
                        this.f22292b.getPslinkInfo().setClickType(2);
                        this.f22292b.setTrackUserClickArea(2);
                        b4.b().d("BannerGemini", "pslink half setClickType, click_install");
                    } else {
                        this.f22292b.getPslinkInfo().setClickType(1);
                        this.f22292b.setTrackUserClickArea(1);
                        b4.b().d("BannerGemini", "pslink half setClickType, click_img");
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f22306p > 1000) {
                    q(view);
                    this.f22306p = jCurrentTimeMillis;
                }
            }
        } catch (Exception e10) {
            b4.b().e(Log.getStackTraceString(e10));
        }
    }

    private void f(ViewGroup viewGroup, StoreMarkView storeMarkView) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(storeMarkView);
        arrayList.add(this.f22293c.findViewById(R$id.ad_flag));
        arrayList.add(this.f22293c.findViewById(R$id.ad_close_view));
        arrayList.add(this.f22293c.findViewById(R$id.ps_mark_view));
        p2 p2Var = this.f22291a;
        if (p2Var != null) {
            z.a(p2Var.v(), this.f22292b, viewGroup, arrayList);
        }
    }

    private void k(TadmWebView tadmWebView, ViewGroup viewGroup, boolean z10, boolean z11, boolean z12) {
        View viewFindViewById;
        viewGroup.removeAllViews();
        ((RelativeLayout) viewGroup).setGravity(17);
        this.f22293c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_3201_layout, viewGroup, false);
        if (!z12) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f22292b, viewGroup, this.f22307q);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 49;
        View viewFindViewById2 = this.f22293c.findViewById(R$id.ivBanner);
        if (viewFindViewById2 instanceof FrameLayout) {
            ((FrameLayout) viewFindViewById2).addView(tadmWebView, layoutParams);
        }
        if (z11 && (viewFindViewById = this.f22293c.findViewById(R$id.ad_flag)) != null) {
            viewFindViewById.setVisibility(8);
        }
        v(this.f22292b, this.f22293c);
        l(this.f22292b, this.f22293c);
        m(this.f22292b, this.f22293c, z10);
        ImageView imageView = (ImageView) this.f22293c.findViewById(R$id.ivIcon);
        boolean z13 = true;
        if (imageView != null && this.f22292b.getNativeObject() != null && this.f22292b.getNativeObject().getLogoUrl() != null) {
            DownLoadRequest.o(this.f22292b.getNativeObject().getLogoUrl(), this.f22292b, 1, null, imageView);
        }
        if (tadmWebView.getLayoutParams() == null) {
            z13 = false;
        } else {
            List<String> scales = this.f22292b.getScales();
            if (scales == null || scales.isEmpty()) {
                if (com.cloud.sdk.commonutil.util.h.e() != 1) {
                    tadmWebView.getLayoutParams().height = -1;
                    tadmWebView.getLayoutParams().width = -1;
                } else if (TextUtils.equals(this.f22292b.getMaterialStyle(), "B3201")) {
                    tadmWebView.getLayoutParams().height = (k7.c.k() * 2) / 3;
                    tadmWebView.getLayoutParams().width = k7.c.k();
                } else {
                    tadmWebView.getLayoutParams().height = (k7.c.k() * 3) / 20;
                    tadmWebView.getLayoutParams().width = k7.c.k();
                }
                z13 = false;
            } else {
                if (com.cloud.sdk.commonutil.util.h.e() == 1) {
                    String str = scales.get(0);
                    str.hashCode();
                    if (str.equals("3:2")) {
                        tadmWebView.getLayoutParams().height = (k7.c.k() * 2) / 3;
                        tadmWebView.getLayoutParams().width = k7.c.k();
                    } else if (str.equals("20:3")) {
                        tadmWebView.getLayoutParams().height = (k7.c.k() * 3) / 20;
                        tadmWebView.getLayoutParams().width = k7.c.k();
                    }
                } else {
                    tadmWebView.getLayoutParams().height = -1;
                    tadmWebView.getLayoutParams().width = -1;
                }
                z13 = false;
            }
        }
        tadmWebView.setVisibility(0);
        b4.b().d("BannerGemini", "banner attachBannerToViewTree");
        if (viewGroup.getBackground() != null) {
            viewGroup.getBackground().setAlpha(0);
        }
        viewGroup.setVisibility(0);
        if (com.cloud.sdk.commonutil.util.h.e() != 2) {
            viewGroup.addView(this.f22293c, -1, -2);
            return;
        }
        if (z13) {
            viewGroup.addView(this.f22293c, com.cloud.sdk.commonutil.util.h.a(300.0f), com.cloud.sdk.commonutil.util.h.a(200.0f));
        } else {
            viewGroup.addView(this.f22293c, com.cloud.sdk.commonutil.util.h.a(360.0f), com.cloud.sdk.commonutil.util.h.a(54.0f));
        }
        viewFindViewById2.getLayoutParams().height = -1;
    }

    private void l(AdsDTO adsDTO, View view) {
        AdBadgeView adBadgeView;
        if (adsDTO == null || view == null || (adBadgeView = (AdBadgeView) view.findViewById(R$id.ad_badge_view)) == null) {
            return;
        }
        adBadgeView.setDisplayStyle(adsDTO.getDisplayRule(), com.cloud.hisavana.sdk.common.util.e0.c(adsDTO));
    }

    private void m(AdsDTO adsDTO, View view, boolean z10) {
        AdCloseView adCloseView;
        if (adsDTO == null || view == null || (adCloseView = (AdCloseView) view.findViewById(R$id.ad_close_view)) == null) {
            return;
        }
        if (z10 && this.f22299i) {
            adCloseView.setVisibility(8);
            return;
        }
        adCloseView.setVisibility(0);
        s2.p().g(com.cloud.sdk.commonutil.util.e.a(), adCloseView, this.f22291a, adsDTO, this.f22300j);
        adCloseView.setDisplayStyle(adsDTO.getDisplayRule(), AdCloseView.CloseImageType.CLOSE);
    }

    private void n(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation())) {
            return;
        }
        if (!new File(adsDTO.getIndexLocation()).exists() || interactiveWebView == null) {
            p2 p2Var = this.f22291a;
            if (p2Var != null) {
                p2Var.P();
            }
            AthenaTracker.S(this.f22292b, 3);
            return;
        }
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + adsDTO.getIndexLocation());
    }

    private void o(AdsDTO adsDTO, boolean z10, View view) {
        if (adsDTO == null || view == null) {
            return;
        }
        boolean zA = com.cloud.hisavana.sdk.common.util.h0.a(adsDTO);
        StoreMarkView storeMarkView = (StoreMarkView) view.findViewById(R$id.ps_mark_view);
        if (storeMarkView != null) {
            storeMarkView.setVisibility(zA ? 0 : 8);
            storeMarkView.setTextColor(z10 ? -1 : -8882056);
            storeMarkView.setTextSize(z10 ? 8.0f : 6.0f);
            storeMarkView.attachInfo(adsDTO);
        }
    }

    public int q(View view) {
        Context context = view.getContext();
        AdsDTO adsDTO = this.f22292b;
        DownUpPointBean downUpPointBean = new DownUpPointBean(this.f22302l, this.f22303m, this.f22304n, this.f22305o, view.getMeasuredHeight(), view.getMeasuredWidth());
        p2 p2Var = this.f22291a;
        int iB = J0.b(context, adsDTO, downUpPointBean, p2Var == null ? false : p2Var.p().v());
        AthenaTracker.W(this.f22292b);
        p2 p2Var2 = this.f22291a;
        if (p2Var2 != null) {
            p2Var2.U();
        }
        return iB;
    }

    private void t(ViewGroup viewGroup) {
        AdsDTO adsDTO = this.f22292b;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdm()) || viewGroup == null) {
            p2 p2Var = this.f22291a;
            if (p2Var != null) {
                AdsDTO adsDTO2 = this.f22292b;
                if (adsDTO2 == null) {
                    p2Var.K(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                    return;
                } else if (TextUtils.isEmpty(adsDTO2.getAdm())) {
                    this.f22291a.K(TaErrorCode.ERROR_SHOW_ADM_NULL);
                    return;
                } else {
                    this.f22291a.K(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                    return;
                }
            }
            return;
        }
        TadmWebView tadmWebView = this.f22297g;
        if (tadmWebView != null) {
            tadmWebView.destroy();
        }
        try {
            TadmWebView tadmWebView2 = new TadmWebView(com.cloud.sdk.commonutil.util.e.a());
            this.f22297g = tadmWebView2;
            j(tadmWebView2, viewGroup);
        } catch (Throwable th2) {
            b4.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th2));
            this.f22297g = null;
            p2 p2Var2 = this.f22291a;
            if (p2Var2 != null) {
                p2Var2.K(TaErrorCode.ERROR_SHOW_ADM_WEBVIEW_ERROR);
            }
        }
    }

    private void v(AdsDTO adsDTO, View view) {
        AdChoicesView adChoicesView;
        if (adsDTO == null || view == null || (adChoicesView = (AdChoicesView) view.findViewById(R$id.ad_choices_view)) == null) {
            return;
        }
        a aVar = null;
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getAdChoiceImageUrl(), adsDTO, null, adChoicesView);
        } else {
            DownLoadRequest.o(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new f(this, aVar));
        this.f22296f = adChoicesView;
    }

    private void y(ViewGroup viewGroup) {
        if (viewGroup == null) {
            p2 p2Var = this.f22291a;
            if (p2Var != null) {
                p2Var.K(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                return;
            }
            return;
        }
        TadmWebView tadmWebView = this.f22297g;
        if (tadmWebView != null) {
            tadmWebView.destroy();
        }
        try {
            TadmWebView tadmWebView2 = new TadmWebView(com.cloud.sdk.commonutil.util.e.a());
            this.f22297g = tadmWebView2;
            u(tadmWebView2, viewGroup);
        } catch (Throwable th2) {
            b4.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th2));
            this.f22297g = null;
            p2 p2Var2 = this.f22291a;
            if (p2Var2 != null) {
                p2Var2.K(TaErrorCode.ERROR_SHOW_ADM_WEBVIEW_ERROR);
            }
        }
    }

    public void c() {
        com.cloud.sdk.commonutil.util.k.a(this.f22294d);
        com.cloud.sdk.commonutil.util.k.a(this.f22295e);
        com.cloud.sdk.commonutil.util.k.a(this.f22296f);
        TadmWebView tadmWebView = this.f22297g;
        if (tadmWebView != null) {
            tadmWebView.destroy();
            this.f22297g = null;
        }
        InteractiveWebView interactiveWebView = this.f22298h;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.f22298h = null;
        }
        q qVar = this.f22308r;
        if (qVar != null) {
            qVar.c();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:102:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:107:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:110:0x0328  */
    /* JADX WARN: Code duplicated, block: B:112:0x032b  */
    /* JADX WARN: Code duplicated, block: B:114:0x034b  */
    /* JADX WARN: Code duplicated, block: B:116:0x035c  */
    /* JADX WARN: Code duplicated, block: B:118:0x0365  */
    /* JADX WARN: Code duplicated, block: B:120:0x036b  */
    /* JADX WARN: Code duplicated, block: B:121:0x0381  */
    /* JADX WARN: Code duplicated, block: B:124:0x038c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:125:0x038e  */
    /* JADX WARN: Code duplicated, block: B:126:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:127:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:130:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:13:0x006e  */
    /* JADX WARN: Code duplicated, block: B:47:0x014a  */
    /* JADX WARN: Code duplicated, block: B:49:0x014e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0154  */
    /* JADX WARN: Code duplicated, block: B:53:0x0178  */
    /* JADX WARN: Code duplicated, block: B:54:0x017a  */
    /* JADX WARN: Code duplicated, block: B:57:0x0181  */
    /* JADX WARN: Code duplicated, block: B:58:0x0183  */
    /* JADX WARN: Code duplicated, block: B:61:0x018a  */
    /* JADX WARN: Code duplicated, block: B:62:0x018c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0193  */
    /* JADX WARN: Code duplicated, block: B:68:0x0199 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x019b  */
    /* JADX WARN: Code duplicated, block: B:71:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:74:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:76:0x022c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0232  */
    /* JADX WARN: Code duplicated, block: B:79:0x0239  */
    /* JADX WARN: Code duplicated, block: B:80:0x023d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0256  */
    /* JADX WARN: Code duplicated, block: B:84:0x0266  */
    /* JADX WARN: Code duplicated, block: B:89:0x02aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:93:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:94:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:97:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:98:0x02bf  */
    /* JADX WARN: Instruction removed from duplicated block: B:120:0x036b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:51:0x0154, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x01ab, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:84:0x0266, please report this as an issue */
    void e(ViewGroup viewGroup) {
        boolean z10;
        boolean z11;
        View view;
        TextView textView;
        String strJ;
        String materialStyle;
        boolean zA;
        StoreMarkView storeMarkView;
        TextView textView2;
        ImageView imageView;
        ImageView imageView2;
        TextView textView3;
        TextView textView4;
        int i10;
        float f10;
        String descriptionTxt;
        String titleTxt;
        p2 p2Var;
        AdsDTO adsDTO = this.f22292b;
        if (adsDTO == null || viewGroup == null) {
            p2 p2Var2 = this.f22291a;
            if (p2Var2 != null) {
                if (adsDTO == null) {
                    p2Var2.K(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                    return;
                } else {
                    p2Var2.K(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                    return;
                }
            }
            return;
        }
        viewGroup.removeAllViews();
        ((RelativeLayout) viewGroup).setGravity(17);
        if (this.f22292b.getNativeObject() == null || this.f22292b.getMaterialStyle() == null) {
            b4.b().d("BannerGemini", "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle");
            p2 p2Var3 = this.f22291a;
            if (p2Var3 != null) {
                p2Var3.K(TaErrorCode.ERROR_SHOW_NATIVEOBJ_NULL);
                return;
            }
            return;
        }
        b4.b().d("BannerGemini", "*----> TranBanner --> MaterialStyle =" + this.f22292b.getMaterialStyle());
        w wVar = new w(this.f22292b);
        int iG = wVar.g();
        String materialStyle2 = this.f22292b.getMaterialStyle();
        materialStyle2.hashCode();
        a aVar = null;
        switch (materialStyle2) {
            case "B3201":
                this.f22293c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_3201_layout, viewGroup, false);
                z10 = true;
                z11 = z10;
                iG = -1;
                this.f22292b.setBannerStyle(iG);
                com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f22292b, this.f22293c, this.f22307q);
                AthenaTracker.A(this.f22292b);
                view = this.f22293c;
                if (view == null) {
                    p2Var = this.f22291a;
                    if (p2Var != null) {
                        p2Var.K(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                    }
                    break;
                } else {
                    textView = (TextView) view.findViewById(R$id.tvDescription);
                    strJ = com.cloud.hisavana.sdk.common.util.r.f21605a.j(this.f22292b);
                    materialStyle = this.f22292b.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case "B20301":
                            ((TextView) this.f22293c.findViewById(R$id.tvName)).setText(this.f22292b.getNativeObject().getTitleTxt());
                            if (textView != null) {
                                descriptionTxt = this.f22292b.getNativeObject().getDescriptionTxt();
                                if (!TextUtils.isEmpty(strJ)) {
                                    descriptionTxt = strJ + " · " + descriptionTxt;
                                }
                                textView.setText(descriptionTxt);
                            }
                            ((TextView) this.f22293c.findViewById(R$id.tvBtn)).setText(this.f22292b.getNativeObject().getButtonTxt(this.f22292b.getInstallApk()));
                            break;
                        case "B20302":
                            ((TextView) this.f22293c.findViewById(R$id.tvName)).setText(this.f22292b.getNativeObject().getTitleTxt());
                            ((TextView) this.f22293c.findViewById(R$id.tvBtn)).setText(this.f22292b.getNativeObject().getButtonTxt(this.f22292b.getInstallApk()));
                            if (textView != null) {
                                if (!TextUtils.isEmpty(strJ)) {
                                    textView.setVisibility(0);
                                    textView.setText(strJ);
                                } else {
                                    textView.setVisibility(8);
                                }
                                break;
                            }
                            break;
                        case "B20303":
                            if (textView != null) {
                                titleTxt = this.f22292b.getNativeObject().getTitleTxt();
                                if (!TextUtils.isEmpty(strJ)) {
                                    titleTxt = strJ + " · " + titleTxt;
                                }
                                textView.setText(titleTxt);
                            }
                            ((TextView) this.f22293c.findViewById(R$id.tvName)).setText(this.f22292b.getNativeObject().getDescriptionTxt());
                            ((TextView) this.f22293c.findViewById(R$id.tvBtn)).setText(this.f22292b.getNativeObject().getButtonTxt(this.f22292b.getInstallApk()));
                            break;
                    }
                    zA = com.cloud.hisavana.sdk.common.util.h0.a(this.f22292b);
                    storeMarkView = (StoreMarkView) this.f22293c.findViewById(R$id.ps_mark_view);
                    if (storeMarkView != null) {
                        storeMarkView.setVisibility(zA ? 0 : 8);
                        if (z10) {
                            i10 = -1;
                        } else {
                            i10 = -8882056;
                        }
                        storeMarkView.setTextColor(i10);
                        if (z10) {
                            f10 = 8.0f;
                        } else {
                            f10 = 6.0f;
                        }
                        storeMarkView.setTextSize(f10);
                        storeMarkView.attachInfo(this.f22292b);
                    }
                    textView2 = (TextView) this.f22293c.findViewById(R$id.tvName);
                    if (textView2 != null && textView2.getPaint() != null) {
                        textView2.getPaint().setFakeBoldText(true);
                    }
                    imageView = (ImageView) this.f22293c.findViewById(R$id.iv_main_image);
                    this.f22294d = imageView;
                    if (imageView != null) {
                        a aVar2 = null;
                        imageView.setOnTouchListener(new i(this, aVar2));
                        this.f22294d.setOnClickListener(new h(this, aVar2));
                    }
                    this.f22295e = (ImageView) this.f22293c.findViewById(R$id.ivIcon);
                    v(this.f22292b, this.f22293c);
                    l(this.f22292b, this.f22293c);
                    m(this.f22292b, this.f22293c, true);
                    if (iG != 1 || iG == 2) {
                        imageView2 = (ImageView) this.f22293c.findViewById(R$id.score_icon);
                        textView3 = (TextView) this.f22293c.findViewById(R$id.score_text);
                        textView4 = (TextView) this.f22293c.findViewById(R$id.source_size);
                        if (imageView2 != null) {
                            imageView2.setImageDrawable(androidx.core.content.b.getDrawable(com.cloud.sdk.commonutil.util.e.a(), wVar.f(iG)));
                        }
                        if (textView3 != null) {
                            textView3.setText(wVar.h(iG));
                        }
                        if (textView4 != null) {
                            if (TextUtils.isEmpty(strJ)) {
                                textView4.setVisibility(4);
                            } else {
                                textView4.setVisibility(0);
                                textView4.setText(strJ + " · ");
                            }
                        }
                    }
                    if (com.cloud.sdk.commonutil.util.h.e() != 2) {
                        viewGroup.addView(this.f22293c, -1, -2);
                    } else if (z11) {
                        viewGroup.addView(this.f22293c, com.cloud.sdk.commonutil.util.h.a(300.0f), com.cloud.sdk.commonutil.util.h.a(200.0f));
                    } else {
                        viewGroup.addView(this.f22293c, com.cloud.sdk.commonutil.util.h.a(360.0f), com.cloud.sdk.commonutil.util.h.a(54.0f));
                    }
                    if (viewGroup.getBackground() != null) {
                        viewGroup.getBackground().setAlpha(0);
                    }
                    viewGroup.setVisibility(0);
                    b4.b().d("BannerGemini", "ad banner show...");
                    f(viewGroup, storeMarkView);
                    break;
                }
                break;
            case "B20301":
            case "B20302":
            case "B20303":
                int i11 = R$layout.banner_style_20301_20302_20303_layout;
                if (iG == 1 || iG == 2) {
                    i11 = R$layout.banner_style_203_newstyle_layout;
                }
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i11, viewGroup, false);
                this.f22293c = viewInflate;
                viewInflate.findViewById(R$id.clRoot).setOnTouchListener(new i(this, aVar));
                this.f22293c.findViewById(R$id.clRoot).setOnClickListener(new h(this, aVar));
                this.f22293c.findViewById(R$id.tvBtn).setOnClickListener(new h(this, aVar));
                z10 = false;
                z11 = false;
                this.f22292b.setBannerStyle(iG);
                com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f22292b, this.f22293c, this.f22307q);
                AthenaTracker.A(this.f22292b);
                view = this.f22293c;
                if (view == null) {
                    p2Var = this.f22291a;
                    if (p2Var != null) {
                        p2Var.K(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                    }
                    break;
                } else {
                    textView = (TextView) view.findViewById(R$id.tvDescription);
                    strJ = com.cloud.hisavana.sdk.common.util.r.f21605a.j(this.f22292b);
                    materialStyle = this.f22292b.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case 1937180532:
                            if (!materialStyle.equals("B20301")) {
                            }
                            break;
                        case 1937180533:
                            if (!materialStyle.equals("B20302")) {
                            }
                            break;
                        case 1937180534:
                            if (!materialStyle.equals("B20303")) {
                            }
                            break;
                        default:
                            break;
                    }
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Switch insn not found in header
                        	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        */
                    /*
                        Method dump skipped, instruction units count: 1076
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.cloud.hisavana.sdk.t.e(android.view.ViewGroup):void");
                }

                public void g(ViewGroup viewGroup, boolean z10, boolean z11, AdsDTO adsDTO) {
                    this.f22299i = z10;
                    this.f22300j = z11;
                    if (adsDTO != null) {
                        this.f22292b = adsDTO;
                        ConfigCodeSeatDTO configCodeSeatDTOF = this.f22291a.p() != null ? this.f22291a.p().f() : null;
                        if (NetStateManager.checkNetworkState(false) && configCodeSeatDTOF != null && configCodeSeatDTOF.isPriorityH5Ad().booleanValue() && com.cloud.hisavana.sdk.common.util.o0.f(configCodeSeatDTOF.getH5AdUrl())) {
                            y(viewGroup);
                            return;
                        }
                        if (!TextUtils.isEmpty(adsDTO.getAdm())) {
                            t(viewGroup);
                        } else if (adsDTO.isInteractiveAd()) {
                            A(viewGroup);
                        } else {
                            B(viewGroup);
                        }
                    }
                }

                void i(InteractiveWebView interactiveWebView, ViewGroup viewGroup) {
                    boolean z10 = true;
                    AdsDTO adsDTO = this.f22292b;
                    if (adsDTO == null || viewGroup == null || interactiveWebView == null) {
                        TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR;
                        if (adsDTO == null) {
                            taErrorCode = TaErrorCode.ERROR_SHOW_ADBEAN_NULL;
                        } else if (viewGroup == null) {
                            taErrorCode = TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL;
                        }
                        p2 p2Var = this.f22291a;
                        if (p2Var != null) {
                            p2Var.K(taErrorCode);
                            return;
                        }
                        return;
                    }
                    viewGroup.removeAllViews();
                    ((RelativeLayout) viewGroup).setGravity(17);
                    if (adsDTO.getNativeObject() == null || adsDTO.getMaterialStyle() == null) {
                        b4.b().d("BannerGemini", "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle");
                        p2 p2Var2 = this.f22291a;
                        if (p2Var2 != null) {
                            p2Var2.K(TaErrorCode.ERROR_SHOW_NATIVEOBJ_NULL);
                            return;
                        }
                        return;
                    }
                    b4.b().d("BannerGemini", "*----> TranBanner --> MaterialStyle =" + adsDTO.getMaterialStyle());
                    String materialStyle = adsDTO.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case "B3201":
                            this.f22293c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_3201_layout, viewGroup, false);
                            break;
                        case "B20301":
                        case "B20302":
                        case "B20303":
                        case "B20304":
                            this.f22293c = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.banner_style_20304_layout, viewGroup, false);
                            z10 = false;
                            break;
                        default:
                            b4.b().d("BannerGemini", "TranBanner --> 没有匹配到 materialStyle --> 配置错误 materialStyle=" + adsDTO.getMaterialStyle());
                            p2 p2Var3 = this.f22291a;
                            if (p2Var3 != null) {
                                p2Var3.K(TaErrorCode.ERROR_SHOW_MATERIAL_STYLE_NULL);
                                return;
                            }
                            return;
                    }
                    boolean z11 = z10;
                    com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(adsDTO, this.f22293c, this.f22307q);
                    AthenaTracker.A(this.f22292b);
                    View view = this.f22293c;
                    if (view == null) {
                        p2 p2Var4 = this.f22291a;
                        if (p2Var4 != null) {
                            p2Var4.K(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                            return;
                        }
                        return;
                    }
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(R$id.ivBanner);
                    if (frameLayout != null) {
                        frameLayout.removeAllViews();
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        interactiveWebView.setLayoutParams(layoutParams);
                        List<String> scales = adsDTO.getScales();
                        if (scales != null && !scales.isEmpty()) {
                            String str = scales.get(0);
                            str.hashCode();
                            if (str.equals("3:2")) {
                                layoutParams.height = (k7.c.k() * 2) / 3;
                                layoutParams.width = k7.c.k();
                            } else if (str.equals("20:3")) {
                                layoutParams.height = (k7.c.k() * 3) / 20;
                                layoutParams.width = k7.c.k();
                            }
                        }
                        frameLayout.addView(interactiveWebView, layoutParams);
                        frameLayout.setOnTouchListener(new i(this, null));
                        interactiveWebView.setWebClientCallback(adsDTO);
                        interactiveWebView.setInteractiveListener(new a(adsDTO, interactiveWebView));
                        n(adsDTO, interactiveWebView);
                    }
                    o(adsDTO, z10, this.f22293c);
                    ImageView imageView = (ImageView) this.f22293c.findViewById(R$id.ivIcon);
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                    v(adsDTO, this.f22293c);
                    l(adsDTO, this.f22293c);
                    m(adsDTO, this.f22293c, false);
                    interactiveWebView.setVisibility(0);
                    if (com.cloud.sdk.commonutil.util.h.e() != 2) {
                        viewGroup.addView(this.f22293c, -1, -2);
                    } else if (z11) {
                        viewGroup.addView(this.f22293c, com.cloud.sdk.commonutil.util.h.a(300.0f), com.cloud.sdk.commonutil.util.h.a(200.0f));
                    } else {
                        viewGroup.addView(this.f22293c, com.cloud.sdk.commonutil.util.h.a(360.0f), com.cloud.sdk.commonutil.util.h.a(54.0f));
                    }
                    if (viewGroup.getBackground() != null) {
                        viewGroup.getBackground().setAlpha(0);
                    }
                    viewGroup.setVisibility(0);
                    b4.b().d("BannerGemini", "ad banner attachInteractiveAd show...");
                }

                void j(TadmWebView tadmWebView, ViewGroup viewGroup) {
                    AdsDTO adsDTO;
                    if (viewGroup == null || tadmWebView == null || (adsDTO = this.f22292b) == null || TextUtils.isEmpty(adsDTO.getAdm())) {
                        return;
                    }
                    AthenaTracker.A(this.f22292b);
                    if (this.f22308r == null) {
                        this.f22308r = new q();
                    }
                    this.f22308r.d(tadmWebView, this.f22292b, new b(tadmWebView));
                    k(tadmWebView, viewGroup, false, false, false);
                    tadmWebView.loadDataWithBaseURL(null, this.f22292b.getAdm() + TadmWebView.JS_TEXT, "text/html", "utf-8", null);
                }

                void u(TadmWebView tadmWebView, ViewGroup viewGroup) {
                    if (viewGroup == null || tadmWebView == null || this.f22292b == null) {
                        p2 p2Var = this.f22291a;
                        if (p2Var != null) {
                            p2Var.K(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                            return;
                        }
                        return;
                    }
                    ConfigCodeSeatDTO configCodeSeatDTOF = this.f22291a.p() != null ? this.f22291a.p().f() : null;
                    if (configCodeSeatDTOF == null || TextUtils.isEmpty(configCodeSeatDTOF.getH5AdUrl())) {
                        b4.b().e("BannerGemini", "getConfig().getH5AdUrl() == null");
                        p2 p2Var2 = this.f22291a;
                        if (p2Var2 != null) {
                            p2Var2.K(TaErrorCode.ERROR_SHOW_H5_ADURL_NULL);
                            return;
                        }
                        return;
                    }
                    AthenaTracker.A(this.f22292b);
                    AthenaTracker.z(0, null, null, this.f22292b);
                    tadmWebView.getSettings().setCacheMode(-1);
                    tadmWebView.getSettings().setDomStorageEnabled(true);
                    CookieManager.getInstance().setAcceptThirdPartyCookies(tadmWebView, true);
                    tadmWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
                    AgentPageJsBridge agentPageJsBridge = new AgentPageJsBridge();
                    agentPageJsBridge.setWebview(tadmWebView);
                    AgentPageCurrentAd agentPageCurrentAd = new AgentPageCurrentAd(configCodeSeatDTOF.getH5AdUrl(), this.f22292b.getCodeSeatId(), this.f22292b.getTriggerId());
                    agentPageJsBridge.setCurrentAdInfo(agentPageCurrentAd);
                    agentPageJsBridge.setAdActionListener(new c(viewGroup));
                    agentPageJsBridge.setCurrentAd(this.f22292b);
                    tadmWebView.addJavascriptInterface(agentPageJsBridge, AgentPageJsBridge.INTERFACE_NAME);
                    AgentPageWebViewClient agentPageWebViewClient = new AgentPageWebViewClient(new d());
                    agentPageWebViewClient.setMainPageUrl(configCodeSeatDTOF.getH5AdUrl());
                    agentPageWebViewClient.setSource(this.f22292b.getSource());
                    tadmWebView.setWebViewClient(agentPageWebViewClient);
                    this.f22299i = true;
                    k(tadmWebView, viewGroup, true, true, true);
                    if (tadmWebView.getLayoutParams() != null) {
                        if (tadmWebView.getLayoutParams().width > 0 && tadmWebView.getLayoutParams().height > 0) {
                            agentPageCurrentAd.setWidth(tadmWebView.getLayoutParams().width);
                            agentPageCurrentAd.setHeight(tadmWebView.getLayoutParams().height);
                        } else if (TextUtils.equals(this.f22292b.getMaterialStyle(), "B3201")) {
                            agentPageCurrentAd.setHeight(com.cloud.sdk.commonutil.util.h.a(200.0f));
                            agentPageCurrentAd.setWidth(com.cloud.sdk.commonutil.util.h.a(300.0f));
                        } else {
                            agentPageCurrentAd.setHeight(com.cloud.sdk.commonutil.util.h.a(54.0f));
                            agentPageCurrentAd.setWidth(com.cloud.sdk.commonutil.util.h.a(360.0f));
                        }
                    }
                    tadmWebView.loadUrl(configCodeSeatDTOF.getH5AdUrl());
                }

                class c implements AgentPageJsBridge.a {

                    final ViewGroup f22315a;

                    c(ViewGroup viewGroup) {
                        this.f22315a = viewGroup;
                    }

                    @Override
                    public void a(int i10) {
                        if (t.this.f22291a != null) {
                            t.this.f22291a.H(i10);
                        }
                    }

                    @Override
                    public void onClick() {
                        if (t.this.f22291a != null) {
                            t.this.f22291a.U();
                        }
                    }

                    @Override
                    public void a() {
                        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(t.this.f22292b, this.f22315a, t.this.f22307q);
                    }
                }

                class d implements AgentPageWebViewClient.OverrideListener {

                    boolean f22317a = false;

                    d() {
                    }

                    @Override
                    public boolean OnOverrideUrlLoading(WebView webView, String str) {
                        AdsDTO adsDTOM233clone = t.this.f22292b.m233clone();
                        adsDTOM233clone.setAdChoiceClickUrl(str);
                        J0.m(webView.getContext(), adsDTOM233clone, true, false, null);
                        return true;
                    }

                    @Override
                    public void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                        if (webResourceRequest == null || !webResourceRequest.isForMainFrame() || this.f22317a || t.this.f22291a == null) {
                            return;
                        }
                        t.this.f22291a.P();
                        Bundle bundle = new Bundle();
                        try {
                            bundle.putString("s_err_code", webResourceError.getErrorCode() + "");
                            t.this.f22291a.L(TaErrorCode.ERROR_SHOW_ADM_LOAD_WEB_ERROR, bundle);
                        } catch (Throwable unused) {
                        }
                    }

                    @Override
                    public void onPageFinished(WebView webView, String str) {
                        if (webView == null || webView.getProgress() != 100) {
                            return;
                        }
                        this.f22317a = true;
                    }

                    @Override
                    public boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                        if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                            return false;
                        }
                        AdsDTO adsDTOM233clone = t.this.f22292b.m233clone();
                        adsDTOM233clone.setAdChoiceClickUrl(webResourceRequest.getUrl().toString());
                        J0.m(webView.getContext(), adsDTOM233clone, true, false, null);
                        return true;
                    }
                }

                class e extends DrawableResponseListener {
                    e() {
                    }

                    @Override
                    public void a(TaErrorCode taErrorCode) {
                        try {
                            if (t.this.f22291a != null) {
                                if (taErrorCode == null || !(taErrorCode.getErrorCode() == 3007 || taErrorCode.getErrorCode() == 3016)) {
                                    t.this.f22291a.K(taErrorCode);
                                } else {
                                    t.this.f22291a.L(taErrorCode, new Bundle());
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }

                    @Override
                    public void g(int i10, AdImage adImage) {
                    }
                }
            }
