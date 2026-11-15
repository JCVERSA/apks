package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewParameters;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBAlertDialog;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class MBridgeVideoView extends MBridgeBaseView implements com.mbridge.msdk.video.signal.j {
    private static int R0;
    private static int S0;
    private static int T0;
    private static int U0;
    private static int V0;
    private static boolean W0;
    private static long X0;
    private boolean A;
    private int A0;
    private FrameLayout B;
    private int B0;
    private MBridgeClickCTAView C;
    private int C0;
    private com.mbridge.msdk.video.signal.factory.b D;
    private AcquireRewardPopViewParameters D0;
    private int E;
    private MBAcquireRewardPopView E0;
    private int F;
    private boolean F0;
    private RelativeLayout G;
    private RelativeLayout G0;
    private boolean H;
    private CollapsibleWebView H0;
    private boolean I;
    private RelativeLayout I0;
    private boolean J;
    private boolean J0;
    private String K;
    private int K0;
    private int L;
    private boolean L0;
    private int M;
    private boolean M0;
    private int N;
    private w N0;
    private MBAlertDialog O;
    private boolean O0;
    private com.mbridge.msdk.widget.dialog.b P;
    private Runnable P0;
    private String Q;
    private final Runnable Q0;
    private double R;
    private double S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;

    private boolean f38525a0;

    private boolean f38526b0;

    private boolean f38527c0;

    private boolean f38528d0;

    private boolean f38529e0;

    private int f38530f0;

    private boolean f38531g0;

    private int f38532h0;

    private com.iab.omid.library.mmadbridge.adsession.b f38533i0;

    private com.iab.omid.library.mmadbridge.adsession.media.a f38534j0;

    private String f38535k0;

    private int f38536l0;

    private TextView f38537m;

    private int f38538m0;
    public List<CampaignEx> mCampOrderViewData;
    public int mCampaignSize;
    public int mCurrPlayNum;
    public int mCurrentPlayProgressTime;
    public int mMuteSwitch;
    public PlayerView mPlayerView;
    public SoundImageView mSoundImageView;

    private View f38539n;

    private int f38540n0;

    private RelativeLayout f38541o;

    private boolean f38542o0;

    private ImageView f38543p;

    private boolean f38544p0;

    private ProgressBar f38545q;

    private boolean f38546q0;

    private FeedBackButton f38547r;

    private boolean f38548r0;

    private ImageView f38549s;

    private boolean f38550s0;

    private MBridgeSegmentsProgressBar f38551t;

    private boolean f38552t0;
    public TextView tvFlag;

    private com.mbridge.msdk.video.module.listener.a f38553u;

    private boolean f38554u0;

    private u f38555v;

    private boolean f38556v0;

    private boolean f38557w;

    private boolean f38558w0;

    private com.mbridge.msdk.video.dynview.listener.a f38559x;

    private AlphaAnimation f38560x0;

    private com.mbridge.msdk.video.dynview.listener.f f38561y;

    private MBridgeBaitClickView f38562y0;

    private int f38563z;

    private int f38564z0;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            MBridgeVideoView.this.f38528d0 = true;
        }
    }

    class b implements Runnable {

        final int f38566a;

        final int f38567b;

        final int f38568c;

        final int f38569d;

        b(int i10, int i11, int i12, int i13) {
            this.f38566a = i10;
            this.f38567b = i11;
            this.f38568c = i12;
            this.f38569d = i13;
        }

        @Override
        public void run() {
            if (MBridgeVideoView.this.f38541o == null) {
                return;
            }
            MBridgeVideoView.this.f38541o.setVisibility(0);
            CampaignEx campaignEx = MBridgeVideoView.this.f38394b;
            if (campaignEx == null || campaignEx.getAdSpaceT() == 2) {
                return;
            }
            MBridgeVideoView.this.f38541o.setPadding(this.f38566a, this.f38567b, this.f38568c, this.f38569d);
            MBridgeVideoView.this.f38541o.startAnimation(MBridgeVideoView.this.f38560x0);
        }
    }

    class c implements com.mbridge.msdk.foundation.same.image.c {

        class a implements Runnable {

            final Bitmap f38572a;

            class RunnableC0543a implements Runnable {

                final Bitmap f38574a;

                RunnableC0543a(Bitmap bitmap) {
                    this.f38574a = bitmap;
                }

                @Override
                public void run() {
                    MBridgeVideoView.this.f38543p.setVisibility(0);
                    MBridgeVideoView.this.f38543p.setImageBitmap(this.f38574a);
                }
            }

            a(Bitmap bitmap) {
                this.f38572a = bitmap;
            }

            @Override
            public void run() {
                try {
                    MBridgeVideoView.this.f38543p.post(new RunnableC0543a(y.a(this.f38572a, 10)));
                } catch (Exception e10) {
                    o0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
            }
        }

        c() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            o0.b(MBridgeBaseView.TAG, str);
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled() || MBridgeVideoView.this.f38543p == null) {
                        return;
                    }
                    com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new a(bitmap));
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
            }
        }
    }

    class d implements CollapsibleWebView.e {
        d() {
        }

        @Override
        public void a(View view, Map<String, String> map) {
        }

        @Override
        public void b(View view, Map<String, String> map) {
            String str;
            String str2 = "";
            if (map != null) {
                String str3 = map.get("url");
                str2 = str3 != null ? str3 : "";
                str = map.get(TrackingKey.DESCRIPTION);
            } else {
                str = "";
            }
            a(str2, str);
        }

        @Override
        public void a(View view, String str) {
            JSONObject jSONObject;
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() != 0) {
                MBridgeVideoView.this.G0.setVisibility(0);
            }
            Context context = MBridgeVideoView.this.getContext();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.click.a.a(context, mBridgeVideoView.f38394b, mBridgeVideoView.getUnitId(), MBridgeVideoView.this.f38394b.getNoticeUrl(), true, false, com.mbridge.msdk.click.retry.a.f33588o);
            com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), MBridgeVideoView.this.f38394b);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 1);
            if (MBridgeVideoView.this.f38553u != null) {
                try {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, MBridgeVideoView.this.a(0));
                    } catch (JSONException e10) {
                        e = e10;
                        e.printStackTrace();
                    }
                } catch (JSONException e11) {
                    e = e11;
                    jSONObject = null;
                }
                MBridgeVideoView.this.f38553u.a(Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, jSONObject);
                MBridgeVideoView.this.f38394b.setClickType(1);
                MBridgeVideoView.this.f38394b.setClickTempSource(1);
                MBridgeVideoView.this.f38394b.setTriggerClickSource(2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", MBridgeVideoView.this.f38394b);
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 9);
                ArrayList arrayList = new ArrayList();
                arrayList.add("web_view");
                eVar.a("click_path", arrayList.toString());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", MBridgeVideoView.this.f38394b, eVar);
            }
            eVar.a("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.f38394b, eVar);
        }

        @Override
        public void b(View view, String str) {
            a(str, "timeout");
        }

        private void a(String str, String str2) {
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (str == null) {
                str = "";
            }
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() == 0) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 2);
            eVar.a("url", str);
            eVar.a("reason", str2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.f38394b, eVar);
        }
    }

    class e extends WebViewClient {
        e() {
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            o0.b(MBridgeBaseView.TAG, "WebView called onRenderProcessGone");
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    if (webView instanceof WindVaneWebView) {
                        ((WindVaneWebView) webView).release();
                    } else {
                        webView.destroy();
                    }
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
            }
            return true;
        }
    }

    class f implements CommonWebView.h {
        f() {
        }

        @Override
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NotificationCompat.CATEGORY_STATUS, 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.f38394b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, 0, 0, 0);
            }
            MBridgeVideoView.this.p();
        }
    }

    class g implements CommonWebView.h {
        g() {
        }

        @Override
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(8);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NotificationCompat.CATEGORY_STATUS, 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.f38394b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, MBridgeVideoView.this.K0, 0, 0);
            }
            MBridgeVideoView.this.o();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override
        public void onClick(View view) {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
            }
            if (MBridgeVideoView.this.G0 != null) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            if (MBridgeVideoView.this.f38550s0) {
                return;
            }
            MBridgeVideoView.this.p();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override
        public void onClick(View view) {
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            if (mBridgeVideoView.notifyListener != null) {
                mBridgeVideoView.f38394b.setTriggerClickSource(2);
                MBridgeVideoView.this.b("bait_click_clicked");
            }
        }
    }

    class j implements AcquireRewardPopViewBehaviourListener {
        j() {
        }

        @Override
        public void onOutOfContentClicked(float f10, float f11) {
            if (MBridgeVideoView.this.f38553u != null) {
                MBridgeVideoView.this.f38553u.a(105, "");
            }
        }

        @Override
        public void onReceivedFail(String str) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.f38394b, mBridgeVideoView.Q, MBridgeVideoView.this.f38564z0, 2, str);
        }

        @Override
        public void onReceivedSuccess(int i10) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            int videoCompleteTime = MBridgeVideoView.this.getVideoCompleteTime() - i10;
            MBridgeVideoView.this.f38394b.setVideoCompleteTime(videoCompleteTime);
            MBridgeVideoView.this.p();
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(130, Integer.valueOf(videoCompleteTime));
            }
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.f38394b, mBridgeVideoView.Q, MBridgeVideoView.this.f38564z0, 1, "");
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override
        public void run() {
            if (MBridgeVideoView.this.B != null) {
                MBridgeVideoView.this.B.setVisibility(8);
            }
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override
        public void run() {
            if (MBridgeVideoView.this.A0 <= 0) {
                MBridgeVideoView.this.showRewardPopView();
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                mBridgeVideoView.removeCallbacks(mBridgeVideoView.Q0);
            } else {
                MBridgeVideoView.W(MBridgeVideoView.this);
                MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                mBridgeVideoView2.postDelayed(mBridgeVideoView2.Q0, 1000L);
            }
        }
    }

    class n implements PlayerView.OnPlayerViewVisibleListener {
        n() {
        }

        @Override
        public void playerViewVisibleCallback() {
            if (MBridgeVideoView.this.f38557w) {
                return;
            }
            MBridgeVideoView.this.f38557w = true;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            if (mBridgeVideoView.notifyListener == null || mBridgeVideoView.f38555v == null) {
                return;
            }
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            mBridgeVideoView2.notifyListener.a(20, mBridgeVideoView2.f38555v);
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override
        public void onClick(View view) {
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                MBridgeVideoView.this.f38394b.setClickTempSource(1);
                MBridgeVideoView.this.f38394b.setTriggerClickSource(2);
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
            if (MBridgeVideoView.this.f38534j0 != null) {
                try {
                    MBridgeVideoView.this.f38534j0.a(InteractionType.CLICK);
                    o0.a("omsdk", "play video view:  click");
                } catch (Exception e11) {
                    o0.b("omsdk", e11.getMessage());
                }
            }
            MBridgeVideoView.this.setCTALayoutVisibleOrGone();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override
        public void onClick(View view) {
            MBridgeVideoView.this.f38394b.setClickTempSource(1);
            MBridgeVideoView.this.f38394b.setTriggerClickSource(2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_player_click", MBridgeVideoView.this.f38394b);
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override
        public void onClick(View view) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            Integer num = 2;
            PlayerView playerView = MBridgeVideoView.this.mPlayerView;
            if (playerView != null) {
                eVar.a("mute_state", Boolean.valueOf(playerView.isSilent()));
                if (MBridgeVideoView.this.mPlayerView.isSilent()) {
                    num = 1;
                }
            }
            if (num.intValue() == 1) {
                MBridgeVideoView.this.mMuteSwitch = 2;
            } else {
                MBridgeVideoView.this.mMuteSwitch = 1;
            }
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(5, num);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_sound_click", MBridgeVideoView.this.f38394b, eVar);
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override
        public void onClick(View view) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", MBridgeVideoView.this.f38394b, eVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
            if (!MBridgeVideoView.this.f38531g0) {
                CampaignEx campaignEx = MBridgeVideoView.this.f38394b;
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || MBridgeVideoView.this.f38394b.getRewardTemplateMode().f() != 5002010 || !MBridgeVideoView.this.f38550s0) {
                    MBridgeVideoView.this.y();
                    return;
                }
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                if (mBridgeVideoView.notifyListener != null) {
                    mBridgeVideoView.L0 = true;
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    mBridgeVideoView2.notifyListener.a(2, mBridgeVideoView2.c(mBridgeVideoView2.f38550s0));
                    return;
                }
                return;
            }
            MBridgeVideoView.this.f38556v0 = true;
            CampaignEx campaignEx2 = MBridgeVideoView.this.f38394b;
            if (campaignEx2 != null && campaignEx2.getRewardTemplateMode() != null && MBridgeVideoView.this.f38394b.getRewardTemplateMode().f() == 5002010 && MBridgeVideoView.this.f38550s0) {
                MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                if (mBridgeVideoView3.notifyListener != null) {
                    mBridgeVideoView3.L0 = true;
                    MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                    mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.f38550s0));
                    return;
                }
                return;
            }
            if (MBridgeVideoView.this.f38548r0) {
                MBridgeVideoView.this.y();
                return;
            }
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, "");
            }
        }
    }

    class s implements com.mbridge.msdk.widget.dialog.b {
        s() {
        }

        @Override
        public void a() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView.this.f38546q0 = true;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f38393a, mBridgeVideoView2.f38394b, mBridgeVideoView2.f38535k0, MBridgeVideoView.this.Q, 1, 1, 1);
            if (MBridgeVideoView.this.f38531g0 && MBridgeVideoView.this.f38536l0 == com.mbridge.msdk.foundation.same.a.H) {
                MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                if (mBridgeVideoView3.notifyListener != null) {
                    mBridgeVideoView3.L0 = true;
                    MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                    mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.f38550s0));
                    return;
                }
                return;
            }
            if (MBridgeVideoView.this.f38531g0 && MBridgeVideoView.this.f38536l0 == com.mbridge.msdk.foundation.same.a.I) {
                MBridgeVideoView.this.p();
                return;
            }
            MBridgeVideoView mBridgeVideoView5 = MBridgeVideoView.this;
            if (mBridgeVideoView5.notifyListener != null) {
                mBridgeVideoView5.L0 = true;
                MBridgeVideoView.this.notifyListener.a(2, "");
            }
        }

        @Override
        public void b() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            if (MBridgeVideoView.this.f38531g0 && (MBridgeVideoView.this.f38536l0 == com.mbridge.msdk.foundation.same.a.I || MBridgeVideoView.this.f38536l0 == com.mbridge.msdk.foundation.same.a.H)) {
                MBridgeVideoView.this.f38544p0 = true;
                com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
                if (aVar != null) {
                    aVar.a(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, "");
                }
                MBridgeVideoView.this.f38554u0 = true;
                MBridgeVideoView.this.gonePlayingCloseView();
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f38393a, mBridgeVideoView2.f38394b, mBridgeVideoView2.f38535k0, MBridgeVideoView.this.Q, 1, 0, 1);
        }

        @Override
        public void c() {
        }
    }

    class t implements com.mbridge.msdk.foundation.feedback.a {
        t() {
        }

        @Override
        public void a() {
            MBridgeVideoView.this.o();
        }

        @Override
        public void close() {
            MBridgeVideoView.this.p();
        }

        @Override
        public void a(String str) {
            MBridgeVideoView.this.p();
        }
    }

    public interface u {
        void a();
    }

    public static class v {

        public int f38596a;

        public int f38597b;

        public boolean f38598c;

        public String toString() {
            return "ProgressData{curPlayPosition=" + this.f38596a + ", allDuration=" + this.f38597b + '}';
        }
    }

    private static final class w extends DefaultVideoPlayerStatusListener {

        private MBridgeVideoView f38599a;

        private int f38600b;

        private int f38601c;

        private int f38602d;

        private boolean f38603e;

        private com.iab.omid.library.mmadbridge.adsession.media.a f38604f;

        private boolean f38609k;

        private String f38610l;

        private CampaignEx f38611m;

        private int f38612n;

        private int f38613o;

        private v f38605g = new v();

        private boolean f38606h = false;

        private boolean f38607i = false;

        private boolean f38608j = false;

        private boolean f38614p = false;

        public w(MBridgeVideoView mBridgeVideoView) {
            this.f38599a = mBridgeVideoView;
            if (mBridgeVideoView != null) {
                this.f38610l = mBridgeVideoView.getUnitId();
                this.f38611m = mBridgeVideoView.getCampaign();
            }
        }

        private void c() {
            int i10;
            CampaignEx campaignEx;
            String str;
            if (!q0.a().a("h_c_r_w_p_c", false) || (i10 = this.f38612n) == 100 || this.f38613o != 0 || this.f38614p || i10 == 0 || (campaignEx = this.f38611m) == null) {
                return;
            }
            try {
                if (campaignEx.getAdType() == 94 || this.f38611m.getAdType() == 287) {
                    str = this.f38611m.getRequestId() + this.f38611m.getId() + this.f38611m.getVideoUrlEncode();
                } else {
                    str = this.f38611m.getId() + this.f38611m.getVideoUrlEncode() + this.f38611m.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f38610l, str);
                if (aVarA != null) {
                    aVarA.v();
                    this.f38614p = true;
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultVideoPlayerStatusListener", "CDRate is : 0  and start download when player create!");
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("DefaultVideoPlayerStatusListener", e10.getMessage());
                }
            }
        }

        private void e() {
            MBridgeVideoView mBridgeVideoView = this.f38599a;
            if (mBridgeVideoView == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) mBridgeVideoView.f38537m.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 25.0f);
                this.f38599a.f38537m.setLayoutParams(layoutParams);
            }
            int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
            this.f38599a.f38537m.setPadding(iA, 0, iA, 0);
        }

        public int b() {
            return this.f38602d;
        }

        public void d() {
            this.f38599a = null;
            boolean unused = MBridgeVideoView.W0 = false;
        }

        @Override
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38604f;
                if (aVar != null) {
                    aVar.b();
                    o0.a("omsdk", "play:  videoEvents.bufferFinish()");
                }
                this.f38599a.notifyListener.a(14, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onBufferingStart(String str) {
            try {
                super.onBufferingStart(str);
                if (this.f38604f != null) {
                    o0.a("omsdk", "play:  videoEvents.bufferStart()");
                    this.f38604f.c();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onBufferingTimeOut(String str) {
            try {
                this.f38599a.notifyListener.a(13, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onPlayCompleted() {
            MBridgeVideoView mBridgeVideoView;
            super.onPlayCompleted();
            this.f38599a.f38550s0 = true;
            CampaignEx campaignEx = this.f38611m;
            if (campaignEx != null) {
                if (this.f38609k && campaignEx.getRewardTemplateMode() != null && this.f38611m.getRewardTemplateMode().f() == 5002010) {
                    this.f38599a.f38537m.setText("0");
                } else {
                    this.f38599a.f38537m.setText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
                }
                this.f38611m.setVideoPlayProgress(100);
                if (this.f38611m.getAdSpaceT() == 2) {
                    this.f38599a.f38539n.setVisibility(4);
                    if (this.f38599a.f38547r != null) {
                        this.f38599a.f38547r.setClickable(false);
                    }
                    SoundImageView soundImageView = this.f38599a.mSoundImageView;
                    if (soundImageView != null) {
                        soundImageView.setClickable(false);
                    }
                }
            } else {
                this.f38599a.f38537m.setText("0");
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38604f;
            if (aVar != null) {
                aVar.d();
                o0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f38599a.mPlayerView.setClickable(false);
            String strC = this.f38599a.c(true);
            CampaignEx campaignEx2 = this.f38611m;
            if (campaignEx2 != null && campaignEx2.getRewardTemplateMode() != null && this.f38611m.getRewardTemplateMode().f() == 5002010) {
                this.f38599a.x();
            }
            CampaignEx campaignEx3 = this.f38611m;
            if (campaignEx3 != null && campaignEx3.getDynamicTempCode() == 5 && (mBridgeVideoView = this.f38599a) != null && mBridgeVideoView.f38559x != null) {
                MBridgeVideoView mBridgeVideoView2 = this.f38599a;
                if (mBridgeVideoView2.mCampaignSize > mBridgeVideoView2.mCurrPlayNum) {
                    HashMap map = new HashMap();
                    map.put(RequestParameters.POSITION, Integer.valueOf(this.f38599a.mCurrPlayNum));
                    int i10 = this.f38599a.mMuteSwitch;
                    if (i10 != 0) {
                        map.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, Integer.valueOf(i10));
                    }
                    this.f38599a.f38559x.a(map);
                    return;
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f38599a;
            if (mBridgeVideoView3 != null) {
                mBridgeVideoView3.notifyListener.a(Sdk$SDKError.Reason.TPAT_ERROR_VALUE, "");
                this.f38599a.notifyListener.a(11, strC);
            }
            int i11 = this.f38601c;
            this.f38600b = i11;
            this.f38599a.mCurrentPlayProgressTime = i11;
            boolean unused = MBridgeVideoView.W0 = true;
        }

        @Override
        public void onPlayError(String str) {
            o0.b("DefaultVideoPlayerStatusListener", "errorStr" + str);
            super.onPlayError(str);
            MBridgeVideoView mBridgeVideoView = this.f38599a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.notifyListener.a(12, str);
            }
        }

        @Override
        public void onPlayProgress(int i10, int i11) {
            CampaignEx campaignEx;
            int videoCompleteTime;
            super.onPlayProgress(i10, i11);
            if (MBridgeVideoView.X0 == 0) {
                long unused = MBridgeVideoView.X0 = System.currentTimeMillis();
            }
            if (!this.f38599a.M0 && this.f38599a.f38561y != null) {
                this.f38599a.M0 = true;
                this.f38599a.f38561y.a();
            }
            if (this.f38599a.f38397e) {
                CampaignEx campaignEx2 = this.f38611m;
                if (campaignEx2 != null) {
                    videoCompleteTime = campaignEx2.getVideoCompleteTime();
                    if (videoCompleteTime <= 0) {
                        videoCompleteTime = i11;
                    }
                    com.mbridge.msdk.foundation.feedback.b.b().b(this.f38611m.getCampaignUnitId() + "_1", i10);
                } else {
                    videoCompleteTime = 0;
                }
                CampaignEx campaignEx3 = this.f38611m;
                if (campaignEx3 != null && campaignEx3.isDynamicView() && this.f38611m.getDynamicTempCode() == 5) {
                    try {
                        b(videoCompleteTime, this.f38599a.f38563z, i10);
                    } catch (Exception e10) {
                        o0.b("DefaultVideoPlayerStatusListener", e10.getMessage());
                    }
                } else {
                    a(videoCompleteTime, i11, i10);
                    this.f38605g.f38596a = i10;
                }
            }
            this.f38601c = i11;
            v vVar = this.f38605g;
            vVar.f38597b = i11;
            vVar.f38598c = this.f38599a.f38554u0;
            this.f38600b = i10;
            if (this.f38599a.f38549s != null) {
                this.f38599a.f38549s.setTag("" + this.f38600b);
            }
            MBridgeVideoView mBridgeVideoView = this.f38599a;
            mBridgeVideoView.mCurrentPlayProgressTime = i10;
            mBridgeVideoView.notifyListener.a(15, this.f38605g);
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38604f;
            if (aVar != null) {
                int i12 = (i10 * 100) / i11;
                int i13 = ((i10 + 1) * 100) / i11;
                if (i12 <= 25 && 25 < i13 && !this.f38606h) {
                    this.f38606h = true;
                    aVar.h();
                    o0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i12 <= 50 && 50 < i13 && !this.f38607i) {
                    this.f38607i = true;
                    aVar.i();
                    o0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i12 <= 75 && 75 < i13 && !this.f38608j) {
                    this.f38608j = true;
                    aVar.o();
                    o0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            if (this.f38599a.f38531g0 && !this.f38599a.f38542o0 && this.f38599a.f38536l0 == com.mbridge.msdk.foundation.same.a.I) {
                this.f38599a.y();
            }
            try {
                MBridgeVideoView mBridgeVideoView2 = this.f38599a;
                if (mBridgeVideoView2 != null && mBridgeVideoView2.f38551t != null) {
                    int i14 = (i10 * 100) / i11;
                    this.f38599a.f38551t.setProgress(i14, this.f38599a.mCurrPlayNum - 1);
                    this.f38611m.setVideoPlayProgress(i14);
                }
                MBridgeVideoView mBridgeVideoView3 = this.f38599a;
                if (mBridgeVideoView3 != null) {
                    int i15 = mBridgeVideoView3.F != -5 ? this.f38599a.F : this.f38599a.E;
                    if (i15 != -1 && i10 == i15 && (campaignEx = this.f38599a.f38394b) != null && campaignEx.isDynamicView()) {
                        this.f38599a.setCTALayoutVisibleOrGone();
                    }
                }
            } catch (Throwable th2) {
                o0.b("DefaultVideoPlayerStatusListener", th2.getMessage());
            }
            a(i10, i11);
        }

        @Override
        public void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override
        public void onPlayStarted(int i10) {
            PlayerView playerView;
            CampaignEx campaignEx;
            super.onPlayStarted(i10);
            MBridgeVideoView mBridgeVideoView = this.f38599a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.g();
            }
            if (!this.f38603e) {
                MBridgeVideoView mBridgeVideoView2 = this.f38599a;
                if (mBridgeVideoView2 != null) {
                    mBridgeVideoView2.A = true;
                    this.f38599a.notifyListener.a(10, this.f38605g);
                }
                this.f38603e = true;
            }
            this.f38602d = i10;
            CampaignEx campaignEx2 = this.f38611m;
            if (campaignEx2 != null) {
                int videoCompleteTime = campaignEx2.getVideoCompleteTime();
                if (videoCompleteTime <= 0) {
                    videoCompleteTime = i10;
                }
                if (this.f38611m.isDynamicView()) {
                    b(videoCompleteTime);
                } else {
                    a(videoCompleteTime);
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f38599a;
            if (mBridgeVideoView3 != null && mBridgeVideoView3.f38545q != null) {
                this.f38599a.f38545q.setMax(i10);
            }
            MBridgeVideoView mBridgeVideoView4 = this.f38599a;
            if (mBridgeVideoView4 != null && mBridgeVideoView4.f38541o != null && (campaignEx = this.f38611m) != null && campaignEx.getAdSpaceT() == 2) {
                this.f38599a.f38541o.setVisibility(0);
            }
            MBridgeVideoView mBridgeVideoView5 = this.f38599a;
            if (mBridgeVideoView5 != null && mBridgeVideoView5.f38537m != null && this.f38599a.f38537m.getVisibility() == 0) {
                this.f38599a.f();
            }
            boolean unused = MBridgeVideoView.W0 = false;
            if (this.f38599a != null && this.f38611m.isDynamicView()) {
                if (this.f38599a.F != -5) {
                    if (this.f38599a.F == 0) {
                        this.f38599a.setCTALayoutVisibleOrGone();
                    }
                } else if (this.f38599a.E == 0) {
                    this.f38599a.setCTALayoutVisibleOrGone();
                }
            }
            MBridgeVideoView mBridgeVideoView6 = this.f38599a;
            if (mBridgeVideoView6 != null) {
                mBridgeVideoView6.showMoreOfferInPlayTemplate();
                this.f38599a.showBaitClickView();
                this.f38599a.q();
            }
            if (this.f38604f != null) {
                try {
                    MBridgeVideoView mBridgeVideoView7 = this.f38599a;
                    this.f38604f.n(i10, (mBridgeVideoView7 == null || (playerView = mBridgeVideoView7.mPlayerView) == null) ? 0.0f : playerView.getVolume());
                    o0.a("omsdk", "play video view:  videoEvents.start");
                } catch (Exception e10) {
                    o0.b("omsdk", e10.getMessage());
                }
            }
        }

        public void a(CampaignEx campaignEx) {
            this.f38611m = campaignEx;
        }

        public void b(int i10, int i11) {
            this.f38612n = i10;
            this.f38613o = i11;
            c();
        }

        public void a(boolean z10) {
            this.f38609k = z10;
        }

        public void a(String str) {
            this.f38610l = str;
        }

        private void b(int i10) {
            MBridgeVideoView mBridgeVideoView = this.f38599a;
            if (mBridgeVideoView == null || mBridgeVideoView.f38537m == null) {
                return;
            }
            String str = "mbridge_reward_video_time_count_num_bg";
            if (this.f38611m.getDynamicTempCode() == 5) {
                MBridgeVideoView mBridgeVideoView2 = this.f38599a;
                if (mBridgeVideoView2.mCurrPlayNum > 1 && i10 <= 0) {
                    mBridgeVideoView2.f38537m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
                    e();
                    return;
                }
            }
            if (i10 > 0) {
                if (!this.f38609k || this.f38611m.getDynamicTempCode() == 5) {
                    e();
                }
            } else {
                str = "mbridge_reward_shape_progress";
            }
            CampaignEx campaignEx = this.f38611m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1 && this.f38609k) {
                e();
            }
            this.f38599a.f38537m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "drawable"));
        }

        public int a() {
            return this.f38600b;
        }

        private void a(int i10) {
            if (i10 > 0) {
                this.f38599a.f38537m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
                int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
                layoutParams.addRule(1, g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_native_endcard_feed_btn", "id"));
                layoutParams.setMargins(iA, 0, 0, 0);
                this.f38599a.f38537m.setPadding(iA, 0, iA, 0);
                this.f38599a.f38537m.setLayoutParams(layoutParams);
                return;
            }
            this.f38599a.f38537m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
        }

        private void a(int i10, int i11) {
            int i12;
            String str;
            int i13 = this.f38612n;
            if (i13 == 100 || this.f38614p || i13 == 0) {
                return;
            }
            if (this.f38613o > i13) {
                this.f38613o = i13 / 2;
            }
            int i14 = this.f38613o;
            if (i14 < 0 || i10 < (i12 = (i11 * i14) / 100)) {
                return;
            }
            if (this.f38611m.getAdType() != 94 && this.f38611m.getAdType() != 287) {
                str = this.f38611m.getId() + this.f38611m.getVideoUrlEncode() + this.f38611m.getBidToken();
            } else {
                str = this.f38611m.getRequestId() + this.f38611m.getId() + this.f38611m.getVideoUrlEncode();
            }
            com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f38610l, str);
            if (aVarA != null) {
                aVarA.v();
                this.f38614p = true;
                o0.b("DefaultVideoPlayerStatusListener", "CDRate is : " + i12 + " and start download !");
            }
        }

        private void b(int i10, int i11, int i12) {
            int i13;
            StringBuilder sb2;
            MBridgeVideoView mBridgeVideoView = this.f38599a;
            if (mBridgeVideoView == null) {
                return;
            }
            String string = (String) mBridgeVideoView.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
            String str = (String) this.f38599a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", "string"));
            if (i10 >= 0) {
                if (this.f38611m.getUseSkipTime() == 1) {
                    int iMin = Math.min(this.f38599a.L, i10);
                    if (iMin >= i10 || iMin <= 0) {
                        i13 = i10 - i12;
                        if (this.f38609k) {
                            if (i13 <= 0) {
                                this.f38599a.f38537m.setVisibility(4);
                            } else {
                                str = (String) this.f38599a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string"));
                            }
                        }
                    } else {
                        i13 = iMin - i12;
                        if (i13 <= 0) {
                            i13 = i10 - i12;
                            if (this.f38609k) {
                                this.f38599a.f38537m.setVisibility(4);
                            }
                        } else {
                            str = (String) this.f38599a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string"));
                        }
                    }
                } else {
                    i13 = i10 - i12;
                }
                if (i13 > 0) {
                    string = i13 + str;
                }
            } else {
                i13 = i11 - i12;
                if (i13 > 0) {
                    if (i10 <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        sb2.append("");
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        sb2.append(str);
                    }
                    string = sb2.toString();
                } else if (i10 <= 0) {
                    string = "0";
                }
            }
            this.f38605g.f38596a = i12;
            this.f38599a.f38537m.setText(string);
            if (this.f38599a.f38545q != null && this.f38599a.f38545q.getVisibility() == 0) {
                this.f38599a.f38545q.setProgress(i12);
            }
            if (i13 >= this.f38599a.C0 || this.f38599a.E0 == null || !this.f38599a.J) {
                return;
            }
            this.f38599a.E0.onTimeLessThanReduce(i13);
        }

        private void a(int i10, int i11, int i12) {
            StringBuilder sb2;
            String str;
            String string;
            String str2;
            int i13 = 0;
            MBridgeVideoView mBridgeVideoView = this.f38599a;
            if (mBridgeVideoView == null) {
                return;
            }
            if (this.f38609k) {
                str2 = String.format("%s", Integer.valueOf(i11 - i12));
            } else {
                if (i10 > i11) {
                    i10 = i11;
                }
                int i14 = i10 <= 0 ? i11 - i12 : i10 - i12;
                if (i14 <= 0) {
                    string = i10 <= 0 ? "0" : (String) mBridgeVideoView.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
                } else {
                    if (i10 <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i14);
                        str = "";
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i14);
                        str = (String) this.f38599a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", "string"));
                    }
                    sb2.append(str);
                    string = sb2.toString();
                    i13 = i14;
                }
                if (i13 < this.f38599a.C0 && this.f38599a.E0 != null && this.f38599a.J) {
                    this.f38599a.E0.onTimeLessThanReduce(i13);
                }
                str2 = string;
            }
            CampaignEx campaignEx = this.f38611m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1) {
                int iMin = Math.min(this.f38599a.L, i11);
                if (iMin >= i10 || iMin < 0) {
                    int i15 = i10 - i12;
                    if (this.f38609k) {
                        if (i15 > 0) {
                            str2 = i15 + ((String) this.f38599a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                        } else if (i15 == 0) {
                            this.f38599a.f38537m.setVisibility(4);
                        }
                    }
                } else {
                    int i16 = iMin - i12;
                    if (i16 > 0) {
                        str2 = i16 + ((String) this.f38599a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                    } else if (this.f38609k && i16 == 0) {
                        this.f38599a.f38537m.setVisibility(4);
                    }
                }
            }
            this.f38599a.f38537m.setText(str2);
            if (this.f38599a.f38545q == null || this.f38599a.f38545q.getVisibility() != 0) {
                return;
            }
            this.f38599a.f38545q.setProgress(i12);
        }
    }

    public MBridgeVideoView(Context context) {
        super(context);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.f38557w = false;
        this.f38563z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f38525a0 = false;
        this.f38526b0 = false;
        this.f38527c0 = false;
        this.f38528d0 = false;
        this.f38529e0 = false;
        this.f38531g0 = false;
        this.f38532h0 = 2;
        this.f38542o0 = false;
        this.f38544p0 = false;
        this.f38546q0 = false;
        this.f38548r0 = true;
        this.f38550s0 = false;
        this.f38552t0 = false;
        this.f38554u0 = false;
        this.f38556v0 = false;
        this.f38558w0 = false;
        this.f38564z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }

    static int W(MBridgeVideoView mBridgeVideoView) {
        int i10 = mBridgeVideoView.A0;
        mBridgeVideoView.A0 = i10 - 1;
        return i10;
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).g();
    }

    private int getVideoAllDuration() {
        try {
            w wVar = this.N0;
            int iB = wVar != null ? wVar.b() : 0;
            return iB == 0 ? this.f38394b.getVideoLength() : iB;
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
            return 0;
        }
    }

    public int getVideoCompleteTime() {
        int videoCompleteTime = 0;
        try {
            int videoAllDuration = getVideoAllDuration();
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null) {
                return videoAllDuration;
            }
            videoCompleteTime = campaignEx.getVideoCompleteTime();
            if (this.f38394b.getDynamicTempCode() != 5 && videoCompleteTime > videoAllDuration) {
                videoCompleteTime = videoAllDuration;
            }
            if (videoCompleteTime <= 0) {
                return videoAllDuration;
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
        return videoCompleteTime;
    }

    private void setBlurBackgroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new c());
    }

    private void setPlayerViewRadius(int i10) {
        if (i10 > 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(t0.a(getContext(), i10));
            gradientDrawable.setColor(-1);
            gradientDrawable.setStroke(1, 0);
            setBackground(gradientDrawable);
            this.mPlayerView.setBackground(gradientDrawable);
            setClipToOutline(true);
            this.mPlayerView.setClipToOutline(true);
        }
    }

    private void t() {
    }

    public void addCTAView() {
        if (this.B == null) {
            return;
        }
        if (this.C == null) {
            MBridgeClickCTAView mBridgeClickCTAView = new MBridgeClickCTAView(getContext());
            this.C = mBridgeClickCTAView;
            mBridgeClickCTAView.setCampaign(this.f38394b);
            this.C.setUnitId(this.Q);
            com.mbridge.msdk.video.module.listener.a aVar = this.f38553u;
            if (aVar != null) {
                this.C.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.i(aVar));
            }
            this.C.preLoadData(this.D);
        }
        this.B.addView(this.C);
    }

    @Override
    public void alertWebViewShowed() {
        this.I = true;
        setShowingAlertViewCover(true);
    }

    @Override
    public void closeVideoOperate(int i10, int i11) {
        if (i10 == 1) {
            this.f38556v0 = true;
            if (getVisibility() == 0) {
                y();
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", this.f38394b, eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f38394b);
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
        if (i11 == 1) {
            gonePlayingCloseView();
        } else if (i11 == 2) {
            if (this.f38554u0 && getVisibility() == 0) {
                return;
            }
            x();
        }
    }

    @Override
    public void defaultShow() {
        super.defaultShow();
        this.T = true;
        showVideoLocation(0, 0, t0.g(this.f38393a), t0.f(this.f38393a), 0, 0, 0, 0, 0);
        videoOperate(1);
        if (this.L == 0) {
            closeVideoOperate(-1, 2);
        }
    }

    @Override
    public void dismissAllAlert() {
        MBAlertDialog mBAlertDialog = this.O;
        if (mBAlertDialog != null) {
            mBAlertDialog.dismiss();
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, "");
        }
    }

    @Override
    public int getBorderViewHeight() {
        return V0;
    }

    @Override
    public int getBorderViewLeft() {
        return T0;
    }

    @Override
    public int getBorderViewRadius() {
        return R0;
    }

    @Override
    public int getBorderViewTop() {
        return S0;
    }

    @Override
    public int getBorderViewWidth() {
        return U0;
    }

    public int getBufferTimeout() {
        return this.M;
    }

    public int getCloseAlert() {
        return this.N;
    }

    @Override
    public String getCurrentProgress() {
        try {
            int iA = this.N0.a();
            CampaignEx campaignEx = this.f38394b;
            int videoLength = campaignEx != null ? campaignEx.getVideoLength() : 0;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_PROGRESS, a(iA, videoLength));
            jSONObject.put(EventConstants.KEY_TIME, iA);
            jSONObject.put("duration", videoLength + "");
            return jSONObject.toString();
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return "{}";
        }
    }

    public int getMute() {
        return this.f38532h0;
    }

    public String getPlayURL() {
        return this.K;
    }

    public String getUnitId() {
        return this.Q;
    }

    public int getVideoSkipTime() {
        return this.L;
    }

    public void gonePlayingCloseView() {
        if (this.f38397e && this.f38539n.getVisibility() != 8) {
            this.f38539n.setVisibility(8);
            this.f38525a0 = false;
        }
        i();
    }

    @Override
    public void hideAlertView(int i10) {
        if (this.I) {
            this.I = false;
            this.f38542o0 = true;
            setShowingAlertViewCover(false);
            com.mbridge.msdk.foundation.same.report.j.a(this.f38393a, this.f38394b, com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c(), this.Q, 1, i10, 1);
            if (i10 == 0) {
                p();
                if (this.f38531g0) {
                    int i11 = this.f38536l0;
                    if (i11 == com.mbridge.msdk.foundation.same.a.I || i11 == com.mbridge.msdk.foundation.same.a.H) {
                        this.f38544p0 = true;
                        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
                        if (aVar != null) {
                            aVar.a(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, "");
                        }
                        CampaignEx campaignEx = this.f38394b;
                        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f38394b.getRewardTemplateMode().f() == 5002010) {
                            x();
                            return;
                        } else {
                            this.f38554u0 = true;
                            gonePlayingCloseView();
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            this.f38546q0 = true;
            boolean z10 = this.f38531g0;
            if (z10 && this.f38536l0 == com.mbridge.msdk.foundation.same.a.I) {
                p();
                return;
            }
            if (z10 && this.f38536l0 == com.mbridge.msdk.foundation.same.a.H) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(this.f38550s0));
                    return;
                }
                return;
            }
            com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
            if (aVar3 != null) {
                this.L0 = true;
                aVar3.a(2, "");
            }
        }
    }

    @Override
    public void init(Context context) {
    }

    @Override
    public boolean isH5Canvas() {
        return getLayoutParams().height < t0.f(this.f38393a.getApplicationContext());
    }

    public boolean isInstDialogShowing() {
        return this.F0;
    }

    public boolean isMiniCardShowing() {
        return this.W;
    }

    public boolean isRewardPopViewShowing() {
        return this.J;
    }

    public boolean isShowingAlertView() {
        return this.I;
    }

    public boolean isShowingTransparent() {
        return this.f38529e0;
    }

    public boolean isfront() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return false;
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int childCount = viewGroup.getChildCount();
        int i10 = iIndexOfChild + 1;
        boolean z10 = false;
        while (i10 <= childCount - 1) {
            if (viewGroup.getChildAt(i10).getVisibility() == 0 && this.W) {
                return false;
            }
            i10++;
            z10 = true;
        }
        return z10;
    }

    @Override
    public void notifyCloseBtn(int i10) {
        if (i10 == 0) {
            this.f38526b0 = true;
            this.f38528d0 = false;
        } else if (i10 == 1) {
            this.f38527c0 = true;
        }
    }

    public void notifyVideoClose() {
        this.L0 = true;
        this.notifyListener.a(2, "");
    }

    public void onActivityPause() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onPause();
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onActivityResume() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onResume();
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onActivityStop() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onStop();
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void onBackPress() {
        boolean z10;
        if (this.W || this.I || this.f38544p0) {
            return;
        }
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f38394b.getRewardTemplateMode().f() == 5002010 && (z10 = this.f38550s0)) {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                this.L0 = true;
                aVar.a(2, c(z10));
                return;
            }
            return;
        }
        if (this.f38525a0) {
            y();
            return;
        }
        boolean z11 = this.f38526b0;
        if (z11 && this.f38527c0) {
            y();
        } else {
            if (z11 || !this.f38528d0) {
                return;
            }
            y();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        CampaignEx campaignEx = this.f38394b;
        if ((campaignEx == null || !campaignEx.isDynamicView()) && this.f38397e && this.T) {
            u();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            if (this.P0 != null) {
                getHandler().removeCallbacks(this.P0);
            }
            if (this.f38564z0 != 0) {
                removeCallbacks(this.Q0);
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.D = bVar;
        if (!this.f38397e) {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                aVar.a(12, "MBridgeVideoView initSuccess false");
            }
        } else if (!TextUtils.isEmpty(this.K) && this.f38394b != null) {
            com.iab.omid.library.mmadbridge.adsession.b bVar2 = this.f38533i0;
            if (bVar2 != null) {
                bVar2.d(this.mPlayerView);
                SoundImageView soundImageView = this.mSoundImageView;
                if (soundImageView != null) {
                    this.f38533i0.a(soundImageView, FriendlyObstructionPurpose.OTHER, null);
                }
                this.f38533i0.a(this.f38537m, FriendlyObstructionPurpose.OTHER, null);
                this.f38533i0.a(this.f38539n, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            k();
            this.mPlayerView.initBufferIngParam(this.M);
            this.mPlayerView.initVFPData(this.K, this.f38394b.getVideoUrlEncode(), this.N0);
            soundOperate(this.f38532h0, -1, null);
        }
        W0 = false;
    }

    @Override
    public void progressBarOperate(int i10) {
        ProgressBar progressBar;
        if (this.f38397e) {
            if (i10 == 1) {
                ProgressBar progressBar2 = this.f38545q;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(8);
                    return;
                }
                return;
            }
            if (i10 != 2 || (progressBar = this.f38545q) == null) {
                return;
            }
            progressBar.setVisibility(0);
        }
    }

    @Override
    public void progressOperate(int i10, int i11) {
        if (this.f38397e) {
            o0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i10);
            CampaignEx campaignEx = this.f38394b;
            int videoLength = campaignEx != null ? campaignEx.getVideoLength() : 0;
            if (i10 > 0 && i10 <= videoLength && this.mPlayerView != null) {
                o0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i10);
                this.mPlayerView.seekTo(i10 * 1000);
            }
            if (i11 == 1) {
                this.f38537m.setVisibility(8);
            } else if (i11 == 2) {
                this.f38537m.setVisibility(0);
            }
            if (this.f38537m.getVisibility() == 0) {
                f();
            }
        }
    }

    public void releasePlayer() {
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null && !this.V) {
                playerView.release();
                if (!TextUtils.isEmpty(this.K)) {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long jCurrentTimeMillis = X0;
                    if (jCurrentTimeMillis != 0) {
                        jCurrentTimeMillis = System.currentTimeMillis() - X0;
                    }
                    eVar.a("duration", Long.valueOf(jCurrentTimeMillis));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f38394b, eVar);
                }
            }
            w wVar = this.N0;
            if (wVar != null) {
                wVar.d();
            }
            if (this.f38553u != null) {
                this.f38553u = null;
            }
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.f38533i0 = bVar;
    }

    public void setBufferTimeout(int i10) {
        this.M = i10;
    }

    public void setCTALayoutVisibleOrGone() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || this.B == null) {
            return;
        }
        if (campaignEx.getRewardTemplateMode() == null || this.f38394b.getRewardTemplateMode().f() != 902) {
            int i10 = this.F;
            if (i10 != -5) {
                if (i10 == -3) {
                    return;
                }
                if (this.C == null) {
                    addCTAView();
                }
                if (this.F == -1) {
                    if (this.B.getVisibility() != 0) {
                        this.B.setVisibility(0);
                        postDelayed(this.P0, 3000L);
                    } else {
                        this.B.setVisibility(8);
                        getHandler().removeCallbacks(this.P0);
                    }
                }
                if (this.F >= 0) {
                    this.B.setVisibility(0);
                    return;
                }
                return;
            }
            if (this.E < -1) {
                return;
            }
            if (this.C == null) {
                addCTAView();
            }
            int i11 = this.E;
            if (i11 >= 0) {
                this.B.setVisibility(0);
                return;
            }
            if (i11 == -1) {
                if (this.B.getVisibility() != 0) {
                    this.B.setVisibility(0);
                    postDelayed(this.P0, 3000L);
                } else {
                    this.B.setVisibility(8);
                    getHandler().removeCallbacks(this.P0);
                }
            }
        }
    }

    public void setCamPlayOrderCallback(com.mbridge.msdk.video.dynview.listener.a aVar, List<CampaignEx> list, int i10, int i11) {
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar;
        this.f38559x = aVar;
        this.mCampaignSize = list.size();
        this.mCurrPlayNum = i10;
        this.f38563z = i11;
        this.mCampOrderViewData = list;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || campaignEx.getDynamicTempCode() != 5) {
            CampaignEx campaignEx2 = this.f38394b;
            if (campaignEx2 == null || campaignEx2.getProgressBarShow() != 1 || (mBridgeSegmentsProgressBar = this.f38551t) == null) {
                return;
            }
            mBridgeSegmentsProgressBar.init(1, 3);
            this.f38551t.setVisibility(0);
            return;
        }
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar2 = this.f38551t;
        if (mBridgeSegmentsProgressBar2 == null || this.mCampOrderViewData == null) {
            return;
        }
        if (this.mCampaignSize > 1) {
            mBridgeSegmentsProgressBar2.setVisibility(0);
            this.f38551t.init(this.mCampaignSize, 2);
            for (int i12 = 0; i12 < this.mCampOrderViewData.size(); i12++) {
                int videoPlayProgress = this.mCampOrderViewData.get(i12).getVideoPlayProgress();
                if (videoPlayProgress > 0) {
                    this.f38551t.setProgress(videoPlayProgress, i12);
                }
                if (this.mCampOrderViewData.get(i12).isRewardPopViewShowed) {
                    this.H = true;
                }
            }
            return;
        }
        CampaignEx campaignEx3 = this.f38394b;
        if (campaignEx3 == null || campaignEx3.getProgressBarShow() != 1) {
            this.f38551t.setVisibility(8);
            return;
        }
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar3 = this.f38551t;
        if (mBridgeSegmentsProgressBar3 != null) {
            mBridgeSegmentsProgressBar3.init(1, 3);
            this.f38551t.setVisibility(0);
        }
    }

    @Override
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(campaignEx);
            this.N0.b(a(campaignEx), getCDRate());
        }
    }

    public void setCloseAlert(int i10) {
        this.N = i10;
    }

    public void setContainerViewOnNotifyListener(com.mbridge.msdk.video.module.listener.a aVar) {
        this.f38553u = aVar;
    }

    @Override
    public void setCover(boolean z10) {
        if (this.f38397e) {
            this.mPlayerView.setIsCovered(z10);
        }
    }

    public void setDialogRole(int i10) {
        this.f38548r0 = i10 == 1;
        o0.b(MBridgeBaseView.TAG, i10 + " " + this.f38548r0);
    }

    public void setIPlayVideoViewLayoutCallBack(com.mbridge.msdk.video.dynview.listener.f fVar) {
        this.f38561y = fVar;
    }

    public void setIVRewardEnable(int i10, int i11, int i12) {
        this.f38536l0 = i10;
        this.f38538m0 = i11;
        this.f38540n0 = i12;
    }

    public void setInstDialogState(boolean z10) {
        PlayerView playerView;
        this.F0 = z10;
        if (!com.mbridge.msdk.util.b.a() || (playerView = this.mPlayerView) == null) {
            return;
        }
        playerView.setIsCovered(z10);
    }

    public void setIsIV(boolean z10) {
        this.f38531g0 = z10;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(z10);
        }
    }

    @Override
    public void setMiniEndCardState(boolean z10) {
        this.W = z10;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        RelativeLayout relativeLayout;
        try {
            o0.b(MBridgeBaseView.TAG, "NOTCH VideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            int i14 = layoutParams.leftMargin;
            int i15 = layoutParams.rightMargin;
            int i16 = layoutParams.topMargin;
            int i17 = layoutParams.bottomMargin;
            this.K0 = i12;
            if (Math.max(Math.max(i14, i15), Math.max(i16, i17)) <= Math.max(Math.max(i10, i11), Math.max(i12, i13)) && (relativeLayout = this.f38541o) != null) {
                relativeLayout.postDelayed(new b(i10, i12, i11, i13), 200L);
            }
            if (this.f38537m.getVisibility() == 0) {
                f();
            }
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void setPlayURL(String str) {
        this.K = str;
    }

    public void setPlayerViewAttachListener(u uVar) {
        this.f38555v = uVar;
    }

    @Override
    public void setScaleFitXY(int i10) {
        this.f38530f0 = i10;
    }

    public void setShowingAlertViewCover(boolean z10) {
        MBAcquireRewardPopView mBAcquireRewardPopView;
        if (z10 && (mBAcquireRewardPopView = this.E0) != null && this.J && this.I) {
            mBAcquireRewardPopView.onPause();
        }
        this.mPlayerView.setIsCovered(z10);
    }

    public void setShowingTransparent(boolean z10) {
        this.f38529e0 = z10;
    }

    public void setSoundState(int i10) {
        this.f38532h0 = i10;
    }

    public void setUnitId(String str) {
        this.Q = str;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(str);
        }
    }

    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.f38534j0 = aVar;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.f38604f = aVar;
        }
        PlayerView playerView = this.mPlayerView;
        if (playerView != null) {
            playerView.setVideoEvents(aVar);
        }
    }

    public void setVideoLayout(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.f38394b = campaignEx;
            this.f38400h = campaignEx.isDynamicView();
        }
        if (this.f38400h) {
            a(this, campaignEx);
        } else {
            h();
        }
    }

    public void setVideoSkipTime(int i10) {
        this.L = i10;
    }

    @Override
    public void setVisible(int i10) {
        setVisibility(i10);
    }

    @Override
    public void showAlertView() {
        CampaignEx campaignEx;
        if (this.W) {
            return;
        }
        if (this.P == null) {
            this.P = new s();
        }
        if (this.O == null) {
            MBAlertDialog mBAlertDialog = new MBAlertDialog(getContext(), this.P);
            this.O = mBAlertDialog;
            com.iab.omid.library.mmadbridge.adsession.b bVar = this.f38533i0;
            if (bVar != null) {
                bVar.a(mBAlertDialog.getWindow().getDecorView(), FriendlyObstructionPurpose.NOT_VISIBLE, null);
            }
        }
        if (this.f38531g0) {
            this.O.makeIVAlertView(this.f38536l0, this.Q);
        } else {
            this.O.makeRVAlertView(this.Q);
        }
        PlayerView playerView = this.mPlayerView;
        if (playerView != null) {
            if (playerView.isComplete() && ((campaignEx = this.f38394b) == null || campaignEx.getRewardTemplateMode() == null || this.f38394b.getRewardTemplateMode().f() != 5002010)) {
                return;
            }
            this.O.show();
            this.f38542o0 = true;
            this.I = true;
            setShowingAlertViewCover(true);
            String strC = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c();
            this.f38535k0 = strC;
            com.mbridge.msdk.foundation.same.report.j.a(this.f38393a, this.f38394b, strC, this.Q, 1, 1);
        }
    }

    public void showBaitClickView() {
        int i10;
        MBridgeBaitClickView mBridgeBaitClickView;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.f38394b.getRewardTemplateMode() == null) {
            return;
        }
        String strE = this.f38394b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = z0.a(strE, "bait_click");
            if (TextUtils.isEmpty(strA) || (i10 = Integer.parseInt(strA)) == 0 || (mBridgeBaitClickView = this.f38562y0) == null) {
                return;
            }
            mBridgeBaitClickView.setVisibility(0);
            this.f38562y0.init(i10);
            this.f38562y0.startAnimation();
            this.f38562y0.setOnClickListener(new i());
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @Override
    public void showIVRewardAlertView(String str) {
        this.notifyListener.a(8, "");
    }

    public void showMoreOfferInPlayTemplate() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || this.G == null || !campaignEx.isDynamicView() || this.f38394b.getRewardTemplateMode() == null) {
            return;
        }
        String strE = this.f38394b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = z0.a(strE, "mof");
            if (TextUtils.isEmpty(strA) || Integer.parseInt(strA) != 1) {
                return;
            }
            com.mbridge.msdk.video.dynview.moffer.a.a().a(this.f38394b, this, new com.mbridge.msdk.video.module.listener.impl.i(this.f38553u), 1);
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void showRewardPopView() {
        AcquireRewardPopViewParameters acquireRewardPopViewParameters;
        MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
        if (mBAcquireRewardPopView == null || (acquireRewardPopViewParameters = this.D0) == null) {
            return;
        }
        try {
            mBAcquireRewardPopView.init(acquireRewardPopViewParameters);
            this.E0.setVisibility(0);
            setCover(true);
            o();
            this.J = true;
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null) {
                campaignEx.isRewardPopViewShowed = true;
            }
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @Override
    public void showVideoLocation(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        float f10;
        if (this.f38397e) {
            this.f38541o.setPadding(0, 0, 0, 0);
            setVisibility(0);
            if (this.f38541o.getVisibility() != 0) {
                this.f38541o.setVisibility(0);
            }
            if (this.f38537m.getVisibility() == 0) {
                f();
            }
            if (!b(i12, i13) || this.T) {
                u();
                return;
            }
            S0 = i15;
            T0 = i16;
            U0 = i17 + 4;
            V0 = i18 + 4;
            float f11 = i12 / i13;
            try {
                f10 = (float) (this.R / this.S);
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                f10 = 0.0f;
            }
            if (i14 > 0) {
                R0 = i14;
                setPlayerViewRadius(i14);
            }
            if (Math.abs(f11 - f10) > 0.1f && this.f38530f0 != 1) {
                u();
                videoOperate(1);
                return;
            }
            u();
            if (!this.f38529e0) {
                setLayoutParam(i11, i10, i12, i13);
                return;
            }
            setLayoutCenter(i12, i13);
            if (W0) {
                this.notifyListener.a(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, "");
            } else {
                this.notifyListener.a(Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, "");
            }
        }
    }

    @Override
    public void soundOperate(int i10, int i11) {
        soundOperate(i10, i11, "2");
    }

    @Override
    public void videoOperate(int i10) {
        o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:" + i10);
        if (this.f38397e) {
            if (i10 == 1) {
                if (getVisibility() == 0 && isfront()) {
                    o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:play");
                    RelativeLayout relativeLayout = this.I0;
                    if ((relativeLayout != null && relativeLayout.getVisibility() != 0) || this.I || com.mbridge.msdk.foundation.feedback.b.f34457f) {
                        return;
                    }
                    if (!com.mbridge.msdk.util.b.a()) {
                        p();
                        return;
                    } else {
                        if (this.W || this.F0) {
                            return;
                        }
                        p();
                        return;
                    }
                }
                return;
            }
            if (i10 == 2) {
                if (getVisibility() == 0 && isfront()) {
                    o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:pause");
                    o();
                    return;
                }
                return;
            }
            if (i10 == 3) {
                if (this.V) {
                    return;
                }
                this.mPlayerView.stop();
                CampaignEx campaignEx = this.f38394b;
                if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.f38394b.getRewardTemplateMode().f() != 5002010) {
                    this.mPlayerView.release();
                    this.V = true;
                    if (TextUtils.isEmpty(this.K)) {
                        return;
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long jCurrentTimeMillis = X0;
                    if (jCurrentTimeMillis != 0) {
                        jCurrentTimeMillis = System.currentTimeMillis() - X0;
                    }
                    eVar.a("duration", Long.valueOf(jCurrentTimeMillis));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f38394b, eVar);
                    return;
                }
                return;
            }
            if (i10 == 5) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = true;
                    if (this.V) {
                        return;
                    }
                    o();
                    return;
                }
                return;
            }
            if (i10 == 4) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = false;
                    if (this.V || isMiniCardShowing()) {
                        return;
                    }
                    p();
                    return;
                }
                return;
            }
            if (i10 != 6 || this.V) {
                return;
            }
            this.mPlayerView.release();
            this.V = true;
            if (TextUtils.isEmpty(this.K)) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            long jCurrentTimeMillis2 = X0;
            if (jCurrentTimeMillis2 != 0) {
                jCurrentTimeMillis2 = System.currentTimeMillis() - X0;
            }
            eVar2.a("duration", Long.valueOf(jCurrentTimeMillis2));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f38394b, eVar2);
        }
    }

    public void p() {
        w wVar;
        RelativeLayout relativeLayout;
        try {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.f38394b.getRewardTemplateMode().f() != 5002010 || (relativeLayout = this.I0) == null || relativeLayout.getVisibility() == 0) {
                if (!this.U) {
                    boolean zPlayVideo = this.mPlayerView.playVideo();
                    CampaignEx campaignEx2 = this.f38394b;
                    if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() != 2 && !zPlayVideo && (wVar = this.N0) != null) {
                        wVar.onPlayError("play video failed");
                    }
                    this.U = true;
                    return;
                }
                MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
                if (mBAcquireRewardPopView != null && this.J) {
                    mBAcquireRewardPopView.onResume();
                }
                if (this.J) {
                    return;
                }
                if (!com.mbridge.msdk.util.b.a()) {
                    w();
                } else {
                    if (this.F0 || this.I) {
                        return;
                    }
                    this.mPlayerView.setIsCovered(false);
                    w();
                }
            }
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage(), e10);
        }
    }

    public void q() {
        String strE;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.H) {
            return;
        }
        if (!TextUtils.isEmpty(this.f38394b.getMof_template_url())) {
            strE = this.f38394b.getMof_template_url();
        } else if (this.f38394b.getRewardTemplateMode() == null) {
            return;
        } else {
            strE = this.f38394b.getRewardTemplateMode().e();
        }
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = z0.a(strE, "guideShow");
            String strA2 = z0.a(strE, "guideDelay");
            String strA3 = z0.a(strE, "guideTime");
            String strA4 = z0.a(strE, "guideRewardTime");
            if (!TextUtils.isEmpty(strA)) {
                this.f38564z0 = Integer.parseInt(strA);
            }
            if (!TextUtils.isEmpty(strA2)) {
                int i10 = Integer.parseInt(strA2);
                this.A0 = i10;
                if (i10 > 10 || i10 < 3) {
                    this.A0 = 5;
                }
            }
            if (!TextUtils.isEmpty(strA3)) {
                int i11 = Integer.parseInt(strA3);
                this.B0 = i11;
                if (i11 > 10 || i11 < 3) {
                    this.B0 = 5;
                }
            }
            if (!TextUtils.isEmpty(strA4)) {
                int i12 = Integer.parseInt(strA4);
                this.C0 = i12;
                if (i12 > 10 || i12 < 5) {
                    this.C0 = 5;
                }
            }
            int i13 = this.f38564z0;
            if (i13 > 0 && i13 <= 2) {
                int videoCompleteTime = getVideoCompleteTime();
                if (videoCompleteTime == 0 || videoCompleteTime > this.A0) {
                    int i14 = videoCompleteTime - this.A0;
                    if (i14 >= 0 && this.C0 > i14) {
                        this.C0 = i14;
                    }
                    int videoAllDuration = getVideoAllDuration();
                    if (this.C0 >= videoAllDuration) {
                        this.C0 = videoAllDuration - this.A0;
                    }
                    if (this.A0 >= videoAllDuration) {
                        return;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add(this.f38394b.getAppName());
                    com.mbridge.msdk.setting.g gVarB = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
                    this.D0 = new AcquireRewardPopViewParameters.Builder("", this.Q, this.f38564z0, gVarB != null ? gVarB.k() : "US").setAutoDismissTime(this.B0).setReduceTime(this.C0).setBehaviourListener(new j()).setRightAnswerList(arrayList).build();
                    postDelayed(this.Q0, 1000L);
                }
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void r() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || campaignEx.getAdSpaceT() != 2 || this.tvFlag == null) {
            return;
        }
        String language = Locale.getDefault().getLanguage();
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            this.tvFlag.setText("AD");
        } else {
            this.tvFlag.setText("广告");
        }
    }

    private void s() {
        int iB;
        int iF;
        float fG = t0.g(this.f38393a);
        float f10 = t0.f(this.f38393a);
        double d10 = this.R;
        if (d10 > 0.0d) {
            double d11 = this.S;
            if (d11 > 0.0d && fG > 0.0f && f10 > 0.0f) {
                double d12 = d10 / d11;
                double d13 = fG / f10;
                o0.c(MBridgeBaseView.TAG, "videoWHDivide:" + d12 + "  screenWHDivide:" + d13);
                double dA = t0.a(Double.valueOf(d12));
                double dA2 = t0.a(Double.valueOf(d13));
                o0.c(MBridgeBaseView.TAG, "videoWHDivideFinal:" + dA + "  screenWHDivideFinal:" + dA2);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
                if (dA > dA2) {
                    double d14 = (((double) fG) * this.S) / this.R;
                    layoutParams.width = -1;
                    layoutParams.height = (int) d14;
                    layoutParams.gravity = 17;
                } else if (dA < dA2) {
                    layoutParams.width = (int) (((double) f10) * d12);
                    layoutParams.height = -1;
                    layoutParams.gravity = 17;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                }
                try {
                    CampaignEx campaignEx = this.f38394b;
                    if (campaignEx != null && campaignEx.isDynamicView()) {
                        if (this.f38394b.getRewardTemplateMode() != null) {
                            iF = this.f38394b.getRewardTemplateMode().f();
                            iB = this.f38394b.getRewardTemplateMode().b();
                        } else {
                            iB = this.f38393a.getResources().getConfiguration().orientation;
                            iF = 904;
                        }
                        if (iF == 102 || iF == 202) {
                            if (iB == 1) {
                                layoutParams.width = -1;
                                layoutParams.gravity = 17;
                                layoutParams.height = (int) (this.S / (this.R / ((double) fG)));
                            } else {
                                layoutParams.height = -1;
                                layoutParams.gravity = 17;
                                layoutParams.width = (int) (((double) f10) * d12);
                            }
                        }
                        if (iF == 202 && !TextUtils.isEmpty(this.f38394b.getImageUrl())) {
                            setBlurBackgroundImage(this.f38394b.getImageUrl());
                        }
                        if (iF == 302 || iF == 802 || iF == 5002010) {
                            double d15 = this.R;
                            double d16 = this.S;
                            if (d15 / d16 > 1.0d) {
                                layoutParams.width = -1;
                                layoutParams.height = (int) ((d16 * ((double) fG)) / d15);
                            } else {
                                int iA = t0.a(getContext(), 220.0f);
                                layoutParams.width = (int) ((this.R * ((double) iA)) / this.S);
                                layoutParams.height = iA;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage());
                }
                this.mPlayerView.setLayoutParams(layoutParams);
                setMatchParent();
                return;
            }
        }
        v();
    }

    private void u() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null) {
            return;
        }
        if (campaignEx.getAdSpaceT() == 2) {
            t();
        } else {
            s();
        }
    }

    private void v() {
        try {
            setLayoutParam(0, 0, -1, -1);
            if (isLandscape() || !this.f38397e) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
            int iG = t0.g(this.f38393a);
            layoutParams.width = -1;
            layoutParams.height = (iG * 9) / 16;
            layoutParams.gravity = 17;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void w() {
        if (this.f38550s0) {
            if (!this.f38552t0) {
                this.mPlayerView.seekToEndFrame();
            }
            this.f38552t0 = true;
        } else {
            this.mPlayerView.onResume();
        }
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || campaignEx.isRewardPopViewShowed) {
            return;
        }
        post(this.Q0);
    }

    public void x() {
        if (!this.f38397e || this.f38539n.getVisibility() == 0) {
            return;
        }
        if (!this.f38400h || this.A) {
            this.f38539n.setVisibility(0);
        }
        this.f38525a0 = true;
    }

    public void y() {
        int i10;
        com.mbridge.msdk.video.module.listener.a aVar;
        boolean z10;
        try {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.f38394b.getRewardTemplateMode().f() == 5002010 && this.L0 && !(z10 = this.f38550s0)) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(z10));
                    return;
                }
                return;
            }
            if (!this.f38531g0 || ((i10 = this.f38536l0) != com.mbridge.msdk.foundation.same.a.H && i10 != com.mbridge.msdk.foundation.same.a.I)) {
                CampaignEx campaignEx2 = this.f38394b;
                if (campaignEx2 == null || campaignEx2.getAdSpaceT() == 2) {
                    com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
                    if (aVar3 != null) {
                        this.L0 = true;
                        aVar3.a(2, "");
                        return;
                    }
                    return;
                }
                boolean zM = m();
                if (zM && this.N == 1 && !this.f38529e0) {
                    o();
                    com.mbridge.msdk.video.module.listener.a aVar4 = this.notifyListener;
                    if (aVar4 != null) {
                        aVar4.a(8, "");
                        return;
                    }
                    return;
                }
                if (this.notifyListener != null) {
                    this.L0 = true;
                    if (this.f38394b.getAdType() == 94 && !zM) {
                        this.notifyListener.a(17, "");
                    }
                    this.notifyListener.a(2, c(!zM));
                    return;
                }
                return;
            }
            if (this.f38542o0) {
                if (i10 != com.mbridge.msdk.foundation.same.a.I || (aVar = this.notifyListener) == null) {
                    return;
                }
                this.L0 = true;
                aVar.a(2, c(this.f38550s0));
                return;
            }
            if (i10 == com.mbridge.msdk.foundation.same.a.I && this.f38556v0) {
                com.mbridge.msdk.video.module.listener.a aVar5 = this.notifyListener;
                if (aVar5 != null) {
                    this.L0 = true;
                    aVar5.a(2, c(this.f38550s0));
                    return;
                }
                return;
            }
            if (this.f38548r0) {
                int curPosition = this.mPlayerView.getCurPosition() / 1000;
                int videoLength = (int) ((curPosition / (this.mPlayerView.getDuration() == 0 ? this.f38394b.getVideoLength() : this.mPlayerView.getDuration())) * 100.0f);
                if (this.f38536l0 == com.mbridge.msdk.foundation.same.a.H) {
                    o();
                    int i11 = this.f38538m0;
                    if (i11 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.f38540n0) {
                        com.mbridge.msdk.video.module.listener.a aVar6 = this.notifyListener;
                        if (aVar6 != null) {
                            this.L0 = true;
                            aVar6.a(2, c(this.f38550s0));
                            return;
                        }
                        return;
                    }
                    if (i11 == com.mbridge.msdk.foundation.same.a.K && curPosition >= this.f38540n0) {
                        com.mbridge.msdk.video.module.listener.a aVar7 = this.notifyListener;
                        if (aVar7 != null) {
                            this.L0 = true;
                            aVar7.a(2, c(this.f38550s0));
                            return;
                        }
                        return;
                    }
                    com.mbridge.msdk.video.module.listener.a aVar8 = this.notifyListener;
                    if (aVar8 != null) {
                        aVar8.a(8, "");
                    }
                }
                if (this.f38536l0 == com.mbridge.msdk.foundation.same.a.I) {
                    int i12 = this.f38538m0;
                    if (i12 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.f38540n0) {
                        o();
                        com.mbridge.msdk.video.module.listener.a aVar9 = this.notifyListener;
                        if (aVar9 != null) {
                            aVar9.a(8, "");
                            return;
                        }
                        return;
                    }
                    if (i12 != com.mbridge.msdk.foundation.same.a.K || curPosition < this.f38540n0) {
                        return;
                    }
                    o();
                    com.mbridge.msdk.video.module.listener.a aVar10 = this.notifyListener;
                    if (aVar10 != null) {
                        aVar10.a(8, "");
                    }
                }
            }
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @Override
    public void soundOperate(int i10, int i11, String str) {
        com.mbridge.msdk.video.module.listener.a aVar;
        SoundImageView soundImageView;
        if (this.f38397e) {
            this.f38532h0 = i10;
            if (i10 == 1) {
                this.D.getJSCommon().g(i10);
                SoundImageView soundImageView2 = this.mSoundImageView;
                if (soundImageView2 != null) {
                    soundImageView2.setSoundStatus(false);
                }
                this.mPlayerView.closeSound();
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar2 = this.f38534j0;
                    if (aVar2 != null) {
                        aVar2.p(0.0f);
                        o0.a("omsdk", "play video view:  mute");
                    }
                } catch (Exception e10) {
                    o0.a("OMSDK", e10.getMessage());
                }
            } else if (i10 == 2) {
                this.D.getJSCommon().g(i10);
                SoundImageView soundImageView3 = this.mSoundImageView;
                if (soundImageView3 != null) {
                    soundImageView3.setSoundStatus(true);
                }
                this.mPlayerView.openSound();
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar3 = this.f38534j0;
                    if (aVar3 != null) {
                        aVar3.p(1.0f);
                        o0.a("omsdk", "play video view:  unmute");
                    }
                } catch (Exception e11) {
                    o0.a("OMSDK", e11.getMessage());
                }
            }
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                SoundImageView soundImageView4 = this.mSoundImageView;
                if (soundImageView4 != null) {
                    soundImageView4.setVisibility(0);
                }
            } else if (i11 == 1) {
                SoundImageView soundImageView5 = this.mSoundImageView;
                if (soundImageView5 != null) {
                    soundImageView5.setVisibility(8);
                }
            } else if (i11 == 2 && (soundImageView = this.mSoundImageView) != null) {
                soundImageView.setVisibility(0);
            }
        }
        if (str == null || !str.equals("2") || (aVar = this.notifyListener) == null) {
            return;
        }
        aVar.a(7, Integer.valueOf(i10));
    }

    public String c(boolean z10) {
        if (!this.f38531g0) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.f38542o0) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.F);
            }
            if (this.f38546q0) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.D);
            }
            if (this.f38544p0) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.E);
            }
            jSONObject.put("complete_info", z10 ? 1 : 2);
            return jSONObject.toString();
        } catch (Exception unused) {
            o0.b(MBridgeBaseView.TAG, "getIVRewardStatusString ERROR");
            return "";
        }
    }

    public void f() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.Q);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.Q + "_1", this.f38394b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            if (this.f38547r != null) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.Q + "_1", this.f38547r);
                return;
            }
            return;
        }
        FeedBackButton feedBackButton = this.f38547r;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    public void g() {
        CollapsibleWebView collapsibleWebView = this.H0;
        if (collapsibleWebView == null || this.f38394b == null || !TextUtils.isEmpty(collapsibleWebView.getUrl())) {
            return;
        }
        this.H0.loadUrl(this.f38394b.getClickURL());
        this.H0.setToolBarTitle(this.f38394b.getAppName());
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            gVarD = com.mbridge.msdk.setting.h.b().a();
        }
        this.H0.setPageLoadTimtout((int) gVarD.o0());
        this.H0.setPageLoadListener(new d());
        this.H0.setWebViewClient(new e());
        this.H0.setCollapseListener(new f());
        this.H0.setExpandListener(new g());
        this.H0.setExitsClickListener(new h());
    }

    private void h() {
        int iFindLayout = findLayout("mbridge_reward_videoview_item");
        if (g0.a(iFindLayout)) {
            this.f38395c.inflate(iFindLayout, this);
            n();
        }
        W0 = false;
        r();
    }

    private void i() {
        if (this.O0 || this.f38528d0 || this.f38526b0) {
            return;
        }
        this.O0 = true;
        int i10 = this.L;
        if (i10 < 0) {
            return;
        }
        if (i10 == 0) {
            this.f38528d0 = true;
        } else {
            new Handler().postDelayed(new a(), this.L * 1000);
        }
    }

    public void j() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.B == null) {
            return;
        }
        if (this.C == null) {
            addCTAView();
        }
        if (this.B.getVisibility() != 0) {
            this.B.setVisibility(0);
            postDelayed(this.P0, 3000L);
        } else {
            this.B.setVisibility(8);
            getHandler().removeCallbacks(this.P0);
        }
    }

    private void k() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !y0.b(campaignEx.getVideoResolution())) {
            return;
        }
        String videoResolution = this.f38394b.getVideoResolution();
        o0.c(MBridgeBaseView.TAG, "MBridgeBaseView videoResolution:" + videoResolution);
        String[] strArrSplit = videoResolution.split("x");
        if (strArrSplit.length == 2) {
            if (t0.m(strArrSplit[0]) > 0.0d) {
                this.R = t0.m(strArrSplit[0]);
            }
            if (t0.m(strArrSplit[1]) > 0.0d) {
                this.S = t0.m(strArrSplit[1]);
            }
            o0.c(MBridgeBaseView.TAG, "MBridgeBaseView mVideoW:" + this.R + "  mVideoH:" + this.S);
        }
        if (this.R <= 0.0d) {
            this.R = 1280.0d;
        }
        if (this.S <= 0.0d) {
            this.S = 720.0d;
        }
    }

    private boolean l() {
        try {
            this.mPlayerView = (PlayerView) findViewById(filterFindViewId(this.f38558w0, "mbridge_vfpv"));
            this.mSoundImageView = (SoundImageView) findViewById(filterFindViewId(this.f38558w0, "mbridge_sound_switch"));
            this.f38537m = (TextView) findViewById(filterFindViewId(this.f38558w0, "mbridge_tv_count"));
            View viewFindViewById = findViewById(filterFindViewId(this.f38558w0, "mbridge_rl_playing_close"));
            this.f38539n = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(4);
            }
            this.f38541o = (RelativeLayout) findViewById(filterFindViewId(this.f38558w0, "mbridge_top_control"));
            this.f38543p = (ImageView) findViewById(filterFindViewId(this.f38558w0, "mbridge_videoview_bg"));
            this.f38545q = (ProgressBar) findViewById(filterFindViewId(this.f38558w0, "mbridge_video_progress_bar"));
            this.f38547r = (FeedBackButton) findViewById(filterFindViewId(this.f38558w0, "mbridge_native_endcard_feed_btn"));
            this.f38549s = (ImageView) findViewById(filterFindViewId(this.f38558w0, "mbridge_iv_link"));
            this.G0 = (RelativeLayout) findViewById(filterFindViewId(this.f38558w0, "mbridge_reward_scale_webview_layout"));
            this.I0 = (RelativeLayout) findViewById(filterFindViewId(this.f38558w0, "mbridge_reward_header_layout"));
            if (this.G0 != null) {
                CollapsibleWebView collapsibleWebView = new CollapsibleWebView(getContext());
                this.H0 = collapsibleWebView;
                this.G0.addView(collapsibleWebView, new RelativeLayout.LayoutParams(-1, -1));
            }
            t0.a(1, this.f38549s, this.f38394b, this.f38393a, false, new t());
            this.f38551t = (MBridgeSegmentsProgressBar) findViewById(filterFindViewId(this.f38558w0, "mbridge_reward_segment_progressbar"));
            this.B = (FrameLayout) findViewById(filterFindViewId(this.f38558w0, "mbridge_reward_cta_layout"));
            this.f38562y0 = (MBridgeBaitClickView) findViewById(filterFindViewId(this.f38558w0, "mbridge_animation_click_view"));
            this.G = (RelativeLayout) findViewById(filterFindViewId(this.f38558w0, "mbridge_reward_moreoffer_layout"));
            this.E0 = (MBAcquireRewardPopView) findViewById(filterFindViewId(this.f38558w0, "mbridge_reward_popview"));
            this.tvFlag = (TextView) findViewById(filterFindViewId(this.f38558w0, "mbridge_tv_flag"));
            return isNotNULL(this.mPlayerView, this.mSoundImageView, this.f38537m, this.f38539n);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    private boolean m() {
        int videoCompleteTime = getVideoCompleteTime();
        int curPosition = (this.mPlayerView.getCurPosition() / 1000) + 1;
        if (this.f38394b.getDynamicTempCode() != 5 || this.mCurrPlayNum <= 1) {
            if ((videoCompleteTime > 0 && curPosition < videoCompleteTime) || videoCompleteTime == 0) {
                return true;
            }
        } else if (videoCompleteTime != 0 && videoCompleteTime > 0 && curPosition < videoCompleteTime) {
            return true;
        }
        return false;
    }

    public void n() {
        PlayerView playerView;
        boolean zL = l();
        this.f38397e = zL;
        if (!zL) {
            o0.b(MBridgeBaseView.TAG, "MBridgeVideoView init fail");
        }
        if (q0.a().a("i_l_s_t_r_i", false) && (playerView = this.mPlayerView) != null) {
            playerView.setNotifyListener(new n());
        }
        d();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.f38560x0 = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    public void o() {
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null) {
                playerView.onPause();
                CampaignEx campaignEx = this.f38394b;
                if (campaignEx != null && !campaignEx.isRewardPopViewShowed) {
                    removeCallbacks(this.Q0);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    this.mPlayerView.setIsCovered(this.F0 || this.I || this.J);
                }
                CampaignEx campaignEx2 = this.f38394b;
                if (campaignEx2 == null || campaignEx2.getNativeVideoTracking() == null || this.f38394b.isHasReportAdTrackPause()) {
                    return;
                }
                this.f38394b.setHasReportAdTrackPause(true);
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx3 = this.f38394b;
                com.mbridge.msdk.click.a.a(contextD, campaignEx3, this.Q, campaignEx3.getNativeVideoTracking().n(), false, false);
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    @Override
    protected void d() {
        super.d();
        if (this.f38397e) {
            if (this.f38400h) {
                if (com.mbridge.msdk.video.dynview.util.a.b(this.f38394b) == -1 || com.mbridge.msdk.video.dynview.util.a.b(this.f38394b) == 100) {
                    this.mPlayerView.setOnClickListener(new o());
                }
            } else {
                this.mPlayerView.setOnClickListener(new p());
            }
            SoundImageView soundImageView = this.mSoundImageView;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(new q());
            }
            this.f38539n.setOnClickListener(new r());
        }
    }

    private boolean b(int i10, int i11) {
        return i10 > 0 && i11 > 0 && t0.g(this.f38393a) >= i10 && t0.f(this.f38393a) >= i11;
    }

    private void a(ViewGroup viewGroup, CampaignEx campaignEx) {
        com.mbridge.msdk.video.dynview.c cVarB = new com.mbridge.msdk.video.dynview.wrapper.c().b(viewGroup, campaignEx);
        com.mbridge.msdk.video.dynview.b.a().a(cVarB, new l(viewGroup, cVarB));
    }

    public void b(String str) {
        JSONException e10;
        JSONObject jSONObject;
        if (this.f38553u != null) {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null) {
                campaignEx.setClickTempSource(1);
                try {
                    CampaignEx.c rewardTemplateMode = this.f38394b.getRewardTemplateMode();
                    String str2 = "";
                    if (rewardTemplateMode != null) {
                        str2 = rewardTemplateMode.f() + "";
                    }
                    com.mbridge.msdk.foundation.same.report.j.a(this.f38393a, str, this.f38394b.getCampaignUnitId(), this.f38394b.isBidCampaign(), this.f38394b.getRequestId(), this.f38394b.getRequestIdNotice(), this.f38394b.getId(), str2);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, a(0));
                } catch (JSONException e12) {
                    e10 = e12;
                    e10.printStackTrace();
                }
            } catch (JSONException e13) {
                e10 = e13;
                jSONObject = null;
            }
            this.f38553u.a(105, jSONObject);
            if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                try {
                    com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), this.f38394b);
                } catch (Exception e14) {
                    o0.b(MBridgeBaseView.TAG, e14.getMessage());
                }
            }
        }
    }

    private String a(int i10, int i11) {
        if (i11 != 0) {
            try {
                return t0.a(Double.valueOf(i10 / i11)) + "";
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return i11 + "";
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).w();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).w();
    }

    class l implements com.mbridge.msdk.video.dynview.listener.h {

        final ViewGroup f38584a;

        final com.mbridge.msdk.video.dynview.c f38585b;

        class a extends com.mbridge.msdk.widget.a {
            a() {
            }

            @Override
            protected void a(View view) {
                if (view instanceof TextView) {
                    MBridgeVideoView.this.f38394b.setTriggerClickSource(1);
                } else {
                    MBridgeVideoView.this.f38394b.setTriggerClickSource(2);
                }
                if (MBridgeVideoView.this.f38394b.getRewardTemplateMode() == null || MBridgeVideoView.this.f38394b.getRewardTemplateMode().f() != 902) {
                    MBridgeVideoView.this.b("video_play_click");
                } else {
                    MBridgeVideoView.this.j();
                }
            }
        }

        l(ViewGroup viewGroup, com.mbridge.msdk.video.dynview.c cVar) {
            this.f38584a = viewGroup;
            this.f38585b = cVar;
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                if (this.f38584a != null && aVar.b() != null) {
                    aVar.b().setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f38584a.addView(aVar.b());
                }
                if (aVar.a() != null) {
                    Iterator<View> it = aVar.a().iterator();
                    while (it.hasNext()) {
                        it.next().setOnClickListener(new a());
                    }
                }
                MBridgeVideoView.this.f38558w0 = aVar.c();
                MBridgeVideoView.this.n();
                boolean unused = MBridgeVideoView.W0 = false;
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                CampaignEx campaignEx = mBridgeVideoView.f38394b;
                if (campaignEx != null) {
                    campaignEx.setTemplateRenderSucc(mBridgeVideoView.f38558w0);
                }
                MBridgeVideoView.this.E = this.f38585b.j();
                MBridgeVideoView.this.F = this.f38585b.e();
            }
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg：" + aVar.c());
        }
    }

    public MBridgeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.f38557w = false;
        this.f38563z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f38525a0 = false;
        this.f38526b0 = false;
        this.f38527c0 = false;
        this.f38528d0 = false;
        this.f38529e0 = false;
        this.f38531g0 = false;
        this.f38532h0 = 2;
        this.f38542o0 = false;
        this.f38544p0 = false;
        this.f38546q0 = false;
        this.f38548r0 = true;
        this.f38550s0 = false;
        this.f38552t0 = false;
        this.f38554u0 = false;
        this.f38556v0 = false;
        this.f38558w0 = false;
        this.f38564z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }
}
