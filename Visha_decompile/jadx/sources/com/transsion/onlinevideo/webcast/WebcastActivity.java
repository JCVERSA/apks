package com.transsion.onlinevideo.webcast;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.vishaplayersdk.base.config.PlayType;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.base.config.PlayerStatisticInfo;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.VishaPlayerCallBack;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.vishaplayer.VishaPlayer;
import defpackage.gec;
import defpackage.hb0;
import defpackage.kfc;
import defpackage.o18;
import defpackage.wz5;
import defpackage.yz5;
import java.lang.ref.WeakReference;

public class WebcastActivity extends OnlineBaseActivity {
    public RouterBean.RouterData N;
    public String O;
    public String P;
    public long Q;
    public long R;
    public int S;
    public VishaPlayer T;
    public o18 U;
    public long W;
    public long X;
    public String Y;
    public String Z;
    public int a0;
    public String b0;
    public boolean c0;
    public boolean V = false;
    public final String d0 = "visha_" + WebcastActivity.class.getSimpleName();
    public VishaPlayerCallBack e0 = new b();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            WebcastActivity.this.finish();
        }
    }

    public class b extends VishaPlayerCallBack {
        public b() {
        }

        @Override
        public void onAutoComplete(String str, Object... objArr) {
            super.onAutoComplete(str, objArr);
        }

        @Override
        public void onBufferingUpdate(boolean z, Object... objArr) {
            super.onBufferingUpdate(z, objArr);
            if (z) {
                yz5.f();
            } else {
                yz5.h(WebcastActivity.this.Q);
            }
        }

        @Override
        public void onEnterFullscreen(String str, Object... objArr) {
            if (WebcastActivity.this.T.getFullWindowPlayer().shouldAllowedMobileNetPlay()) {
                WebcastActivity.this.T.getFullWindowPlayer().startPlay();
            }
        }

        @Override
        public void onPrepared(String str, Object... objArr) {
            super.onPrepared(str, objArr);
        }

        @Override
        public void onQuitFullscreen(String str, Object... objArr) {
            super.onQuitFullscreen(str, objArr);
            WebcastActivity.this.finish();
        }

        @Override
        public void onRequestVip(String str, Object... objArr) {
            super.onRequestVip(str, objArr);
        }

        @Override
        public void onStartPrepared(String str, Object... objArr) {
            super.onStartPrepared(str, objArr);
        }

        @Override
        public void onVideoPause(String str, Object... objArr) {
            super.onVideoPause(str, objArr);
            if (WebcastActivity.this.isInPictureInPictureMode()) {
                WebcastActivity.this.flushPip(false);
            }
        }

        @Override
        public void onVideoStartShow(String str, Object... objArr) {
            super.onVideoStartShow(str, objArr);
            if (WebcastActivity.this.c0) {
                return;
            }
            WebcastActivity.this.c0 = true;
            hb0.markDirect(yz5.a);
        }
    }

    public class c implements o18.b {
        public c() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
        }

        @Override
        public void c() {
            VishaPlayer vishaPlayer = WebcastActivity.this.T;
            if (vishaPlayer != null) {
                vishaPlayer.getCurrentPlayer().clickStartIcon();
                WebcastActivity webcastActivity = WebcastActivity.this;
                webcastActivity.flushPip(webcastActivity.T.getFullWindowPlayer().getGSYVideoManager().isPlaying());
            }
        }
    }

    private void enterPip() {
        this.U.x(this, this.T.getGSYVideoManager().isPlaying() ? R.drawable.ic_floating_pause : com.transsion.onlinevideo.R.drawable.ic_floating_play, "", 1, 1, this.T.getCurrentVideoWidth(), this.T.getCurrentVideoHeight(), false, false, false);
        o18.q(this, 2);
        PlayHandler.getInstance().mIsPip = true;
    }

    private void exitOthersPip() {
        Activity activity;
        WeakReference weakReference = o18.g;
        if (weakReference != null) {
            Object obj = weakReference.get();
            if (obj instanceof VideosService) {
                ((VideosService) obj).n();
            }
        }
        WeakReference weakReference2 = o18.f;
        if (weakReference2 == null || (activity = (Activity) weakReference2.get()) == null) {
            return;
        }
        activity.finish();
    }

    public void flushPip(boolean z) {
        this.U.s(this, z ? com.transsion.onlinevideo.R.drawable.ic_floating_pause : com.transsion.onlinevideo.R.drawable.ic_floating_play, "", 1, 1, this.T.getCurrentVideoWidth(), this.T.getCurrentVideoHeight(), false, false, false);
    }

    private PlayerInitConfig getPlayerInitConfig() {
        return new PlayerInitConfig.PlayerInitConfigBuilder().withPlayerActivity(this).withLoginState(com.transsion.palmsdk.b.s()).withUserOpenID(com.transsion.palmsdk.b.k()).withUserToken(gec.c().e()).whitTokenType(gec.c().h()).withPalmToken(com.transsion.palmsdk.b.o()).withClientIP(CountryInfoUtil.k()).withGAID(com.transsion.utils.deviceinfo.a.j()).withCountryCode(CountryInfoUtil.i()).withVAID(AthenaAnalytics.F(Utils.a())).whitVIP(kfc.m(this.S)).withLanguageCode(LanguageUtils.b().getLanguage()).build();
    }

    private void parseIntent(Intent intent) {
        if (intent != null) {
            RouterBean.RouterData routerData = (RouterBean.RouterData) intent.getParcelableExtra(RouterUtils.ROUTER_DATA);
            this.N = routerData;
            this.P = routerData.getTitle();
            this.O = this.N.getUrl();
            this.Q = this.N.getVideo_id();
            this.R = this.N.getSerialId();
            this.S = this.N.getSourceType();
            this.W = this.N.getTopic_id();
            this.X = this.N.getChannel();
            this.Y = this.N.getChannel_name();
            this.Z = this.N.getTopic_name();
            this.a0 = this.N.getTopic_sort();
            this.b0 = this.N.getRequestId();
        }
    }

    private void u0() {
        exitOthersPip();
        this.T = (VishaPlayer) findViewById(com.transsion.vishaplayersdk.R.id.detail_player);
        this.U = new o18();
    }

    public final void initVishaPlayer() {
        if (this.T == null) {
            return;
        }
        PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
        PlayHandler.getInstance().registerNetStatus(getApplicationContext());
        this.T.setPlayerType(2);
        this.T.setPlayType(PlayType.PLAY_TYPE_LIVE);
        this.T.stopPlay();
        this.T.onVideoReset();
        this.T.setIfCurrentIsFullscreen(true);
        new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(true).setAutoFullWithSize(false).setShowFullAnimation(false).setNeedLockFull(true).setVideoTitle(this.P).setUrl(this.O).setVideoID(this.Q).setSerialID(this.R).setCacheWithPlay(false).setPlayerInitConfig(getPlayerInitConfig()).setHardwareAccelerated(this.T.isHardwareAccelerated()).setVideoAllCallBack(this.e0).build((StandardGSYVideoPlayer) this.T);
        this.T.startWindowFullscreen(this, true, true);
        w0(true);
        this.T.setBackFromFullScreenListener(new a());
        PlayHandler.getInstance().setPipListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.v0(view);
            }
        });
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        PlayHandler.getInstance().release();
        setContentView(com.transsion.onlinevideo.R.layout.activity_webcast_fullscreen);
        parseIntent(getIntent());
        u0();
        initVishaPlayer();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        yz5.e(PlayerStatisticInfo.playRealDuration, 0L, String.valueOf(this.R), this.Q, this.X, this.W, this.P, this.Z, this.Y, this.b0);
        PlayDetailDataManger.clear();
        if (this.T.getFullWindowPlayer() != null) {
            this.T.getFullWindowPlayer().release();
        }
        w0(false);
        o18.h(this);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isInPictureInPictureMode()) {
            return;
        }
        GSYVideoManager.instance().gotoBackground();
        GSYVideoManager.instance().onActivityStop();
    }

    @Override
    public void onPictureInPictureModeChanged(boolean z) {
        super.onPictureInPictureModeChanged(z);
        if (z) {
            o18.q(this, 2);
            PlayHandler.getInstance().mIsPip = true;
            yz5.g();
            flushPip(this.T.getFullWindowPlayer().getGSYVideoManager().isPlaying());
        } else {
            o18.f();
            PlayHandler.getInstance().mIsPip = false;
            yz5.i();
        }
        if (z || !this.V) {
            return;
        }
        finish();
    }

    @Override
    public void onResume() {
        super.onResume();
        GSYVideoManager.instance().backToFront();
        if (!GSYVideoManager.instance().getIsPausedByUser()) {
            GSYVideoManager.instance().onActivityStart(this.T.getCurrentPlayer().isInPlayingState());
        }
        this.V = false;
        wz5.w();
        wz5.Z(PlayDetailDataManger.sCurrentSerialId, this.Q, GSYVideoManager.instance().getDuration(), this.W, this.a0, String.valueOf(this.S));
    }

    @Override
    public void onStop() {
        super.onStop();
        this.V = true;
    }

    public final void v0(View view) {
        enterPip();
    }

    public void w0(boolean z) {
        if (z) {
            this.U.o(this, new c());
        } else {
            this.U.v(this);
        }
    }
}
