package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView;
import com.mbridge.msdk.video.module.listener.impl.i;
import com.mbridge.msdk.video.module.listener.impl.k;
import com.mbridge.msdk.video.module.listener.impl.l;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.h;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;

public class MBridgeContainerView extends MBridgeBaseView implements f, h {
    private int A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private int H;
    private boolean I;
    private boolean J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private String P;
    private com.mbridge.msdk.video.signal.factory.b Q;
    private boolean R;
    private boolean S;
    private List<CampaignEx> T;

    private MBridgePlayableView f38421m;

    private MBridgeClickCTAView f38422n;

    private MBridgeClickMiniCardView f38423o;

    private MBridgeNativeEndCardView f38424p;

    private MBridgeH5EndCardView f38425q;

    private MBridgeVastEndCardView f38426r;

    private MBridgeLandingPageView f38427s;

    private MBridgeVideoEndCoverView f38428t;

    private MBridgeAlertWebview f38429u;

    private MBridgeOrderCampView f38430v;

    private String f38431w;

    private int f38432x;

    private int f38433y;

    private int f38434z;

    class a implements Runnable {

        final com.mbridge.msdk.video.signal.factory.b f38435a;

        a(com.mbridge.msdk.video.signal.factory.b bVar) {
            this.f38435a = bVar;
        }

        @Override
        public void run() {
            MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
            mBridgeContainerView.a(this.f38435a, Integer.valueOf(mBridgeContainerView.f38394b.getVideo_end_type()));
        }
    }

    class b implements Runnable {

        final com.mbridge.msdk.video.signal.factory.b f38437a;

        b(com.mbridge.msdk.video.signal.factory.b bVar) {
            this.f38437a = bVar;
        }

        @Override
        public void run() {
            MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
            mBridgeContainerView.a(this.f38437a, Integer.valueOf(mBridgeContainerView.f38394b.getVideo_end_type()));
        }
    }

    class c implements com.mbridge.msdk.video.dynview.listener.b {
        c() {
        }

        @Override
        public void a() {
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeContainerView.this.notifyListener;
            if (aVar != null) {
                aVar.a(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, "");
            }
        }

        @Override
        public void b() {
            if (MBridgeContainerView.this.f38394b.getAdSpaceT() == 2) {
                MBridgeContainerView.this.showVideoEndCover();
            } else {
                MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
                mBridgeContainerView.showEndcard(mBridgeContainerView.f38394b.getVideo_end_type());
            }
        }
    }

    class d extends i {
        d(com.mbridge.msdk.video.module.listener.a aVar) {
            super(aVar);
        }

        @Override
        public void a(int i10, Object obj) {
            super.a(i10, obj);
            if (i10 == 100) {
                MBridgeContainerView.this.webviewshow();
                MBridgeContainerView mBridgeContainerView = MBridgeContainerView.this;
                mBridgeContainerView.onConfigurationChanged(mBridgeContainerView.getResources().getConfiguration());
                m mVar = new m();
                mVar.n(MBridgeContainerView.this.f38394b.getRequestId());
                mVar.o(MBridgeContainerView.this.f38394b.getRequestIdNotice());
                mVar.b(MBridgeContainerView.this.f38394b.getId());
                mVar.b(MBridgeContainerView.this.f38394b.isMraid() ? m.N : m.O);
                MBridgeContainerView mBridgeContainerView2 = MBridgeContainerView.this;
                g.d(mVar, mBridgeContainerView2.f38393a, mBridgeContainerView2.f38431w);
            }
        }
    }

    public MBridgeContainerView(Context context) {
        super(context);
        this.f38433y = 1;
        this.f38434z = 1;
        this.A = 1;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = true;
        this.F = false;
        this.G = false;
        this.I = false;
        this.J = false;
        this.R = false;
        this.S = false;
        this.T = new ArrayList();
    }

    private void addCTAView() {
        if (this.f38422n == null) {
            b(-1);
        }
        if (this.f38422n != null) {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(12, -1);
                addView(this.f38422n, 0, layoutParams);
            }
        }
    }

    private void b(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
        if (this.f38428t == null) {
            MBridgeVideoEndCoverView mBridgeVideoEndCoverView = new MBridgeVideoEndCoverView(this.f38393a);
            this.f38428t = mBridgeVideoEndCoverView;
            mBridgeVideoEndCoverView.setCampaign(this.f38394b);
            this.f38428t.setNotifyListener(new i(this.notifyListener));
            this.f38428t.preLoadData(bVar);
        }
    }

    private void e() {
        if (this.f38429u == null) {
            q();
        }
        MBridgeAlertWebview mBridgeAlertWebview = this.f38429u;
        if (mBridgeAlertWebview != null && mBridgeAlertWebview.getParent() != null) {
            removeView(this.f38429u);
        }
        addView(this.f38429u);
    }

    private void f() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            boolean zIsDynamicView = campaignEx.isDynamicView();
            boolean zL = t0.l(this.f38394b.getendcard_url());
            if (zIsDynamicView && !zL && !this.f38394b.isMraid()) {
                j();
                return;
            }
        }
        if (this.f38433y != 2 || this.I) {
            j();
        } else {
            g();
        }
    }

    private void g() {
        if (this.f38425q == null) {
            a(this.Q, (Integer) 2);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView == null || !mBridgeH5EndCardView.isLoadSuccess()) {
            j();
            MBridgeH5EndCardView mBridgeH5EndCardView2 = this.f38425q;
            if (mBridgeH5EndCardView2 != null) {
                mBridgeH5EndCardView2.reportRenderResult("timeout", 3);
                this.f38425q.setError(true);
            }
        } else {
            this.I = true;
            addView(this.f38425q);
            webviewshow();
            onConfigurationChanged(getResources().getConfiguration());
            this.f38425q.excuteTask();
            this.f38425q.setNotchValue(this.P, this.K, this.L, this.M, this.N);
            m mVar = new m();
            mVar.n(this.f38394b.getRequestId());
            mVar.o(this.f38394b.getRequestIdNotice());
            mVar.b(this.f38394b.getId());
            mVar.b(this.f38394b.isMraid() ? m.N : m.O);
            g.d(mVar, this.f38393a, this.f38431w);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView3 = this.f38425q;
        if (mBridgeH5EndCardView3 != null) {
            mBridgeH5EndCardView3.setUnitId(this.f38431w);
        }
    }

    private void h() {
        if (this.f38427s == null) {
            a(this.Q, (Integer) 4);
        }
        this.f38427s.setUnitId(this.f38431w);
        this.f38427s.preLoadData(this.Q);
        addView(this.f38427s);
    }

    private void i() {
        if (this.f38423o == null) {
            b(-2);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        if (this.D && this.E) {
            this.E = false;
            layoutParams.width = 1;
            layoutParams.height = 1;
        }
        addView(this.f38423o, layoutParams);
    }

    private void j() {
        this.f38433y = 1;
        if (this.f38424p == null) {
            a(this.Q, (Integer) 2);
        }
        addView(this.f38424p);
        onConfigurationChanged(getResources().getConfiguration());
        this.f38424p.notifyShowListener();
        this.S = true;
        bringToFront();
    }

    private void k() {
        if (this.f38421m == null) {
            preLoadData(this.Q);
        }
        addView(this.f38421m);
        MBridgePlayableView mBridgePlayableView = this.f38421m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.setUnitId(this.f38431w);
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null && campaignEx.isMraid() && this.f38394b.getPlayable_ads_without_video() == 2) {
                this.f38421m.setCloseVisible(0);
            }
            this.f38421m.setNotchValue(this.P, this.K, this.L, this.M, this.N);
        }
    }

    private void l() {
        if (this.f38426r == null) {
            a(this.Q, (Integer) 3);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        addView(this.f38426r, layoutParams);
        this.f38426r.notifyShowListener();
    }

    private void m() {
        if (this.f38428t == null) {
            b(this.Q);
        }
        addView(this.f38428t);
        onConfigurationChanged(getResources().getConfiguration());
        this.S = true;
        bringToFront();
    }

    private boolean n() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        return viewGroup.indexOfChild(this) == viewGroup.getChildCount() - 1;
    }

    private void o() {
        this.C = false;
        this.S = false;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            int i10 = 0;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt instanceof MBridgeContainerView) {
                    i10++;
                } else {
                    viewGroup.bringChildToFront(childAt);
                }
            }
        }
    }

    private void p() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null) {
            return;
        }
        String str = campaignEx.getendcard_url();
        boolean zIsEmpty = TextUtils.isEmpty(str);
        int i10 = TTAdConstant.DEEPLINK_FALLBACK_CODE;
        if (!zIsEmpty) {
            try {
                i10 = Integer.parseInt(z0.a(str, "ecid"));
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage());
            }
        }
        this.f38424p = new MBridgeNativeEndCardView(this.f38393a, null, true, i10, this.f38394b.getAdSpaceT() == 2, this.f38403k, this.f38394b.getMof_tplid());
        if (this.f38394b.getDynamicTempCode() != 5) {
            this.f38424p.setCampaign(this.f38394b);
            return;
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null && (aVar instanceof k)) {
            ((k) aVar).a(this.f38394b);
        }
        this.f38424p.setCampaign(this.f38394b);
    }

    private void q() {
        if (this.f38429u == null) {
            MBridgeAlertWebview mBridgeAlertWebview = new MBridgeAlertWebview(this.f38393a);
            this.f38429u = mBridgeAlertWebview;
            mBridgeAlertWebview.setUnitId(this.f38431w);
            this.f38429u.setCampaign(this.f38394b);
        }
        this.f38429u.preLoadData(this.Q);
    }

    private void r() {
        setWrapContent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(12, -1);
        }
    }

    public void addOrderViewData(List<CampaignEx> list) {
        if (list == null) {
            return;
        }
        this.T = list;
    }

    @Override
    public void addView(View view) {
        if (view == null) {
            o0.b(MBridgeBaseView.TAG, "view is null");
        } else {
            a(view);
            super.addView(view);
        }
    }

    public boolean canBackPress() {
        if (this.f38424p != null) {
            return false;
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView != null) {
            return mBridgeH5EndCardView.canBackPress();
        }
        MBridgeLandingPageView mBridgeLandingPageView = this.f38427s;
        if (mBridgeLandingPageView != null) {
            return mBridgeLandingPageView.canBackPress();
        }
        MBridgePlayableView mBridgePlayableView = this.f38421m;
        if (mBridgePlayableView != null) {
            return mBridgePlayableView.canBackPress();
        }
        return false;
    }

    @Override
    public void configurationChanged(int i10, int i11, int i12) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
        if (mBridgeClickMiniCardView == null || mBridgeClickMiniCardView.getVisibility() != 0) {
            return;
        }
        this.f38423o.resizeMiniCard(i10, i11);
    }

    @Override
    public void defaultShow() {
        super.defaultShow();
    }

    @Override
    public boolean endCardShowing() {
        return this.B;
    }

    public boolean endcardIsPlayable() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        return mBridgeH5EndCardView != null && mBridgeH5EndCardView.isPlayable();
    }

    public MBridgeH5EndCardView getH5EndCardView() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        return mBridgeH5EndCardView == null ? this.f38421m : mBridgeH5EndCardView;
    }

    public CampaignEx getReSetCampaign() {
        if (!this.f38394b.isDynamicView() || !TextUtils.isEmpty(this.f38394b.getendcard_url())) {
            return null;
        }
        int size = this.T.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (this.T.get(i11) != null && this.T.get(i11).getId() == this.f38394b.getId()) {
                i10 = i11 - 1;
                break;
            }
        }
        if (i10 < 0 || i10 >= size || this.T.get(i10) == null) {
            return null;
        }
        return this.T.get(i10);
    }

    public boolean getShowingTransparent() {
        return this.D;
    }

    public String getUnitID() {
        return this.f38431w;
    }

    public int getVideoInteractiveType() {
        return this.f38432x;
    }

    public int getVideoSkipTime() {
        return this.H;
    }

    public void handlerPlayableException(String str) {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView == null) {
            f();
            return;
        }
        mBridgeH5EndCardView.handlerPlayableException(str);
        if (this.I) {
            f();
        }
    }

    @Override
    public void hideAlertWebview() {
        if (isLast()) {
            return;
        }
        if (this.R && !this.S) {
            o();
            this.R = false;
        }
        MBridgeAlertWebview mBridgeAlertWebview = this.f38429u;
        if (mBridgeAlertWebview == null || mBridgeAlertWebview.getParent() == null) {
            return;
        }
        removeView(this.f38429u);
        MBridgeClickCTAView mBridgeClickCTAView = this.f38422n;
        if (mBridgeClickCTAView == null || mBridgeClickCTAView.getParent() == null) {
            return;
        }
        r();
    }

    @Override
    public void init(Context context) {
        setVisibility(0);
    }

    public void install(CampaignEx campaignEx) {
        this.notifyListener.a(105, campaignEx);
    }

    public boolean isLast() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        return viewGroup != null && viewGroup.indexOfChild(this) == 0;
    }

    @Override
    public void ivRewardAdsWithoutVideo(String str) {
        this.notifyListener.a(103, str);
    }

    public boolean miniCardLoaded() {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
        return mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.isLoadSuccess();
    }

    @Override
    public boolean miniCardShowing() {
        return this.C;
    }

    @Override
    public void notifyCloseBtn(int i10) {
        MBridgePlayableView mBridgePlayableView = this.f38421m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.notifyCloseBtn(i10);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.notifyCloseBtn(i10);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(configuration, this.f38421m, this.f38422n, this.f38423o, this.f38424p, this.f38425q, this.f38426r, this.f38427s, this.f38428t);
    }

    public void onEndcardBackPress() {
        if (this.f38424p != null || this.f38426r != null) {
            this.notifyListener.a(104, "");
            try {
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
                return;
            } catch (Exception e10) {
                o0.b(MBridgeBaseView.TAG, e10.getMessage());
                return;
            }
        }
        if (this.f38427s != null) {
            this.notifyListener.a(103, "");
            return;
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.onBackPress();
        }
    }

    public void onMiniEndcardBackPress() {
        if (this.C) {
            this.notifyListener.a(107, "");
        }
    }

    public void onPlayableBackPress() {
        MBridgePlayableView mBridgePlayableView = this.f38421m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.onBackPress();
        }
    }

    public void orientation(Configuration configuration) {
        a(this.f38421m, this.f38423o, this.f38425q, this.f38429u);
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            if (campaignEx.getPlayable_ads_without_video() == 2) {
                a(bVar);
            } else {
                b(this.f38432x);
                if (this.f38394b.isDynamicView()) {
                    try {
                        a(bVar, Integer.valueOf(this.f38394b.getVideo_end_type()));
                    } catch (Throwable th2) {
                        o0.b(MBridgeBaseView.TAG, th2.getMessage());
                        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(new a(bVar));
                    }
                    if (!t0.l(this.f38394b.getendcard_url())) {
                        try {
                            String strA = z0.a(this.f38394b.getendcard_url(), "mof");
                            if (!TextUtils.isEmpty(strA) && Integer.parseInt(strA) == 1) {
                                com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f38394b, 2);
                            }
                        } catch (Exception e10) {
                            o0.b(MBridgeBaseView.TAG, e10.getMessage());
                        }
                    }
                } else {
                    new Handler(Looper.getMainLooper()).postDelayed(new b(bVar), getVideoSkipTime());
                }
            }
            q();
        }
    }

    @Override
    public void readyStatus(int i10) {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.readyStatus(i10);
        }
    }

    public void release() {
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.release();
            this.f38425q = null;
        }
        MBridgePlayableView mBridgePlayableView = this.f38421m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.release();
        }
        MBridgeLandingPageView mBridgeLandingPageView = this.f38427s;
        if (mBridgeLandingPageView != null) {
            mBridgeLandingPageView.release();
        }
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f38424p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.clearMoreOfferBitmap();
            this.f38424p.release();
        }
        if (this.notifyListener != null) {
            this.notifyListener = null;
        }
    }

    @Override
    public void resizeMiniCard(int i10, int i11, int i12) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.resizeMiniCard(i10, i11);
            this.f38423o.setRadius(i12);
            removeAllViews();
            setMatchParent();
            this.S = true;
            bringToFront();
            i();
        }
    }

    public void setCloseDelayTime(int i10) {
        this.f38434z = i10;
    }

    public void setEndscreenType(int i10) {
        this.f38433y = i10;
    }

    public void setJSFactory(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.Q = bVar;
    }

    public void setMBridgeClickMiniCardViewTransparent() {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.setMBridgeClickMiniCardViewTransparent();
            this.f38423o.setMBridgeClickMiniCardViewClickable(false);
        }
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13, int i14) {
        o0.b(MBridgeBaseView.TAG, "NOTCH ContainerView " + String.format("%1s-%2s-%3s-%4s-%5s", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i10)));
        this.O = i10;
        this.K = i11;
        this.L = i12;
        this.M = i13;
        this.N = i14;
        this.P = b0.a(i10, i11, i12, i13, i14);
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f38424p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setNotchPadding(i11, i12, i13, i14);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.f38444p != null) {
            mBridgeH5EndCardView.setNotchValue(this.P, i11, i12, i13, i14);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f38425q.f38444p, "oncutoutfetched", Base64.encodeToString(this.P.getBytes(), 0));
        }
        MBridgePlayableView mBridgePlayableView = this.f38421m;
        if (mBridgePlayableView != null && mBridgePlayableView.f38444p != null) {
            mBridgePlayableView.setNotchValue(this.P, i11, i12, i13, i14);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f38421m.f38444p, "oncutoutfetched", Base64.encodeToString(this.P.getBytes(), 0));
        }
        MBridgeOrderCampView mBridgeOrderCampView = this.f38430v;
        if (mBridgeOrderCampView != null) {
            mBridgeOrderCampView.setNotchPadding(i11, i12, i13, i14);
        }
    }

    @Override
    public void setNotifyListener(com.mbridge.msdk.video.module.listener.a aVar) {
        super.setNotifyListener(aVar);
        a(aVar, this.f38421m, this.f38422n, this.f38423o, this.f38424p, this.f38425q, this.f38426r, this.f38427s, this.f38428t);
    }

    public void setOnPause() {
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f38424p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setOnPause();
        }
    }

    public void setOnResume() {
        MBridgeNativeEndCardView mBridgeNativeEndCardView = this.f38424p;
        if (mBridgeNativeEndCardView != null) {
            mBridgeNativeEndCardView.setOnResume();
        }
    }

    public void setPlayCloseBtnTm(int i10) {
        this.A = i10;
    }

    public void setRewardStatus(boolean z10) {
        this.J = z10;
    }

    public void setShowingTransparent(boolean z10) {
        this.D = z10;
    }

    public void setUnitID(String str) {
        this.f38431w = str;
    }

    public void setVideoInteractiveType(int i10) {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            this.f38432x = i10;
            return;
        }
        int iB = com.mbridge.msdk.video.dynview.util.a.b(this.f38394b);
        if (iB == 100) {
            this.f38432x = i10;
        } else {
            this.f38432x = iB;
        }
    }

    public void setVideoSkipTime(int i10) {
        this.H = i10;
    }

    @Override
    public boolean showAlertWebView() {
        MBridgeAlertWebview mBridgeAlertWebview = this.f38429u;
        if (mBridgeAlertWebview == null || !mBridgeAlertWebview.isLoadSuccess()) {
            return false;
        }
        setMatchParent();
        if (!n() && !this.S) {
            removeAllViews();
            bringToFront();
            this.R = true;
        }
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
        if (mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.getParent() != null) {
            return false;
        }
        e();
        setBackgroundColor(0);
        this.f38429u.webviewshow();
        return true;
    }

    @Override
    public void showEndcard(int i10) {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            if (i10 == 1) {
                this.notifyListener.a(104, "");
            } else if (i10 == 100) {
                if (campaignEx.getPlayable_ads_without_video() == 2) {
                    this.G = true;
                }
                a(this.f38421m);
                setMatchParent();
                j();
            } else if (i10 == 3) {
                removeAllViews();
                setMatchParent();
                l();
                this.S = true;
                bringToFront();
            } else if (i10 == 4) {
                this.notifyListener.a(113, "");
                removeAllViews();
                setMatchParent();
                h();
                this.S = true;
                bringToFront();
            } else if (i10 != 5) {
                removeAllViews();
                setMatchParent();
                this.S = true;
                bringToFront();
                f();
                this.notifyListener.a(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, "");
            } else {
                this.notifyListener.a(106, "");
            }
        }
        this.B = true;
    }

    @Override
    public void showMiniCard(int i10, int i11, int i12, int i13, int i14) {
        MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
        if (mBridgeClickMiniCardView != null) {
            mBridgeClickMiniCardView.setMiniCardLocation(i10, i11, i12, i13);
            this.f38423o.setRadius(i14);
            this.f38423o.setCloseVisible(8);
            this.f38423o.setClickable(false);
            removeAllViews();
            setMatchParent();
            this.S = true;
            bringToFront();
            i();
            if (this.F) {
                return;
            }
            this.F = true;
            this.notifyListener.a(109, "");
            this.notifyListener.a(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, "");
        }
    }

    public void showOrderCampView() {
        MBridgeOrderCampView mBridgeOrderCampView = new MBridgeOrderCampView(this.f38393a);
        this.f38430v = mBridgeOrderCampView;
        mBridgeOrderCampView.setCampaignExes(this.T);
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null && (aVar instanceof k)) {
            ((k) aVar).a(this.T);
        }
        this.f38430v.setNotifyListener(new i(this.notifyListener));
        this.f38430v.setRewarded(this.J);
        this.f38430v.setNotchPadding(this.K, this.L, this.M, this.N);
        this.f38430v.setCampOrderViewBuildCallback(new c());
        this.f38430v.createView(this);
    }

    public void showPlayableView() {
        if (this.f38394b == null || this.G) {
            return;
        }
        removeAllViews();
        setMatchParent();
        k();
        this.S = true;
        bringToFront();
    }

    @Override
    public void showVideoClickView(int i10) {
        if (this.f38394b != null) {
            if (i10 == -1) {
                if (isLast() || endCardShowing()) {
                    return;
                }
                o();
                return;
            }
            if (i10 == 1) {
                if (this.B) {
                    return;
                }
                MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
                if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getParent() != null) {
                    removeView(this.f38425q);
                }
                MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
                if (mBridgeClickMiniCardView != null && mBridgeClickMiniCardView.getParent() != null) {
                    removeView(this.f38423o);
                }
                MBridgeClickCTAView mBridgeClickCTAView = this.f38422n;
                if (mBridgeClickCTAView == null || mBridgeClickCTAView.getParent() == null) {
                    try {
                        CampaignEx campaignEx = this.f38394b;
                        if (campaignEx != null && campaignEx.getPlayable_ads_without_video() == 1) {
                            this.S = true;
                            addCTAView();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                if (isLast()) {
                    bringToFront();
                    return;
                }
                return;
            }
            if (i10 != 2) {
                return;
            }
            MBridgeClickCTAView mBridgeClickCTAView2 = this.f38422n;
            if (mBridgeClickCTAView2 != null && mBridgeClickCTAView2.getParent() != null) {
                removeView(this.f38422n);
            }
            MBridgeAlertWebview mBridgeAlertWebview = this.f38429u;
            if (mBridgeAlertWebview == null || mBridgeAlertWebview.getParent() == null) {
                MBridgeClickMiniCardView mBridgeClickMiniCardView2 = this.f38423o;
                if (mBridgeClickMiniCardView2 == null || mBridgeClickMiniCardView2.getParent() == null) {
                    try {
                        CampaignEx campaignEx2 = this.f38394b;
                        if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() == 1) {
                            setMatchParent();
                            i();
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                if (!miniCardLoaded()) {
                    o();
                    return;
                }
                MBridgeH5EndCardView mBridgeH5EndCardView2 = this.f38425q;
                if (mBridgeH5EndCardView2 != null && mBridgeH5EndCardView2.getParent() != null) {
                    removeView(this.f38425q);
                }
                this.notifyListener.a(112, "");
                CampaignEx campaignEx3 = this.f38394b;
                if (campaignEx3 != null && !campaignEx3.isHasReportAdTrackPause()) {
                    this.f38394b.setHasReportAdTrackPause(true);
                    com.mbridge.msdk.video.module.report.b.c(this.f38393a, this.f38394b);
                }
                if (this.D) {
                    this.notifyListener.a(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, "");
                } else {
                    this.S = true;
                    bringToFront();
                    webviewshow();
                    onConfigurationChanged(getResources().getConfiguration());
                }
                this.C = true;
            }
        }
    }

    @Override
    public void showVideoEndCover() {
        removeAllViews();
        setMatchParent();
        m();
    }

    @Override
    public void toggleCloseBtn(int i10) {
        MBridgePlayableView mBridgePlayableView = this.f38421m;
        if (mBridgePlayableView != null) {
            mBridgePlayableView.toggleCloseBtn(i10);
        }
        MBridgeH5EndCardView mBridgeH5EndCardView = this.f38425q;
        if (mBridgeH5EndCardView != null) {
            mBridgeH5EndCardView.toggleCloseBtn(i10);
        }
    }

    public void triggerCloseBtn(String str) {
        try {
            e eVar = new e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f38394b);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
        if (this.f38394b != null) {
            this.notifyListener.a(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, "");
            this.notifyListener.a(104, "");
        }
    }

    public void webviewshow() {
        try {
            e eVar = new e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000133", this.f38394b, eVar);
        } catch (Exception unused) {
        }
        b(this.f38421m, this.f38423o, this.f38425q, this.f38429u);
    }

    private void a(View view) {
        if (view != null) {
            try {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(view);
                }
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            }
        }
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (view != null) {
            a(view);
            super.addView(view, layoutParams);
        } else {
            o0.b(MBridgeBaseView.TAG, "view is null");
        }
    }

    private void a(com.mbridge.msdk.video.signal.factory.b bVar) {
        if (this.f38421m == null) {
            this.f38421m = new MBridgePlayableView(this.f38393a);
        }
        this.f38421m.setCloseDelayShowTime(this.f38434z);
        this.f38421m.setPlayCloseBtnTm(this.A);
        this.f38421m.setCampaign(this.f38394b);
        this.f38421m.setNotifyListener(new d(this.notifyListener));
        this.f38421m.preLoadData(bVar);
    }

    private void b(int i10) {
        if (i10 != -3) {
            if (i10 != -2) {
                if (this.f38422n == null) {
                    this.f38422n = new MBridgeClickCTAView(this.f38393a);
                }
                this.f38422n.setCampaign(this.f38394b);
                this.f38422n.setUnitId(this.f38431w);
                this.f38422n.setNotifyListener(new i(this.notifyListener));
                this.f38422n.preLoadData(this.Q);
                return;
            }
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null || campaignEx.getVideo_end_type() != 2) {
                return;
            }
            if (this.f38423o == null) {
                this.f38423o = new MBridgeClickMiniCardView(this.f38393a);
            }
            this.f38423o.setCampaign(this.f38394b);
            MBridgeClickMiniCardView mBridgeClickMiniCardView = this.f38423o;
            mBridgeClickMiniCardView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.g(mBridgeClickMiniCardView, this.notifyListener));
            this.f38423o.preLoadData(this.Q);
            setMatchParent();
            i();
            o();
        }
    }

    public void a(com.mbridge.msdk.video.signal.factory.b bVar, Integer num) {
        CampaignEx campaignEx;
        com.mbridge.msdk.video.module.listener.a aVar;
        CampaignEx campaignEx2;
        this.Q = bVar;
        CampaignEx campaignEx3 = this.f38394b;
        if (campaignEx3 != null) {
            if (num == null) {
                num = Integer.valueOf(campaignEx3.getVideo_end_type());
            }
            if (!isLast()) {
                o();
            }
            int iIntValue = num.intValue();
            if (iIntValue != 1) {
                if (iIntValue == 3) {
                    if (this.f38426r == null) {
                        this.f38426r = new MBridgeVastEndCardView(this.f38393a);
                    }
                    this.f38426r.setCampaign(this.f38394b);
                    this.f38426r.setNotifyListener(new l(this.notifyListener));
                    this.f38426r.preLoadData(bVar);
                    return;
                }
                if (iIntValue == 4) {
                    if (this.f38427s == null) {
                        this.f38427s = new MBridgeLandingPageView(this.f38393a);
                    }
                    this.f38427s.setCampaign(this.f38394b);
                    this.f38427s.setNotifyListener(new i(this.notifyListener));
                    return;
                }
                if (iIntValue != 5) {
                    if (this.f38433y == 2) {
                        boolean zIsDynamicView = this.f38394b.isDynamicView();
                        boolean zL = t0.l(this.f38394b.getendcard_url());
                        if ((zIsDynamicView && !zL && (campaignEx2 = this.f38394b) != null && !campaignEx2.isMraid()) || (campaignEx = this.f38394b) == null || campaignEx.getAdSpaceT() == 2) {
                            return;
                        }
                        if (this.f38425q == null) {
                            this.f38425q = new MBridgeH5EndCardView(this.f38393a);
                            try {
                                e eVar = new e();
                                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", this.f38394b, eVar);
                            } catch (Throwable th2) {
                                o0.b(MBridgeBaseView.TAG, th2.getMessage());
                            }
                        }
                        if (this.f38394b.getDynamicTempCode() == 5 && (aVar = this.notifyListener) != null && (aVar instanceof k)) {
                            ((k) aVar).a(this.f38394b);
                        }
                        this.f38425q.setCampaign(this.f38394b);
                        this.f38425q.setCloseDelayShowTime(this.f38434z);
                        this.f38425q.setNotifyListener(new i(this.notifyListener));
                        this.f38425q.setUnitId(this.f38431w);
                        this.f38425q.setNotchValue(this.P, this.K, this.L, this.M, this.N);
                        this.f38425q.preLoadData(bVar);
                        if (this.D) {
                            return;
                        }
                        addView(this.f38425q);
                        return;
                    }
                    CampaignEx campaignEx4 = this.f38394b;
                    int iB = (campaignEx4 == null || campaignEx4.getRewardTemplateMode() == null) ? 0 : this.f38394b.getRewardTemplateMode().b();
                    if (this.f38424p == null) {
                        CampaignEx campaignEx5 = this.f38394b;
                        if (campaignEx5 != null && campaignEx5.isDynamicView()) {
                            p();
                        } else {
                            Context context = this.f38393a;
                            CampaignEx campaignEx6 = this.f38394b;
                            boolean z10 = campaignEx6 != null && campaignEx6.getAdSpaceT() == 2;
                            CampaignEx campaignEx7 = this.f38394b;
                            MBridgeNativeEndCardView mBridgeNativeEndCardView = new MBridgeNativeEndCardView(context, null, false, -1, z10, iB, campaignEx7 != null ? campaignEx7.getMof_tplid() : 0);
                            this.f38424p = mBridgeNativeEndCardView;
                            mBridgeNativeEndCardView.setCampaign(this.f38394b);
                        }
                    }
                    this.f38424p.setLayout();
                    if (this.f38394b.isDynamicView()) {
                        if (com.mbridge.msdk.video.dynview.moffer.a.a().b(this.f38394b.getRequestId() + "_" + this.f38394b.getId())) {
                            try {
                                com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f38424p, this.f38394b.getRequestId() + "_" + this.f38394b.getId(), new i(this.notifyListener));
                            } catch (Exception e10) {
                                o0.b(MBridgeBaseView.TAG, e10.getMessage());
                            }
                        } else {
                            try {
                                String strA = z0.a(this.f38394b.getendcard_url(), "mof");
                                if (!TextUtils.isEmpty(strA) && Integer.parseInt(strA) == 1) {
                                    com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f38394b, this.f38424p, new i(this.notifyListener), 2);
                                }
                            } catch (Exception e11) {
                                o0.b(MBridgeBaseView.TAG, e11.getMessage());
                            }
                        }
                    }
                    this.f38424p.setUnitId(this.f38431w);
                    this.f38424p.setCloseBtnDelay(this.f38434z);
                    this.f38424p.setNotifyListener(new i(this.notifyListener));
                    this.f38424p.preLoadData(bVar);
                    this.f38424p.setNotchPadding(this.K, this.L, this.M, this.N);
                }
            }
        }
    }

    public MBridgeContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38433y = 1;
        this.f38434z = 1;
        this.A = 1;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = true;
        this.F = false;
        this.G = false;
        this.I = false;
        this.J = false;
        this.R = false;
        this.S = false;
        this.T = new ArrayList();
    }

    private void b(MBridgeH5EndCardView... mBridgeH5EndCardViewArr) {
        for (MBridgeH5EndCardView mBridgeH5EndCardView : mBridgeH5EndCardViewArr) {
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getVisibility() == 0 && mBridgeH5EndCardView.getParent() != null && !isLast()) {
                mBridgeH5EndCardView.webviewshow();
            }
        }
    }

    private void a(com.mbridge.msdk.video.module.listener.a aVar, MBridgeBaseView... mBridgeBaseViewArr) {
        for (MBridgeBaseView mBridgeBaseView : mBridgeBaseViewArr) {
            if (mBridgeBaseView != null) {
                if (mBridgeBaseView instanceof MBridgeClickMiniCardView) {
                    mBridgeBaseView.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.g(this.f38423o, aVar));
                } else {
                    mBridgeBaseView.setNotifyListener(new i(aVar));
                }
            }
        }
    }

    private void a(Configuration configuration, MBridgeBaseView... mBridgeBaseViewArr) {
        for (MBridgeBaseView mBridgeBaseView : mBridgeBaseViewArr) {
            if (mBridgeBaseView != null && (mBridgeBaseView instanceof MBridgeClickMiniCardView)) {
                mBridgeBaseView.onSelfConfigurationChanged(configuration);
            } else if (mBridgeBaseView != null && mBridgeBaseView.getVisibility() == 0 && mBridgeBaseView.getParent() != null && !isLast()) {
                mBridgeBaseView.onSelfConfigurationChanged(configuration);
            }
        }
    }

    private void a(MBridgeH5EndCardView... mBridgeH5EndCardViewArr) {
        for (MBridgeH5EndCardView mBridgeH5EndCardView : mBridgeH5EndCardViewArr) {
            if (mBridgeH5EndCardView != null && mBridgeH5EndCardView.getVisibility() == 0) {
                mBridgeH5EndCardView.orientation(getResources().getConfiguration());
            }
        }
    }
}
