package com.transsion.onlinevideo.mangotv.shorts;

import android.app.ActivityManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailFragment;
import com.transsion.onlinevideo.membership.UserCenterActivity;
import com.transsion.onlinevideo.viewmodel.ChannelViewModel;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.base.config.PlayType;
import com.transsion.vishaplayersdk.base.config.PlayerError;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.base.config.PlayerStatisticInfo;
import com.transsion.vishaplayersdk.base.config.PlayerType;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.VishaPlayerCallBack;
import com.transsion.vishaplayersdk.gsyplayer.utils.NetworkUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.vishaplayer.VishaShortVideoPlayer;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.c07;
import defpackage.d06;
import defpackage.e06;
import defpackage.fd8;
import defpackage.fec;
import defpackage.gec;
import defpackage.h06;
import defpackage.h27;
import defpackage.hb0;
import defpackage.kfc;
import defpackage.o18;
import defpackage.se;
import defpackage.ub9;
import defpackage.w6c;
import defpackage.wz5;
import defpackage.xz5;
import defpackage.yz5;
import java.util.ArrayList;
import java.util.List;

public class ShortPlayerDetailFragment extends BaseFragment {
    public static long d0;
    public static long e0;
    public boolean A;
    public long B;
    public TranVideoDetail.VideoSerials C;
    public ShortVideoDetail D;
    public String E;
    public long F;
    public long G;
    public String H;
    public String I;
    public String J;
    public boolean K;
    public volatile boolean L;
    public volatile long M;
    public ChannelViewModel N;
    public List O;
    public boolean P;
    public boolean Q;
    public int R;
    public volatile boolean S;
    public boolean T;
    public boolean U;
    public int V;
    public int W;
    public boolean X;
    public boolean Y;
    public boolean Z;
    public Runnable a0;
    public VishaPlayerCallBack b0;
    public boolean c0;
    public final boolean l;
    public boolean m;
    public boolean n;
    public View o;
    public PreviewInfoView p;
    public VishaShortVideoPlayer q;
    public View r;
    public fd8 s;
    public fd8 t;
    public long u;
    public String v;
    public String w;
    public int x;
    public int y;
    public ShortVideoDetail z;

    public class a extends VishaPlayerCallBack {
        public a() {
        }

        @Override
        public void onAutoComplete(String str, Object... objArr) {
            LogUtils.v("ShortPlayerDetailFragment", "onAutoComplete");
            super.onAutoComplete(str, objArr);
            ShortPlayerDetailFragment.this.m0().playNext();
        }

        @Override
        public void onPrepared(String str, Object... objArr) {
            super.onPrepared(str, objArr);
            LogUtils.v("ShortPlayerDetailFragment", "onPrepared");
            ShortPlayerDetailFragment shortPlayerDetailFragment = ShortPlayerDetailFragment.this;
            shortPlayerDetailFragment.I0("vd_sdk_videoprepare", 1, shortPlayerDetailFragment.V);
        }

        @Override
        public void onRequestVip(String str, Object... objArr) {
            super.onRequestVip(str, objArr);
            LogUtils.j("ShortPlayerDetailFragment", "request vip");
            ShortPlayerDetailFragment.this.V0();
            ShortPlayerDetailFragment shortPlayerDetailFragment = ShortPlayerDetailFragment.this;
            wz5.B(shortPlayerDetailFragment.F, shortPlayerDetailFragment.G, true);
        }

        @Override
        public void onRetryPlay() {
            ShortPlayerDetailFragment.this.O0();
        }

        @Override
        public void onStartPrepared(String str, Object... objArr) {
            super.onStartPrepared(str, objArr);
            LogUtils.v("ShortPlayerDetailFragment", "onStartPrepared");
            PlayHandler.getInstance().mIsLoading = true;
            ShortPlayerDetailFragment.this.k0().showLoadingView(false);
            ShortPlayerDetailFragment shortPlayerDetailFragment = ShortPlayerDetailFragment.this;
            PlayDetailDataManger.sCurrentSerialId = shortPlayerDetailFragment.G;
            shortPlayerDetailFragment.m0().T.setVisibility(8);
            ShortPlayerDetailFragment shortPlayerDetailFragment2 = ShortPlayerDetailFragment.this;
            shortPlayerDetailFragment2.I0("vd_sdk_playercoreprepare", 1, shortPlayerDetailFragment2.V);
        }

        @Override
        public void onVideoStartShow(String str, Object... objArr) {
            super.onVideoStartShow(str, objArr);
            LogUtils.v("ShortPlayerDetailFragment", "onVideoStartShow");
            if (ShortPlayerDetailFragment.this.T) {
                ShortPlayerDetailFragment.this.k0().setPlayPosition((int) ShortPlayerDetailFragment.this.M);
                ShortPlayerDetailFragment.this.k0().seekTo(ShortPlayerDetailFragment.this.M);
                ShortPlayerDetailFragment.this.T = false;
            }
            hb0.markDirect(yz5.a);
        }
    }

    public class b extends GestureDetector.SimpleOnGestureListener {
        public long b;
        public boolean c;

        public b() {
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            LogUtils.v("ShortPlayerDetailFragment", "onDown");
            this.c = false;
            this.b = System.currentTimeMillis();
            return super.onDown(motionEvent);
        }

        @Override
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (motionEvent == null) {
                return false;
            }
            float y = motionEvent2.getY() - motionEvent.getY();
            if (Math.abs(y) <= Math.abs(motionEvent2.getX() - motionEvent.getX()) || Math.abs(y) <= 100.0f || Math.abs(f2) <= 100.0f) {
                return false;
            }
            if (y > 0.0f) {
                ShortPlayerDetailFragment.this.m0().playPre();
                return true;
            }
            ShortPlayerDetailFragment.this.m0().playNext();
            return true;
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
            LogUtils.v("ShortPlayerDetailFragment", "onLongPress");
            if (System.currentTimeMillis() - this.b <= 100 || this.c) {
                return;
            }
            ShortPlayerDetailFragment.this.c0 = true;
            ShortPlayerDetailFragment.this.q.dispatchTouchEvent(motionEvent);
            this.c = true;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            LogUtils.v("ShortPlayerDetailFragment", "onSingleTapUp");
            if (this.c) {
                return false;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() - 100, 0, motionEvent.getX(), motionEvent.getY(), 0);
            MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 1, motionEvent.getX(), motionEvent.getY(), 0);
            ShortPlayerDetailFragment.this.q.dispatchTouchEvent(motionEventObtain);
            ShortPlayerDetailFragment.this.q.dispatchTouchEvent(motionEventObtain2);
            motionEventObtain.recycle();
            motionEventObtain2.recycle();
            this.c = true;
            return false;
        }
    }

    public class c implements o18.b {
        public c() {
        }

        @Override
        public void a() {
            ShortPlayerDetailFragment.this.m0().playNext();
            ShortPlayerDetailFragment.this.m0().flushPip(true);
        }

        @Override
        public void b() {
            ShortPlayerDetailFragment.this.m0().playPre();
            ShortPlayerDetailFragment.this.m0().flushPip(true);
        }

        @Override
        public void c() {
            if (ShortPlayerDetailFragment.this.k0().isAdPlaying()) {
                return;
            }
            ShortPlayerDetailFragment.this.k0().clickStartIcon();
            ShortPlayerDetailFragment.this.m0().flushPip(ShortPlayerDetailFragment.this.k0().getGSYVideoManager().isPlaying());
        }
    }

    public ShortPlayerDetailFragment() {
        this.m = false;
        this.u = 0L;
        this.K = false;
        this.L = false;
        this.M = 0L;
        this.Q = false;
        this.R = 0;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = 0;
        this.W = 0;
        this.a0 = new Runnable() {
            @Override
            public final void run() {
                ShortPlayerDetailFragment.E0();
            }
        };
        this.b0 = new a();
        this.c0 = false;
        this.l = true;
        q0();
    }

    public static void E0() {
        PlayHandler.getInstance().mProgressChange = false;
    }

    public void V0() {
        this.U = true;
        UserCenterActivity.T0("playdetail", this.E, this.mContext);
    }

    private void initView(View view) {
        LogUtils.v("ShortPlayerDetailFragment", "initView: " + view);
        this.o = view.findViewById(R.id.control_area);
        this.p = (PreviewInfoView) view.findViewById(R.id.preview_info);
        VishaShortVideoPlayer vishaShortVideoPlayer = (VishaShortVideoPlayer) view.findViewById(R.id.detail_player);
        this.q = vishaShortVideoPlayer;
        vishaShortVideoPlayer.setProgressChangeListener(new VishaShortVideoPlayer.OnProgressChangeListener() {
            @Override
            public final void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
                this.a.D0(oSSeekbar, i, f, z);
            }
        });
        if (this.l) {
            this.q.getBottomTitleLeftTag().setImageResource(R.drawable.ic_short_bottom_video);
        } else {
            this.s = new fd8(getActivity());
            this.t = new fd8(getActivity());
        }
        m0().V0(this.F, this.v);
    }

    private PlayerInitConfig l0() {
        if (!com.transsion.palmsdk.b.s()) {
            return new PlayerInitConfig.PlayerInitConfigBuilder().withLoginState(false).withClientIP(CountryInfoUtil.k()).withGAID(com.transsion.utils.deviceinfo.a.j()).withCountryCode(CountryInfoUtil.i()).withVAID(AthenaAnalytics.F(Utils.a())).withLanguageCode(LanguageUtils.b().getLanguage()).withPlayerActivity(this.mActivity).build();
        }
        PlayerInitConfig.PlayerInitConfigBuilder playerInitConfigBuilderWithVAID = new PlayerInitConfig.PlayerInitConfigBuilder().withLoginState(com.transsion.palmsdk.b.s()).withUserOpenID(com.transsion.palmsdk.b.k()).withUserToken(gec.c().e()).whitTokenType(gec.c().h()).withPalmToken(com.transsion.palmsdk.b.o()).withClientIP(CountryInfoUtil.k()).withGAID(com.transsion.utils.deviceinfo.a.j()).withCountryCode(CountryInfoUtil.i()).withVAID(AthenaAnalytics.F(Utils.a()));
        String str = this.E;
        if (str == null) {
            str = "0";
        }
        return playerInitConfigBuilderWithVAID.whitVIP(kfc.m(Integer.parseInt(str))).withLanguageCode(LanguageUtils.b().getLanguage()).withPlayerActivity(this.mActivity).build();
    }

    private void q0() {
    }

    private void r0() {
        this.q.getBackButton().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.v0(view);
            }
        });
        this.q.getLlBottomTitleLayout().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.w0(view);
            }
        });
        this.q.getLanguageImageView().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.y0(view);
            }
        });
        this.q.getClarityImageView().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.A0(view);
            }
        });
        b1();
    }

    private void t0() {
        LogUtils.j("ShortPlayerDetailFragment", "initVishaPlayer");
        if (this.q == null) {
            LogUtils.m("ShortPlayerDetailFragment", "play error: player not found - mDetailPlayer is null");
            return;
        }
        LogUtils.j("ShortPlayerDetailFragment", "initPlayer: mDetailPlayer found, proceeding with initialization");
        PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
        PlayHandler.getInstance().registerNetStatus(se.a());
        k0().setPlayerType(Integer.parseInt(TextUtils.isEmpty(this.E) ? "0" : this.E));
        k0().setPlayType(PlayType.PLAY_TYPE_SHORT_VIDEO);
        k0().setRotateViewAuto(false);
        k0().setLockLand(false);
        GSYVideoOptionBuilder url = new GSYVideoOptionBuilder().setIsTouchWiget(false).setIsTouchWigetFull(false).setRotateViewAuto(false).setLockLand(false).setNeedLockFull(true).setVideoTitle(this.J).setSeekOnStart(this.M).setUrl(o0());
        TranVideoDetail.VideoSerials videoSerials = this.C;
        GSYVideoOptionBuilder videoID = url.setVideoID(videoSerials != null ? videoSerials.getVideoId() : 0L);
        TranVideoDetail.VideoSerials videoSerials2 = this.C;
        videoID.setSerialID(videoSerials2 != null ? videoSerials2.getSerialId() : 0L).setCacheWithPlay(false).setPlayerInitConfig(l0()).setHardwareAccelerated(k0().isHardwareAccelerated()).setVideoAllCallBack(this.b0).build((StandardGSYVideoPlayer) this.q);
        PlayHandler.getInstance().setPipListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.C0(view);
            }
        });
        if (NetworkUtils.isAvailable(se.a())) {
            if (NetworkUtils.isWifiConnected(se.a()) || !PlayHandler.getInstance().mShowMobileData) {
                LogUtils.v("ShortPlayerDetailFragment", "player:get video info start " + n0());
            } else {
                h27.c().e(1001, Boolean.TRUE);
            }
        }
        ShortVideoDetail shortVideoDetail = this.D;
        if (shortVideoDetail == null || shortVideoDetail.getVideoInfo() == null || !this.D.getVideoInfo().isPortraitShortVideo()) {
            this.q.getGSYVideoManager().setSubtitleSizeRatio(0.02f);
            this.q.getGSYVideoManager().setSubtitleBottomRatio(0.35f);
        } else {
            this.q.getGSYVideoManager().setSubtitleSizeRatio(0.02f);
            this.q.getGSYVideoManager().setSubtitleBottomRatio(0.25f);
        }
    }

    public final void A0(View view) {
        ArrayList arrayList = new ArrayList();
        final List<VideoDefinition> videoDefinitions = GSYVideoManager.instance().getVideoDefinitions();
        if (videoDefinitions != null) {
            for (VideoDefinition videoDefinition : videoDefinitions) {
                ub9 ub9Var = new ub9(videoDefinition.getName(), videoDefinition.bCurrent);
                ub9Var.d(videoDefinition.isNeedVip());
                arrayList.add(ub9Var);
            }
            this.t.i(view, arrayList, new fd8.a() {
                @Override
                public final void a(int i, ub9 ub9Var2) {
                    this.a.z0(videoDefinitions, i, ub9Var2);
                }
            });
        }
    }

    public final void B0(List list) {
        StringBuilder sb = new StringBuilder();
        sb.append("getHistoryBeansByVid: ");
        sb.append(list != null ? Integer.valueOf(list.size()) : "");
        LogUtils.j("ShortPlayerDetailFragment", sb.toString());
        if (list == null || list.isEmpty()) {
            return;
        }
        this.O = list;
        m0().d1((HistoryBean) list.get(0));
    }

    public final void C0(View view) {
        m0().enterPip();
    }

    public final void D0(OSSeekbar oSSeekbar, int i, float f, boolean z) {
        if (!this.n || this.q.getDuration() <= 0) {
            return;
        }
        long duration = (((long) this.q.getDuration()) - this.q.getGSYVideoManager().getCurrentPosition()) / 1000;
        LogUtils.v("ShortPlayerDetailFragment", "diffTime: " + duration);
        if (duration <= 3) {
            m0().b1(duration);
        } else {
            m0().K0();
        }
    }

    public final void F0(int i) {
        this.R = k0().getCurrentState();
        if (i == 1) {
            U0();
        } else if (i == 6 || i == 7 || i == 0) {
            Q0();
        } else {
            P0();
        }
    }

    public final void G0(boolean z) {
        View childAt;
        if (!z) {
            k0().setFullScreenVisible(true);
        }
        View viewFindViewById = k0().findViewById(R.id.surface_container);
        if (viewFindViewById == null || (childAt = ((ViewGroup) viewFindViewById).getChildAt(0)) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        childAt.setLayoutParams(layoutParams);
    }

    public final boolean H0(GestureDetector gestureDetector, View view, MotionEvent motionEvent) {
        VishaShortVideoPlayer vishaShortVideoPlayer = this.q;
        if (vishaShortVideoPlayer == null || vishaShortVideoPlayer.getCurrentState() == 7 || m0().Y == 0 || this.q.isVipShow() || this.q.isErrorShow()) {
            return false;
        }
        gestureDetector.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1 && this.c0) {
            this.c0 = false;
            this.q.dispatchTouchEvent(motionEvent);
        }
        return true;
    }

    public final void I0(String str, int i, int i2) {
        this.v = str;
        wz5.P(str, System.currentTimeMillis() - PlayHandler.getInstance().mPlayStartTime, i, i2, this.G, this.F);
    }

    public final void J0(String str, int i, int i2) {
        this.v = str;
        wz5.P(str, System.currentTimeMillis() - PlayHandler.getInstance().mInitStartTime, i, i2, this.G, this.F);
    }

    public void K0() {
        if (PlayerStatisticInfo.playRealDuration > 0) {
            String string = this.q.getTitleTextView().getText().toString();
            long j = this.F;
            TranVideoDetail.VideoSerials videoSerials = this.C;
            e06.c(string, j, videoSerials != null ? videoSerials.getSerialTitle() : "", PlayerStatisticInfo.playRealDuration);
            PlayerStatisticInfo.playRealDuration = 0L;
        }
    }

    public void L0() {
        Y0();
        wz5.T("exit", this.v);
        this.S = true;
    }

    public void M0() {
        LogUtils.j("ShortPlayerDetailFragment", "onPause =" + this);
        xz5.f(k0() != null ? (int) k0().getGSYVideoManager().getCurrentPosition() : 0, this.G, this.F);
        if (!this.mActivity.isInPictureInPictureMode()) {
            GSYVideoManager.instance().gotoBackground();
            GSYVideoManager.instance().onActivityStop();
        }
        Y0();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:23:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:24:0x011c  */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x00e4, please report this as an issue */
    public void N0() {
        LogUtils.j("ShortPlayerDetailFragment", "onResume =" + this);
        this.X = false;
        this.Y = false;
        if (this.U && com.transsion.palmsdk.b.s()) {
            String str = this.E;
            if (str == null) {
                str = "0";
            }
            if (kfc.m(Integer.parseInt(str))) {
                if (k0().getPlayerType() == PlayerType.MGTV_PLAYER) {
                    k0().showLoadingView(true);
                    if (k0().isSwitchResolutionNeedVip()) {
                        VishaAccountInfo vishaAccountInfo = new VishaAccountInfo();
                        vishaAccountInfo.setOpenId(com.transsion.palmsdk.b.k());
                        vishaAccountInfo.setToken(gec.c().e());
                        vishaAccountInfo.setLogin(com.transsion.palmsdk.b.s());
                        vishaAccountInfo.setPalmToken(com.transsion.palmsdk.b.o());
                        GSYVideoManager.instance().setUserAccountInfo(vishaAccountInfo);
                        LogUtils.j("ShortPlayerDetailFragment", "mango vip login must replay:" + vishaAccountInfo);
                        k0().replay();
                    } else {
                        VishaShortVideoPlayer vishaShortVideoPlayerK0 = k0();
                        boolean zS = com.transsion.palmsdk.b.s();
                        String strE = gec.c().e();
                        String strH = gec.c().h();
                        String strO = com.transsion.palmsdk.b.o();
                        String strK = com.transsion.palmsdk.b.k();
                        String str2 = this.E;
                        vishaShortVideoPlayerK0.setUserInfo(zS, strE, strH, strO, strK, kfc.m(Integer.parseInt(str2 != null ? str2 : "0")));
                        k0().startPlay();
                    }
                }
            } else if (this.Z) {
                t0();
                k0().autoPlay();
                k0().setPlayPosition((int) this.M);
                k0().seekTo(this.M);
                LogUtils.v("ShortPlayerDetailFragment", "onResume autoPlay： " + this.M);
            } else {
                GSYVideoManager.instance().backToFront();
                if (k0() != null) {
                    h27.c().e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new Object[0]);
                    GSYVideoManager.instance().onActivityStart(k0().isInPlayingState());
                }
            }
        } else if (this.Z) {
            t0();
            k0().autoPlay();
            k0().setPlayPosition((int) this.M);
            k0().seekTo(this.M);
            LogUtils.v("ShortPlayerDetailFragment", "onResume autoPlay： " + this.M);
        } else {
            GSYVideoManager.instance().backToFront();
            if (k0() != null && !GSYVideoManager.instance().getIsPausedByUser() && !k0().isSwitchResolutionNeedVip()) {
                h27.c().e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new Object[0]);
                GSYVideoManager.instance().onActivityStart(k0().isInPlayingState());
            }
        }
        this.U = false;
        if (m0().isInPictureInPictureMode()) {
            m0().flushPip(GSYVideoManager.instance().isPlaying());
        }
    }

    public void O0() {
        if (this.D == null) {
            k0().showLoadingView(false);
            m0().H0(n0());
        } else if (this.K) {
            k0().netWorkErrorLogic();
            this.K = false;
        } else if (this.R == 2) {
            k0().getGSYVideoManager().start();
        } else {
            k0().showLoadingView(false);
            k0().autoPlay();
        }
    }

    public void P0() {
        if (NetworkUtils.isWifiConnected(this.mContext)) {
            LogUtils.j("ShortPlayerDetailFragment", "onMobileNetworkChanged: wifi is connected");
            return;
        }
        h27.c().e(1002, Boolean.FALSE);
        if (PlayHandler.getInstance().mShowMobileData) {
            h27.c().e(1001, Boolean.TRUE);
            k0().onVideoPause();
            d1();
        } else if (this.K) {
            k0().netWorkErrorLogic();
            this.K = false;
        } else if (this.R == 2) {
            k0().getGSYVideoManager().start();
        }
    }

    public void Q0() {
        if (NetworkUtils.isConnected(this.mContext)) {
            LogUtils.j("ShortPlayerDetailFragment", "onNetworkDisconnected,but network is isAvailable,no need to deal");
            return;
        }
        this.K = true;
        this.M = GSYVideoManager.instance().getCurrentPosition();
        this.R = k0().getCurrentState();
        if (k0().isPlaying()) {
            GSYVideoManager.instance().pause();
            this.K = false;
        }
        h27.c().e(1002, Boolean.TRUE);
        d1();
        if (!NetworkUtils.isAvailable(se.a())) {
            wz5.A();
        }
        wz5.M(this.G, this.F, String.valueOf(PlayerError.TRAN_PLAYER_ERROR_NETWORK_NOT_AVAILABLE), "", this.v);
        wz5.T("network", this.v);
    }

    public void R0(final int i) {
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.F0(i);
            }
        });
    }

    public void S0(final boolean z) {
        LogUtils.j("ShortPlayerDetailFragment", "onPictureInPictureModeChanged:" + z);
        this.L = z;
        PlayHandler.getInstance().mIsPip = z;
        i1(this.L);
        if (this.L) {
            PlayHandler.getInstance().mStartBuffering = -1L;
            PlayHandler.getInstance().mTearing = false;
            k0().showBuffering(false, false);
        }
        if (z) {
            o18.q(this.mActivity, 2);
            h06.b();
        } else {
            o18.f();
            h06.f();
        }
        if (z) {
            this.Q = true;
            e0 = System.currentTimeMillis();
            xz5.f(k0() != null ? (int) k0().getGSYVideoManager().getCurrentPosition() : 0, this.G, this.F);
        } else {
            d0 = System.currentTimeMillis() - e0;
            xz5.b();
            k0().getStartButton().setVisibility(0);
        }
        if (k0() != null) {
            k0().getGSYVideoManager().noticePlayViewMode(z ? 1 : 0);
            k0().setIsPipMode(z);
            Y0();
        }
        if (z) {
            ViewGroup.LayoutParams layoutParams = k0().getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            k0().setLayoutParams(layoutParams);
            m0().X0(new c());
        } else {
            if (m0().L0()) {
                m0().markDuration();
                try {
                    for (ActivityManager.AppTask appTask : ((ActivityManager) this.mActivity.getSystemService("activity")).getAppTasks()) {
                        if (appTask.getTaskInfo().numActivities == 1 && appTask.getTaskInfo().baseActivity != null && appTask.getTaskInfo().baseActivity.equals(this.mActivity.getComponentName())) {
                            appTask.finishAndRemoveTask();
                            break;
                        }
                    }
                } catch (Exception unused) {
                }
                this.mActivity.finish();
            }
            k0().setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            k0().restoreNormal();
        }
        ThreadUtils.t(new Runnable() {
            @Override
            public final void run() {
                this.b.G0(z);
            }
        }, 100L);
        if (!z || !this.X || MMKV.p().e("is_pip_ges_showed", false) || Build.VERSION.SDK_INT < 30) {
            return;
        }
        ToastUtils.q(R.string.ges_pip_notice);
        MMKV.p().y("is_pip_ges_showed", true);
    }

    public void T0() {
        if (this.Y || !fec.a() || this.Z) {
            return;
        }
        boolean z = NetworkUtils.isMobileConnected(se.a()) && PlayHandler.getInstance().mShowMobileData;
        boolean z2 = c07.a(this.mActivity) == 2;
        if (!o18.d(this.mActivity) || z || z2) {
            return;
        }
        if (k0().getGSYVideoManager().isPlaying() || !(k0().getCurrentState() == -1 || k0().getCurrentState() == 5 || k0().getCurrentState() == 7)) {
            m0().enterPip();
            h06.e("onlinevide");
            wz5.N("gesture_pip");
            this.X = true;
        }
    }

    public void U0() {
        if (m0().Y != 1) {
            h27 h27VarC = h27.c();
            Boolean bool = Boolean.FALSE;
            h27VarC.e(1002, bool);
            h27.c().e(1001, bool);
            h27.c().e(1000, bool);
            O0();
        }
    }

    public void W0(long j) {
        if (k0() != null) {
            this.M = j;
            if (k0().hadPrepared()) {
                k0().setPlayPosition((int) this.M);
                k0().seekTo(this.M);
            } else {
                this.T = true;
            }
            LogUtils.v("refreshPosition: " + j);
        }
    }

    public void X0() {
        k0().getBackButton().setVisibility(0);
        k0().getLlBottomTitleLayout().setVisibility(0);
        if (this.l) {
            this.p.setVisibility(0);
            return;
        }
        k0().getLanguageImageView().setVisibility(0);
        k0().getClarityImageView().setVisibility(0);
        k0().getTitleTextView().setVisibility(0);
        k0().getSeekBar().setVisibility(0);
    }

    public final void Y0() {
        ShortVideoDetail shortVideoDetail;
        TranVideoDetail.VideoSerials videoSerial;
        if (this.l || (shortVideoDetail = this.D) == null || shortVideoDetail.getVideoSerial() == null || (videoSerial = this.D.getVideoSerial()) == null) {
            return;
        }
        String strK = com.transsion.palmsdk.b.s() ? com.transsion.palmsdk.b.k() : null;
        HistoryBean historyBean = new HistoryBean(videoSerial.getSerialId(), videoSerial.getSeriesId(), videoSerial.getVideoId(), videoSerial.getSourceId(), ((Object) this.q.getTitleTextView().getText()) + " " + videoSerial.getSerialTitle(), System.currentTimeMillis(), GSYVideoManager.instance().getCurrentPosition(), GSYVideoManager.instance().getDuration(), videoSerial.getCoverX(), videoSerial.getSerialTitle(), strK == null ? 0L : strK.hashCode(), videoSerial.getPayType(), videoSerial.getIsIntact(), this.I, this.E, this.D.getVideoInfo() != null ? this.D.getVideoInfo().getPlayLet() : 0);
        if (historyBean.duration > 0 && this.N != null) {
            if (!historyBean.videoIsTact() || this.P) {
                this.N.H(this.mContext, historyBean);
            } else {
                this.N.a0(this.mContext, historyBean);
            }
        }
        PlayHandler.getInstance().mPlayItemDuration = 0L;
        K0();
    }

    public final void Z0(boolean z) {
        this.n = z;
        m0().K0();
    }

    public void a1(ShortVideoDetail shortVideoDetail) {
        this.z = shortVideoDetail;
    }

    public final void b1() {
        if (this.o == null) {
            return;
        }
        final GestureDetector gestureDetector = new GestureDetector(getContext(), new b());
        this.o.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.H0(gestureDetector, view, motionEvent);
            }
        });
    }

    public final void c1(TranVideoDetail.VideoInfoBean videoInfoBean) {
        List list;
        this.A = videoInfoBean.getSerialCount() != 0;
        this.P = videoInfoBean.getSerialCover() == 1;
        this.x = videoInfoBean.getSerialCount() > 1 ? 0 : 1;
        this.y = videoInfoBean.getSerialCount() > 1 ? 0 : 1;
        this.E = videoInfoBean.getSourceType();
        ShortVideoDetail shortVideoDetail = this.D;
        TranVideoDetail.VideoSerials videoSerial = shortVideoDetail != null ? shortVideoDetail.getVideoSerial() : null;
        if (videoSerial != null) {
            this.B = videoSerial.getSeriesId();
        }
        if (this.W != 0) {
            this.W = 0;
            long j = this.G;
            if (j != 0) {
                this.B = j;
            }
        } else if (!m0().k0 || (list = this.O) == null || list.isEmpty()) {
            long j2 = this.G;
            if (j2 != 0) {
                this.B = j2;
            }
            TranVideoDetail.VideoSerials videoSerial2 = this.D.getVideoSerial();
            if (videoSerial2 != null) {
                this.G = videoSerial2.getSerialId();
                this.B = videoSerial2.getSeriesId();
                this.C = videoSerial2;
            }
        } else {
            LogUtils.j("ShortPlayerDetailFragment", "synCurrentVideo: mHistroyBeans.lastPos = " + ((HistoryBean) this.O.get(0)).lastPos);
            m0().d1((HistoryBean) this.O.get(0));
        }
        TranVideoDetail.VideoSerials videoSerials = this.C;
        if (videoSerials != null) {
            this.J = videoSerials.getSerialTitle();
            this.H = this.C.getSourceId();
            this.I = this.C.getVideoUrl();
            this.G = this.C.getSerialId();
        }
    }

    public final void d1() {
        VishaShortVideoPlayer vishaShortVideoPlayerK0;
        if (m0() == null || m0().T == null || (vishaShortVideoPlayerK0 = k0()) == null || !vishaShortVideoPlayerK0.isNetworkBlockErrorShow()) {
            return;
        }
        m0().T.setVisibility(8);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i != 1014) {
            if (i == 1018) {
                J0("vd_sdk_playercore", ((Integer) objArr[0]).intValue(), -1);
                return;
            }
            if (i == 1034) {
                wz5.M(this.G, this.F, String.valueOf(objArr[0]), String.valueOf(objArr[1]), this.v);
                wz5.T("playerror", this.v);
                return;
            }
            if (i == 1037) {
                if (this.L) {
                    this.mActivity.finish();
                    return;
                }
                return;
            }
            if (i == 1051) {
                if (((Integer) objArr[0]).intValue() == 0) {
                    this.u = System.currentTimeMillis();
                }
                if (((Integer) objArr[0]).intValue() == 100) {
                    wz5.e(this.F, this.G, System.currentTimeMillis() - this.u);
                    return;
                }
                return;
            }
            if (i != 1099) {
                if (i == 9437186) {
                    K0();
                    return;
                }
                if (i == 1021) {
                    k0().setBottomVisible(false);
                    this.V = 1;
                    I0("vd_sdk_adstartduration", 1, -1);
                    return;
                } else {
                    if (i != 1022) {
                        return;
                    }
                    this.V = 1;
                    I0("vd_sdk_adendduration", 1, -1);
                    return;
                }
            }
        }
        PlayHandler.getInstance().mIsLoading = false;
        new Handler().postDelayed(this.a0, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        k0().hideLoadingView();
        h27.c().e(1076, new Object[0]);
        k0().hideAdBack();
        if (!this.mActivity.isInPictureInPictureMode()) {
            k0().setFullScreenVisible(true);
        }
        if (!this.mActivity.isInPictureInPictureMode()) {
            k0().setBottomVisible(true);
        }
        I0("vd_sdk_videostartplaying", 1, this.V);
        long jCurrentTimeMillis = System.currentTimeMillis();
        PlayHandler.getInstance().mPlayTime = jCurrentTimeMillis;
        PlayHandler.getInstance().mPortPlayTime = jCurrentTimeMillis;
        PlayHandler.getInstance().mPlayItemTime = jCurrentTimeMillis;
        if (this.mActivity.isInPictureInPictureMode()) {
            m0().flushPip(k0().getGSYVideoManager().isPlaying());
        }
        this.V = 0;
    }

    public void e1() {
        TranVideoDetail.VideoInfoBean videoInfo = this.D.getVideoInfo();
        StringBuilder sb = new StringBuilder();
        sb.append("updateUI: videoInfoBean is ");
        sb.append(videoInfo != null ? "not null" : "null");
        LogUtils.j("ShortPlayerDetailFragment", sb.toString());
        if (videoInfo != null) {
            this.E = videoInfo.getSourceType();
            this.M = this.D.getPlayPosition();
            g1(videoInfo);
            c1(videoInfo);
        }
    }

    public void f1(ShortVideoDetail shortVideoDetail) {
        StringBuilder sb = new StringBuilder();
        sb.append("updateData called with data: ");
        sb.append(shortVideoDetail != null ? shortVideoDetail.toString() : "null");
        LogUtils.j("ShortPlayerDetailFragment", sb.toString(), getActivity());
        if (shortVideoDetail == null) {
            LogUtils.m("ShortPlayerDetailFragment", "updateData: videoDetailBean is null, returning");
            return;
        }
        this.m = true;
        this.D = shortVideoDetail;
        e1();
        s0();
        if (getActivity() != null) {
            getActivity().runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.h1();
                }
            });
        }
    }

    public final void g1(TranVideoDetail.VideoInfoBean videoInfoBean) {
        this.E = videoInfoBean.getSourceType();
        this.F = videoInfoBean.getVideoId();
        this.w = videoInfoBean.getVideoTitle();
        String videoTitle = videoInfoBean.getVideoTitle();
        this.J = videoTitle;
        PreviewInfoView previewInfoView = this.p;
        if (previewInfoView != null) {
            previewInfoView.setTitle(videoTitle);
            this.p.setContent(videoInfoBean.getVideoDescription());
        }
        VishaShortVideoPlayer vishaShortVideoPlayer = this.q;
        if (vishaShortVideoPlayer != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.l ? this.mActivity.getString(R.string.visha_watch_full_episode_by_click) : this.J);
            sb.append(" · ");
            sb.append(this.mActivity.getString(R.string.visha_episode, Integer.valueOf(videoInfoBean.getSerialCount())));
            vishaShortVideoPlayer.setBottomText(sb.toString());
        }
    }

    public void h1() {
        m0().T.setVisibility(0);
        TranVideoDetail.VideoInfoBean videoInfo = this.D.getVideoInfo();
        StringBuilder sb = new StringBuilder();
        sb.append("updateUI: videoInfoBean is ");
        sb.append(videoInfo != null ? "not null" : "null");
        LogUtils.j("ShortPlayerDetailFragment", sb.toString());
        if (videoInfo != null) {
            t0();
            d1();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(videoInfo.getPayType());
            sb2.append("_");
            TranVideoDetail.VideoSerials videoSerials = this.C;
            sb2.append(videoSerials == null ? 0 : videoSerials.getPayType());
            String string = sb2.toString();
            long j = this.G;
            long j2 = this.F;
            String str = m0().l0;
            TranVideoDetail.VideoSerials videoSerials2 = this.C;
            wz5.X(j, j2, str, videoSerials2 != null ? videoSerials2.getDuration() : 0, m0().m0, m0().n0, this.J, this.x, this.y, m0().i0, videoInfo.getSourceType(), string);
        } else {
            LogUtils.m("ShortPlayerDetailFragment", "updateUI: videoInfoBean is null");
        }
        if (m0().E0()) {
            p0();
        } else {
            X0();
        }
    }

    public void i1(boolean z) {
        if (z) {
            p0();
        } else {
            X0();
        }
    }

    public VishaShortVideoPlayer k0() {
        return this.q;
    }

    public final ShortPlayerDetailActivity m0() {
        return (ShortPlayerDetailActivity) this.mActivity;
    }

    public final String n0() {
        if (this.F == 0) {
            return this.H;
        }
        return this.F + "";
    }

    public final String o0() {
        return this.H;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(onLayoutId(), viewGroup, true);
        this.r = viewInflate;
        return viewInflate;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        LogUtils.j("ShortPlayerDetailFragment", "onDestroyView =" + this);
        this.S = true;
        ThreadUtils.o().removeCallbacks(this.a0);
        if (!this.Q) {
            k0().release();
        } else {
            if (this.n) {
                return;
            }
            k0().stopPlay();
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.layout_short_player_detail;
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        Z0(true);
        LogUtils.j("ShortPlayerDetailFragment", "onSelectInViewPage: " + this, "sCurrentSerialId:" + PlayDetailDataManger.sCurrentSerialId);
        t0();
        m0().d0.add(Long.valueOf(this.G));
        boolean zIsInPictureInPictureMode = m0().isInPictureInPictureMode();
        if (zIsInPictureInPictureMode != this.L) {
            this.L = zIsInPictureInPictureMode;
        }
        if (this.L || m0().E0()) {
            p0();
        } else {
            X0();
        }
        if (this.q != null) {
            k0().autoPlay();
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        if (this.z != null) {
            LogUtils.v(this, "onStart: mTempVideoDetail is not null");
            f1(this.z);
            this.q.autoPlay();
            this.z = null;
        }
    }

    @Override
    public void onUnSelectInViewPage() {
        ShortVideoDetail shortVideoDetail;
        LogUtils.v("ShortPlayerDetailFragment", "onUnSelectInViewPage: " + this);
        super.onUnSelectInViewPage();
        Z0(false);
        if (k0().getGSYVideoManager().getCurrentPosition() > 0 && (shortVideoDetail = this.D) != null) {
            shortVideoDetail.setPlayPosition((int) k0().getGSYVideoManager().getCurrentPosition());
        }
        if (this.q != null) {
            k0().stopPlay();
        }
        p0();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initView(view);
        u0();
        r0();
    }

    public void p0() {
        k0().getBackButton().setVisibility(8);
        k0().getLlBottomTitleLayout().setVisibility(8);
        if (this.l) {
            this.p.setVisibility(8);
            return;
        }
        k0().getLanguageImageView().setVisibility(8);
        k0().getClarityImageView().setVisibility(8);
        k0().getTitleTextView().setVisibility(8);
        k0().getSeekBar().setVisibility(8);
    }

    public final void s0() {
        if (this.N == null) {
            ChannelViewModel channelViewModel = (ChannelViewModel) new ViewModelProvider(this.mActivity, new ViewModelProvider.AndroidViewModelFactory(se.a())).get(ChannelViewModel.class);
            this.N = channelViewModel;
            channelViewModel.x().observe(this.mActivity, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.B0((List) obj);
                }
            });
        }
        if (m0().U0()) {
            LogUtils.v("ShortPlayerDetailFragment", "initHistory: " + this.F);
            BaseActivity baseActivity = this.mActivity;
            if (baseActivity == null && (getActivity() instanceof BaseActivity)) {
                baseActivity = (BaseActivity) getActivity();
            }
            if (baseActivity == null) {
                LogUtils.O("ShortPlayerDetailFragment", "initHistory: skip getHistoryBeansByVideoId, no BaseActivity");
            } else {
                this.N.y(baseActivity, this.F, com.transsion.palmsdk.b.s());
            }
        }
    }

    public final void u0() {
        LogUtils.v("ShortPlayerDetailFragment", "initVisible: " + this.l);
        if (this.l) {
            this.p.setVisibility(0);
            this.q.getTitleTextView().setVisibility(8);
            return;
        }
        ((ViewGroup.MarginLayoutParams) this.o.getLayoutParams()).bottomMargin = com.transsion.utils.a.d(this.mContext, 50.0f);
        this.q.getBottomTitleRightArrow().setVisibility(8);
        this.q.getTitleTextView().setVisibility(0);
        this.q.getClarityImageView().setVisibility(0);
        this.q.getLanguageImageView().setVisibility(0);
        this.q.getSeekBar().setVisibility(0);
    }

    public final void v0(View view) {
        m0().markDuration();
        this.S = true;
        wz5.T("eixt", this.v);
        wz5.N("btn_back");
        this.mActivity.finish();
    }

    public final void w0(View view) {
        if (!this.l) {
            LogUtils.O("ShortPlayerDetailFragment", "getLlBottomTitleLayout Click preview status: false");
            m0().W0();
            p0();
            return;
        }
        this.M = this.q.getGSYVideoManager().getCurrentPosition();
        this.Z = true;
        this.q.release();
        Parcelable parcelableExtra = this.mActivity.getIntent().getParcelableExtra(RouterUtils.ROUTER_DATA);
        LogUtils.v("ShortPlayerDetailFragment", "getLlBottomTitleLayout Click: " + parcelableExtra, Long.valueOf(this.M));
        if (parcelableExtra instanceof PersistableBundle) {
            LogUtils.O("ShortPlayerDetailFragment", "has not in preview");
        } else {
            m0().T.setVisibility(0);
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(this.F, this.H).setShortVideo(true).setIsPreview(ShortPlayType.DETAIL.getValue())).withMarkParam(d06.d, 1).build(), this.mContext);
        }
    }

    public final void x0(boolean z, List list, int i, ub9 ub9Var) {
        if (z) {
            return;
        }
        int language = ((VideoSubtitle) list.get(i)).getLanguage();
        GSYVideoManager.instance().switchSubtitleSource(language);
        PlayHandler.getInstance().mSubtitleCode = language;
        PlayHandler.getInstance().mSubtitleCodeByUser = language;
        this.q.appliedSubtitle(((VideoSubtitle) list.get(i)).getName());
        w6c.t(se.a(), "ott_subtitle_init", language);
    }

    public final void y0(View view) {
        final List<VideoSubtitle> subtitleList = PlayHandler.getInstance().getSubtitleList();
        final boolean z = subtitleList == null || subtitleList.isEmpty();
        if (z) {
            VideoSubtitle videoSubtitle = new VideoSubtitle();
            videoSubtitle.setName(this.mActivity.getString(com.transsion.vishaplayersdk.R.string.tip_no_subtitle));
            videoSubtitle.setSelect(true);
            ArrayList arrayList = new ArrayList();
            arrayList.add(videoSubtitle);
            subtitleList = arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        for (VideoSubtitle videoSubtitle2 : subtitleList) {
            ub9 ub9Var = new ub9(videoSubtitle2.getName(), videoSubtitle2.isSelected());
            LogUtils.v("ShortPlayerDetailFragment", "SelectionItem: " + videoSubtitle2.getName() + " " + videoSubtitle2.isSelected());
            arrayList2.add(ub9Var);
        }
        this.s.i(view, arrayList2, new fd8.a() {
            @Override
            public final void a(int i, ub9 ub9Var2) {
                this.a.x0(z, subtitleList, i, ub9Var2);
            }
        });
    }

    public final void z0(List list, int i, ub9 ub9Var) {
        if (i > list.size() - 1) {
            this.t.d();
        } else {
            if (list.isEmpty()) {
                return;
            }
            this.q.lambda$onClick$5((VideoDefinition) list.get(i));
        }
    }

    public ShortPlayerDetailFragment(boolean z) {
        this.m = false;
        this.u = 0L;
        this.K = false;
        this.L = false;
        this.M = 0L;
        this.Q = false;
        this.R = 0;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = 0;
        this.W = 0;
        this.a0 = new Runnable() {
            @Override
            public final void run() {
                ShortPlayerDetailFragment.E0();
            }
        };
        this.b0 = new a();
        this.c0 = false;
        this.l = z;
        LogUtils.v("ShortPlayerDetailFragment", "ShortPlayerDetailFragment init with isPreview: " + z);
        q0();
    }
}
