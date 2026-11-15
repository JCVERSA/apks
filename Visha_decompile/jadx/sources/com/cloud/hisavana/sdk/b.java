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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.content.ContextCompat;
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
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.common.widget.TemplateAdWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.and;
import defpackage.cjb;
import defpackage.cy9;
import defpackage.hm4;
import defpackage.hvd;
import defpackage.ikd;
import defpackage.jcc;
import defpackage.kn8;
import defpackage.md8;
import defpackage.pp4;
import defpackage.ujd;
import defpackage.ul4;
import defpackage.yu3;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;

public class b {
    public final and a;
    public ImageView d;
    public ImageView e;
    public AdChoicesView f;
    public TadmWebView g;
    public InteractiveWebView h;
    public TemplateAdWebView i;
    public boolean k;
    public long q;
    public C0521r s;
    public AdsDTO b = null;
    public View c = null;
    public boolean j = false;
    public final jcc l = new jcc(ul4.a());
    public float m = -1.0f;
    public float n = -1.0f;
    public float o = -1.0f;
    public float p = -1.0f;
    public boolean t = false;
    public boolean u = false;
    public boolean v = false;
    public DrawableResponseListener w = new e();
    public final h r = new h(this);

    public class a implements InteractiveWebView.c {
        public final AdsDTO a;
        public final InteractiveWebView b;

        public a(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
            this.a = adsDTO;
            this.b = interactiveWebView;
        }

        @Override
        public void a(String str) {
            AthenaTracker.B(this.a, str);
        }

        @Override
        public void b() {
            b.this.f(this.b);
        }

        @Override
        public void c() {
            ikd.b().d("BannerGemini", "timeoutShutdown");
        }
    }

    public class C0041b implements hvd {
        public final TadmWebView a;

        public C0041b(TadmWebView tadmWebView) {
            this.a = tadmWebView;
        }

        @Override
        public void a() {
        }

        @Override
        public int a(float f, float f2, float f3, float f4, boolean z) {
            b.this.m = f;
            b.this.n = f2;
            b.this.o = f3;
            b.this.p = f4;
            return b.this.v(this.a);
        }

        @Override
        public void a(String str, int i) {
            if (b.this.a != null) {
                b.this.a.P();
                Bundle bundle = new Bundle();
                bundle.putString("s_err_code", i + "");
                bundle.putString("error_url", str);
                b.this.a.K(TaErrorCode.ERROR_SHOW_ADM_LOAD_MATERIAL_ERROR, bundle);
            }
        }
    }

    public class e extends DrawableResponseListener {
        public e() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            try {
                if (b.this.a != null) {
                    if (taErrorCode == null || !(taErrorCode.getErrorCode() == 3007 || taErrorCode.getErrorCode() == 3016)) {
                        b.this.a.J(taErrorCode);
                    } else {
                        b.this.a.K(taErrorCode, new Bundle());
                    }
                }
            } catch (Exception unused) {
            }
        }

        @Override
        public void g(int i, AdImage adImage) {
        }
    }

    public class f extends ujd {
        public f() {
        }

        @Override
        public void a() {
            if (b.this.b != null) {
                U0.k(ul4.a(), b.this.b);
            }
        }

        @Override
        public void b(int i, boolean z) {
            TemplateAdWebView templateAdWebView = b.this.i;
            if (templateAdWebView != null) {
                b.this.v(templateAdWebView);
            }
        }

        @Override
        public void d() {
            if (b.this.a != null) {
                b.this.a.P();
            }
        }

        @Override
        public void e() {
            u.n().h(ul4.a(), b.this.a, b.this.b, null, b.this.k);
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View view) {
            if (b.this.b != null) {
                U0.k(view.getContext(), b.this.b);
            }
        }

        public g(b bVar, a aVar) {
            this();
        }
    }

    public static class h extends com.cloud.hisavana.sdk.common.tranmeasure.a {
        public final WeakReference b;

        public h(b bVar) {
            this.b = new WeakReference(bVar);
        }

        @Override
        public void a(AdsDTO adsDTO) {
            and andVar;
            super.a(adsDTO);
            ikd.b().d("BannerGemini", "onViewImpressed: start impression report");
            b bVar = (b) this.b.get();
            if (bVar == null || (andVar = bVar.a) == null) {
                return;
            }
            andVar.V();
            HSCommonUtils.a.x(adsDTO);
        }
    }

    public class i implements View.OnClickListener {
        public i() {
        }

        @Override
        public void onClick(View view) {
            b.this.f(view);
        }

        public i(b bVar, a aVar) {
            this();
        }
    }

    public class j implements View.OnTouchListener {
        public j() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                b.this.m = motionEvent.getX();
                b.this.n = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            b.this.o = motionEvent.getX();
            b.this.p = motionEvent.getY();
            return false;
        }

        public j(b bVar, a aVar) {
            this();
        }
    }

    public b(and andVar) {
        this.a = andVar;
    }

    public void A(TadmWebView tadmWebView, ViewGroup viewGroup) {
        this.v = true;
        if (viewGroup == null || tadmWebView == null || this.b == null) {
            and andVar = this.a;
            if (andVar != null) {
                andVar.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                return;
            }
            return;
        }
        ConfigCodeSeatDTO configCodeSeatDTOG = this.a.p() != null ? this.a.p().g() : null;
        if (configCodeSeatDTOG == null || TextUtils.isEmpty(configCodeSeatDTOG.getH5AdUrl())) {
            ikd.b().e("BannerGemini", "getConfig().getH5AdUrl() == null");
            and andVar2 = this.a;
            if (andVar2 != null) {
                andVar2.J(TaErrorCode.ERROR_SHOW_H5_ADURL_NULL);
                return;
            }
            return;
        }
        AthenaTracker.D(this.b);
        AthenaTracker.C(0, null, null, this.b);
        tadmWebView.getSettings().setCacheMode(-1);
        tadmWebView.getSettings().setDomStorageEnabled(true);
        CookieManager.getInstance().setAcceptThirdPartyCookies(tadmWebView, true);
        tadmWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        AgentPageJsBridge agentPageJsBridge = new AgentPageJsBridge();
        agentPageJsBridge.setWebview(tadmWebView);
        AgentPageCurrentAd agentPageCurrentAd = new AgentPageCurrentAd(configCodeSeatDTOG.getH5AdUrl(), this.b.getCodeSeatId(), this.b.getTriggerId());
        agentPageJsBridge.setCurrentAdInfo(agentPageCurrentAd);
        agentPageJsBridge.setAdActionListener(new c(viewGroup));
        agentPageJsBridge.setCurrentAd(this.b);
        tadmWebView.addJavascriptInterface(agentPageJsBridge, AgentPageJsBridge.INTERFACE_NAME);
        AgentPageWebViewClient agentPageWebViewClient = new AgentPageWebViewClient(new d());
        agentPageWebViewClient.setMainPageUrl(configCodeSeatDTOG.getH5AdUrl());
        agentPageWebViewClient.setSource(this.b.getSource());
        tadmWebView.setWebViewClient(agentPageWebViewClient);
        this.j = true;
        n(tadmWebView, viewGroup, true, true, true);
        if (tadmWebView.getLayoutParams() != null) {
            if (tadmWebView.getLayoutParams().width > 0 && tadmWebView.getLayoutParams().height > 0) {
                agentPageCurrentAd.setWidth(tadmWebView.getLayoutParams().width);
                agentPageCurrentAd.setHeight(tadmWebView.getLayoutParams().height);
            } else if (TextUtils.equals(this.b.getMaterialStyle(), "B3201")) {
                agentPageCurrentAd.setHeight(hm4.a(200.0f));
                agentPageCurrentAd.setWidth(hm4.a(300.0f));
            } else {
                agentPageCurrentAd.setHeight(hm4.a(54.0f));
                agentPageCurrentAd.setWidth(hm4.a(360.0f));
            }
        }
        tadmWebView.loadUrl(configCodeSeatDTOG.getH5AdUrl());
    }

    public final void B(AdsDTO adsDTO, View view) {
        AdChoicesView adChoicesView;
        if (adsDTO == null || view == null || (adChoicesView = (AdChoicesView) view.findViewById(R.id.ad_choices_view)) == null) {
            return;
        }
        a aVar = null;
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getAdChoiceImageUrl(), adsDTO, null, adChoicesView);
        } else {
            DownLoadRequest.o(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new g(this, aVar));
        this.f = adChoicesView;
    }

    public final void E(ViewGroup viewGroup) {
        if (viewGroup == null) {
            and andVar = this.a;
            if (andVar != null) {
                andVar.J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                return;
            }
            return;
        }
        TadmWebView tadmWebView = this.g;
        if (tadmWebView != null) {
            tadmWebView.destroy();
        }
        try {
            TadmWebView tadmWebView2 = new TadmWebView(ul4.a());
            this.g = tadmWebView2;
            A(tadmWebView2, viewGroup);
        } catch (Throwable th) {
            ikd.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th));
            this.g = null;
            and andVar2 = this.a;
            if (andVar2 != null) {
                andVar2.J(TaErrorCode.ERROR_SHOW_ADM_WEBVIEW_ERROR);
            }
        }
    }

    public final void G(ViewGroup viewGroup) {
        if (this.b == null) {
            and andVar = this.a;
            if (andVar != null) {
                andVar.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                return;
            }
            return;
        }
        InteractiveWebView interactiveWebView = this.h;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
        }
        try {
            InteractiveWebView interactiveWebView2 = new InteractiveWebView(ul4.a());
            this.h = interactiveWebView2;
            l(interactiveWebView2, viewGroup);
        } catch (Throwable th) {
            ikd.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th));
            this.h = null;
            and andVar2 = this.a;
            if (andVar2 != null) {
                andVar2.J(TaErrorCode.ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR);
            }
        }
    }

    public final void J(ViewGroup viewGroup) {
        int i2;
        AdsDTO adsDTO = this.b;
        if (adsDTO == null) {
            and andVar = this.a;
            if (andVar != null) {
                andVar.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                return;
            }
            return;
        }
        String adImgUrl = adsDTO.getAdImgUrl();
        if ((!TextUtils.equals(this.b.getMaterialStyle(), "B20301") && !TextUtils.equals(this.b.getMaterialStyle(), "B20302") && !TextUtils.equals(this.b.getMaterialStyle(), "B20303")) || this.b.getPackageName() == null || this.b.getNativeObject() == null) {
            i2 = 2;
        } else {
            adImgUrl = this.b.getNativeObject().getLogoUrl();
            i2 = 1;
        }
        g(viewGroup);
        if (this.b.getSource() == 4) {
            AdsDTO adsDTO2 = this.b;
            DrawableResponseListener drawableResponseListener = this.w;
            ImageView imageView = this.d;
            if (imageView == null) {
                imageView = this.e;
            }
            DownLoadRequest.n(adImgUrl, adsDTO2, drawableResponseListener, imageView);
            return;
        }
        AdsDTO adsDTO3 = this.b;
        DrawableResponseListener drawableResponseListener2 = this.w;
        ImageView imageView2 = this.d;
        if (imageView2 == null) {
            imageView2 = this.e;
        }
        DownLoadRequest.o(adImgUrl, adsDTO3, i2, drawableResponseListener2, imageView2);
    }

    public final void K(final ViewGroup viewGroup) {
        final AdsDTO adsDTO = this.b;
        if (adsDTO != null && viewGroup != null) {
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.b.q(adsDTO, viewGroup);
                }
            });
            return;
        }
        and andVar = this.a;
        if (andVar != null) {
            andVar.J(adsDTO == null ? TaErrorCode.ERROR_SHOW_ADBEAN_NULL : TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
        }
    }

    public final ujd d() {
        return new f();
    }

    public final void f(View view) {
        try {
            AdsDTO adsDTO = this.b;
            if (adsDTO != null) {
                if (adsDTO.getPslinkInfo() != null) {
                    if (view.getId() == R.id.tvBtn) {
                        this.b.getPslinkInfo().setClickType(2);
                        this.b.setTrackUserClickArea(2);
                        ikd.b().d("BannerGemini", "pslink half setClickType, click_install");
                    } else {
                        this.b.getPslinkInfo().setClickType(1);
                        this.b.setTrackUserClickArea(1);
                        ikd.b().d("BannerGemini", "pslink half setClickType, click_img");
                    }
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.q > 1000) {
                    v(view);
                    this.q = jCurrentTimeMillis;
                }
            }
        } catch (Exception e2) {
            ikd.b().e(Log.getStackTraceString(e2));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:111:0x0308  */
    /* JADX WARN: Code duplicated, block: B:113:0x030c  */
    /* JADX WARN: Code duplicated, block: B:117:0x031a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:125:0x0333 A[Catch: all -> 0x0390, TryCatch #0 {all -> 0x0390, blocks: (B:123:0x032d, B:125:0x0333, B:127:0x0339, B:129:0x033f, B:133:0x034a), top: B:188:0x032d }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0398 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:138:0x039c  */
    /* JADX WARN: Code duplicated, block: B:13:0x0070  */
    /* JADX WARN: Code duplicated, block: B:141:0x03a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:142:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:143:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:146:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:147:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:150:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:151:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:154:0x03da  */
    /* JADX WARN: Code duplicated, block: B:156:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:159:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:164:0x0418  */
    /* JADX WARN: Code duplicated, block: B:167:0x0454 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:168:0x0456  */
    /* JADX WARN: Code duplicated, block: B:169:0x046a  */
    /* JADX WARN: Code duplicated, block: B:170:0x047e  */
    /* JADX WARN: Code duplicated, block: B:173:0x048d  */
    /* JADX WARN: Code duplicated, block: B:174:0x0496  */
    /* JADX WARN: Code duplicated, block: B:43:0x0144  */
    /* JADX WARN: Code duplicated, block: B:45:0x0148  */
    /* JADX WARN: Code duplicated, block: B:47:0x014e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0170  */
    /* JADX WARN: Code duplicated, block: B:50:0x0172  */
    /* JADX WARN: Code duplicated, block: B:53:0x0179  */
    /* JADX WARN: Code duplicated, block: B:54:0x017b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0182  */
    /* JADX WARN: Code duplicated, block: B:58:0x0184  */
    /* JADX WARN: Code duplicated, block: B:61:0x018b  */
    /* JADX WARN: Code duplicated, block: B:63:0x018f A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:64:0x0193 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0195  */
    /* JADX WARN: Code duplicated, block: B:67:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:72:0x0228  */
    /* JADX WARN: Code duplicated, block: B:78:0x0271  */
    /* JADX WARN: Code duplicated, block: B:79:0x0283  */
    /* JADX WARN: Code duplicated, block: B:82:0x028e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0290  */
    /* JADX WARN: Code duplicated, block: B:85:0x0296  */
    /* JADX WARN: Code duplicated, block: B:86:0x029e  */
    /* JADX WARN: Code duplicated, block: B:87:0x02a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:90:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:91:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:95:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:97:0x02d0  */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x01a5, please report this as an issue */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void g(ViewGroup viewGroup) {
        boolean z;
        boolean z2;
        View view;
        TextView textView;
        HSCommonUtils hSCommonUtils;
        String strM;
        String materialStyle;
        int i2;
        int i3;
        String str;
        ImageView imageView;
        TextView textView2;
        boolean z3;
        TextView textView3;
        String str2;
        String str3;
        TextView textView4;
        String descriptionTxt;
        boolean z4;
        String strH;
        String titleTxt;
        boolean z5;
        StoreMarkView storeMarkView;
        TextView textView5;
        ImageView imageView2;
        ViewGroup viewGroup2;
        int i4;
        int i5;
        int i6;
        float f2;
        and andVar;
        AdsDTO adsDTO = this.b;
        if (adsDTO == null || viewGroup == null) {
            and andVar2 = this.a;
            if (andVar2 != null) {
                if (adsDTO == null) {
                    andVar2.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                    return;
                } else {
                    andVar2.J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                    return;
                }
            }
            return;
        }
        viewGroup.removeAllViews();
        ((RelativeLayout) viewGroup).setGravity(17);
        if (this.b.getNativeObject() == null || this.b.getMaterialStyle() == null) {
            ikd.b().d("BannerGemini", "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle");
            and andVar3 = this.a;
            if (andVar3 != null) {
                andVar3.J(TaErrorCode.ERROR_SHOW_NATIVEOBJ_NULL);
                return;
            }
            return;
        }
        ikd.b().d("BannerGemini", "*----> TranBanner --> MaterialStyle =" + this.b.getMaterialStyle());
        com.cloud.hisavana.sdk.c cVar = new com.cloud.hisavana.sdk.c(this.b);
        int iG = cVar.g();
        this.t = true;
        String materialStyle2 = this.b.getMaterialStyle();
        materialStyle2.hashCode();
        a aVar = null;
        switch (materialStyle2) {
            case "B3201":
                this.c = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.banner_style_3201_layout, viewGroup, false);
                z = true;
                z2 = z;
                iG = -1;
                this.b.setBannerStyle(iG);
                com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.b, this.c, this.r);
                AthenaTracker.D(this.b);
                view = this.c;
                if (view == null) {
                    andVar = this.a;
                    if (andVar != null) {
                        andVar.J(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                    }
                    break;
                } else {
                    textView = (TextView) view.findViewById(R.id.tvDescription);
                    hSCommonUtils = HSCommonUtils.a;
                    strM = hSCommonUtils.m(this.b);
                    materialStyle = this.b.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case "B20301":
                        case "B20302":
                            View view2 = this.c;
                            i2 = R.id.tvName;
                            ((TextView) view2.findViewById(i2)).setText(this.b.getNativeObject().getTitleTxt());
                            View view3 = this.c;
                            i3 = R.id.tvBtn;
                            str = "BannerGemini";
                            ((TextView) view3.findViewById(i3)).setText(this.b.getNativeObject().getButtonTxt(this.b.getInstallApk()));
                            if (iG != 1 || iG == 2) {
                                imageView = (ImageView) this.c.findViewById(R.id.score_icon);
                                textView2 = (TextView) this.c.findViewById(R.id.score_text);
                                z3 = z;
                                textView3 = (TextView) this.c.findViewById(R.id.source_size);
                                str2 = "B20301";
                                TextView textView6 = (TextView) this.c.findViewById(R.id.tv_source_separator);
                                str3 = "B20302";
                                textView4 = (TextView) this.c.findViewById(R.id.tv_score_separator);
                                if (imageView != null) {
                                    imageView.setImageDrawable(ContextCompat.getDrawable(ul4.a(), cVar.f(iG)));
                                }
                                try {
                                    if (hSCommonUtils.e(this.b) != 2) {
                                        if (textView != null) {
                                            descriptionTxt = this.b.getNativeObject().getDescriptionTxt();
                                            if (TextUtils.isEmpty(descriptionTxt)) {
                                                textView.setVisibility(4);
                                            } else {
                                                textView.setVisibility(0);
                                                textView.setText(descriptionTxt);
                                            }
                                            z4 = false;
                                        }
                                        if (textView2 != null) {
                                            strH = cVar.h(iG);
                                            if (!TextUtils.isEmpty(strH) || strH.equals("0.0") || strH.equals("0")) {
                                                if (imageView != null) {
                                                    imageView.setVisibility(8);
                                                }
                                                textView2.setVisibility(8);
                                            } else {
                                                textView2.setText(strH);
                                                textView2.setVisibility(0);
                                                if (hSCommonUtils.f(textView3) && textView6 != null) {
                                                    textView6.setVisibility(0);
                                                    textView6.setText(" · ");
                                                }
                                                if (!z4 && textView != null && hSCommonUtils.f(textView) && textView4 != null) {
                                                    textView4.setVisibility(0);
                                                    textView4.setText(" · ");
                                                }
                                            }
                                        }
                                        if (cy9.a(this.b) && z4 && textView2 != null && hSCommonUtils.f(textView2) && textView4 != null) {
                                            textView4.setVisibility(0);
                                            textView4.setText(" · ");
                                        }
                                        if (!hSCommonUtils.f(textView2) && !hSCommonUtils.f(textView) && !hSCommonUtils.f(textView3) && (!cy9.a(this.b) || !z4)) {
                                            ConstraintLayout constraintLayout = (ConstraintLayout) this.c.findViewById(R.id.clRoot);
                                            ConstraintSet constraintSet = new ConstraintSet();
                                            constraintSet.clone(constraintLayout);
                                            constraintSet.clear(i2);
                                            int i7 = R.id.ivIcon;
                                            constraintSet.connect(i2, 3, i7, 3);
                                            constraintSet.connect(i2, 4, i7, 4);
                                            constraintSet.connect(i2, 6, i7, 7);
                                            constraintSet.connect(i2, 7, i3, 6);
                                            constraintSet.constrainedHeight(i2, true);
                                            int dimensionPixelSize = ul4.a().getResources().getDimensionPixelSize(R.dimen.dp_8);
                                            constraintSet.setMargin(i2, 6, dimensionPixelSize);
                                            constraintSet.setMargin(i2, 7, dimensionPixelSize);
                                            constraintSet.constrainHeight(i2, -2);
                                            constraintSet.applyTo(constraintLayout);
                                        }
                                        break;
                                    } else if (textView3 != null) {
                                        if (TextUtils.isEmpty(strM)) {
                                            textView3.setVisibility(4);
                                        } else {
                                            textView3.setVisibility(0);
                                            textView3.setText(strM);
                                        }
                                    }
                                    if (!hSCommonUtils.f(textView2)) {
                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) this.c.findViewById(R.id.clRoot);
                                        ConstraintSet constraintSet2 = new ConstraintSet();
                                        constraintSet2.clone(constraintLayout2);
                                        constraintSet2.clear(i2);
                                        int i8 = R.id.ivIcon;
                                        constraintSet2.connect(i2, 3, i8, 3);
                                        constraintSet2.connect(i2, 4, i8, 4);
                                        constraintSet2.connect(i2, 6, i8, 7);
                                        constraintSet2.connect(i2, 7, i3, 6);
                                        constraintSet2.constrainedHeight(i2, true);
                                        int dimensionPixelSize2 = ul4.a().getResources().getDimensionPixelSize(R.dimen.dp_8);
                                        constraintSet2.setMargin(i2, 6, dimensionPixelSize2);
                                        constraintSet2.setMargin(i2, 7, dimensionPixelSize2);
                                        constraintSet2.constrainHeight(i2, -2);
                                        constraintSet2.applyTo(constraintLayout2);
                                    }
                                } catch (Throwable unused) {
                                }
                                z4 = true;
                                if (textView2 != null) {
                                    strH = cVar.h(iG);
                                    if (TextUtils.isEmpty(strH)) {
                                        if (imageView != null) {
                                            imageView.setVisibility(8);
                                        }
                                        textView2.setVisibility(8);
                                    } else {
                                        if (imageView != null) {
                                            imageView.setVisibility(8);
                                        }
                                        textView2.setVisibility(8);
                                    }
                                }
                                if (cy9.a(this.b)) {
                                    textView4.setVisibility(0);
                                    textView4.setText(" · ");
                                }
                                break;
                            } else {
                                z3 = z;
                                str3 = "B20302";
                                str2 = "B20301";
                                z2 = z2;
                                z4 = true;
                                break;
                            }
                            break;
                        case "B20303":
                            if (textView != null) {
                                titleTxt = this.b.getNativeObject().getTitleTxt();
                                if (!TextUtils.isEmpty(strM)) {
                                    titleTxt = strM + " · " + titleTxt;
                                }
                                textView.setText(titleTxt);
                            }
                            ((TextView) this.c.findViewById(R.id.tvName)).setText(this.b.getNativeObject().getDescriptionTxt());
                            ((TextView) this.c.findViewById(R.id.tvBtn)).setText(this.b.getNativeObject().getButtonTxt(this.b.getInstallApk()));
                        default:
                            str = "BannerGemini";
                            z3 = z;
                            str3 = "B20302";
                            str2 = "B20301";
                            z2 = z2;
                            z4 = true;
                            break;
                    }
                    if (cy9.a(this.b) || !z4) {
                        z5 = false;
                    } else {
                        z5 = true;
                    }
                    storeMarkView = (StoreMarkView) this.c.findViewById(R.id.ps_mark_view);
                    if (storeMarkView != null) {
                        if (z5) {
                            i5 = 0;
                        } else {
                            i5 = 8;
                        }
                        storeMarkView.setVisibility(i5);
                        if (z2) {
                            i6 = -1;
                        } else {
                            i6 = -8882056;
                        }
                        storeMarkView.setTextColor(i6);
                        if (z2) {
                            f2 = 8.0f;
                        } else {
                            f2 = 6.0f;
                        }
                        storeMarkView.setTextSize(f2);
                        storeMarkView.attachInfo(this.b);
                        if (str3.equals(this.b.getMaterialStyle())) {
                            storeMarkView.setLogoSize(8);
                            storeMarkView.setTextSize(6.0f);
                        } else {
                            if (str2.equals(this.b.getMaterialStyle())) {
                                storeMarkView.setLogoSize(8);
                                storeMarkView.setTextSize(6.0f);
                            }
                        }
                    }
                    textView5 = (TextView) this.c.findViewById(R.id.tvName);
                    if (textView5 != null && textView5.getPaint() != null) {
                        textView5.getPaint().setFakeBoldText(true);
                    }
                    imageView2 = (ImageView) this.c.findViewById(R.id.iv_main_image);
                    this.d = imageView2;
                    if (imageView2 != null) {
                        a aVar2 = null;
                        imageView2.setOnTouchListener(new j(this, aVar2));
                        this.d.setOnClickListener(new i(this, aVar2));
                    }
                    this.e = (ImageView) this.c.findViewById(R.id.ivIcon);
                    B(this.b, this.c);
                    o(this.b, this.c);
                    p(this.b, this.c, true);
                    if (hm4.f() != 2) {
                        viewGroup2 = viewGroup;
                        viewGroup2.addView(this.c, -1, -2);
                    } else if (z3) {
                        viewGroup2 = viewGroup;
                        viewGroup2.addView(this.c, hm4.a(300.0f), hm4.a(200.0f));
                    } else {
                        viewGroup2 = viewGroup;
                        viewGroup2.addView(this.c, hm4.a(360.0f), hm4.a(54.0f));
                    }
                    if (viewGroup.getBackground() != null) {
                        i4 = 0;
                        viewGroup.getBackground().setAlpha(0);
                    } else {
                        i4 = 0;
                    }
                    viewGroup2.setVisibility(i4);
                    ikd.b().d(str, "ad banner show...");
                    h(viewGroup2, storeMarkView);
                    break;
                }
                break;
            case "B20301":
            case "B20302":
            case "B20303":
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.banner_style_203_newstyle_layout, viewGroup, false);
                this.c = viewInflate;
                int i9 = R.id.clRoot;
                viewInflate.findViewById(i9).setOnTouchListener(new j(this, aVar));
                this.c.findViewById(i9).setOnClickListener(new i(this, aVar));
                this.c.findViewById(R.id.tvBtn).setOnClickListener(new i(this, aVar));
                z = false;
                z2 = false;
                this.b.setBannerStyle(iG);
                com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.b, this.c, this.r);
                AthenaTracker.D(this.b);
                view = this.c;
                if (view == null) {
                    andVar = this.a;
                    if (andVar != null) {
                        andVar.J(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                    }
                    break;
                } else {
                    textView = (TextView) view.findViewById(R.id.tvDescription);
                    hSCommonUtils = HSCommonUtils.a;
                    strM = hSCommonUtils.m(this.b);
                    materialStyle = this.b.getMaterialStyle();
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
                        Method dump skipped, instruction units count: 1286
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.cloud.hisavana.sdk.b.g(android.view.ViewGroup):void");
                }

                public final void h(ViewGroup viewGroup, StoreMarkView storeMarkView) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(storeMarkView);
                    arrayList.add(this.c.findViewById(R.id.ad_flag));
                    arrayList.add(this.c.findViewById(R.id.ad_close_view));
                    arrayList.add(this.c.findViewById(R.id.ps_mark_view));
                    and andVar = this.a;
                    if (andVar != null) {
                        m.a(andVar.v(), this.b, viewGroup, arrayList);
                    }
                }

                public final void i(ViewGroup viewGroup, TemplateAdWebView templateAdWebView, AdsDTO adsDTO) {
                    viewGroup.removeAllViews();
                    if (hm4.f() != 2) {
                        Pair pairP = HSCommonUtils.a.p(adsDTO.getScale(), 20.0f, 3.0f);
                        viewGroup.addView(templateAdWebView, hm4.h(), (int) ((hm4.h() * ((Float) pairP.getSecond()).floatValue()) / ((Float) pairP.getFirst()).floatValue()));
                    } else if (TextUtils.equals("3:2", adsDTO.getScale())) {
                        viewGroup.addView(templateAdWebView, hm4.a(300.0f), hm4.a(200.0f));
                    } else {
                        viewGroup.addView(templateAdWebView, hm4.a(360.0f), hm4.a(54.0f));
                    }
                    viewGroup.setVisibility(0);
                }

                public void j(ViewGroup viewGroup, boolean z, boolean z2, AdsDTO adsDTO) {
                    this.j = z;
                    this.k = z2;
                    if (adsDTO != null) {
                        this.b = adsDTO;
                        ConfigCodeSeatDTO configCodeSeatDTOG = this.a.p() != null ? this.a.p().g() : null;
                        if (NetStateManager.checkNetworkState(false) && configCodeSeatDTOG != null && configCodeSeatDTOG.isPriorityH5Ad().booleanValue() && cjb.f(configCodeSeatDTOG.getH5AdUrl())) {
                            E(viewGroup);
                            return;
                        }
                        if (!TextUtils.isEmpty(adsDTO.getAdm())) {
                            z(viewGroup);
                            return;
                        }
                        if (adsDTO.isInteractiveAd()) {
                            G(viewGroup);
                        } else if (TextUtils.isEmpty(adsDTO.getTemplateHtmlFilePath())) {
                            J(viewGroup);
                        } else {
                            K(viewGroup);
                        }
                    }
                }

                public void l(InteractiveWebView interactiveWebView, ViewGroup viewGroup) {
                    boolean z = true;
                    AdsDTO adsDTO = this.b;
                    if (adsDTO == null || viewGroup == null || interactiveWebView == null) {
                        TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR;
                        if (adsDTO == null) {
                            taErrorCode = TaErrorCode.ERROR_SHOW_ADBEAN_NULL;
                        } else if (viewGroup == null) {
                            taErrorCode = TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL;
                        }
                        and andVar = this.a;
                        if (andVar != null) {
                            andVar.J(taErrorCode);
                            return;
                        }
                        return;
                    }
                    viewGroup.removeAllViews();
                    ((RelativeLayout) viewGroup).setGravity(17);
                    if (adsDTO.getNativeObject() == null || adsDTO.getMaterialStyle() == null) {
                        ikd.b().d("BannerGemini", "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle");
                        and andVar2 = this.a;
                        if (andVar2 != null) {
                            andVar2.J(TaErrorCode.ERROR_SHOW_NATIVEOBJ_NULL);
                            return;
                        }
                        return;
                    }
                    ikd.b().d("BannerGemini", "*----> TranBanner --> MaterialStyle =" + adsDTO.getMaterialStyle());
                    String materialStyle = adsDTO.getMaterialStyle();
                    materialStyle.hashCode();
                    switch (materialStyle) {
                        case "B3201":
                            this.c = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.banner_style_3201_layout, viewGroup, false);
                            break;
                        case "B20301":
                        case "B20302":
                        case "B20303":
                        case "B20304":
                            this.c = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.banner_style_20304_layout, viewGroup, false);
                            z = false;
                            break;
                        default:
                            ikd.b().d("BannerGemini", "TranBanner --> 没有匹配到 materialStyle --> 配置错误 materialStyle=" + adsDTO.getMaterialStyle());
                            and andVar3 = this.a;
                            if (andVar3 != null) {
                                andVar3.J(TaErrorCode.ERROR_SHOW_MATERIAL_STYLE_NULL);
                                return;
                            }
                            return;
                    }
                    boolean z2 = z;
                    com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(adsDTO, this.c, this.r);
                    AthenaTracker.D(this.b);
                    View view = this.c;
                    if (view == null) {
                        and andVar4 = this.a;
                        if (andVar4 != null) {
                            andVar4.J(TaErrorCode.ERROR_SHOW_RENDERVIEW_NULL);
                            return;
                        }
                        return;
                    }
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.ivBanner);
                    if (frameLayout != null) {
                        frameLayout.removeAllViews();
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        interactiveWebView.setLayoutParams(layoutParams);
                        List<String> scales = adsDTO.getScales();
                        if (scales != null && !scales.isEmpty()) {
                            String str = scales.get(0);
                            str.hashCode();
                            if (str.equals("3:2")) {
                                layoutParams.height = (md8.k() * 2) / 3;
                                layoutParams.width = md8.k();
                            } else if (str.equals("20:3")) {
                                layoutParams.height = (md8.k() * 3) / 20;
                                layoutParams.width = md8.k();
                            }
                        }
                        frameLayout.addView(interactiveWebView, layoutParams);
                        frameLayout.setOnTouchListener(new j(this, null));
                        interactiveWebView.setWebClientCallback(adsDTO);
                        interactiveWebView.setInteractiveListener(new a(adsDTO, interactiveWebView));
                        r(adsDTO, interactiveWebView);
                    }
                    s(adsDTO, z, this.c);
                    ImageView imageView = (ImageView) this.c.findViewById(R.id.ivIcon);
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                    B(adsDTO, this.c);
                    o(adsDTO, this.c);
                    p(adsDTO, this.c, false);
                    interactiveWebView.setVisibility(0);
                    if (hm4.f() != 2) {
                        viewGroup.addView(this.c, -1, -2);
                    } else if (z2) {
                        viewGroup.addView(this.c, hm4.a(300.0f), hm4.a(200.0f));
                    } else {
                        viewGroup.addView(this.c, hm4.a(360.0f), hm4.a(54.0f));
                    }
                    if (viewGroup.getBackground() != null) {
                        viewGroup.getBackground().setAlpha(0);
                    }
                    viewGroup.setVisibility(0);
                    ikd.b().d("BannerGemini", "ad banner attachInteractiveAd show...");
                }

                public void m(TadmWebView tadmWebView, ViewGroup viewGroup) {
                    AdsDTO adsDTO;
                    if (viewGroup == null || tadmWebView == null || (adsDTO = this.b) == null || TextUtils.isEmpty(adsDTO.getAdm())) {
                        return;
                    }
                    AthenaTracker.D(this.b);
                    if (this.s == null) {
                        this.s = new C0521r();
                    }
                    this.s.d(tadmWebView, this.b, new C0041b(tadmWebView));
                    n(tadmWebView, viewGroup, false, false, false);
                    tadmWebView.loadDataWithBaseURL(null, this.b.getAdm() + TadmWebView.JS_TEXT, "text/html", "utf-8", null);
                }

                public final void n(TadmWebView tadmWebView, ViewGroup viewGroup, boolean z, boolean z2, boolean z3) {
                    View viewFindViewById;
                    viewGroup.removeAllViews();
                    ((RelativeLayout) viewGroup).setGravity(17);
                    this.c = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.banner_style_3201_layout, viewGroup, false);
                    if (!z3) {
                        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.b, viewGroup, this.r);
                    }
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams.gravity = 49;
                    View viewFindViewById2 = this.c.findViewById(R.id.ivBanner);
                    if (viewFindViewById2 instanceof FrameLayout) {
                        ((FrameLayout) viewFindViewById2).addView(tadmWebView, layoutParams);
                    }
                    if (z2 && (viewFindViewById = this.c.findViewById(R.id.ad_flag)) != null) {
                        viewFindViewById.setVisibility(8);
                    }
                    B(this.b, this.c);
                    o(this.b, this.c);
                    p(this.b, this.c, z);
                    ImageView imageView = (ImageView) this.c.findViewById(R.id.ivIcon);
                    boolean z4 = true;
                    if (imageView != null && this.b.getNativeObject() != null && this.b.getNativeObject().getLogoUrl() != null) {
                        DownLoadRequest.o(this.b.getNativeObject().getLogoUrl(), this.b, 1, null, imageView);
                    }
                    if (tadmWebView.getLayoutParams() == null) {
                        z4 = false;
                    } else {
                        List<String> scales = this.b.getScales();
                        if (scales == null || scales.isEmpty()) {
                            if (hm4.f() != 1) {
                                tadmWebView.getLayoutParams().height = -1;
                                tadmWebView.getLayoutParams().width = -1;
                            } else if (TextUtils.equals(this.b.getMaterialStyle(), "B3201")) {
                                tadmWebView.getLayoutParams().height = (md8.k() * 2) / 3;
                                tadmWebView.getLayoutParams().width = md8.k();
                            } else {
                                tadmWebView.getLayoutParams().height = (md8.k() * 3) / 20;
                                tadmWebView.getLayoutParams().width = md8.k();
                            }
                            z4 = false;
                        } else {
                            if (hm4.f() == 1) {
                                String str = scales.get(0);
                                str.hashCode();
                                if (str.equals("3:2")) {
                                    tadmWebView.getLayoutParams().height = (md8.k() * 2) / 3;
                                    tadmWebView.getLayoutParams().width = md8.k();
                                } else if (str.equals("20:3")) {
                                    tadmWebView.getLayoutParams().height = (md8.k() * 3) / 20;
                                    tadmWebView.getLayoutParams().width = md8.k();
                                }
                            } else {
                                tadmWebView.getLayoutParams().height = -1;
                                tadmWebView.getLayoutParams().width = -1;
                            }
                            z4 = false;
                        }
                    }
                    tadmWebView.setVisibility(0);
                    ikd.b().d("BannerGemini", "banner attachBannerToViewTree");
                    if (viewGroup.getBackground() != null) {
                        viewGroup.getBackground().setAlpha(0);
                    }
                    viewGroup.setVisibility(0);
                    if (hm4.f() != 2) {
                        viewGroup.addView(this.c, -1, -2);
                        return;
                    }
                    if (z4) {
                        viewGroup.addView(this.c, hm4.a(300.0f), hm4.a(200.0f));
                    } else {
                        viewGroup.addView(this.c, hm4.a(360.0f), hm4.a(54.0f));
                    }
                    viewFindViewById2.getLayoutParams().height = -1;
                }

                public final void o(AdsDTO adsDTO, View view) {
                    AdBadgeView adBadgeView;
                    if (adsDTO == null || view == null || (adBadgeView = (AdBadgeView) view.findViewById(R.id.ad_badge_view)) == null) {
                        return;
                    }
                    adBadgeView.setDisplayStyle(adsDTO.getDisplayRule(), kn8.c(adsDTO));
                }

                public final void p(AdsDTO adsDTO, View view, boolean z) {
                    AdCloseView adCloseView;
                    if (adsDTO == null || view == null || (adCloseView = (AdCloseView) view.findViewById(R.id.ad_close_view)) == null) {
                        return;
                    }
                    if (z && this.j) {
                        adCloseView.setVisibility(8);
                        return;
                    }
                    adCloseView.setVisibility(0);
                    u.n().e(ul4.a(), adCloseView, this.a, adsDTO, this.k);
                    adCloseView.setDisplayStyle(adsDTO.getDisplayRule(), AdCloseView.CloseImageType.CLOSE);
                    try {
                        String materialStyle = this.b.getMaterialStyle();
                        if (this.t && ("B20301".equals(materialStyle) || "B20302".equals(materialStyle) || "B20303".equals(materialStyle))) {
                            adCloseView.setCloseStyle(ContextCompat.getDrawable(ul4.a(), R.drawable.hs_ad_banner_close), ContextCompat.getColor(ul4.a(), R.color.ad_banner_close_bg));
                        } else {
                            if (this.u || this.v || !"B20304".equals(materialStyle)) {
                                return;
                            }
                            adCloseView.setCloseStyle(ContextCompat.getDrawable(ul4.a(), R.drawable.hs_ad_banner_20304_close), 0);
                            adCloseView.setViewSize(24, 24);
                        }
                    } catch (Throwable unused) {
                    }
                }

                public final void q(final AdsDTO adsDTO, final ViewGroup viewGroup) throws Throwable {
                    final String strD = yu3.d(adsDTO.getTemplateHtmlFilePath());
                    HSScopeHelper.a.p(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.t(strD, adsDTO, viewGroup);
                        }
                    });
                }

                public final void r(AdsDTO adsDTO, InteractiveWebView interactiveWebView) {
                    if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation())) {
                        return;
                    }
                    if (!new File(adsDTO.getIndexLocation()).exists() || interactiveWebView == null) {
                        and andVar = this.a;
                        if (andVar != null) {
                            andVar.P();
                        }
                        AthenaTracker.X(this.b, 3);
                        return;
                    }
                    interactiveWebView.loadUrl("file://" + adsDTO.getIndexLocation());
                }

                public final void s(AdsDTO adsDTO, boolean z, View view) {
                    if (adsDTO == null || view == null) {
                        return;
                    }
                    boolean zA = cy9.a(adsDTO);
                    StoreMarkView storeMarkView = (StoreMarkView) view.findViewById(R.id.ps_mark_view);
                    if (storeMarkView != null) {
                        storeMarkView.setVisibility(zA ? 0 : 8);
                        storeMarkView.setTextColor(z ? -1 : -8882056);
                        storeMarkView.setTextSize(z ? 8.0f : 6.0f);
                        storeMarkView.attachInfo(adsDTO);
                    }
                }

                public final void t(String str, AdsDTO adsDTO, ViewGroup viewGroup) {
                    if (TextUtils.isEmpty(str)) {
                        adsDTO.setTemplateHtmlFilePath(null);
                        J(viewGroup);
                        return;
                    }
                    try {
                        adsDTO.setHideCloseView(this.j);
                        int i2 = 1;
                        if (hm4.e() != 1) {
                            i2 = 0;
                        }
                        adsDTO.setLayoutDirection(i2);
                        TemplateAdWebView templateAdWebView = this.i;
                        if (templateAdWebView != null) {
                            templateAdWebView.destroyWebView();
                        }
                        TemplateAdWebView templateAdWebView2 = new TemplateAdWebView(ul4.a());
                        this.i = templateAdWebView2;
                        templateAdWebView2.setup(adsDTO, d());
                        i(viewGroup, this.i, adsDTO);
                        this.i.loadTemplate(str);
                        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(adsDTO, this.i, this.r);
                        AthenaTracker.D(adsDTO);
                        ikd.b().d("BannerGemini", "showTemplateAd: template banner displayed");
                    } catch (Throwable th) {
                        ikd.b().e("BannerGemini", "showTemplateAd create webview error: " + th.getMessage());
                        adsDTO.setTemplateHtmlFilePath(null);
                        J(viewGroup);
                    }
                }

                public final int v(View view) {
                    Context context = view.getContext();
                    AdsDTO adsDTO = this.b;
                    DownUpPointBean downUpPointBean = new DownUpPointBean(this.m, this.n, this.o, this.p, view.getMeasuredHeight(), view.getMeasuredWidth());
                    and andVar = this.a;
                    int iB = U0.b(context, adsDTO, downUpPointBean, andVar == null ? false : andVar.p().x());
                    AthenaTracker.b0(this.b);
                    and andVar2 = this.a;
                    if (andVar2 != null) {
                        andVar2.U();
                    }
                    return iB;
                }

                public void y() {
                    pp4.a(this.d);
                    pp4.a(this.e);
                    pp4.a(this.f);
                    TadmWebView tadmWebView = this.g;
                    if (tadmWebView != null) {
                        tadmWebView.destroy();
                        this.g = null;
                    }
                    InteractiveWebView interactiveWebView = this.h;
                    if (interactiveWebView != null) {
                        interactiveWebView.destroy();
                        this.h = null;
                    }
                    TemplateAdWebView templateAdWebView = this.i;
                    if (templateAdWebView != null) {
                        templateAdWebView.destroyWebView();
                        this.i = null;
                    }
                    C0521r c0521r = this.s;
                    if (c0521r != null) {
                        c0521r.c();
                    }
                }

                public final void z(ViewGroup viewGroup) {
                    AdsDTO adsDTO = this.b;
                    if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdm()) || viewGroup == null) {
                        and andVar = this.a;
                        if (andVar != null) {
                            AdsDTO adsDTO2 = this.b;
                            if (adsDTO2 == null) {
                                andVar.J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
                                return;
                            } else if (TextUtils.isEmpty(adsDTO2.getAdm())) {
                                this.a.J(TaErrorCode.ERROR_SHOW_ADM_NULL);
                                return;
                            } else {
                                this.a.J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
                                return;
                            }
                        }
                        return;
                    }
                    TadmWebView tadmWebView = this.g;
                    if (tadmWebView != null) {
                        tadmWebView.destroy();
                    }
                    try {
                        this.u = true;
                        TadmWebView tadmWebView2 = new TadmWebView(ul4.a());
                        this.g = tadmWebView2;
                        m(tadmWebView2, viewGroup);
                    } catch (Throwable th) {
                        ikd.b().e("BannerGemini", "create webview error: " + Log.getStackTraceString(th));
                        this.g = null;
                        and andVar2 = this.a;
                        if (andVar2 != null) {
                            andVar2.J(TaErrorCode.ERROR_SHOW_ADM_WEBVIEW_ERROR);
                        }
                    }
                }

                public class c implements AgentPageJsBridge.a {
                    public final ViewGroup a;

                    public c(ViewGroup viewGroup) {
                        this.a = viewGroup;
                    }

                    @Override
                    public void a(int i) {
                        if (b.this.a != null) {
                            b.this.a.H(i);
                        }
                    }

                    @Override
                    public void onClick() {
                        if (b.this.a != null) {
                            b.this.a.U();
                        }
                    }

                    @Override
                    public void a() {
                        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(b.this.b, this.a, b.this.r);
                    }
                }

                public class d implements AgentPageWebViewClient.OverrideListener {
                    public boolean a = false;

                    public d() {
                    }

                    @Override
                    public boolean OnOverrideUrlLoading(WebView webView, String str) {
                        AdsDTO adsDTOM70clone = b.this.b.m70clone();
                        adsDTOM70clone.setAdChoiceClickUrl(str);
                        U0.m(webView.getContext(), adsDTOM70clone, true, false, null);
                        return true;
                    }

                    @Override
                    public void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                        if (webResourceRequest == null || !webResourceRequest.isForMainFrame() || this.a || b.this.a == null) {
                            return;
                        }
                        b.this.a.P();
                        Bundle bundle = new Bundle();
                        try {
                            bundle.putString("s_err_code", webResourceError.getErrorCode() + "");
                            b.this.a.K(TaErrorCode.ERROR_SHOW_ADM_LOAD_WEB_ERROR, bundle);
                        } catch (Throwable unused) {
                        }
                    }

                    @Override
                    public void onPageFinished(WebView webView, String str) {
                        if (webView == null || webView.getProgress() != 100) {
                            return;
                        }
                        this.a = true;
                    }

                    @Override
                    public boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                        if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                            return false;
                        }
                        AdsDTO adsDTOM70clone = b.this.b.m70clone();
                        adsDTOM70clone.setAdChoiceClickUrl(webResourceRequest.getUrl().toString());
                        U0.m(webView.getContext(), adsDTOM70clone, true, false, null);
                        return true;
                    }
                }
            }
