package com.mbridge.msdk.video.bt.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.aliyun.player.BuildConfig;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.Position;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.bt.module.orglistener.h;
import com.mbridge.msdk.video.signal.container.AbstractJSContainer;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MBridgeBTContainer extends AbstractJSContainer implements com.mbridge.msdk.video.signal.c {
    private static final String V = "MBridgeBTContainer";
    private boolean A;
    private boolean B;
    private String C;
    private boolean D;
    private List<CampaignEx> E;
    private List<com.mbridge.msdk.videocommon.download.a> F;
    private com.mbridge.msdk.video.bt.module.listener.a G;
    private h H;
    private h I;
    private com.mbridge.msdk.video.bt.module.listener.b J;
    private String K;
    private String L;
    private String M;
    private boolean N;
    private int O;
    private String P;
    private com.mbridge.msdk.video.dynview.listener.d Q;
    private com.mbridge.msdk.foundation.same.report.metrics.c R;
    private com.iab.omid.library.mmadbridge.adsession.b S;
    private com.iab.omid.library.mmadbridge.adsession.media.a T;
    private com.iab.omid.library.mmadbridge.adsession.a U;

    private int f38036r;

    private int f38037s;

    private FrameLayout f38038t;

    private MBridgeBTLayout f38039u;

    private WindVaneWebView f38040v;

    private LayoutInflater f38041w;

    private Context f38042x;

    private TextView f38043y;

    private ImageView f38044z;

    class d implements View.OnClickListener {
        d() {
        }

        @Override
        public void onClick(View view) {
            MBridgeBTContainer.this.onAdClose();
        }
    }

    private static final class e implements Runnable {

        private List<CampaignEx> f38049a;

        private Context f38050b;

        private String f38051c;

        private String f38052d;

        public e(List<CampaignEx> list, Context context, String str, String str2) {
            this.f38049a = list;
            this.f38050b = context;
            this.f38051c = str;
            this.f38052d = str2;
        }

        @Override
        public void run() {
            List<CampaignEx> list = this.f38049a;
            if (list == null || list.size() <= 0) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.db.e.a(g.a(this.f38050b)).a(this.f38051c, this.f38049a);
                com.mbridge.msdk.videocommon.cache.a.a().b(this.f38052d, this.f38049a.get(0).getAdType());
            } catch (Exception unused) {
                o0.a(MBridgeBTContainer.V, "remove campaign failed");
            }
        }
    }

    private class f extends com.mbridge.msdk.video.signal.impl.a.C0546a {
        private f() {
        }

        @Override
        public void a(boolean z10) {
            super.a(z10);
            if (MBridgeBTContainer.this.T != null) {
                try {
                    MBridgeBTContainer.this.T.a(InteractionType.CLICK);
                    o0.a("omsdk", "btc adUserInteraction click");
                } catch (Exception e10) {
                    o0.a("omsdk", e10.getMessage());
                }
            }
            MBridgeBTContainer.this.I.a(z10, ((AbstractJSContainer) MBridgeBTContainer.this).f38951e, ((AbstractJSContainer) MBridgeBTContainer.this).f38950d);
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            super.onFinishRedirection(campaign, str);
            s0.a(campaign, MBridgeBTContainer.this.f38038t);
            if (campaign == null || !(campaign instanceof CampaignEx)) {
                return;
            }
            try {
                CampaignEx campaignEx = (CampaignEx) campaign;
                String strOptString = new JSONObject(MBridgeBTContainer.this.getJSVideoModule().getCurrentProgress()).optString(NotificationCompat.CATEGORY_PROGRESS, "");
                if (campaignEx.getLinkType() == 3 && campaignEx.getEndcard_click_result() == 2 && strOptString.equals(BuildConfig.VERSION_NAME) && ((AbstractJSContainer) MBridgeBTContainer.this).f38949c != null) {
                    if (MBridgeBTContainer.this.B) {
                        MBridgeBTContainer.this.onAdClose();
                    } else {
                        ((AbstractJSContainer) MBridgeBTContainer.this).f38949c.finish();
                    }
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onInitSuccess() {
            super.onInitSuccess();
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            super.onRedirectionFailed(campaign, str);
            s0.a(campaign, MBridgeBTContainer.this.f38038t);
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            super.onStartRedirection(campaign, str);
            s0.b(campaign, MBridgeBTContainer.this.f38038t);
        }

        f(MBridgeBTContainer mBridgeBTContainer, a aVar) {
            this();
        }

        @Override
        public void a(int i10, String str) {
            super.a(i10, str);
        }

        @Override
        public void a() {
            super.a();
        }
    }

    public MBridgeBTContainer(Context context) {
        super(context);
        this.f38036r = 0;
        this.f38037s = 1;
        this.A = false;
        this.B = true;
        this.D = false;
        this.S = null;
        this.T = null;
        this.U = null;
        init(context);
    }

    public void addNativeCloseButtonWhenWebViewCrash() {
        try {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 48.0f);
            int iA2 = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 20.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
            layoutParams.setMargins(iA2, iA2, iA2, iA2);
            layoutParams.gravity = 5;
            imageView.setLayoutParams(layoutParams);
            imageView.setImageResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_close", "drawable"));
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setOnClickListener(new d());
            addView(imageView);
        } catch (Throwable th2) {
            o0.b(V, th2.getMessage());
        }
    }

    public void appendSubView(MBridgeBTContainer mBridgeBTContainer, MBTempContainer mBTempContainer, JSONObject jSONObject) {
        try {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (jSONObject != null) {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                int iOptInt = jSONObject.optInt(TtmlNode.LEFT, -999);
                int iOptInt2 = jSONObject.optInt(IntegrationConstants.TAB_BAR_POSITION_TOP, -999);
                int iOptInt3 = jSONObject.optInt(TtmlNode.RIGHT, -999);
                int iOptInt4 = jSONObject.optInt(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, -999);
                if (iOptInt != -999 && contextD != null) {
                    layoutParams.leftMargin = t0.a(contextD, iOptInt);
                }
                if (iOptInt2 != -999 && contextD != null) {
                    layoutParams.topMargin = t0.a(contextD, iOptInt2);
                }
                if (iOptInt3 != -999 && contextD != null) {
                    layoutParams.rightMargin = t0.a(contextD, iOptInt3);
                }
                if (iOptInt4 != -999 && contextD != null) {
                    layoutParams.bottomMargin = t0.a(contextD, iOptInt4);
                }
                int iOptInt5 = jSONObject.optInt("width");
                int iOptInt6 = jSONObject.optInt("height");
                if (iOptInt5 > 0) {
                    layoutParams.width = iOptInt5;
                }
                if (iOptInt6 > 0) {
                    layoutParams.height = iOptInt6;
                }
            }
            mBridgeBTContainer.addView(mBTempContainer, layoutParams);
            mBTempContainer.setActivity(this.f38949c);
            mBTempContainer.setMute(this.f38956j);
            mBTempContainer.setBidCampaign(this.A);
            mBTempContainer.setIV(this.f38957k);
            mBTempContainer.setBigOffer(this.B);
            mBTempContainer.setIVRewardEnable(this.f38959m, this.f38960n, this.f38961o);
            mBTempContainer.setShowRewardListener(this.I);
            mBTempContainer.setCampaignDownLoadTask(c(mBTempContainer.getCampaign()));
            mBTempContainer.setMBridgeTempCallback(k());
            mBTempContainer.setWebViewFront(getJSCommon().b());
            mBTempContainer.init(this.f38042x);
            mBTempContainer.onCreate();
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.f38040v != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", this.f38036r);
                jSONObject2.put("id", this.C);
                jSONObject2.put(EventConstants.KEY_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f38040v, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.component.d.c().a((WebView) this.f38040v, "broadcast", this.C);
            }
        }
    }

    @Override
    public void click(int i10, String str) {
    }

    public int findID(String str) {
        return g0.a(getContext(), str, "id");
    }

    public int findLayout(String str) {
        return g0.a(getContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public com.iab.omid.library.mmadbridge.adsession.a getAdEvents() {
        return this.U;
    }

    public com.iab.omid.library.mmadbridge.adsession.b getAdSession() {
        return this.S;
    }

    public List<CampaignEx> getCampaigns() {
        return this.E;
    }

    public com.iab.omid.library.mmadbridge.adsession.media.a getVideoEvents() {
        return this.T;
    }

    @Override
    public void handlerH5Exception(int i10, String str) {
    }

    public void init(Context context) {
        this.f38042x = context;
        this.f38041w = LayoutInflater.from(context);
    }

    public void onAdClose() {
        Activity activity = this.f38949c;
        if (activity != null) {
            activity.finish();
        }
    }

    public void onBackPressed() {
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBTempContainer) {
                    ((MBTempContainer) view).onBackPressed();
                } else if (view instanceof MBridgeBTWebView) {
                    ((MBridgeBTWebView) view).onBackPressed();
                } else if (view instanceof MBridgeBTLayout) {
                    ((MBridgeBTLayout) view).onBackPressed();
                }
            }
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBTempContainer) {
                    ((MBTempContainer) view).onConfigurationChanged(configuration);
                } else if (view instanceof MBridgeBTWebView) {
                    ((MBridgeBTWebView) view).onConfigurationChanged(configuration);
                } else if (view instanceof MBridgeBTLayout) {
                    ((MBridgeBTLayout) view).onConfigurationChanged(configuration);
                }
            }
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    public void onCreate(boolean z10) {
        String cMPTEntryUrl;
        CampaignEx campaignEx;
        try {
            int iFindLayout = findLayout("mbridge_bt_container");
            if (!g0.a(iFindLayout)) {
                b("mbridge_bt_container layout null");
                return;
            }
            FrameLayout frameLayout = (FrameLayout) this.f38041w.inflate(iFindLayout, this);
            this.f38038t = frameLayout;
            if (frameLayout == null) {
                b("ViewIds null");
                return;
            }
            this.L = "";
            List<CampaignEx> list = this.E;
            if (list == null || list.size() <= 0) {
                cMPTEntryUrl = "";
            } else {
                CampaignEx campaignEx2 = this.E.get(0);
                cMPTEntryUrl = campaignEx2.getCMPTEntryUrl();
                this.L = campaignEx2.getRequestId();
                this.M = campaignEx2.getCurrentLocalRid();
            }
            this.f38040v = c(this.f38950d + "_" + this.L + "_" + cMPTEntryUrl);
            com.mbridge.msdk.videocommon.a.e(this.f38950d + "_" + this.L + "_" + cMPTEntryUrl);
            l();
            WindVaneWebView windVaneWebView = this.f38040v;
            if (windVaneWebView == null) {
                List<CampaignEx> list2 = this.E;
                if (list2 == null || list2.size() <= 0 || (campaignEx = this.E.get(0)) == null || !(z10 || campaignEx.isDynamicView())) {
                    b("big template webview is null");
                    return;
                } else {
                    a(this.f38042x);
                    return;
                }
            }
            com.mbridge.msdk.video.signal.factory.b bVar = new com.mbridge.msdk.video.signal.factory.b(this.f38949c, this, windVaneWebView);
            registerJsFactory(bVar);
            this.f38040v.setApiManagerJSFactory(bVar);
            if (this.f38040v.getParent() != null) {
                b("preload template webview is null or load error");
                return;
            }
            RelativeLayout.LayoutParams layoutParams = null;
            if (this.f38040v.getObject() instanceof k) {
                bVar.a((k) this.f38040v.getObject());
                if (this.f38040v != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f34508l, t0.d(getContext()));
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("name", this.f38954h.c());
                        jSONObject2.put(RewardPlus.AMOUNT, this.f38954h.a());
                        jSONObject2.put("id", this.f38955i);
                        jSONObject.put("userId", this.f38953g);
                        jSONObject.put("reward", jSONObject2);
                        jSONObject.put("playVideoMute", this.f38956j);
                        jSONObject.put("extra", this.P);
                    } catch (JSONException e10) {
                        o0.a(V, e10.getMessage());
                    } catch (Exception e11) {
                        o0.a(V, e11.getMessage());
                    }
                    this.I = new com.mbridge.msdk.video.bt.module.orglistener.c(k(), "");
                    String string = jSONObject.toString();
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000133", this.E, eVar);
                    } catch (Exception unused) {
                    }
                    getJSNotifyProxy().a(string);
                    getJSCommon().b(true);
                    getJSCommon().a(new f(this, null == true ? 1 : 0));
                }
                ((com.mbridge.msdk.video.signal.impl.d) getJSCommon()).f38992m.onInitSuccess();
            }
            this.f38040v.setBackgroundColor(0);
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L);
            if (linkedHashMapB == null || !linkedHashMapB.containsKey(this.C)) {
                b("big template webviewLayout is null");
                return;
            }
            View view = linkedHashMapB.get(this.C);
            if (view instanceof MBridgeBTLayout) {
                MBridgeBTLayout mBridgeBTLayout = (MBridgeBTLayout) view;
                this.f38039u = mBridgeBTLayout;
                try {
                    WindVaneWebView windVaneWebView2 = (WindVaneWebView) mBridgeBTLayout.getBtWebView();
                    k kVar = (k) windVaneWebView2.getObject();
                    kVar.setAdEvents(this.U);
                    kVar.setVideoEvents(this.T);
                    kVar.setAdSession(this.S);
                    windVaneWebView2.setObject(kVar);
                } catch (Exception e12) {
                    o0.b(V, e12.getMessage());
                }
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f38950d + "_1", new a());
                this.f38039u.addView(this.f38040v, 0, new FrameLayout.LayoutParams(-1, -1));
                com.mbridge.msdk.foundation.feedback.b.b().d(this.f38950d + "_2");
                FeedBackButton feedBackButtonA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f38950d + "_1");
                if (com.mbridge.msdk.foundation.feedback.b.b().a() && feedBackButtonA != null) {
                    try {
                        layoutParams = (RelativeLayout.LayoutParams) feedBackButtonA.getLayoutParams();
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    if (layoutParams == null) {
                        layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f34456e, com.mbridge.msdk.foundation.feedback.b.f34455d);
                    }
                    layoutParams.topMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    layoutParams.leftMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    feedBackButtonA.setLayoutParams(layoutParams);
                    ViewGroup viewGroup = (ViewGroup) feedBackButtonA.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(feedBackButtonA);
                    }
                    this.f38039u.addView(feedBackButtonA);
                }
                this.f38039u.setTag(this.C);
                linkedHashMapB.put(this.C, this.f38039u);
                for (View view2 : linkedHashMapB.values()) {
                    if (view2 instanceof MBridgeBTRootLayout) {
                        MBridgeBTRootLayout mBridgeBTRootLayout = (MBridgeBTRootLayout) view2;
                        this.K = mBridgeBTRootLayout.getInstanceId();
                        this.f38038t.addView(mBridgeBTRootLayout, new FrameLayout.LayoutParams(-1, -1));
                        break;
                    }
                }
                linkedHashMapB.remove(this.K);
                linkedHashMapB.put(this.K, this);
            }
            com.mbridge.msdk.video.bt.component.d.c().a(this.f38950d, this.f38956j);
            com.mbridge.msdk.video.bt.component.d.c().d(this.C, this.L);
            com.mbridge.msdk.video.bt.component.d.c().d(this.K, this.L);
            com.mbridge.msdk.video.bt.component.d.c().a(this.f38950d + "_" + this.L, this.f38949c);
            try {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(this.E, getContext().getApplicationContext(), this.f38950d, this.f38951e));
            } catch (Throwable unused2) {
                o0.a(V, "remove campaign failed");
            }
            List<CampaignEx> list3 = this.E;
            if (list3 == null || list3.size() <= 0) {
                return;
            }
            a(this.f38952f, this.E.get(0));
        } catch (Throwable th2) {
            b("onCreate exception " + th2);
        }
    }

    @Override
    public void onDestroy() {
        if (this.D) {
            return;
        }
        this.D = true;
        if (this.S != null) {
            o0.b("omsdk", "btc onDestroy");
            this.S.c();
        }
        super.onDestroy();
        com.mbridge.msdk.video.bt.component.d.c().h(this.f38950d + "_" + this.L);
        try {
            WindVaneWebView windVaneWebView = this.f38040v;
            if (windVaneWebView != null) {
                ViewGroup viewGroup = (ViewGroup) windVaneWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.f38040v.clearWebView();
                this.f38040v.release();
            }
            if (this.J != null) {
                this.J = null;
            }
            if (this.G != null) {
                this.G = null;
            }
            if (this.f38042x != null) {
                this.f38042x = null;
            }
            List<CampaignEx> list = this.E;
            if (list != null && list.size() > 0) {
                for (CampaignEx campaignEx : this.E) {
                    if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                        com.mbridge.msdk.videocommon.a.e(this.f38950d + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                }
                com.mbridge.msdk.video.dynview.energize.a.a().d();
            }
            com.mbridge.msdk.video.bt.component.d.c().a(this.C);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L).remove(this.C);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L).remove(this.K);
            com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L).clear();
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void onPause() {
        CampaignEx campaignEx;
        super.onPause();
        List<CampaignEx> list = this.E;
        if (list != null && list.size() > 0 && (campaignEx = this.E.get(0)) != null && campaignEx.isDynamicView()) {
            com.mbridge.msdk.video.dynview.energize.a.a().b();
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).onPause();
                }
            }
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    @Override
    public void onResume() {
        CampaignEx campaignEx;
        super.onResume();
        List<CampaignEx> list = this.E;
        if (list != null && list.size() > 0 && (campaignEx = this.E.get(0)) != null && campaignEx.isDynamicView()) {
            com.mbridge.msdk.video.dynview.energize.a.a().c();
        }
        if (com.mbridge.msdk.foundation.feedback.b.f34457f) {
            return;
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).onResume();
                }
            }
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    @Override
    public void onStop() {
        CampaignEx campaignEx;
        super.onStop();
        List<CampaignEx> list = this.E;
        if (list != null && list.size() > 0 && (campaignEx = this.E.get(0)) != null && campaignEx.isDynamicView()) {
            com.mbridge.msdk.video.dynview.energize.a.a().d();
        }
        try {
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).onStop();
                }
            }
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    @Override
    public void reactDeveloper(Object obj, String str) {
        JSONObject jSONObjectOptJSONObject;
        int i10;
        if (this.G == null || TextUtils.isEmpty(str)) {
            a(obj, "listener is null");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            String strOptString = jSONObject.optString("unitId", getUnitId());
            String strOptString2 = jSONObject.optString(MBridgeConstans.PLACEMENT_ID, getPlacementId());
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
            CampaignEx campaignEx = this.E.get(0);
            boolean z10 = true;
            if (iOptInt == 1 && jSONObjectOptJSONObject2 != null) {
                boolean zOptBoolean = jSONObjectOptJSONObject2.optBoolean("expired");
                if (campaignEx != null) {
                    if (zOptBoolean) {
                        campaignEx.setSpareOfferFlag(1);
                    } else {
                        campaignEx.setSpareOfferFlag(0);
                    }
                }
            }
            setCBT(campaignEx);
            switch (iOptInt) {
                case 1:
                    this.G.a();
                    this.G.a(2, strOptString2, strOptString);
                    a(obj);
                    break;
                case 2:
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject("error") : null;
                    this.G.a(jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optString(NotificationCompat.CATEGORY_MESSAGE) : "");
                    this.G.a(4, strOptString2, strOptString);
                    a(obj);
                    break;
                case 3:
                    this.G.b(strOptString2, strOptString);
                    this.G.a(5, strOptString2, strOptString);
                    a(obj);
                    break;
                case 4:
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000147", this.E, eVar);
                    } catch (Throwable th2) {
                        o0.b(V, th2.getMessage());
                    }
                    this.G.a(strOptString2, strOptString);
                    this.G.a(6, strOptString2, strOptString);
                    a(obj);
                    break;
                case 5:
                    this.G.a(jSONObject.optBoolean("isAutoClick"), strOptString2, strOptString);
                    a(obj);
                    break;
                case 6:
                    if (jSONObjectOptJSONObject2 != null) {
                        if (jSONObjectOptJSONObject2.optInt("convert") != 1) {
                            z10 = false;
                        }
                        jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("reward");
                        String strOptString3 = jSONObjectOptJSONObject2.optString("extra");
                        if (!TextUtils.isEmpty(strOptString3)) {
                            this.P = strOptString3;
                        }
                    } else {
                        z10 = false;
                        jSONObjectOptJSONObject = null;
                    }
                    CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectOptJSONObject2.optJSONObject(MBInterstitialActivity.INTENT_CAMAPIGN));
                    com.mbridge.msdk.videocommon.entity.c cVarA = com.mbridge.msdk.videocommon.entity.c.a(jSONObjectOptJSONObject);
                    if (cVarA == null) {
                        cVarA = this.f38954h;
                    }
                    this.G.a(7, strOptString2, strOptString);
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar2.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar2);
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            e10.printStackTrace();
                        }
                    }
                    if (this.f38957k && ((i10 = this.f38959m) == com.mbridge.msdk.foundation.same.a.H || i10 == com.mbridge.msdk.foundation.same.a.I)) {
                        this.G.a(this.N, this.O);
                    }
                    if (!z10) {
                        cVarA.a(0);
                        o0.a("omsdk", "bt videoEvents :" + this.T);
                        com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.T;
                        if (aVar != null) {
                            try {
                                aVar.m();
                                this.T = null;
                            } catch (Exception e11) {
                                o0.a("omsdk", e11.getMessage());
                            }
                        }
                    }
                    this.G.a(z10, cVarA);
                    o0.a(V, "sendToServerRewardInfo");
                    if (!this.f38957k && z10) {
                        if (campaignWithBackData != null) {
                            com.mbridge.msdk.video.module.report.b.a(campaignWithBackData, cVarA, strOptString, this.f38953g, this.P);
                        } else {
                            com.mbridge.msdk.video.module.report.b.a(campaignEx, cVarA, strOptString, this.f38953g, this.P);
                        }
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", campaignWithBackData);
                    a(obj);
                    break;
                default:
                    a(obj);
                    break;
            }
        } catch (JSONException e12) {
            a(obj, e12.getMessage());
            o0.a(V, e12.getMessage());
        }
    }

    @Override
    public void reportUrls(Object obj, String str) {
        o0.a(V, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                String strA = t0.a(jSONObject.optString("url"), "&tun=", k0.y() + "");
                int iOptInt2 = jSONObject.optInt("report");
                if (iOptInt2 == 0) {
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list = this.E;
                    com.mbridge.msdk.click.a.a(contextD, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list2 = this.E;
                    com.mbridge.msdk.click.a.a(contextD2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            b(obj, "");
        } catch (Throwable th2) {
            o0.b(V, "reportUrls", th2);
        }
    }

    public void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.U = aVar;
    }

    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.S = bVar;
    }

    public void setBTContainerCallback(com.mbridge.msdk.video.bt.module.listener.a aVar) {
        this.G = aVar;
    }

    public void setCBT(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getSpareOfferFlag() != 1) {
                campaignEx.setCbt(0);
                return;
            }
            com.mbridge.msdk.videocommon.setting.c cVar = this.f38952f;
            if (cVar != null) {
                if (cVar.A() == 1) {
                    campaignEx.setCbt(1);
                } else {
                    campaignEx.setCbt(0);
                }
            }
        }
    }

    public void setCampaignDownLoadTasks(List<com.mbridge.msdk.videocommon.download.a> list) {
        this.F = list;
    }

    public void setCampaigns(List<CampaignEx> list) {
        CampaignEx campaignEx;
        this.E = list;
        String currentLocalRid = "";
        if (list != null) {
            try {
                if (list.size() > 0 && (campaignEx = list.get(0)) != null) {
                    currentLocalRid = campaignEx.getCurrentLocalRid();
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        if (!TextUtils.isEmpty(currentLocalRid)) {
            this.R = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(currentLocalRid);
        }
        if (this.R == null) {
            this.R = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        this.R.h(currentLocalRid);
        this.R.b(list);
    }

    public void setChoiceOneCallback(com.mbridge.msdk.video.dynview.listener.d dVar) {
        this.Q = dVar;
    }

    public void setDeveloperExtraData(String str) {
        this.P = str;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.f38963q = bVar;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13, int i14) {
        try {
            String strA = b0.a(i10, i11, i12, i13, i14);
            o0.b(V, strA);
            WindVaneWebView windVaneWebView = this.f38040v;
            if (windVaneWebView != null && (windVaneWebView.getObject() instanceof k) && !TextUtils.isEmpty(strA)) {
                ((k) this.f38040v.getObject()).a(strA);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f38040v, "oncutoutfetched", Base64.encodeToString(strA.getBytes(), 0));
            }
            a(i11, i13, i12, i14);
            com.mbridge.msdk.video.bt.component.d.c().a(i10, i11, i12, i13, i14);
            LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.component.d.c().b(this.f38950d, this.L);
            if (linkedHashMapB == null || linkedHashMapB.size() <= 0) {
                return;
            }
            for (View view : linkedHashMapB.values()) {
                if (view instanceof MBridgeBTVideoView) {
                    ((MBridgeBTVideoView) view).setNotchPadding(i11, i12, i13, i14);
                }
                if (view instanceof MBTempContainer) {
                    ((MBTempContainer) view).setNotchPadding(i10, i11, i12, i13, i14);
                }
                if ((view instanceof WindVaneWebView) && !TextUtils.isEmpty(strA)) {
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(view, "oncutoutfetched", Base64.encodeToString(strA.getBytes(), 0));
                }
            }
        } catch (Throwable th2) {
            o0.a(V, th2.getMessage());
        }
    }

    public void setShowRewardVideoListener(h hVar) {
        this.H = hVar;
    }

    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.T = aVar;
    }

    private WindVaneWebView c(String str) {
        com.mbridge.msdk.videocommon.a.C0547a c0547aB = com.mbridge.msdk.videocommon.a.b(str);
        if (c0547aB == null) {
            return null;
        }
        this.C = c0547aB.a();
        o0.a(V, "get BT wraper.getTag = " + this.C);
        c0547aB.a("");
        return c0547aB.b();
    }

    public void d(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                HashMap map = new HashMap();
                List<com.mbridge.msdk.foundation.entity.d> listA = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getCampaignUnitId(), campaignEx.getRequestId());
                if (listA == null || listA.size() <= 0 || listA.get(0) == null) {
                    return;
                }
                int iC = listA.get(0).c();
                String strB = listA.get(0).b();
                if (iC == 1) {
                    map.put("encrypt_p=", "encrypt_p=" + strB);
                    map.put("irlfa=", "irlfa=1");
                    for (Map.Entry entry : map.entrySet()) {
                        campaignEx.setOnlyImpressionURL(campaignEx.getOnlyImpressionURL().replaceAll((String) entry.getKey(), (String) entry.getValue()));
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private com.mbridge.msdk.video.bt.module.listener.b k() {
        if (this.J == null) {
            this.J = new c();
        }
        return this.J;
    }

    private void l() {
        com.iab.omid.library.mmadbridge.adsession.b bVar = this.S;
        if (bVar != null) {
            try {
                bVar.d(this);
                this.S.g();
                o0.a("omsdk", "btc:  adSession.start();");
                if (this.U != null) {
                    o0.a("omsdk", "btc:   adEvents.loaded");
                    this.U.d(com.iab.omid.library.mmadbridge.adsession.media.b.b(true, Position.STANDALONE));
                    o0.a("omsdk", "btc:   adEvents.impressionOccurred");
                    this.U.b();
                }
            } catch (Exception e10) {
                o0.a("omsdk", e10.getMessage());
            }
        }
    }

    @Override
    protected void b(String str) {
        h hVar = this.H;
        if (hVar != null) {
            hVar.a(this.R, str);
        }
        super.b(str);
    }

    protected void e(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                Iterator<String> it = pv_urls.iterator();
                while (it.hasNext()) {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, this.f38950d, it.next(), false, true);
                }
            } catch (Throwable th2) {
                o0.b(V, th2.getMessage());
            }
        }
    }

    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override
        public void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBTContainer.V, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBTContainer.V, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBTContainer.V, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    private void a(Context context) {
        if (this.Q == null) {
            b("ChoiceOneCallback is null");
            return;
        }
        HashMap map = new HashMap();
        map.put("choice_one_callback", this.Q);
        com.mbridge.msdk.video.dynview.b.a().a(context, this.E, new b(), map);
    }

    private com.mbridge.msdk.videocommon.download.a c(CampaignEx campaignEx) {
        List<com.mbridge.msdk.videocommon.download.a> list = this.F;
        if (list == null || campaignEx == null) {
            return null;
        }
        for (com.mbridge.msdk.videocommon.download.a aVar : list) {
            if (aVar.c().getId().equals(campaignEx.getId())) {
                o0.a(V, "tempContainer task initSuccess");
                return aVar;
            }
        }
        return null;
    }

    class c implements com.mbridge.msdk.video.bt.module.listener.b {
        c() {
        }

        @Override
        public void a(String str) {
            if (MBridgeBTContainer.this.f38040v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, ((AbstractJSContainer) MBridgeBTContainer.this).f38951e);
                    jSONObject2.put("unitId", ((AbstractJSContainer) MBridgeBTContainer.this).f38950d);
                    jSONObject.put("data", jSONObject2);
                    o0.a(MBridgeBTContainer.V, " BT Call H5 onAdShow " + jSONObject.toString());
                } catch (JSONException e10) {
                    o0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onSubPlayTemplateViewPlayStart", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override
        public void b(String str, String str2, String str3) {
            if (MBridgeBTContainer.this.f38040v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                    jSONObject2.put("unitId", str3);
                    jSONObject.put("data", jSONObject2);
                    o0.a(MBridgeBTContainer.V, " BT Call H5 onVideoAdClicked " + jSONObject.toString());
                } catch (JSONException e10) {
                    o0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onSubPlayTemplateViewClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override
        public void c(String str, String str2, String str3) {
            if (MBridgeBTContainer.this.f38040v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                    jSONObject2.put("unitId", str3);
                    jSONObject.put("data", jSONObject2);
                    o0.a(MBridgeBTContainer.V, " BT Call H5 onEndcardShow " + jSONObject.toString());
                } catch (JSONException e10) {
                    o0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onSubPlayTemplateViewEndcardShowSuccess", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override
        public void a(String str, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar) {
            if (MBridgeBTContainer.this.f38040v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    if (cVar != null) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("name", cVar.c());
                        jSONObject3.put(RewardPlus.AMOUNT, cVar.a());
                        jSONObject2.put("reward", jSONObject3);
                    }
                    jSONObject2.put("isComplete", z10);
                    jSONObject2.put("convert", z10 ? 1 : 2);
                    jSONObject.put("data", jSONObject2);
                    o0.a(MBridgeBTContainer.V, " BT Call H5 onAdClose " + jSONObject.toString());
                } catch (JSONException e10) {
                    o0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onSubPlayTemplateViewCloseBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onSubPlayTemplateViewDismissed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override
        public void a(boolean z10, int i10) {
            MBridgeBTContainer.this.N = z10;
            MBridgeBTContainer.this.O = i10;
        }

        @Override
        public void a(String str, String str2) {
            if (MBridgeBTContainer.this.f38040v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, ((AbstractJSContainer) MBridgeBTContainer.this).f38951e);
                    jSONObject2.put("unitId", ((AbstractJSContainer) MBridgeBTContainer.this).f38950d);
                    jSONObject2.put("error", str2);
                    jSONObject.put("data", jSONObject2);
                    o0.a(MBridgeBTContainer.V, " BT Call H5 onShowFail " + jSONObject.toString());
                } catch (JSONException e10) {
                    o0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onSubPlayTemplateViewPlayFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override
        public void a(String str, String str2, String str3) {
            if (MBridgeBTContainer.this.f38040v != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("convert", true);
                    jSONObject2.put(MBridgeConstans.PLACEMENT_ID, str2);
                    jSONObject2.put("unitId", str3);
                    jSONObject.put("data", jSONObject2);
                    o0.a(MBridgeBTContainer.V, " BT Call H5 onVideoComplete " + jSONObject.toString());
                } catch (JSONException e10) {
                    o0.a(MBridgeBTContainer.V, e10.getMessage());
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeBTContainer.this.f38040v, "onSubPlayTemplateViewPlayCompleted", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        }

        @Override
        public void a(String str, int i10, String str2, String str3) {
            if (MBridgeBTContainer.this.H != null) {
                MBridgeBTContainer.this.H.a(i10, str2, str3);
            }
        }
    }

    public MBridgeBTContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38036r = 0;
        this.f38037s = 1;
        this.A = false;
        this.B = true;
        this.D = false;
        this.S = null;
        this.T = null;
        this.U = null;
        init(context);
    }

    private void a(int i10, int i11, int i12, int i13) {
        TextView textView;
        FrameLayout.LayoutParams layoutParams;
        List<CampaignEx> list = this.E;
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            if (!this.E.get(0).isDynamicView() || (textView = this.f38043y) == null || (layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams()) == null) {
                return;
            }
            if (i10 > 0) {
                layoutParams.leftMargin = i10;
            }
            if (i12 > 0) {
                layoutParams.rightMargin = i12;
            }
            if (i11 > 0) {
                layoutParams.topMargin = i11;
            }
            if (i13 > 0) {
                layoutParams.bottomMargin = i13;
            }
            this.f38043y.setLayoutParams(layoutParams);
            if (this.f38044z != null) {
                try {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.f38044z.getLayoutParams());
                    layoutParams2.leftMargin = layoutParams.rightMargin;
                    layoutParams2.topMargin = layoutParams.topMargin;
                    this.f38044z.setLayoutParams(layoutParams2);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            o0.b(V, e11.getMessage());
        }
    }

    class b implements com.mbridge.msdk.video.dynview.listener.h {
        b() {
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            CampaignEx campaignEx;
            String str;
            if (aVar != null) {
                if (MBridgeBTContainer.this.f38038t == null || aVar.b() == null) {
                    MBridgeBTContainer.this.b("nativeview is null");
                    return;
                }
                MBridgeBTContainer.this.f38038t.removeAllViews();
                MBridgeBTContainer.this.f38038t.addView(aVar.b());
                MBridgeBTContainer mBridgeBTContainer = MBridgeBTContainer.this;
                mBridgeBTContainer.f38043y = (TextView) mBridgeBTContainer.findViewById(mBridgeBTContainer.findID("mbridge_choice_one_countdown_tv"));
                MBridgeBTContainer mBridgeBTContainer2 = MBridgeBTContainer.this;
                mBridgeBTContainer2.f38044z = (ImageView) mBridgeBTContainer2.findViewById(mBridgeBTContainer2.findID("mbridge_iv_link"));
                if (MBridgeBTContainer.this.G != null) {
                    MBridgeBTContainer.this.G.a();
                    MBridgeBTContainer.this.G.a(2, ((AbstractJSContainer) MBridgeBTContainer.this).f38951e, ((AbstractJSContainer) MBridgeBTContainer.this).f38950d);
                }
                if (MBridgeBTContainer.this.E == null || MBridgeBTContainer.this.E.size() <= 0 || (campaignEx = (CampaignEx) MBridgeBTContainer.this.E.get(0)) == null) {
                    return;
                }
                if (campaignEx.isBidCampaign()) {
                    MBridgeBTContainer.this.d(campaignEx);
                }
                String onlyImpressionURL = campaignEx.getOnlyImpressionURL();
                com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), ((AbstractJSContainer) MBridgeBTContainer.this).f38950d);
                int iA = cVarC != null ? cVarC.A() : 1;
                if (campaignEx.getSpareOfferFlag() == 1) {
                    str = onlyImpressionURL + "&to=1&cbt=" + campaignEx.getCbt() + "&tmorl=" + iA;
                } else {
                    str = onlyImpressionURL + "&to=0&cbt=" + campaignEx.getCbt() + "&tmorl=" + iA;
                }
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, ((AbstractJSContainer) MBridgeBTContainer.this).f38950d, str, false, true, com.mbridge.msdk.click.retry.a.f33587n);
                com.mbridge.msdk.foundation.same.buffer.b.f34539l.put(campaignEx.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
                MBridgeBTContainer.this.e(campaignEx);
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "choseFromTwoShow");
                    com.mbridge.msdk.video.module.report.a.a("2000103", campaignEx, eVar);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                    }
                }
            }
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            String str;
            if (aVar != null) {
                str = "errorCode:" + aVar.b() + "Msg:" + aVar.c();
            } else {
                str = "";
            }
            MBridgeBTContainer.this.b("nativeview is null" + str);
        }
    }
}
