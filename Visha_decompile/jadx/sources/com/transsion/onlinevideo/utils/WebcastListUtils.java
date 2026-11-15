package com.transsion.onlinevideo.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.appconfig.BannerBean;
import com.transsion.dbdata.beans.appconfig.ChannelsBean;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import com.transsion.dbdata.beans.onlinevideo.WebcastBean;
import com.transsion.dbdata.beans.onlinevideo.WebcastSerialBean;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.membership.UserCenterActivity;
import com.transsion.onlinevideo.web.VipWebActivity;
import com.transsion.onlinevideo.widgets.banner.ChannelBanner;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.base.config.PlayType;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.base.config.PlayerStatisticInfo;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.base.IPlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.VishaPlayerCallBack;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.vishaplayer.VishaPlayer;
import com.transsion.widgetslib.view.LoadingView;
import defpackage.d06;
import defpackage.e07;
import defpackage.ek4;
import defpackage.f5;
import defpackage.gec;
import defpackage.hb0;
import defpackage.kfc;
import defpackage.o18;
import defpackage.w6c;
import defpackage.yz5;
import defpackage.zdc;
import java.lang.ref.WeakReference;
import java.util.List;

public class WebcastListUtils {
    public e A;
    public int E;
    public String F;
    public String G;
    public String H;
    public String I;
    public boolean J;
    public boolean K;
    public String L;
    public String M;
    public VishaPlayer a;
    public View b;
    public final Context c;
    public String d;
    public int f;
    public long g;
    public long h;
    public String i;
    public String j;
    public int k;
    public String l;
    public int n;
    public ChannelBanner o;
    public TypeBean p;
    public String q;
    public long r;
    public String s;
    public long t;
    public boolean u;
    public int v;
    public long w;
    public long x;
    public int y;
    public int z;
    public boolean e = true;
    public int m = -1;
    public boolean B = false;
    public boolean C = false;
    public boolean D = true;
    public boolean N = true;
    public VishaPlayerCallBack O = new b();
    public final Runnable P = new Runnable() {
        @Override
        public final void run() {
            this.b.J();
        }
    };
    public final Runnable Q = new Runnable() {
        @Override
        public void run() {
            WebcastListUtils.this.B = true;
            if (WebcastListUtils.this.a != null && WebcastListUtils.this.B && WebcastListUtils.this.C) {
                WebcastListUtils.this.a.onVideoResume();
                WebcastListUtils.this.a.getPreLoading().setVisibility(8);
                if (WebcastListUtils.this.b != null) {
                    WebcastListUtils.this.b.setVisibility(8);
                }
                WebcastListUtils.this.X();
                WebcastListUtils.this.a.getLiveMuteButton().setVisibility(8);
                if (WebcastListUtils.this.o != null) {
                    WebcastListUtils.this.o.showMuteButton(true);
                }
            }
        }
    };

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            Path path = new Path();
            path.addRoundRect(0.0f, 0.0f, view.getWidth(), view.getHeight(), new float[]{54.0f, 54.0f, 54.0f, 54.0f, 0.0f, 0.0f, 0.0f, 0.0f}, Path.Direction.CW);
            if (Build.VERSION.SDK_INT >= 30) {
                outline.setPath(path);
            }
        }
    }

    public class b extends VishaPlayerCallBack {
        public b() {
        }

        @Override
        public void onAdComplete() {
            if (WebcastListUtils.this.f == 1) {
                hb0.markDirect("vd_sdk_adendduration_p");
            }
        }

        @Override
        public void onAdStartPlaying() {
            if (WebcastListUtils.this.f == 1) {
                hb0.markDirect("vd_sdk_adstartduration_p");
            }
        }

        @Override
        public void onAutoComplete(String str, Object... objArr) {
            super.onAutoComplete(str, objArr);
            if (WebcastListUtils.this.b != null) {
                WebcastListUtils.this.b.setVisibility(0);
                ImageView imageView = (ImageView) WebcastListUtils.this.b.findViewById(R.id.iv_play_logo);
                if (imageView != null) {
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.drawable.ic_replay_feed_stream);
                }
            }
            if (WebcastListUtils.this.o != null) {
                WebcastListUtils.this.o.start(true);
            }
            WebcastListUtils.this.d = null;
        }

        @Override
        public void onClickBlank(String str, Object... objArr) {
            super.onClickBlank(str, objArr);
            WebcastListUtils webcastListUtils = WebcastListUtils.this;
            webcastListUtils.Q(webcastListUtils.v);
        }

        @Override
        public void onClickResume(String str, Object... objArr) {
            super.onClickResume(str, objArr);
        }

        @Override
        public void onClickStop(String str, Object... objArr) {
            super.onClickStop(str, objArr);
            if (WebcastListUtils.this.b != null) {
                WebcastListUtils.this.b.setVisibility(0);
                ImageView imageView = (ImageView) WebcastListUtils.this.b.findViewById(R.id.iv_play_logo);
                if (imageView != null) {
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.drawable.ic_replay_feed_stream);
                }
            }
            if (WebcastListUtils.this.o != null) {
                WebcastListUtils.this.o.start(true);
            }
            WebcastListUtils.this.d = null;
        }

        @Override
        public void onEnterFullscreen(String str, Object... objArr) {
            super.onEnterFullscreen(str, objArr);
            if (WebcastListUtils.this.a == null) {
                return;
            }
            IPlayerManager player = WebcastListUtils.this.a.getCurrentPlayer().getGSYVideoManager().getPlayer();
            if (player != null) {
                player.setNeedMute(false);
            }
            boolean zY = WebcastListUtils.this.y();
            if (WebcastListUtils.this.e || zY) {
                WebcastListUtils.this.a.getCurrentPlayer().startPlay();
            }
        }

        @Override
        public void onNeedVip() {
            super.onNeedVip();
            if (WebcastListUtils.this.b != null) {
                WebcastListUtils.this.b.setVisibility(0);
                ImageView imageView = (ImageView) WebcastListUtils.this.b.findViewById(R.id.iv_play_logo);
                if (imageView != null) {
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.drawable.ic_replay_feed_stream);
                }
            }
            WebcastListUtils.this.d = null;
        }

        @Override
        public void onPlayError(String str, Object... objArr) {
            LoadingView loadingView;
            super.onPlayError(str, objArr);
            WebcastListUtils.this.e = true;
            if (!WebcastListUtils.t(WebcastListUtils.this.c)) {
                if (e07.e(WebcastListUtils.this.c)) {
                    ToastUtils.s(R.string.ott_feed_play_error);
                } else {
                    ToastUtils.s(R.string.no_network);
                }
            }
            if (WebcastListUtils.this.b == null || (loadingView = (LoadingView) WebcastListUtils.this.b.findViewById(R.id.loading_view)) == null) {
                return;
            }
            loadingView.setVisibility(8);
        }

        @Override
        public void onPrepared(String str, Object... objArr) {
            super.onPrepared(str, objArr);
            if (WebcastListUtils.this.F()) {
                GSYVideoManager.instance().setNeedMute(true);
            }
            if (WebcastListUtils.this.f == 1) {
                hb0.markDirect("vd_sdk_videoprepare_p");
            }
        }

        @Override
        public void onQuitFullscreen(String str, Object... objArr) {
            super.onQuitFullscreen(str, objArr);
            if (WebcastListUtils.this.F()) {
                GSYVideoManager.instance().setNeedMute(true);
            }
            if (WebcastListUtils.this.b == null || WebcastListUtils.this.a == null || !WebcastListUtils.this.a.isPlaying()) {
                return;
            }
            WebcastListUtils.this.b.setVisibility(8);
        }

        @Override
        public void onRequestVip(String str, Object... objArr) {
            super.onRequestVip(str, objArr);
            UserCenterActivity.T0("playdetail", WebcastListUtils.this.f + "", WebcastListUtils.this.c);
        }

        @Override
        public void onSetMute(boolean z) {
            WebcastListUtils.this.D = z;
        }

        @Override
        public void onStartPrepared(String str, Object... objArr) {
            super.onStartPrepared(str, objArr);
            if (WebcastListUtils.this.f == 1) {
                hb0.markDirect("vd_sdk_playercoreprepare_p");
            }
        }

        @Override
        public void onVideoAuthFailed(String str, Object... objArr) {
            super.onVideoAuthFailed(str, objArr);
            WebcastListUtils.this.e = true;
        }

        @Override
        public void onVideoAuthSuccess(String str, Object... objArr) {
            super.onVideoAuthSuccess(str, objArr);
            WebcastListUtils.this.e = false;
        }

        @Override
        public void onVideoPause(String str, Object... objArr) {
            super.onVideoPause(str, objArr);
            if (WebcastListUtils.this.o != null) {
                WebcastListUtils.this.o.showMuteButton(true, false);
            }
        }

        @Override
        public void onVideoStartShow(String str, Object... objArr) {
            super.onVideoStartShow(str, objArr);
            if (WebcastListUtils.this.a == null) {
                return;
            }
            hb0.markDirect(yz5.a);
            if (WebcastListUtils.this.f == 1) {
                hb0.markDirect("vd_sdk_videostartplaying_p");
            }
            GSYVideoManager.instance().setAspectRatio(0);
            WebcastListUtils.this.a.getPreLoading().setVisibility(8);
            if (WebcastListUtils.this.v != 1 || WebcastListUtils.this.o == null) {
                if (WebcastListUtils.this.b != null) {
                    WebcastListUtils.this.b.setVisibility(8);
                    LoadingView loadingView = (LoadingView) WebcastListUtils.this.b.findViewById(R.id.loading_view);
                    if (loadingView != null) {
                        loadingView.setVisibility(8);
                    }
                }
                WebcastListUtils.this.X();
                if (WebcastListUtils.this.F()) {
                    GSYVideoManager.instance().setNeedMute(WebcastListUtils.this.D);
                }
                WebcastListUtils.this.a.getLiveMuteButton().setSelected(WebcastListUtils.this.D);
                return;
            }
            WebcastListUtils.this.C = true;
            WebcastListUtils.this.o.start(false);
            if (!WebcastListUtils.this.B || !WebcastListUtils.this.C) {
                WebcastListUtils.this.a.onVideoPause();
                return;
            }
            if (WebcastListUtils.this.b != null) {
                WebcastListUtils.this.b.setVisibility(8);
                LoadingView loadingView2 = (LoadingView) WebcastListUtils.this.b.findViewById(R.id.loading_view);
                if (loadingView2 != null) {
                    loadingView2.setVisibility(8);
                }
            }
            WebcastListUtils.this.X();
            WebcastListUtils.this.a.getLiveMuteButton().setVisibility(8);
            WebcastListUtils.this.o.showMuteButton(true);
        }
    }

    public class c implements ChannelBanner.b {
        public final List a;
        public final int b;

        public c(List list, int i) {
            this.a = list;
            this.b = i;
        }

        @Override
        public void b(BannerBean bannerBean, int i) {
            ChannelBanner.bannerClick(WebcastListUtils.this.c, bannerBean, i, (TopicBean) this.a.get(this.b));
        }
    }

    public class d implements ChannelBanner.b {
        public final ChannelBanner a;
        public final int b;
        public final List c;
        public final ChannelsBean d;

        public d(ChannelBanner channelBanner, int i, List list, ChannelsBean channelsBean) {
            this.a = channelBanner;
            this.b = i;
            this.c = list;
            this.d = channelsBean;
        }

        @Override
        public void a(final int i) {
            final ChannelBanner channelBanner = this.a;
            final int i2 = this.b;
            final List list = this.c;
            final ChannelsBean channelsBean = this.d;
            channelBanner.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.d(channelBanner, i2, list, channelsBean, i);
                }
            });
        }

        public final void d(ChannelBanner channelBanner, int i, List list, ChannelsBean channelsBean, int i2) {
            channelBanner.start(true);
            if (!WebcastListUtils.t(WebcastListUtils.this.c) || zdc.i) {
                return;
            }
            if (WebcastListUtils.this.o != null) {
                WebcastListUtils.this.o.showMuteButton(false);
            }
            View currentView = channelBanner.getCurrentView();
            if (currentView == null) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) currentView.findViewById(R.id.video_container);
            View viewFindViewById = currentView.findViewById(R.id.cover_container);
            WebcastListUtils.this.M(false, i, list, channelsBean, i2);
            WebcastListUtils.this.s(viewFindViewById, viewGroup);
        }
    }

    public interface e {
        void a();
    }

    public WebcastListUtils(Context context) {
        this.c = context;
    }

    public static boolean t(Context context) {
        if (!e07.g(context)) {
            if (e07.h(context)) {
                return MMKV.p().e("ott_wifi_autoplay", true);
            }
            return true;
        }
        if (!zdc.h) {
            LogUtils.j("webcast", "canAutoPlay: allowStreamPlay is false");
            return false;
        }
        boolean zE = MMKV.p().e("ott_cellular_autoplay", true);
        zdc.h = zE;
        w6c.r(context, "allow_stream_auto_play", zE);
        LogUtils.j("webcast", "canAutoPlay: allowStreamPlay is true, mobileAutoPlay = " + zE);
        return zE;
    }

    public final void A() {
        K();
        BannerBean bannerBean = (BannerBean) this.p;
        if (bannerBean == null || bannerBean.getTarget() == null) {
            RouterUtils.routeDefaultTarget(this.c);
            return;
        }
        if (bannerBean.getTarget().getType() == 6) {
            f5.c(VipWebActivity.I0(this.c, 1, "VIP", "vd_ott_vip_banner_cl"), this.c);
            return;
        }
        RouterBean target = bannerBean.getTarget();
        target.getParam().setFrom_card("vd_ott_banner_cl");
        if (PlayHandler.getInstance().mIsBannerAd) {
            target.setType(10);
        }
        target.getParam().setVideo_force_play(0);
        RouterUtils.route(target, this.c);
    }

    public void B() {
        K();
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(7).withParam(new RouterBean.RouterData(this.t, this.r, this.s, this.q, this.f)).withMarkParam(this.h, this.g, this.i, this.j, this.l).build(), this.c);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:13:0x00ff  */
    public void C(boolean z) {
        RouterBean routerBeanBuild;
        FeedStreamBean.VideoBean video;
        K();
        if (!z) {
            if (this.K) {
                video = ((FeedStreamBean) this.p).getVideo();
                routerBeanBuild = new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(video.getVkVideoId(), video.getTitle(), video.getVideoLink().toString(), video.getSourceType().intValue(), ek4.i(this.p))).withMarkParam(d06.b, 0, this.l, this.g).build();
            } else {
                routerBeanBuild = new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(this.t, this.r, this.q, this.s, this.j, 1).setShortVideo(PlayDetailDataManger.isShortVideo(this.t + ""))).withMarkParam(d06.b, 0, this.l, this.g).build();
            }
            RouterUtils.route(routerBeanBuild, this.c);
            if (this.K) {
                d06.i(video.getVkVideoId(), "topic");
            } else {
                d06.h(this.t, this.g, "topic", this.z);
            }
            d06.g(this.g, this.t, this.y, this.k, this.h, this.j, 0, this.E, this.s, this.i, this.F, this.l);
        }
        routerBeanBuild = new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(this.t, this.r, this.q, this.s, this.j, 1, 1, this.G, this.H, this.M, this.I)).withMarkParam(d06.b, 0, this.l, this.g).build();
        video = null;
        RouterUtils.route(routerBeanBuild, this.c);
        if (this.K) {
            d06.i(video.getVkVideoId(), "topic");
        } else {
            d06.h(this.t, this.g, "topic", this.z);
        }
        d06.g(this.g, this.t, this.y, this.k, this.h, this.j, 0, this.E, this.s, this.i, this.F, this.l);
    }

    public void D() {
        if (this.N && x() != null) {
            this.N = false;
            new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(true).setAutoFullWithSize(false).setShowFullAnimation(false).setNeedLockFull(true).setCacheWithPlay(false).setShowSubtitle(false).setPlayerInitConfig(z()).setHardwareAccelerated(this.a.isHardwareAccelerated()).setVideoAllCallBack(this.O).build((StandardGSYVideoPlayer) this.a);
            a aVar = new a();
            this.a.setClipToOutline(true);
            this.a.setOutlineProvider(aVar);
        }
    }

    public final boolean E() {
        Object obj = this.c;
        if (obj == null) {
            return false;
        }
        if (obj instanceof LifecycleOwner) {
            return ((LifecycleOwner) obj).getLifecycle().getState().isAtLeast(Lifecycle.State.RESUMED);
        }
        return true;
    }

    public final boolean F() {
        if (this.a == null) {
            return false;
        }
        try {
            return GSYVideoManager.instance().listener() == this.a.getCurrentPlayer();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean G() {
        WeakReference weakReference = o18.g;
        if (weakReference != null && (weakReference.get() instanceof VideosService)) {
            return true;
        }
        WeakReference weakReference2 = o18.f;
        return (weakReference2 == null || ((Activity) weakReference2.get()) == null) ? false : true;
    }

    public final boolean H(View view, int i) {
        Rect rect = new Rect();
        if (view.getLocalVisibleRect(rect)) {
            return (i == 100 || I(view)) && rect.bottom - rect.top >= (view.getHeight() * i) / 100;
        }
        return false;
    }

    public final boolean I(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr[1] >= this.n;
    }

    public final void J() {
        if (G() || !E()) {
            return;
        }
        Y();
    }

    public final void K() {
        long j = PlayerStatisticInfo.playRealDuration;
        if (j <= 0 || this.p == null) {
            return;
        }
        if (this.K) {
            yz5.d(j, this.h, yz5.b(this.v), ((FeedStreamBean) this.p).getVideo().getVkVideoId());
        } else {
            yz5.c(j, this.t, this.h, this.g, yz5.b(this.v));
        }
        PlayerStatisticInfo.playRealDuration = 0L;
    }

    public void L(boolean z, int i, List list, ChannelsBean channelsBean) {
        M(z, i, list, channelsBean, 0);
    }

    public void M(boolean z, int i, List list, ChannelsBean channelsBean, int i2) {
        if (channelsBean != null && list != null && list.get(i) != null) {
            S(channelsBean.getId().intValue(), ((TopicBean) list.get(i)).getTopic_id().longValue(), ((TopicBean) list.get(i)).getName(), channelsBean.getName(), i, ((TopicBean) list.get(i)).getRequestId(), 1, ((TopicBean) list.get(i)).getHorizontalFlag(), ((TopicBean) list.get(i)).getN_biz_group_id());
        }
        PlayHandler.getInstance().setTaskAutoPlay(!z);
        if (u(i, list, i2, channelsBean.isYoutubeChannel())) {
            if (z) {
                Z(channelsBean.isYoutubeChannel());
            } else {
                a0();
            }
        }
    }

    public void N() {
        P();
        this.m = -1;
    }

    public void O() {
        b0();
        VishaPlayer vishaPlayer = this.a;
        if (vishaPlayer != null) {
            vishaPlayer.getCurrentPlayer().release();
        }
    }

    public void P() {
        VishaPlayer vishaPlayer = this.a;
        if (vishaPlayer == null) {
            return;
        }
        if (vishaPlayer.getFullWindowPlayer() == null) {
            this.m = -1;
            this.d = null;
            b0();
            View view = this.b;
            if (view != null) {
                view.setVisibility(0);
                LoadingView loadingView = (LoadingView) this.b.findViewById(R.id.loading_view);
                if (loadingView != null) {
                    loadingView.setVisibility(8);
                }
                this.b = null;
            }
            ViewGroup viewGroup = (ViewGroup) this.a.getParent();
            if (viewGroup != null) {
                K();
                viewGroup.removeAllViews();
            }
            ChannelBanner channelBanner = this.o;
            if (channelBanner != null) {
                channelBanner.showMuteButton(false);
                this.o.setListener(null);
                this.o = null;
            }
        }
        this.a.stopPlay();
    }

    public void Q(int i) {
        View view = this.b;
        if (view != null) {
            view.setVisibility(0);
        }
        b0();
        if (!PlayHandler.getInstance().mIsBannerAd) {
            P();
        }
        GSYVideoManager.instance().stop();
        if (i == 5) {
            B();
        } else if (i == 1) {
            A();
        } else if (i == 7) {
            C(this.J);
        }
    }

    public void R(int i, boolean z) {
        b0();
        P();
        GSYVideoManager.instance().stop();
        if (i == 5) {
            B();
        } else if (i == 1) {
            A();
        } else if (i == 7) {
            C(z);
        }
    }

    public void S(long j, long j2, String str, String str2, int i, String str3, int i2, int i3, String str4) {
        this.h = j;
        this.i = str2;
        this.g = j2;
        this.j = str;
        this.k = i;
        this.l = str3;
        this.y = i2;
        this.E = i3;
        this.F = str4;
    }

    public void T() {
        VishaPlayer vishaPlayer = this.a;
        if (vishaPlayer == null || !vishaPlayer.isPlaying()) {
            return;
        }
        this.a.setMute(true);
    }

    public void U(int i) {
        this.f = i;
    }

    public void V(e eVar) {
        this.A = eVar;
    }

    public void W(int i) {
        this.n = i;
    }

    public void X() {
        if (e07.g(this.c) && zdc.j) {
            if (t(this.c)) {
                e eVar = this.A;
                if (eVar != null) {
                    eVar.a();
                }
            } else {
                ToastUtils.s(R.string.auto_play_stream_toast);
            }
            zdc.j = false;
        }
    }

    public void Y() {
        if (E() && x() != null) {
            int i = this.f;
            if (i == 1) {
                this.a.setPlayerType(1);
                this.a.setPlayType(PlayType.PLAY_TYPE_LIVE);
            } else if (i == 4) {
                PlayHandler.getInstance().mIsYoutube = true;
                this.a.setPlayerType(4);
                this.a.setPlayType(PlayType.PLAY_TYPE_LIVE);
            } else if (i == 5) {
                PlayHandler.getInstance().mIsVk = true;
                this.a.setPlayerType(5);
                this.a.setPlayType(PlayType.PLAY_TYPE_LIVE);
            } else {
                this.a.setPlayerType(2);
                this.a.setPlayType(PlayType.PLAY_TYPE_LIVE);
            }
            if (!TextUtils.equals(this.d, this.q)) {
                this.d = this.q;
                this.a.stopPlay();
                if (!PlayHandler.getInstance().mIsBannerAd) {
                    this.a.onVideoReset();
                }
                this.a.setIfCurrentIsFullscreen(false);
                this.a.setPlayerInitConfig(z());
                this.a.setUp(this.d, this.t, this.r, false, this.s);
                this.a.setSeekOnStart(this.w * 1000);
                this.a.setEndPosition(this.x * 1000);
                this.a.getCurrentPlayer().startPlay();
            } else if (this.K) {
                this.d = this.L;
                this.a.stopPlay();
                this.a.onVideoReset();
                this.a.setIfCurrentIsFullscreen(false);
                this.a.setPlayerInitConfig(z());
                this.a.setUp(this.d, this.t, this.r, false, this.s);
                this.a.setSeekOnStart(this.w * 1000);
                this.a.setEndPosition(this.x * 1000);
                this.a.getCurrentPlayer().startPlay();
                PlayHandler.getInstance().mVkInitMute = true;
                PlayHandler.getInstance().mVkTouchCheck = true;
            } else if (PlayHandler.getInstance().mIsBannerAd) {
                this.a.getCurrentPlayer().startPlay();
            }
            View view = this.b;
            if (view != null) {
                LoadingView loadingView = (LoadingView) view.findViewById(R.id.loading_view);
                if (loadingView != null) {
                    loadingView.setVisibility(0);
                }
                this.b.setVisibility(0);
                ImageView imageView = (ImageView) this.b.findViewById(R.id.iv_play_logo);
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
            }
        }
    }

    public void Z(boolean z) {
        b0();
        y();
        R(this.v, z);
    }

    public void a0() {
        b0();
        if (kfc.m(this.f) || !this.u || this.f == 1) {
            ThreadUtils.o().postDelayed(this.P, 500L);
            if (this.v == 1) {
                this.C = false;
                this.B = false;
                ThreadUtils.o().postDelayed(this.Q, 2000L);
            }
        }
    }

    public void b0() {
        View view = this.b;
        if (view != null) {
            view.setVisibility(0);
        }
        ThreadUtils.o().removeCallbacks(this.P);
        ThreadUtils.o().removeCallbacks(this.Q);
    }

    public void s(View view, ViewGroup viewGroup) {
        if (x() == null || viewGroup == null) {
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.a.getParent();
        if (viewGroup2 != null) {
            K();
            viewGroup2.removeAllViews();
        }
        viewGroup.removeAllViews();
        viewGroup.addView(this.a);
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        this.a.setLayoutParams(layoutParams);
        View view2 = this.b;
        if (view2 != null) {
            view2.setVisibility(0);
            LoadingView loadingView = (LoadingView) this.b.findViewById(R.id.loading_view);
            if (loadingView != null) {
                loadingView.setVisibility(8);
            }
        }
        this.b = view;
    }

    public final boolean u(int i, List list, int i2, boolean z) {
        this.J = z;
        if (i == -1 || i2 == -1 || list == null || i >= list.size()) {
            return false;
        }
        try {
            int iIntValue = ((TopicBean) list.get(i)).getData_type().intValue();
            if (iIntValue == 1) {
                this.v = 1;
                BannerBean banner = ((TopicBean) list.get(i)).getBanner(i2);
                if (banner == null) {
                    return false;
                }
                if (banner.getTarget() == null) {
                    return false;
                }
                U(banner.getTarget().getParam().getSourceType());
                if (banner.getTarget() != null && banner.getTarget().getParam() != null) {
                    this.q = banner.getTarget().getParam().getVideo_serial_source_id();
                    this.r = banner.getTarget().getParam().getSerialId();
                    this.t = banner.getTarget().getParam().getVideo_id();
                    this.s = banner.getTarget().getParam().getTitle();
                    this.p = banner;
                    this.u = false;
                    this.w = banner.getTarget().getParam().getStart_time();
                    this.x = banner.getTarget().getParam().getEnd_time();
                    PlayHandler.getInstance().setBannerAd(banner.getTarget().getType() == 3);
                    return true;
                }
            } else {
                if (iIntValue == 5) {
                    this.v = 5;
                    WebcastBean firstWebcastBean = ((TopicBean) list.get(i)).getFirstWebcastBean();
                    WebcastSerialBean firstWebcastSerialBean = firstWebcastBean.getFirstWebcastSerialBean();
                    if (firstWebcastSerialBean == null) {
                        return false;
                    }
                    U(firstWebcastBean.getSourceType().intValue());
                    this.q = firstWebcastSerialBean.getVideoLink();
                    this.r = firstWebcastSerialBean.getSerialId().intValue();
                    this.t = firstWebcastSerialBean.getVideoId();
                    this.z = firstWebcastSerialBean.getPayType().intValue();
                    this.s = firstWebcastSerialBean.getSerialTitle();
                    this.p = firstWebcastSerialBean;
                    this.u = firstWebcastSerialBean.isVip();
                    this.w = 0L;
                    this.x = 0L;
                    PlayHandler.getInstance().setBannerAd(false);
                    return true;
                }
                if (iIntValue == 7) {
                    this.v = 7;
                    FeedStreamBean firstFeedStreamBean = ((TopicBean) list.get(i)).getFirstFeedStreamBean();
                    FeedStreamBean.VideoBean video = firstFeedStreamBean.getVideo();
                    if (video == null) {
                        return false;
                    }
                    this.K = video.getSourceType().intValue() == 5;
                    U(video.getSourceType().intValue());
                    if (this.K) {
                        this.L = firstFeedStreamBean.getVideo().getVideoLink().toString();
                    } else {
                        this.q = firstFeedStreamBean.getVideoSerialSourceId();
                        this.u = video.isVip();
                        this.w = firstFeedStreamBean.getStartTime().intValue();
                        this.x = firstFeedStreamBean.getEndTime().intValue();
                        this.r = firstFeedStreamBean.getVideoSerialId().intValue();
                        this.t = firstFeedStreamBean.getVideoId().intValue();
                        this.z = firstFeedStreamBean.getVideo().getPayType().intValue();
                    }
                    this.s = firstFeedStreamBean.getTitle();
                    this.p = firstFeedStreamBean;
                    if (z) {
                        U(4);
                        this.G = firstFeedStreamBean.getChannelName();
                        this.H = firstFeedStreamBean.getChannelConver();
                        if (firstFeedStreamBean.getVideo() != null) {
                            this.I = firstFeedStreamBean.getVideo().getCoverX();
                        }
                        this.M = firstFeedStreamBean.getVideo().getTitle();
                    }
                    PlayHandler.getInstance().setBannerAd(false);
                    return true;
                }
            }
            return false;
        } finally {
            D();
        }
    }

    public void v(LinearLayoutManager linearLayoutManager, List list, ChannelsBean channelsBean) {
        View viewFindViewByPosition;
        int i;
        if (linearLayoutManager == null || !E()) {
            return;
        }
        int iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        if (iFindFirstCompletelyVisibleItemPosition == -1) {
            return;
        }
        int i2 = this.m;
        if (i2 != -1 && (viewFindViewByPosition = linearLayoutManager.findViewByPosition(i2)) != null && ((i = this.m) < iFindFirstCompletelyVisibleItemPosition || i > iFindLastCompletelyVisibleItemPosition || !I(viewFindViewByPosition) || channelsBean.isYoutubeChannel())) {
            P();
            this.m = -1;
        }
        if (!t(this.c) || zdc.i) {
            return;
        }
        int iMin = Math.min(linearLayoutManager.findLastVisibleItemPosition(), list.size() - 1);
        while (iFindFirstCompletelyVisibleItemPosition <= iMin) {
            if (((TopicBean) list.get(iFindFirstCompletelyVisibleItemPosition)).getData_type().intValue() == 5 || ((TopicBean) list.get(iFindFirstCompletelyVisibleItemPosition)).getData_type().intValue() == 7 || ((TopicBean) list.get(iFindFirstCompletelyVisibleItemPosition)).getData_type().intValue() == 1) {
                View viewFindViewByPosition2 = linearLayoutManager.findViewByPosition(iFindFirstCompletelyVisibleItemPosition);
                if (!G() && viewFindViewByPosition2 != null && ((((TopicBean) list.get(iFindFirstCompletelyVisibleItemPosition)).getData_type().intValue() == 1 && H(viewFindViewByPosition2, 100)) || H(viewFindViewByPosition2, 50))) {
                    if (this.m != iFindFirstCompletelyVisibleItemPosition) {
                        this.m = iFindFirstCompletelyVisibleItemPosition;
                        if (((TopicBean) list.get(iFindFirstCompletelyVisibleItemPosition)).getData_type().intValue() != 1) {
                            s(viewFindViewByPosition2.findViewById(R.id.cover_container), (ViewGroup) viewFindViewByPosition2.findViewById(R.id.video_container));
                            L(false, iFindFirstCompletelyVisibleItemPosition, list, channelsBean);
                            return;
                        }
                        ChannelBanner channelBanner = (ChannelBanner) viewFindViewByPosition2.findViewById(R.id.banner_channel);
                        if (!e07.e(MainApp.f())) {
                            Log.e("webcast", "ott channel start play,but no network");
                            return;
                        }
                        if (channelBanner != null) {
                            this.o = channelBanner;
                            channelBanner.showMuteButton(false);
                            channelBanner.setListener(new c(list, iFindFirstCompletelyVisibleItemPosition));
                            channelBanner.setListener2(new d(channelBanner, iFindFirstCompletelyVisibleItemPosition, list, channelsBean));
                            View currentView = channelBanner.getCurrentView();
                            if (currentView == null) {
                                return;
                            }
                            s(currentView.findViewById(R.id.cover_container), (ViewGroup) currentView.findViewById(R.id.video_container));
                            M(false, iFindFirstCompletelyVisibleItemPosition, list, channelsBean, channelBanner.getCurrentItem());
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            iFindFirstCompletelyVisibleItemPosition++;
        }
    }

    public void w(LinearLayoutManager linearLayoutManager, List list, ChannelsBean channelsBean, int i) {
        View viewFindViewByPosition = linearLayoutManager.findViewByPosition(i);
        if (G() || viewFindViewByPosition == null) {
            return;
        }
        this.m = i;
        s(viewFindViewByPosition.findViewById(R.id.cover_container), (ViewGroup) viewFindViewByPosition.findViewById(R.id.video_container));
        L(false, i, list, channelsBean);
    }

    public final VishaPlayer x() {
        if (this.a == null && this.c != null) {
            this.a = new VishaPlayer(this.c);
        }
        return this.a;
    }

    public final boolean y() {
        Activity activity;
        WeakReference weakReference = o18.g;
        if (weakReference != null) {
            Object obj = weakReference.get();
            if (obj instanceof VideosService) {
                ((VideosService) obj).n();
                return true;
            }
        }
        WeakReference weakReference2 = o18.f;
        if (weakReference2 == null || (activity = (Activity) weakReference2.get()) == null) {
            return false;
        }
        activity.finish();
        return true;
    }

    public final PlayerInitConfig z() {
        return new PlayerInitConfig.PlayerInitConfigBuilder().withPlayerActivity((Activity) this.c).withLoginState(com.transsion.palmsdk.b.s()).withUserOpenID(com.transsion.palmsdk.b.k()).withUserToken(gec.c().e()).whitTokenType(gec.c().h()).withPalmToken(com.transsion.palmsdk.b.o()).withClientIP(CountryInfoUtil.k()).withGAID(com.transsion.utils.deviceinfo.a.j()).withCountryCode(CountryInfoUtil.i()).withVAID(AthenaAnalytics.F(Utils.a())).whitVIP(kfc.m(this.f)).withLanguageCode(LanguageUtils.b().getLanguage()).build();
    }
}
