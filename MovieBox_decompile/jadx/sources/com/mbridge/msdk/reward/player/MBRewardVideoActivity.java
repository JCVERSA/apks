package com.mbridge.msdk.reward.player;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.reward.adapter.RewardUnitCacheManager;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.video.bt.module.MBTempContainer;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.bt.module.orglistener.h;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.activity.AbstractJSActivity;
import com.mbridge.msdk.video.signal.impl.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class MBRewardVideoActivity extends AbstractJSActivity {
    public static String INTENT_EXTRADATA = "extraData";
    public static String INTENT_ISBID = "isBid";
    public static String INTENT_ISBIG_OFFER = "isBigOffer";
    public static String INTENT_ISIV = "isIV";
    public static String INTENT_IVREWARD_MODETYPE = "ivRewardMode";
    public static String INTENT_IVREWARD_VALUE = "ivRewardValue";
    public static String INTENT_IVREWARD_VALUETYPE = "ivRewardValueType";
    public static String INTENT_LOCAL_REQUEST_ID = "lRid";
    public static String INTENT_MUTE = "mute";
    public static String INTENT_REWARD = "reward";
    public static String INTENT_UNITID = "unitId";
    public static String INTENT_USERID = "userId";
    public static String SAVE_STATE_KEY_REPORT = "hasRelease";
    private MBridgeBTContainer A;
    private WindVaneWebView B;
    private com.mbridge.msdk.video.bt.module.listener.a C;
    private String D;
    private String E;
    private boolean F;
    private String N;
    private com.mbridge.msdk.foundation.same.report.metrics.c O;
    private boolean Q;

    private String f36331f;

    private String f36332g;

    private String f36333h;

    private com.mbridge.msdk.videocommon.entity.c f36334i;

    private int f36338m;

    private int f36339n;

    private int f36340o;

    private h f36343r;

    private com.mbridge.msdk.videocommon.setting.c f36344s;

    private com.mbridge.msdk.videocommon.download.a f36347v;

    private CampaignEx f36348w;

    private List<com.mbridge.msdk.videocommon.download.a> f36349x;

    private List<CampaignEx> f36350y;

    private MBTempContainer f36351z;

    private int f36335j = 2;

    private boolean f36336k = false;

    private boolean f36337l = false;

    private boolean f36341p = false;

    private boolean f36342q = false;

    private boolean f36345t = false;

    private boolean f36346u = false;
    private int G = 1;
    private int H = 0;
    private int I = 0;
    private int J = 0;
    private int K = 0;
    private int L = 0;
    private int M = 0;
    private boolean P = false;
    private com.iab.omid.library.mmadbridge.adsession.b R = null;
    private com.iab.omid.library.mmadbridge.adsession.media.a S = null;
    private com.iab.omid.library.mmadbridge.adsession.a T = null;
    private long U = 0;
    private String V = "";
    private Boolean W = null;
    private int X = 0;
    private boolean Y = false;
    private boolean Z = false;

    private com.mbridge.msdk.video.dynview.listener.a f36329a0 = new a();

    private com.mbridge.msdk.video.dynview.listener.d f36330b0 = new b();

    class a implements com.mbridge.msdk.video.dynview.listener.a {
        a() {
        }

        @Override
        public void a(Map<String, Object> map) {
            if (map == null) {
                return;
            }
            if (map.containsKey(CampaignEx.JSON_NATIVE_VIDEO_MUTE)) {
                MBRewardVideoActivity.this.f36335j = ((Integer) map.get(CampaignEx.JSON_NATIVE_VIDEO_MUTE)).intValue();
            }
            if (map.containsKey(RequestParameters.POSITION)) {
                int iIntValue = ((Integer) map.get(RequestParameters.POSITION)).intValue();
                if (MBRewardVideoActivity.this.f36350y == null || MBRewardVideoActivity.this.f36350y.size() <= 0 || iIntValue < 1) {
                    return;
                }
                MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
                mBRewardVideoActivity.f36348w = (CampaignEx) mBRewardVideoActivity.f36350y.get(iIntValue);
                MBRewardVideoActivity.m(MBRewardVideoActivity.this);
                int i10 = iIntValue - 1;
                if (MBRewardVideoActivity.this.f36350y.get(i10) != null) {
                    MBRewardVideoActivity mBRewardVideoActivity2 = MBRewardVideoActivity.this;
                    MBRewardVideoActivity.b(mBRewardVideoActivity2, ((CampaignEx) mBRewardVideoActivity2.f36350y.get(i10)).getVideoLength());
                }
                MBRewardVideoActivity mBRewardVideoActivity3 = MBRewardVideoActivity.this;
                MBRewardVideoActivity.this.f36348w.setVideoCompleteTime(mBRewardVideoActivity3.a(mBRewardVideoActivity3.f36348w.getVideoCompleteTime(), MBRewardVideoActivity.this.G));
                MBRewardVideoActivity.this.f36348w.setShowIndex(MBRewardVideoActivity.this.G);
                MBRewardVideoActivity.this.f36348w.setShowType(1);
                MBRewardVideoActivity mBRewardVideoActivity4 = MBRewardVideoActivity.this;
                mBRewardVideoActivity4.c(mBRewardVideoActivity4.f36348w);
            }
        }
    }

    class d implements com.mbridge.msdk.foundation.feedback.a {
        d() {
        }

        @Override
        public void a() {
            MBRewardVideoActivity.this.onPause();
        }

        @Override
        public void close() {
            MBRewardVideoActivity.this.onResume();
        }

        @Override
        public void a(String str) {
            MBRewardVideoActivity.this.onResume();
        }
    }

    private static final class e implements Runnable {

        private final List<com.mbridge.msdk.videocommon.download.a> f36356a;

        private final String f36357b;

        private final String f36358c;

        public e(List<com.mbridge.msdk.videocommon.download.a> list, String str, String str2) {
            this.f36356a = list;
            this.f36357b = str;
            this.f36358c = str2;
        }

        @Override
        public void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.f36356a;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.mbridge.msdk.videocommon.download.a aVar : this.f36356a) {
                    if (aVar != null && aVar.c() != null) {
                        CampaignEx campaignExC = aVar.c();
                        try {
                            AppletModelManager.getInstance().remove(campaignExC);
                        } catch (Exception e10) {
                            if (MBridgeConstans.DEBUG) {
                                o0.b("MBRewardVideoActivity", "AppletModelManager remove error", e10);
                            }
                        }
                        com.mbridge.msdk.videocommon.download.b.getInstance().c(this.f36357b, campaignExC.getRequestId() + campaignExC.getId() + campaignExC.getVideoUrlEncode());
                        if (campaignExC.getRewardTemplateMode() != null) {
                            if (!TextUtils.isEmpty(campaignExC.getRewardTemplateMode().e())) {
                                com.mbridge.msdk.videocommon.a.e(this.f36357b + "_" + campaignExC.getId() + "_" + this.f36358c + "_" + campaignExC.getRewardTemplateMode().e());
                                com.mbridge.msdk.videocommon.a.b(campaignExC.getAdType(), campaignExC);
                            }
                            if (!TextUtils.isEmpty(campaignExC.getCMPTEntryUrl())) {
                                com.mbridge.msdk.videocommon.a.e(this.f36357b + "_" + this.f36358c + "_" + campaignExC.getCMPTEntryUrl());
                            }
                            com.mbridge.msdk.videocommon.cache.a.a().a(this.f36357b, campaignExC);
                        }
                    }
                }
            } catch (Exception e11) {
                o0.a("MBRewardVideoActivity", e11.getMessage());
            }
        }
    }

    private static final class f implements Runnable {

        private final List<com.mbridge.msdk.videocommon.download.a> f36359a;

        private final String f36360b;

        public f(String str, List<com.mbridge.msdk.videocommon.download.a> list) {
            this.f36359a = list;
            this.f36360b = str;
        }

        @Override
        public void run() {
            try {
                List<com.mbridge.msdk.videocommon.download.a> list = this.f36359a;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.mbridge.msdk.videocommon.download.a aVar : this.f36359a) {
                    if (aVar != null && aVar.c() != null) {
                        com.mbridge.msdk.videocommon.cache.a.a().a(aVar.c(), this.f36360b);
                    }
                }
            } catch (Throwable th2) {
                o0.b("MBRewardVideoActivity", th2.getMessage());
            }
        }
    }

    static int m(MBRewardVideoActivity mBRewardVideoActivity) {
        int i10 = mBRewardVideoActivity.G;
        mBRewardVideoActivity.G = i10 + 1;
        return i10;
    }

    public void changeHalfScreenPadding(int i10) {
        int iF;
        int iG;
        int iG2;
        float f10;
        try {
            CampaignEx campaignEx = this.f36348w;
            if (campaignEx == null || campaignEx.getAdSpaceT() != 2) {
                return;
            }
            getWindow().getDecorView().setBackgroundColor(-1728053248);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f36351z.getLayoutParams();
            layoutParams.gravity = 17;
            if (this.f36348w.getRewardTemplateMode().b() == 0) {
                if (i10 == 2) {
                    iF = (int) (t0.f(this) * 0.6f);
                    iG2 = t0.g(this);
                    f10 = iG2 * 0.6f;
                } else {
                    iF = (int) (t0.f(this) * 0.6f);
                    iG = t0.g(this);
                    f10 = iG * 0.7f;
                }
            } else if (this.f36348w.getRewardTemplateMode().b() == 2) {
                iF = (int) (t0.f(this) * 0.6f);
                iG2 = t0.g(this);
                f10 = iG2 * 0.6f;
            } else {
                iF = (int) (t0.f(this) * 0.6f);
                iG = t0.g(this);
                f10 = iG * 0.7f;
            }
            int i11 = (int) f10;
            layoutParams.height = iF;
            layoutParams.width = i11;
            this.f36351z.setLayoutParams(layoutParams);
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    public int findID(String str) {
        return g0.a(getApplicationContext(), str, "id");
    }

    public int findLayout(String str) {
        return g0.a(getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    @Override
    public void finish() {
        this.Y = true;
        com.mbridge.msdk.foundation.controller.c.m().b(0);
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.f36351z = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f36331f);
        if (this.R != null) {
            o0.b("omsdk", "mbrewardvideoac finish");
            this.R.e();
            this.R.c();
            this.R = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.A = null;
        }
        super.finish();
    }

    @Override
    public void onBackPressed() {
        this.Z = true;
        super.onBackPressed();
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.onBackPressed();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onBackPressed();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f36351z != null) {
            changeHalfScreenPadding(configuration.orientation);
            this.f36351z.onConfigurationChanged(configuration);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onConfigurationChanged(configuration);
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        String str;
        List<com.mbridge.msdk.videocommon.download.a> list;
        String cMPTEntryUrl = "";
        super.onCreate(bundle);
        MBridgeConstans.isRewardActivityShowing = true;
        com.mbridge.msdk.foundation.controller.c.m().a(this);
        this.U = SystemClock.elapsedRealtime();
        if (TextUtils.isEmpty(this.V)) {
            str = "onCreate";
        } else {
            str = this.V + "_onCreate";
        }
        this.V = str;
        try {
            Intent intent = getIntent();
            this.f36331f = intent.getStringExtra(INTENT_UNITID);
            this.f36332g = intent.getStringExtra(MBridgeConstans.PLACEMENT_ID);
            this.f36334i = com.mbridge.msdk.videocommon.entity.c.a(intent.getStringExtra(INTENT_REWARD));
            this.f36333h = intent.getStringExtra(INTENT_USERID);
            this.f36335j = intent.getIntExtra(INTENT_MUTE, 2);
            this.f36336k = intent.getBooleanExtra(INTENT_ISIV, false);
            com.mbridge.msdk.foundation.controller.c.m().b(this.f36336k ? 287 : 94);
            this.f36337l = intent.getBooleanExtra(INTENT_ISBID, false);
            this.E = intent.getStringExtra(INTENT_EXTRADATA);
            boolean booleanExtra = intent.getBooleanExtra("is_refactor", false);
            this.P = booleanExtra;
            if (booleanExtra) {
                this.f36343r = MBridgeGlobalCommon.showRewardListenerMap.get(this.f36331f);
            } else {
                this.f36343r = com.mbridge.msdk.reward.controller.a.f36235f0.get(this.f36331f);
            }
            if (this.f36336k) {
                this.f36338m = intent.getIntExtra(INTENT_IVREWARD_MODETYPE, 0);
                this.f36339n = intent.getIntExtra(INTENT_IVREWARD_VALUETYPE, 0);
                this.f36340o = intent.getIntExtra(INTENT_IVREWARD_VALUE, 0);
            }
            this.f36341p = intent.getBooleanExtra(INTENT_ISBIG_OFFER, false);
            this.f36349x = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f36331f);
            this.f36350y = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f36331f);
            int iFindLayout = findLayout("mbridge_more_offer_activity");
            if (!g0.a(iFindLayout)) {
                b("no mbridge_more_offer_activity layout");
                return;
            }
            setContentView(iFindLayout);
            if (TextUtils.isEmpty(this.f36331f)) {
                b("data empty error");
                return;
            }
            com.mbridge.msdk.video.signal.factory.b bVar = new com.mbridge.msdk.video.signal.factory.b(this);
            this.jsFactory = bVar;
            registerJsFactory(bVar);
            h hVar = this.f36343r;
            if (hVar == null) {
                b("showRewardListener is null");
                return;
            }
            this.X = hVar.hashCode();
            com.mbridge.msdk.videocommon.setting.c cVar = RewardUnitCacheManager.getInstance().get(this.f36332g, this.f36331f);
            this.f36344s = cVar;
            if (cVar == null) {
                com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36331f);
                this.f36344s = cVarC;
                if (cVarC == null) {
                    this.f36344s = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36331f, this.f36336k);
                }
            }
            com.mbridge.msdk.videocommon.setting.c cVar2 = this.f36344s;
            if (cVar2 != null) {
                this.f36334i.a(cVar2.d());
                this.f36334i.b(this.f36344s.s());
            }
            com.mbridge.msdk.videocommon.entity.c cVar3 = this.f36334i;
            if (cVar3 != null && cVar3.a() <= 0) {
                this.f36334i.a(1);
            }
            int iA = g0.a(this, "mbridge_reward_activity_open", "anim");
            int iA2 = g0.a(this, "mbridge_reward_activity_stay", "anim");
            if (g0.a(iA) && g0.a(iA2)) {
                overridePendingTransition(iA, iA2);
            }
            if (bundle != null) {
                try {
                    this.f36346u = bundle.getBoolean(SAVE_STATE_KEY_REPORT);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            o0.a("DynamicViewCampaignResourceDownloader", "进入 show，大模板 " + this.f36341p);
            if (!this.f36341p) {
                List<com.mbridge.msdk.videocommon.download.a> list2 = this.f36349x;
                if (list2 != null && list2.size() > 0) {
                    this.f36347v = this.f36349x.get(0);
                }
                com.mbridge.msdk.videocommon.download.a aVar = this.f36347v;
                if (aVar != null) {
                    this.f36348w = aVar.c();
                    this.f36347v.b(true);
                    this.f36347v.d(false);
                    CampaignEx campaignEx = this.f36348w;
                    if (campaignEx != null) {
                        this.N = campaignEx.getCurrentLocalRid();
                        this.f36348w.setShowIndex(1);
                        this.f36348w.setShowType(1);
                        com.mbridge.msdk.reward.controller.a.f36231b0 = this.f36348w.getEcppv();
                        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36348w.getMaitve(), this.f36348w.getMaitve_src());
                    }
                }
                if (this.f36347v != null && this.f36348w != null && this.f36334i != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f36348w);
                    a(arrayList);
                    b(this.f36348w);
                    j();
                    if (com.mbridge.msdk.util.b.a()) {
                        return;
                    }
                    e();
                    return;
                }
                b("data empty error");
                return;
            }
            a(this.f36350y);
            this.D = "";
            List<CampaignEx> list3 = this.f36350y;
            if (list3 != null && list3.size() > 0) {
                CampaignEx campaignEx2 = this.f36350y.get(0);
                b(campaignEx2);
                cMPTEntryUrl = campaignEx2.getCMPTEntryUrl();
                this.D = campaignEx2.getRequestId();
                this.N = campaignEx2.getCurrentLocalRid();
                com.mbridge.msdk.reward.controller.a.f36231b0 = campaignEx2.getEcppv();
                com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx2.getMaitve(), campaignEx2.getMaitve_src());
            }
            WindVaneWebView windVaneWebViewA = a(this.f36331f + "_" + this.D + "_" + cMPTEntryUrl);
            this.B = windVaneWebViewA;
            if (windVaneWebViewA == null) {
                if (this.f36347v == null && (list = this.f36349x) != null && list.size() > 0) {
                    this.f36347v = this.f36349x.get(0);
                }
                if (this.f36347v == null) {
                    this.f36347v = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f36336k ? 287 : 94, this.f36331f, this.f36337l);
                }
                com.mbridge.msdk.videocommon.download.a aVar2 = this.f36347v;
                if (aVar2 != null) {
                    this.f36348w = aVar2.c();
                    this.f36347v.b(true);
                    this.f36347v.d(false);
                }
                if (this.f36347v != null && this.f36348w != null && this.f36334i != null) {
                    this.f36341p = false;
                    List<CampaignEx> listA = com.mbridge.msdk.videocommon.cache.a.a().a(this.f36350y);
                    if (listA == null) {
                        b("no available campaign");
                        return;
                    }
                    int size = listA.size();
                    if (size == 0) {
                        b("no available campaign");
                        return;
                    }
                    if (listA.get(0) == null || !listA.get(0).isDynamicView()) {
                        j();
                    } else if (size == 1) {
                        CampaignEx campaignEx3 = listA.get(0);
                        this.f36348w = campaignEx3;
                        if (campaignEx3 != null) {
                            this.N = campaignEx3.getCurrentLocalRid();
                            this.f36348w.setCampaignIsFiltered(true);
                        }
                        c(this.f36348w);
                    } else {
                        b(listA);
                    }
                }
                b("data empty error");
                return;
            }
            b(this.f36350y.get(0));
            WindVaneWebView windVaneWebView = this.B;
            if (windVaneWebView != null) {
                try {
                    k kVar = (k) windVaneWebView.getObject();
                    kVar.setAdEvents(this.T);
                    kVar.setAdSession(this.R);
                    kVar.setVideoEvents(this.S);
                    this.B.setObject(kVar);
                } catch (Exception e11) {
                    o0.b("MBRewardVideoActivity", e11.getMessage());
                }
            }
            k();
            if (com.mbridge.msdk.util.b.a()) {
                return;
            }
            e();
        } catch (Throwable th2) {
            a(this.f36350y);
            b("onCreate error" + th2);
        }
    }

    @Override
    public void onDestroy() {
        String str;
        int i10;
        if (TextUtils.isEmpty(this.V)) {
            str = "onDestroy";
        } else {
            str = this.V + "_onDestroy";
        }
        this.V = str;
        super.onDestroy();
        f();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("activity_life_cycle", TextUtils.isEmpty(this.V) ? "unKnown" : this.V);
        eVar.a("activity_duration", Long.valueOf(SystemClock.elapsedRealtime() - this.U));
        Boolean bool = this.W;
        int i11 = 0;
        if (bool == null) {
            i10 = 0;
        } else {
            i10 = bool.booleanValue() ? 1 : 2;
        }
        eVar.a("is_unexpected_destroy", Integer.valueOf(i10));
        eVar.a("is_listener_null", Integer.valueOf(this.f36343r == null ? 1 : 2));
        eVar.a("is_called_finish", Integer.valueOf(this.Y ? 1 : 2));
        eVar.a("is_back_pressed", Integer.valueOf(this.Z ? 1 : 2));
        h hVar = this.f36343r;
        if (hVar != null) {
            i11 = hVar.hashCode() == this.X ? 1 : 2;
        }
        eVar.a("is_listener_change", Integer.valueOf(i11));
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000151", this.f36348w, eVar);
        g();
        com.mbridge.msdk.video.module.report.b.a(this.f36331f);
        h();
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.onDestroy();
            this.f36351z = null;
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onDestroy();
            this.A = null;
        }
        this.f36329a0 = null;
        this.f36330b0 = null;
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f36331f + "_1");
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f36331f + "_2");
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(this.f36349x, this.f36331f, this.D));
    }

    @Override
    public void onPause() {
        String str;
        super.onPause();
        if (TextUtils.isEmpty(this.V)) {
            str = "onPause";
        } else {
            str = this.V + "_onPause";
        }
        this.V = str;
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.onPause();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onPause();
        }
    }

    @Override
    protected void onRestart() {
        String str;
        super.onRestart();
        if (TextUtils.isEmpty(this.V)) {
            str = "onRestart";
        } else {
            str = this.V + "_onRestart";
        }
        this.V = str;
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.onRestart();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onRestart();
        }
    }

    @Override
    public void onResume() {
        String str;
        MBridgeVideoView mBridgeVideoView;
        super.onResume();
        if (TextUtils.isEmpty(this.V)) {
            str = "onResume";
        } else {
            str = this.V + "_onResume";
        }
        this.V = str;
        if (com.mbridge.msdk.foundation.feedback.b.f34457f) {
            MBTempContainer mBTempContainer = this.f36351z;
            if (mBTempContainer == null || (mBridgeVideoView = mBTempContainer.mbridgeVideoView) == null) {
                return;
            }
            mBridgeVideoView.setCover(false);
            return;
        }
        com.mbridge.msdk.foundation.controller.c.m().a(this);
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new f(this.f36331f, this.f36349x));
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
        MBTempContainer mBTempContainer2 = this.f36351z;
        if (mBTempContainer2 != null) {
            mBTempContainer2.onResume();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onResume();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(SAVE_STATE_KEY_REPORT, this.f36346u);
        super.onSaveInstanceState(bundle);
    }

    @Override
    protected void onStart() {
        String str;
        super.onStart();
        if (TextUtils.isEmpty(this.V)) {
            str = TmcConstants.NAVIGATION_ON_START;
        } else {
            str = this.V + "_onStart";
        }
        this.V = str;
        if (com.mbridge.msdk.foundation.feedback.b.f34457f) {
            return;
        }
        new d();
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.onStart();
            this.f36348w.setCampaignUnitId(this.f36331f);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f36331f + "_1", this.f36348w);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStart();
            List<CampaignEx> list = this.f36350y;
            if (list != null && list.size() > 0) {
                CampaignEx campaignEx = this.f36350y.get(0);
                campaignEx.setCampaignUnitId(this.f36331f);
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f36331f + "_1", campaignEx);
            }
        }
        if (this.F) {
            return;
        }
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f36331f + "_1", 1);
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f36331f + "_2");
        this.F = true;
    }

    @Override
    protected void onStop() {
        String str;
        if (TextUtils.isEmpty(this.V)) {
            str = "onStop";
        } else {
            str = this.V + "_onStop";
        }
        this.V = str;
        MBridgeConstans.isRewardActivityShowing = false;
        super.onStop();
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.onStop();
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.onStop();
        }
    }

    @Override
    public void setTheme(int i10) {
        super.setTheme(g0.a(this, "mbridge_transparent_theme", TtmlNode.TAG_STYLE));
    }

    @Override
    public void setTopControllerPadding(int i10, int i11, int i12, int i13, int i14) {
        this.I = i11;
        this.K = i12;
        this.J = i13;
        this.L = i14;
        this.M = i10;
        MBTempContainer mBTempContainer = this.f36351z;
        if (mBTempContainer != null) {
            mBTempContainer.setNotchPadding(i10, i11, i12, i13, i14);
        }
        MBridgeBTContainer mBridgeBTContainer = this.A;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.setNotchPadding(i10, i11, i12, i13, i14);
        }
        com.mbridge.msdk.video.dynview.constant.a.a(i10, i11, i12, i13, i14);
    }

    class c implements com.mbridge.msdk.video.bt.module.listener.a {
        c() {
        }

        @Override
        public void a() {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.a(MBRewardVideoActivity.this.O);
            }
        }

        @Override
        public void b(String str, String str2) {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.b(str, str2);
            }
        }

        @Override
        public void a(boolean z10, com.mbridge.msdk.videocommon.entity.c cVar) {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.a(MBRewardVideoActivity.this.O, z10, cVar);
            }
        }

        @Override
        public void a(boolean z10, int i10) {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.a(z10, i10);
            }
        }

        @Override
        public void a(String str) {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.a(MBRewardVideoActivity.this.O, str);
            }
        }

        @Override
        public void a(boolean z10, String str, String str2) {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.a(z10, str, str2);
            }
        }

        @Override
        public void a(String str, String str2) {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.a(str, str2);
            }
        }

        @Override
        public void a(int i10, String str, String str2) {
            if (MBRewardVideoActivity.this.f36343r != null) {
                MBRewardVideoActivity.this.f36343r.a(i10, str, str2);
            }
        }
    }

    static int b(MBRewardVideoActivity mBRewardVideoActivity, int i10) {
        int i11 = mBRewardVideoActivity.H - i10;
        mBRewardVideoActivity.H = i11;
        return i11;
    }

    public void c(CampaignEx campaignEx) {
        CampaignEx campaignExC;
        try {
            List<com.mbridge.msdk.videocommon.download.a> list = this.f36349x;
            if (list != null && list.size() > 0) {
                for (com.mbridge.msdk.videocommon.download.a aVar : this.f36349x) {
                    if (aVar != null && (campaignExC = aVar.c()) != null && TextUtils.equals(campaignExC.getId(), campaignEx.getId()) && TextUtils.equals(campaignExC.getRequestId(), campaignEx.getRequestId())) {
                        this.f36347v = aVar;
                    }
                }
            }
            this.f36341p = true;
            j();
            MBTempContainer mBTempContainer = this.f36351z;
            if (mBTempContainer != null) {
                mBTempContainer.setNotchPadding(this.M, this.I, this.K, this.J, this.L);
            }
        } catch (Exception e10) {
            o0.b("MBRewardVideoActivity", e10.getMessage());
            b("more offer to one offer exception");
        }
    }

    private void d(CampaignEx campaignEx) {
        com.mbridge.msdk.reward.player.a.a(this, campaignEx, this.f36344s, this.f36331f);
    }

    private void e() {
        try {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f36331f, this.f36336k ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94);
            if (bitmapDrawableA != null) {
                ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                t0.a(imageView, bitmapDrawableA, getResources().getDisplayMetrics());
                ((ViewGroup) ((ViewGroup) ((ViewGroup) viewGroup.getChildAt(0)).getChildAt(1)).getChildAt(0)).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.R;
                if (bVar != null) {
                    bVar.a(imageView, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void f() {
        h hVar = this.f36343r;
        if (hVar == null || !(hVar instanceof com.mbridge.msdk.video.bt.module.orglistener.b)) {
            return;
        }
        try {
            com.mbridge.msdk.video.bt.module.orglistener.b bVar = (com.mbridge.msdk.video.bt.module.orglistener.b) hVar;
            Boolean boolD = bVar.d();
            Boolean boolC = bVar.c();
            if (boolD == null && boolC == null) {
                this.W = null;
            } else {
                Boolean bool = Boolean.FALSE;
                this.W = Boolean.valueOf(bool.equals(boolD) && bool.equals(boolC));
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private void g() {
        try {
            Boolean bool = this.W;
            if (bool != null && !bool.booleanValue()) {
                return;
            }
            h hVar = this.f36343r;
            if (hVar != null) {
                hVar.a(this.O, "show fail : unexpected destroy");
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private void h() {
        try {
            List<CampaignEx> list = this.f36350y;
            if (list != null && list.size() > 0) {
                Iterator<CampaignEx> it = this.f36350y.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
            CampaignEx campaignEx = this.f36348w;
            if (campaignEx != null) {
                a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoActivity", th2.getMessage());
        }
    }

    private com.mbridge.msdk.video.bt.module.listener.a i() {
        if (this.C == null) {
            this.C = new c();
        }
        return this.C;
    }

    public void j() {
        List<CampaignEx> list;
        RewardPlus rewardPlus;
        CampaignEx campaignEx;
        List<CampaignEx> list2;
        int iFindID = findID("mbridge_temp_container");
        if (!g0.a(iFindID)) {
            b("no id mbridge_bt_container in mbridge_more_offer_activity layout");
        }
        MBTempContainer mBTempContainer = (MBTempContainer) findViewById(iFindID);
        this.f36351z = mBTempContainer;
        if (mBTempContainer == null) {
            b("env error");
        }
        List<CampaignEx> list3 = this.f36350y;
        if (list3 == null || list3.size() <= 0 || !this.f36350y.get(0).isDynamicView()) {
            this.f36351z.setVisibility(0);
        } else {
            new com.mbridge.msdk.video.dynview.ui.b().a(this.f36351z, 500L);
        }
        changeHalfScreenPadding(-1);
        this.f36351z.setActivity(this);
        this.f36351z.setBidCampaign(this.f36337l);
        this.f36351z.setBigOffer(this.f36341p);
        this.f36351z.setUnitId(this.f36331f);
        this.f36351z.setCampaign(this.f36348w);
        if (this.f36348w.getDynamicTempCode() == 5 && (list2 = this.f36350y) != null && list2.size() > 1) {
            View viewFindViewById = findViewById(findID("mbridge_reward_root_container"));
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            this.f36351z.removeAllViews();
            this.f36351z.setCampOrderViewData(this.f36350y, this.H);
            this.f36351z.setCamPlayOrderCallback(this.f36329a0, this.G);
        }
        this.f36351z.setCampaignDownLoadTask(this.f36347v);
        this.f36351z.setIV(this.f36336k);
        CampaignEx campaignEx2 = this.f36348w;
        if (campaignEx2 == null || campaignEx2.getAdSpaceT() != 2) {
            this.f36351z.setIVRewardEnable(this.f36338m, this.f36339n, this.f36340o);
        } else {
            this.f36351z.setIVRewardEnable(0, 0, 0);
        }
        this.f36351z.setMute(this.f36335j);
        CampaignEx campaignEx3 = this.f36348w;
        if (((campaignEx3 != null && (rewardPlus = campaignEx3.getRewardPlus()) != null) || ((list = this.f36350y) != null && list.size() > 0 && this.f36350y.get(0) != null && (rewardPlus = this.f36350y.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            com.mbridge.msdk.videocommon.entity.c cVar = new com.mbridge.msdk.videocommon.entity.c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.a() < 0) {
                cVar.a(1);
            }
            this.f36334i = cVar;
        }
        this.f36351z.setReward(this.f36334i);
        this.f36351z.setRewardUnitSetting(this.f36344s);
        this.f36351z.setPlacementId(this.f36332g);
        this.f36351z.setUserId(this.f36333h);
        this.f36351z.setShowRewardListener(this.f36343r);
        this.f36351z.setDeveloperExtraData(this.E);
        this.f36351z.init(this);
        this.f36351z.setAdSession(this.R);
        this.f36351z.setAdEvents(this.T);
        this.f36351z.setVideoEvents(this.S);
        this.f36351z.onCreate();
        if (!com.mbridge.msdk.util.b.a() || (campaignEx = this.f36348w) == null) {
            return;
        }
        d(campaignEx);
    }

    private void k() {
        RewardPlus rewardPlus;
        List<CampaignEx> list;
        int iFindID = findID("mbridge_bt_container");
        if (!g0.a(iFindID)) {
            b("no mbridge_webview_framelayout in mbridge_more_offer_activity layout");
        }
        MBridgeBTContainer mBridgeBTContainer = (MBridgeBTContainer) findViewById(iFindID);
        this.A = mBridgeBTContainer;
        if (mBridgeBTContainer == null) {
            b("env error");
        }
        this.A.setVisibility(0);
        com.mbridge.msdk.video.bt.module.listener.a aVarI = i();
        this.C = aVarI;
        this.A.setBTContainerCallback(aVarI);
        this.A.setShowRewardVideoListener(this.f36343r);
        this.A.setChoiceOneCallback(this.f36330b0);
        this.A.setCampaigns(this.f36350y);
        this.A.setCampaignDownLoadTasks(this.f36349x);
        this.A.setRewardUnitSetting(this.f36344s);
        this.A.setUnitId(this.f36331f);
        this.A.setPlacementId(this.f36332g);
        this.A.setUserId(this.f36333h);
        this.A.setActivity(this);
        CampaignEx campaignEx = this.f36348w;
        if (((campaignEx != null && (rewardPlus = campaignEx.getRewardPlus()) != null) || (this.f36350y.get(0) != null && (rewardPlus = this.f36350y.get(0).getRewardPlus()) != null)) && !TextUtils.isEmpty(rewardPlus.getName()) && rewardPlus.getAmount() > 0) {
            com.mbridge.msdk.videocommon.entity.c cVar = new com.mbridge.msdk.videocommon.entity.c(rewardPlus.getName(), rewardPlus.getAmount());
            if (cVar.a() < 0) {
                cVar.a(1);
            }
            this.f36334i = cVar;
        }
        this.A.setReward(this.f36334i);
        this.A.setIVRewardEnable(this.f36338m, this.f36339n, this.f36340o);
        this.A.setIV(this.f36336k);
        this.A.setMute(this.f36335j);
        this.A.setJSFactory((com.mbridge.msdk.video.signal.factory.b) this.jsFactory);
        this.A.setDeveloperExtraData(this.E);
        this.A.init(this);
        this.A.setAdSession(this.R);
        this.A.setVideoEvents(this.S);
        this.A.setAdEvents(this.T);
        this.A.onCreate(this.P);
        if (!com.mbridge.msdk.util.b.a() || (list = this.f36350y) == null || list.size() <= 0 || this.f36350y.get(0) == null) {
            return;
        }
        d(this.f36350y.get(0));
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.isActiveOm() && this.R == null) {
                    com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(getApplicationContext(), false, campaignEx.getOmid(), campaignEx.getRequestId(), campaignEx.getId(), this.f36331f, campaignEx.getVideoUrlEncode(), campaignEx.getRequestIdNotice());
                    this.R = bVarA;
                    if (bVarA != null) {
                        this.T = com.iab.omid.library.mmadbridge.adsession.a.a(bVarA);
                        this.S = com.iab.omid.library.mmadbridge.adsession.media.a.g(this.R);
                    }
                }
            } catch (Throwable th2) {
                o0.b("MBRewardVideoActivity", th2.getMessage());
            }
        }
    }

    class b implements com.mbridge.msdk.video.dynview.listener.d {
        b() {
        }

        @Override
        public void a(CampaignEx campaignEx) {
            if (campaignEx == null) {
                MBRewardVideoActivity.this.b("campaign is null");
                return;
            }
            if (MBRewardVideoActivity.this.A != null) {
                new com.mbridge.msdk.video.dynview.ui.b().b(MBRewardVideoActivity.this.A, 500L);
            }
            MBRewardVideoActivity.this.f36348w = campaignEx;
            MBRewardVideoActivity.this.f36348w.setShowType(2);
            MBRewardVideoActivity mBRewardVideoActivity = MBRewardVideoActivity.this;
            mBRewardVideoActivity.c(mBRewardVideoActivity.f36348w);
        }

        @Override
        public void a() {
            if (MBRewardVideoActivity.this.A != null) {
                new com.mbridge.msdk.video.dynview.ui.b().b(MBRewardVideoActivity.this.A, 500L);
            }
            MBRewardVideoActivity.this.f36341p = true;
            MBRewardVideoActivity.this.j();
            if (MBRewardVideoActivity.this.f36351z != null) {
                MBRewardVideoActivity.this.f36351z.setNotchPadding(MBRewardVideoActivity.this.M, MBRewardVideoActivity.this.I, MBRewardVideoActivity.this.K, MBRewardVideoActivity.this.J, MBRewardVideoActivity.this.L);
            }
        }
    }

    private WindVaneWebView a(String str) {
        com.mbridge.msdk.videocommon.a.C0547a c0547aB = com.mbridge.msdk.videocommon.a.b(str);
        if (c0547aB != null) {
            return c0547aB.b();
        }
        return null;
    }

    public int a(int i10, int i11) {
        List<CampaignEx> list = this.f36350y;
        if (list == null || list.size() == 0) {
            return i10;
        }
        int videoLength = 0;
        int videoCompleteTime = 0;
        for (int i12 = 0; i12 < this.f36350y.size(); i12++) {
            if (this.f36350y.get(0) != null) {
                if (i12 == 0) {
                    videoCompleteTime = this.f36350y.get(0).getVideoCompleteTime();
                }
                videoLength += this.f36350y.get(i12).getVideoLength();
            }
        }
        if (i11 == 1) {
            if (i10 == 0) {
                if (videoLength >= 45) {
                    return 45;
                }
            } else if (videoLength > i10) {
                if (i10 > 45) {
                    return 45;
                }
                return i10;
            }
            return videoLength;
        }
        int videoLength2 = 0;
        for (int i13 = 0; i13 < i11 - 1; i13++) {
            if (this.f36350y.get(i13) != null) {
                videoLength2 += this.f36350y.get(i13).getVideoLength();
            }
        }
        if (videoCompleteTime > videoLength2) {
            return videoCompleteTime - videoLength2;
        }
        return 0;
    }

    private void e(CampaignEx campaignEx) {
        if (campaignEx != null) {
            int iA = a(campaignEx.getVideoCompleteTime(), this.G);
            this.f36348w = campaignEx;
            campaignEx.setCampaignIsFiltered(true);
            this.G = 1;
            this.f36348w.setVideoCompleteTime(iA);
            this.f36348w.setShowIndex(this.G);
            this.f36348w.setShowType(1);
            c(this.f36348w);
            return;
        }
        b("campaign is less");
    }

    private void b(List<CampaignEx> list) {
        int dynamicTempCode;
        if (list == null) {
            b("no available campaign");
            return;
        }
        if (list.size() == 0) {
            b("no available campaign");
            return;
        }
        if (list.get(0) != null) {
            dynamicTempCode = list.get(0).getDynamicTempCode();
            this.N = list.get(0).getCurrentLocalRid();
        } else {
            dynamicTempCode = 0;
        }
        if (dynamicTempCode != 5) {
            k();
            return;
        }
        for (CampaignEx campaignEx : list) {
            if (campaignEx != null) {
                this.H += campaignEx.getVideoLength();
            }
        }
        e(list.get(0));
    }

    private void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl());
            }
            if (TextUtils.isEmpty(campaignEx.getIconUrl())) {
                return;
            }
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getIconUrl());
        }
    }

    private void a(List<CampaignEx> list) {
        CampaignEx campaignEx;
        if (this.Q) {
            return;
        }
        if (list == null) {
            try {
                if (this.f36341p) {
                    list = this.f36350y;
                } else {
                    list = new ArrayList<>();
                    List<com.mbridge.msdk.videocommon.download.a> list2 = this.f36349x;
                    if (list2 != null && list2.get(0) != null && this.f36349x.get(0).c() != null) {
                        list.add(this.f36349x.get(0).c());
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        String currentLocalRid = "";
        if (list != null && !list.isEmpty() && (campaignEx = list.get(0)) != null) {
            currentLocalRid = campaignEx.getCurrentLocalRid();
        }
        if (!TextUtils.isEmpty(currentLocalRid)) {
            this.O = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(currentLocalRid);
        }
        if (this.O == null) {
            this.O = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f36331f);
            eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f36337l ? 1 : 0));
            eVar.a("adtp", Integer.valueOf(this.f36336k ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94));
            eVar.a("lrid", this.N);
            eVar.a("his_reason", "show campaign is null");
            this.O.a("2000129", eVar);
        }
        if (list != null) {
            this.O.b(list);
        }
        this.Q = true;
        com.mbridge.msdk.reward.report.metrics.a.a().a("2000129", this.O);
    }

    public void b(String str) {
        o0.b("MBRewardVideoActivity", str);
        a(this.f36350y);
        h hVar = this.f36343r;
        if (hVar != null) {
            hVar.a(this.O, str);
        }
        finish();
    }
}
