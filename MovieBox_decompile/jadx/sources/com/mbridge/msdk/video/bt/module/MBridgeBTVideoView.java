package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerErrorConstant;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.io.File;
import org.json.JSONObject;

public class MBridgeBTVideoView extends BTBaseView {
    private static boolean P;
    private static long Q;
    private com.iab.omid.library.mmadbridge.adsession.b A;
    private com.iab.omid.library.mmadbridge.adsession.a B;
    private com.iab.omid.library.mmadbridge.adsession.media.a C;
    private d D;
    private int E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private String J;
    private boolean K;
    private boolean L;
    private boolean M;
    private RelativeLayout N;
    private ProgressBar O;

    private PlayerView f38072p;

    private SoundImageView f38073q;

    private TextView f38074r;

    private View f38075s;

    private FeedBackButton f38076t;

    private ImageView f38077u;

    private WebView f38078v;

    private com.mbridge.msdk.videocommon.download.a f38079w;

    private int f38080x;

    private int f38081y;

    private int f38082z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            boolean zIsSilent = MBridgeBTVideoView.this.f38072p.isSilent();
            if (MBridgeBTVideoView.this.f38078v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f37977n);
                    jSONObject.put("id", MBridgeBTVideoView.this.f37982d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, MBridgeBTVideoView.this.E);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.f38078v, "onPlayerMuteBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    o0.a("OperateViews", "onPlayerMuteBtnClicked isMute = " + zIsSilent + " mute = " + MBridgeBTVideoView.this.E);
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.f38078v, e10.getMessage());
                }
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.f38078v != null) {
                BTBaseView.a(MBridgeBTVideoView.this.f38078v, "onPlayerCloseBtnClicked", MBridgeBTVideoView.this.f37982d);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.C != null) {
                try {
                    MBridgeBTVideoView.this.C.a(InteractionType.CLICK);
                    o0.a("omsdk", "btv adUserInteraction click");
                } catch (Exception e10) {
                    o0.b("omsdk", e10.getMessage());
                }
            }
            if (MBridgeBTVideoView.this.f38078v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f37977n);
                    jSONObject.put("id", MBridgeBTVideoView.this.f37982d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", String.valueOf(view.getX()));
                    jSONObject2.put("y", String.valueOf(view.getY()));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.f38078v, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception unused) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.f38078v, "onClicked", MBridgeBTVideoView.this.f37982d);
                }
            }
        }
    }

    private static final class d extends DefaultVideoPlayerStatusListener {

        private MBridgeBTVideoView f38086a;

        private WebView f38087b;

        private com.iab.omid.library.mmadbridge.adsession.media.a f38088c;

        private String f38089d;

        private String f38090e;

        private int f38091f;

        private int f38092g;

        private boolean f38093h;

        private int f38097l;

        private int f38098m;

        private boolean f38094i = false;

        private boolean f38095j = false;

        private boolean f38096k = false;

        private boolean f38099n = false;

        private boolean f38100o = false;

        public d(MBridgeBTVideoView mBridgeBTVideoView, WebView webView, com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
            this.f38086a = mBridgeBTVideoView;
            this.f38087b = webView;
            this.f38088c = aVar;
            if (mBridgeBTVideoView != null) {
                this.f38089d = mBridgeBTVideoView.f37982d;
                this.f38090e = mBridgeBTVideoView.f37981c;
            }
        }

        public void b(int i10, int i11) {
            this.f38097l = i10;
            this.f38098m = i11;
            a();
        }

        @Override
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                if (this.f38088c == null || !this.f38100o) {
                    return;
                }
                o0.b("omsdk", "bt onBufferingEnd");
                this.f38100o = false;
                this.f38088c.b();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onBufferingStart(String str) {
            try {
                o0.b("omsdk", "bt onBufferingStart1");
                super.onBufferingStart(str);
                if (this.f38088c != null) {
                    o0.b("omsdk", "bt onBufferingStart");
                    this.f38088c.c();
                    this.f38100o = true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onBufferingTimeOut(String str) {
            try {
                if (!str.equals(PlayerErrorConstant.PREPARE_TIMEOUT) && !str.equals(PlayerErrorConstant.PLAYERING_TIMEOUT)) {
                    return;
                }
                if (this.f38087b != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", BTBaseView.f37977n);
                        jSONObject.put("id", this.f38089d);
                        jSONObject.put("data", new JSONObject());
                        f.a().a(this.f38087b, "onPlayerTimeout", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e10) {
                        com.mbridge.msdk.video.bt.component.d.c().a(this.f38087b, e10.getMessage());
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override
        public void onPlayCompleted() {
            super.onPlayCompleted();
            MBridgeBTVideoView mBridgeBTVideoView = this.f38086a;
            CampaignEx campaignEx = mBridgeBTVideoView.f37980b;
            if (campaignEx == null) {
                mBridgeBTVideoView.f38074r.setText("0");
            } else if (campaignEx.getVideoCompleteTime() > 0) {
                this.f38086a.f38074r.setText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
            } else {
                this.f38086a.f38074r.setText("0");
            }
            this.f38086a.f38072p.setClickable(false);
            WebView webView = this.f38087b;
            if (webView != null) {
                BTBaseView.a(webView, "onPlayerFinish", this.f38089d);
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38088c;
            if (aVar != null) {
                aVar.d();
                o0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f38091f = this.f38092g;
            boolean unused = MBridgeBTVideoView.P = true;
            this.f38086a.stop();
        }

        @Override
        public void onPlayError(String str) {
            super.onPlayError(str);
            if (this.f38087b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f37978o);
                    jSONObject.put("id", this.f38089d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("error", str);
                    jSONObject2.put("id", this.f38089d);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.f38087b, "onPlayerFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.f38087b, e10.getMessage());
                }
            }
        }

        @Override
        public void onPlayProgress(int i10, int i11) {
            int videoCompleteTime;
            StringBuilder sb2;
            String str;
            String string;
            super.onPlayProgress(i10, i11);
            if (MBridgeBTVideoView.Q == 0) {
                long unused = MBridgeBTVideoView.Q = System.currentTimeMillis();
            }
            MBridgeBTVideoView mBridgeBTVideoView = this.f38086a;
            if (mBridgeBTVideoView.f37986h) {
                CampaignEx campaignEx = mBridgeBTVideoView.f37980b;
                if (campaignEx != null) {
                    videoCompleteTime = campaignEx.getVideoCompleteTime();
                    com.mbridge.msdk.foundation.feedback.b.b().b(this.f38086a.f37980b.getCampaignUnitId() + "_1", i10);
                } else {
                    videoCompleteTime = 0;
                }
                if (videoCompleteTime > i11 || videoCompleteTime <= 0) {
                    videoCompleteTime = i11;
                }
                int i12 = videoCompleteTime <= 0 ? i11 - i10 : videoCompleteTime - i10;
                if (i12 <= 0) {
                    string = videoCompleteTime <= 0 ? "0" : (String) this.f38086a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
                } else {
                    if (videoCompleteTime <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i12);
                        str = "";
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i12);
                        str = (String) this.f38086a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", "string"));
                    }
                    sb2.append(str);
                    string = sb2.toString();
                }
                CampaignEx campaignEx2 = this.f38086a.f37980b;
                if (campaignEx2 != null && campaignEx2.getUseSkipTime() == 1) {
                    int iMin = Math.min(this.f38086a.f37980b.getVst(), i11);
                    if (iMin >= videoCompleteTime || iMin < 0) {
                        int i13 = videoCompleteTime - i10;
                        if (this.f38086a.f37980b.getAdType() == 287) {
                            if (i13 > 0) {
                                string = i13 + ((String) this.f38086a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                            } else if (i13 == 0) {
                                this.f38086a.f38074r.setVisibility(4);
                            }
                        }
                    } else {
                        int i14 = iMin - i10;
                        if (i14 > 0) {
                            string = i14 + ((String) this.f38086a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                        } else if (this.f38086a.f37980b.getAdType() == 287 && i14 == 0) {
                            this.f38086a.f38074r.setVisibility(4);
                        }
                    }
                }
                this.f38086a.f38074r.setText(string);
            }
            this.f38092g = i11;
            this.f38091f = i10;
            this.f38086a.O.setMax(this.f38092g);
            this.f38086a.O.setProgress(this.f38091f);
            if (this.f38087b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f37977n);
                    jSONObject.put("id", this.f38089d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", this.f38089d);
                    jSONObject2.put(NotificationCompat.CATEGORY_PROGRESS, MBridgeBTVideoView.b(i10, i11));
                    jSONObject2.put(EventConstants.KEY_TIME, String.valueOf(i10));
                    jSONObject2.put("duration", String.valueOf(i11));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.f38087b, "onPlayerProgressChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.f38087b, e10.getMessage());
                }
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38088c;
            if (aVar != null) {
                int i15 = (i10 * 100) / i11;
                int i16 = ((i10 + 1) * 100) / i11;
                if (i15 <= 25 && 25 < i16 && !this.f38094i) {
                    this.f38094i = true;
                    aVar.h();
                    o0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i15 <= 50 && 50 < i16 && !this.f38095j) {
                    this.f38095j = true;
                    aVar.i();
                    o0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i15 <= 75 && 75 < i16 && !this.f38096k) {
                    this.f38096k = true;
                    aVar.o();
                    o0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            a(i10, i11);
        }

        @Override
        public void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override
        public void onPlayStarted(int i10) {
            super.onPlayStarted(i10);
            if (!this.f38093h) {
                this.f38086a.O.setMax(i10);
                WebView webView = this.f38087b;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.f38089d);
                }
                this.f38093h = true;
                if (this.f38088c != null) {
                    try {
                        MBridgeBTVideoView mBridgeBTVideoView = this.f38086a;
                        this.f38088c.n(i10, (mBridgeBTVideoView == null || mBridgeBTVideoView.f38072p == null) ? 0.0f : this.f38086a.f38072p.getVolume());
                        o0.a("omsdk", "play2: videoEvents.start()");
                    } catch (Exception e10) {
                        o0.b("omsdk", e10.getMessage());
                    }
                }
            }
            boolean unused = MBridgeBTVideoView.P = false;
        }

        private void a() {
            int i10;
            MBridgeBTVideoView mBridgeBTVideoView;
            CampaignEx campaignEx;
            String str;
            if (!q0.a().a("h_c_r_w_p_c", false) || (i10 = this.f38097l) == 100 || this.f38098m != 0 || this.f38099n || i10 == 0 || (mBridgeBTVideoView = this.f38086a) == null || (campaignEx = mBridgeBTVideoView.f37980b) == null) {
                return;
            }
            try {
                if (campaignEx.getAdType() == 94 || this.f38086a.f37980b.getAdType() == 287) {
                    str = this.f38086a.f37980b.getRequestId() + this.f38086a.f37980b.getId() + this.f38086a.f37980b.getVideoUrlEncode();
                } else {
                    str = this.f38086a.f37980b.getId() + this.f38086a.f37980b.getVideoUrlEncode() + this.f38086a.f37980b.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f38090e, str);
                if (aVarA != null) {
                    aVarA.v();
                    this.f38099n = true;
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

        private void a(int i10, int i11) {
            int i12;
            int i13;
            String str;
            try {
                int i14 = this.f38097l;
                if (i14 == 100 || this.f38099n || i14 == 0 || (i12 = this.f38098m) < 0 || i10 < (i13 = (i11 * i12) / 100)) {
                    return;
                }
                if (this.f38086a.f37980b.getAdType() != 94 && this.f38086a.f37980b.getAdType() != 287) {
                    str = this.f38086a.f37980b.getId() + this.f38086a.f37980b.getVideoUrlEncode() + this.f38086a.f37980b.getBidToken();
                } else {
                    str = this.f38086a.f37980b.getRequestId() + this.f38086a.f37980b.getId() + this.f38086a.f37980b.getVideoUrlEncode();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f38090e, str);
                if (aVarA != null) {
                    aVarA.v();
                    this.f38099n = true;
                    o0.b("DefaultVideoPlayerStatusListener", "CDRate is : " + i13 + " and start download !");
                }
            } catch (Exception e10) {
                o0.b("DefaultVideoPlayerStatusListener", e10.getMessage());
            }
        }
    }

    public MBridgeBTVideoView(Context context) {
        super(context);
        this.f38080x = 0;
        this.f38081y = 0;
        this.f38082z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }

    private int getBufferTimeout() {
        int i10 = 5;
        try {
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC == null) {
                com.mbridge.msdk.videocommon.setting.b.b().a();
            }
            i10 = aVarC != null ? (int) aVarC.i() : 5;
            o0.c(BTBaseView.TAG, "MBridgeBaseView buffetTimeout:" + i10);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return i10;
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37981c, false).g();
    }

    private String getPlayURL() {
        String videoUrlEncode = "";
        try {
            videoUrlEncode = this.f37980b.getVideoUrlEncode();
            com.mbridge.msdk.videocommon.download.a aVar = this.f38079w;
            if (aVar == null) {
                return videoUrlEncode;
            }
            String strK = aVar.k();
            return (y0.a(strK) || !new File(strK).exists()) ? videoUrlEncode : strK;
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage(), th2);
            return videoUrlEncode;
        }
    }

    public com.iab.omid.library.mmadbridge.adsession.a getAdEvents() {
        return this.B;
    }

    public com.iab.omid.library.mmadbridge.adsession.b getAdSession() {
        return this.A;
    }

    public int getMute() {
        return this.E;
    }

    public com.iab.omid.library.mmadbridge.adsession.media.a getVideoEvents() {
        return this.C;
    }

    @Override
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_videoview_item");
        if (g0.a(iFindLayout)) {
            this.f37984f.inflate(iFindLayout, this);
            boolean zE = e();
            this.f37986h = zE;
            if (!zE) {
                o0.b(BTBaseView.TAG, "MBridgeVideoView init fail");
            }
            b();
        }
        P = false;
    }

    @Override
    protected void onAttachedToWindow() {
        View rootView;
        super.onAttachedToWindow();
        if (!this.M) {
            this.H = com.mbridge.msdk.video.bt.component.d.c().g(this.f37981c);
        }
        View view = this.f38075s;
        if (view != null) {
            view.setVisibility(this.f38081y == 0 ? 8 : 0);
        }
        SoundImageView soundImageView = this.f38073q;
        if (soundImageView != null) {
            soundImageView.setVisibility(this.f38082z == 0 ? 8 : 0);
        }
        CampaignEx campaignEx = this.f37980b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.f37981c);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f37981c + "_1", this.f37980b);
        }
        TextView textView = this.f38074r;
        if (textView != null) {
            textView.setVisibility(this.f38080x == 0 ? 8 : 0);
            if (this.f38074r.getVisibility() == 0 && com.mbridge.msdk.foundation.feedback.b.b().a()) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f37981c + "_1", this.f38076t);
            }
        }
        if (this.A == null || (rootView = getRootView()) == null) {
            return;
        }
        this.A.f(rootView);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onDestory() {
        try {
            if (this.f38072p != null) {
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
                if (bVar != null) {
                    bVar.c();
                }
                this.f38072p.setOnClickListener(null);
                this.f38072p.release();
                this.f38072p = null;
                if (!TextUtils.isEmpty(this.J)) {
                    e eVar = new e();
                    long jCurrentTimeMillis = Q;
                    if (jCurrentTimeMillis != 0) {
                        jCurrentTimeMillis = System.currentTimeMillis() - Q;
                    }
                    eVar.a("duration", Long.valueOf(jCurrentTimeMillis));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f37980b, eVar);
                }
            }
            SoundImageView soundImageView = this.f38073q;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(null);
            }
            View view = this.f38075s;
            if (view != null) {
                view.setOnClickListener(null);
            }
            if (this.f38078v != null) {
                this.f38078v = null;
            }
            if (this.A != null) {
                this.A = null;
            }
            if (this.C != null) {
                this.C = null;
            }
            setOnClickListener(null);
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void onPause() {
        PlayerView playerView = this.f38072p;
        if (playerView != null) {
            boolean zIsPlayIng = playerView.isPlayIng();
            this.L = zIsPlayIng;
            this.f38072p.setIsBTVideoPlaying(zIsPlayIng);
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
            if (aVar != null) {
                this.f38072p.setVideoEvents(aVar);
            }
            this.f38072p.onPause();
        }
    }

    public void onResume() {
        PlayerView playerView = this.f38072p;
        if (playerView != null) {
            playerView.setDesk(true);
            this.f38072p.setIsCovered(false);
            if (this.L) {
                this.f38072p.start(true);
            }
            this.f38072p.resumeOMSDK();
        }
    }

    public void onStop() {
        PlayerView playerView = this.f38072p;
        if (playerView != null) {
            playerView.setIsCovered(true);
        }
    }

    public void pause() {
        try {
            PlayerView playerView = this.f38072p;
            if (playerView != null) {
                playerView.pause();
                WebView webView = this.f38078v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPause", this.f37982d);
                }
            }
        } catch (Exception e10) {
            o0.b(BTBaseView.TAG, e10.getMessage(), e10);
        }
    }

    public void play() {
        d dVar;
        try {
            if (this.M) {
                if (this.G) {
                    this.f38072p.playVideo(0);
                    this.G = false;
                } else {
                    this.f38072p.start(false);
                }
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                    if (aVar != null) {
                        aVar.l();
                        o0.a("omsdk", "btv play2:  videoEvents.resume()");
                    }
                } catch (Throwable th2) {
                    o0.a(BTBaseView.TAG, th2.getMessage());
                }
                WebView webView = this.f38078v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.f37982d);
                    return;
                }
                return;
            }
            String playURL = getPlayURL();
            this.J = playURL;
            this.f38072p.initVFPData(playURL, this.f37980b.getVideoUrlEncode(), this.D);
            if (this.H == 1) {
                playMute();
            } else {
                playUnMute();
            }
            try {
                if (this.B != null) {
                    o0.b("omsdk", "bt impressionOccurred");
                    this.B.b();
                }
            } catch (Throwable th3) {
                o0.a(BTBaseView.TAG, th3.getMessage());
            }
            if (!this.f38072p.playVideo() && (dVar = this.D) != null) {
                dVar.onPlayError("play video failed");
            }
            this.M = true;
            return;
        } catch (Exception e10) {
            o0.b(BTBaseView.TAG, e10.getMessage(), e10);
        }
        o0.b(BTBaseView.TAG, e10.getMessage(), e10);
    }

    public boolean playMute() {
        try {
            PlayerView playerView = this.f38072p;
            if (playerView != null && this.f38078v != null) {
                playerView.closeSound();
                this.f38073q.setSoundStatus(false);
                this.E = 1;
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                    if (aVar != null) {
                        aVar.p(0.0f);
                    }
                } catch (Exception e10) {
                    o0.a("OMSDK", e10.getMessage());
                }
                BTBaseView.a(this.f38078v, "onPlayerMute", this.f37982d);
                return true;
            }
        } catch (Exception e11) {
            o0.b(BTBaseView.TAG, e11.getMessage());
        }
        return false;
    }

    public boolean playUnMute() {
        try {
            PlayerView playerView = this.f38072p;
            if (playerView == null || this.f38078v == null) {
                return false;
            }
            playerView.openSound();
            this.f38073q.setSoundStatus(true);
            this.E = 2;
            try {
                com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                if (aVar != null) {
                    aVar.p(1.0f);
                }
            } catch (Exception e10) {
                o0.a("OMSDK", e10.getMessage());
            }
            BTBaseView.a(this.f38078v, "onUnmute", this.f37982d);
            return true;
        } catch (Exception e11) {
            o0.b(BTBaseView.TAG, e11.getMessage());
            return false;
        }
    }

    public void preLoadData() {
        d();
        this.F = getBufferTimeout();
        String playURL = getPlayURL();
        this.J = playURL;
        if (this.f37986h && !TextUtils.isEmpty(playURL) && this.f37980b != null) {
            com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
            if (bVar != null) {
                bVar.d(this.f38072p);
                com.iab.omid.library.mmadbridge.adsession.b bVar2 = this.A;
                SoundImageView soundImageView = this.f38073q;
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                bVar2.a(soundImageView, friendlyObstructionPurpose, null);
                this.A.a(this.f38074r, friendlyObstructionPurpose, null);
                this.A.a(this.f38075s, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            d dVar = new d(this, this.f38078v, this.C);
            this.D = dVar;
            dVar.b(a(this.f37980b), getCDRate());
            this.f38072p.setDesk(false);
            this.f38072p.initBufferIngParam(this.F);
            soundOperate(this.E, -1, null);
        }
        P = false;
    }

    public void resume() {
        try {
            PlayerView playerView = this.f38072p;
            if (playerView != null) {
                if (this.G) {
                    playerView.playVideo(0);
                    this.G = false;
                } else {
                    playerView.onResume();
                }
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                    if (aVar != null) {
                        aVar.l();
                        o0.a("omsdk", "btv play3:  videoEvents.resume()");
                    }
                } catch (Throwable th2) {
                    o0.a(BTBaseView.TAG, th2.getMessage());
                }
                WebView webView = this.f38078v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerResume", this.f37982d);
                }
            }
        } catch (Exception e10) {
            o0.b(BTBaseView.TAG, e10.getMessage());
        }
    }

    public void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.B = aVar;
    }

    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.A = bVar;
    }

    @Override
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        if (campaignEx == null || campaignEx.getVideoCompleteTime() <= 0) {
            this.f38074r.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
            this.f38074r.setWidth(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
            return;
        }
        this.f38074r.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
        int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
        layoutParams.setMargins(iA, 0, 0, 0);
        this.f38074r.setPadding(iA, 0, iA, 0);
        this.f38074r.setLayoutParams(layoutParams);
    }

    public void setCloseViewVisable(int i10) {
        this.f38075s.setVisibility(i10 == 0 ? 4 : 0);
    }

    public void setCountDownTextViewVisable(int i10) {
        this.f38074r.setVisibility(i10 == 0 ? 4 : 0);
    }

    public void setCreateWebView(WebView webView) {
        this.f38078v = webView;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        if (i10 <= 0) {
            i10 = this.N.getPaddingLeft();
        }
        if (i11 <= 0) {
            i11 = this.N.getPaddingRight();
        }
        if (i12 <= 0) {
            i12 = this.N.getPaddingTop();
        }
        if (i13 <= 0) {
            i13 = this.N.getPaddingBottom();
        }
        o0.b(BTBaseView.TAG, "NOTCH BTVideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
        this.N.setPadding(i10, i12, i11, i13);
    }

    public void setOrientation(int i10) {
        this.I = i10;
    }

    public void setPlaybackParams(float f10) {
        PlayerView playerView = this.f38072p;
        if (playerView != null) {
            playerView.setPlaybackParams(f10);
        }
    }

    public void setProgressBarState(int i10) {
        ProgressBar progressBar = this.O;
        if (progressBar != null) {
            progressBar.setVisibility(i10 == 0 ? 8 : 0);
            CampaignEx campaignEx = this.f37980b;
            if (campaignEx == null || campaignEx.getProgressBarShow() != 1) {
                return;
            }
            this.O.setVisibility(0);
        }
    }

    public void setShowClose(int i10) {
        this.f38081y = i10;
    }

    public void setShowMute(int i10) {
        this.f38082z = i10;
    }

    public void setShowTime(int i10) {
        this.f38080x = i10;
    }

    public void setSoundImageViewVisble(int i10) {
        this.f38073q.setVisibility(i10 == 0 ? 4 : 0);
    }

    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.C = aVar;
        d dVar = this.D;
        if (dVar != null) {
            dVar.f38088c = aVar;
        }
        PlayerView playerView = this.f38072p;
        if (playerView != null) {
            playerView.setVideoEvents(aVar);
        }
    }

    public void setVolume(float f10, float f11) {
        PlayerView playerView = this.f38072p;
        if (playerView != null) {
            playerView.setVolume(f10, f11);
        }
    }

    public void soundOperate(int i10, int i11, String str) {
        if (this.f37986h) {
            this.E = i10;
            if (i10 == 1) {
                this.f38073q.setSoundStatus(false);
                this.f38072p.closeSound();
            } else if (i10 == 2) {
                this.f38073q.setSoundStatus(true);
                this.f38072p.openSound();
            }
            if (i11 == 1) {
                this.f38073q.setVisibility(8);
            } else if (i11 == 2) {
                this.f38073q.setVisibility(0);
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
            if (aVar != null) {
                try {
                    aVar.p(this.f38072p.getVolume());
                } catch (Exception e10) {
                    o0.b("omsdk", e10.getMessage());
                }
            }
        }
    }

    public void stop() {
        try {
            PlayerView playerView = this.f38072p;
            if (playerView != null) {
                playerView.pause();
                this.f38072p.stop();
                this.G = true;
                WebView webView = this.f38078v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerStop", this.f37982d);
                }
            }
        } catch (Exception e10) {
            o0.b(BTBaseView.TAG, e10.getMessage(), e10);
        }
    }

    private void d() {
        String str;
        if (this.f37980b.getAdType() == 94 || this.f37980b.getAdType() == 287) {
            str = this.f37980b.getRequestId() + this.f37980b.getId() + this.f37980b.getVideoUrlEncode();
        } else {
            str = this.f37980b.getId() + this.f37980b.getVideoUrlEncode() + this.f37980b.getBidToken();
        }
        com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f37981c, str);
        if (aVarA != null) {
            this.f38079w = aVarA;
        }
    }

    private boolean e() {
        try {
            this.f38072p = (PlayerView) findViewById(findID("mbridge_vfpv"));
            this.f38073q = (SoundImageView) findViewById(findID("mbridge_sound_switch"));
            this.f38074r = (TextView) findViewById(findID("mbridge_tv_count"));
            this.f38075s = findViewById(findID("mbridge_rl_playing_close"));
            this.N = (RelativeLayout) findViewById(findID("mbridge_top_control"));
            this.O = (ProgressBar) findViewById(findID("mbridge_video_progress_bar"));
            this.f38072p.setIsBTVideo(true);
            this.f38076t = (FeedBackButton) findViewById(findID("mbridge_native_endcard_feed_btn"));
            this.f38077u = (ImageView) findViewById(findID("mbridge_iv_link"));
            return isNotNULL(this.f38072p, this.f38073q, this.f38074r, this.f38075s);
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    @Override
    protected void b() {
        super.b();
        if (this.f37986h) {
            this.f38073q.setOnClickListener(new a());
            this.f38075s.setOnClickListener(new b());
            setOnClickListener(new c());
        }
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37981c, false).w();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f37981c, false).w();
    }

    public static String b(int i10, int i11) {
        if (i11 != 0) {
            try {
                return t0.a(Double.valueOf(i10 / i11)) + "";
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return i11 + "";
    }

    public MBridgeBTVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38080x = 0;
        this.f38081y = 0;
        this.f38082z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }
}
