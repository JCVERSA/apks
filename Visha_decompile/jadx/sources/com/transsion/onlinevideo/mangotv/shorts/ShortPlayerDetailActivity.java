package com.transsion.onlinevideo.mangotv.shorts;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.ShortPlayerBannerAdapter;
import com.transsion.onlinevideo.mangotv.PlayerDatailViewModel;
import com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailActivity;
import com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailFragment;
import com.transsion.onlinevideo.mangotv.shorts.ShortVideoDetail;
import com.transsion.onlinevideo.widgets.view.EpisodesPageView;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsModel;
import com.transsion.utils.NetworkObserver;
import com.transsion.vishaplayersdk.base.config.PlayerError;
import com.transsion.vishaplayersdk.base.config.PlayerEvent;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.utils.NetworkUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.vishaplayer.VishaPlayer;
import com.transsion.widgetslib.view.OSLoadingView;
import defpackage.h06;
import defpackage.h27;
import defpackage.hb0;
import defpackage.o18;
import defpackage.oa1;
import defpackage.se;
import defpackage.vha;
import defpackage.vz6;
import defpackage.w6c;
import defpackage.wz5;
import defpackage.zg9;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ShortPlayerDetailActivity extends OnlineBaseActivity {
    public ShortPlayerBannerAdapter Q;
    public ViewPager2 R;
    public TextView S;
    public OSLoadingView T;
    public EpisodesPageView U;
    public PlayerDatailViewModel W;
    public NetworkObserver X;
    public int Y;
    public View a0;
    public o18 b0;
    public RouterBean.RouterData c0;
    public HistoryBean e0;
    public long f0;
    public long g0;
    public String h0;
    public int i0;
    public int j0;
    public String l0;
    public long m0;
    public int n0;
    public String o0;
    public int p0;
    public long q0;
    public String r0;
    public String s0;
    public String u0;
    public boolean v0;
    public int w0;
    public ViewTreeObserver.OnGlobalFocusChangeListener x0;
    public long y0;
    public long z0;
    public final int N = 700;
    public final long O = System.currentTimeMillis();
    public int P = 1;
    public boolean V = true;
    public boolean Z = false;
    public Set d0 = new HashSet();
    public boolean k0 = true;
    public int t0 = 0;
    public Runnable A0 = new Runnable() {
        @Override
        public final void run() {
            this.b.lambda$new$0();
        }
    };
    public final vz6 B0 = new a();

    public class a implements vz6 {
        public a() {
        }

        public void f() {
            if (ShortPlayerDetailActivity.this.isFinishing() || ShortPlayerDetailActivity.this.isDestroyed()) {
                return;
            }
            ShortPlayerDetailFragment shortPlayerDetailFragmentG0 = ShortPlayerDetailActivity.this.G0();
            if (shortPlayerDetailFragmentG0 == null || shortPlayerDetailFragmentG0.k0() == null) {
                ShortPlayerDetailActivity.this.a1();
            } else {
                shortPlayerDetailFragmentG0.R0(0);
            }
        }

        public final void e() {
            ShortPlayerDetailActivity.this.a0.setVisibility(8);
        }

        public final void g() {
            ShortPlayerDetailFragment shortPlayerDetailFragmentG0;
            if (ShortPlayerDetailActivity.this.isFinishing() || ShortPlayerDetailActivity.this.isDestroyed() || (shortPlayerDetailFragmentG0 = ShortPlayerDetailActivity.this.G0()) == null || shortPlayerDetailFragmentG0.k0() == null) {
                return;
            }
            shortPlayerDetailFragmentG0.R0(4);
        }

        public final void h() {
            ShortPlayerDetailFragment shortPlayerDetailFragmentG0;
            if (ShortPlayerDetailActivity.this.isFinishing() || ShortPlayerDetailActivity.this.isDestroyed() || (shortPlayerDetailFragmentG0 = ShortPlayerDetailActivity.this.G0()) == null || shortPlayerDetailFragmentG0.k0() == null) {
                return;
            }
            shortPlayerDetailFragmentG0.R0(1);
        }

        @Override
        public void onConnect(int i) {
            LogUtils.j("ShortPlayerDetailActivity", "onConnect");
            if (ShortPlayerDetailActivity.this.G0() != null && ShortPlayerDetailActivity.this.G0().k0() != null) {
                super.onConnect(i);
            }
            if (ShortPlayerDetailActivity.this.Q.A() == 0) {
                ShortPlayerDetailActivity.this.H0(ShortPlayerDetailActivity.this.f0 + "");
            }
            ShortPlayerDetailActivity.this.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.e();
                }
            });
            ShortPlayerDetailActivity.this.Y = i;
        }

        @Override
        public void onDisconnect() {
            LogUtils.j("ShortPlayerDetailActivity", "onDisconnect");
            ShortPlayerDetailActivity.this.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.f();
                }
            });
            ShortPlayerDetailActivity.this.Y = 0;
        }

        @Override
        public void onMobile() {
            LogUtils.j("ShortPlayerDetailActivity", "onMobile");
            ShortPlayerDetailActivity.this.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.g();
                }
            });
            ShortPlayerDetailActivity.this.Y = 4;
        }

        @Override
        public void onWifi() {
            LogUtils.j("ShortPlayerDetailActivity", "onWifi");
            ShortPlayerDetailActivity.this.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.h();
                }
            });
            ShortPlayerDetailActivity.this.Y = 1;
        }
    }

    public class b extends ViewPager2.OnPageChangeCallback {
        public b() {
        }

        @Override
        public void onPageSelected(int i) {
            ShortPlayerDetailActivity.this.Q.E(i);
            ShortPlayerDetailFragment shortPlayerDetailFragmentY = ShortPlayerDetailActivity.this.Q.y();
            if (shortPlayerDetailFragmentY != null) {
                shortPlayerDetailFragmentY.onSelectInViewPage();
            }
            if (!PlayHandler.getInstance().mIsLoading) {
                ShortPlayerDetailActivity.this.T.setVisibility(0);
            }
            if (ShortPlayerDetailActivity.this.E0()) {
                ShortPlayerDetailActivity.this.U.notifyAdapter();
            }
        }
    }

    public ShortPlayerDetailFragment G0() {
        return this.Q.y();
    }

    public static void T0(View view, View view2, View view3) {
        if (view3 != null) {
            view2 = view3;
        }
        if (view2 == null || view2 == view) {
            return;
        }
        if (!view2.isAttachedToWindow() || view2.getParent() == null) {
            Log.d("ShortPlayerDetailActivity", "setupFocusHealthGuard: fix detached focus view=" + view2.getClass().getName() + ", parent=" + view2.getParent());
            if (view2.hasFocus()) {
                view2.clearFocus();
            }
            view.requestFocus();
        }
    }

    private void initData() {
        if (!this.W.d().hasObservers()) {
            this.W.d().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.M0((TranVideoDetail) obj);
                }
            });
        }
        if (this.W.b().hasObservers()) {
            return;
        }
        this.W.b().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N0((List) obj);
            }
        });
    }

    private void initView() {
        exitOthersPip();
        View viewFindViewById = findViewById(R.id.layout_error_refrash);
        this.a0 = viewFindViewById;
        ((TextView) viewFindViewById.findViewById(R.id.tip)).setText(R.string.net_media_play_network_error);
        ((TextView) this.a0.findViewById(R.id.refrash)).setText(R.string.refresh);
        this.a0.findViewById(R.id.remind).setVisibility(8);
        this.T = (OSLoadingView) findViewById(R.id.loading);
        EpisodesPageView episodesPageView = (EpisodesPageView) findViewById(R.id.episode_more);
        this.U = episodesPageView;
        episodesPageView.setOnViewHiddenListener(new EpisodesPageView.e() {
            @Override
            public final void a() {
                this.a.D0();
            }
        });
        this.U.setOnEpisodeClickListener(new EpisodesPageView.d() {
            @Override
            public final void a(List list, int i) {
                this.a.O0(list, i);
            }
        });
        this.b0 = new o18();
        this.S = (TextView) findViewById(R.id.tv_duration_tip);
        ViewPager2 viewPager2 = (ViewPager2) findViewById(R.id.viewPager);
        this.R = viewPager2;
        LogUtils.v("ShortPlayerDetailActivity", "initView: ViewPager initialized", viewPager2);
        ShortPlayerBannerAdapter shortPlayerBannerAdapter = new ShortPlayerBannerAdapter(this, this.V);
        this.Q = shortPlayerBannerAdapter;
        shortPlayerBannerAdapter.setOnBoundaryReachedListener(new ShortPlayerBannerAdapter.a() {
            @Override
            public final void a(int i) {
                this.a.P0(i);
            }
        });
        this.Q.setOnFragmentUpdateListener(new ShortPlayerBannerAdapter.b() {
            @Override
            public final void a(ShortPlayerDetailFragment shortPlayerDetailFragment, Object obj, int i, boolean z) {
                shortPlayerDetailFragment.f1((ShortVideoDetail) obj);
            }
        });
        this.R.setAdapter(this.Q);
        this.R.setCurrentItem(this.Q.B(), false);
        this.R.registerOnPageChangeCallback(new b());
        OverScrollDecorHelper.setUpOverScroll(this.R);
    }

    public void lambda$new$0() {
        if (isInPictureInPictureMode()) {
            return;
        }
        markDurationPause();
    }

    public void D0() {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.R.getLayoutParams();
        layoutParams.bottomToTop = -1;
        layoutParams.bottomToBottom = 0;
        this.R.setLayoutParams(layoutParams);
        if (G0() == null || G0().k0() == null) {
            return;
        }
        G0().X0();
        G0().k0().setBottomGradientBgVisibility(true);
    }

    public boolean E0() {
        return this.U.getVisibility() == 0;
    }

    public final VishaPlayer F0() {
        if (G0() != null) {
            return G0().k0();
        }
        return null;
    }

    public void H0(String str) {
        this.W.e(str);
    }

    public boolean I0() {
        ShortPlayerBannerAdapter shortPlayerBannerAdapter = this.Q;
        if (shortPlayerBannerAdapter == null) {
            return false;
        }
        return this.Q.x() < shortPlayerBannerAdapter.A();
    }

    public boolean J0() {
        ShortPlayerBannerAdapter shortPlayerBannerAdapter = this.Q;
        return shortPlayerBannerAdapter != null && shortPlayerBannerAdapter.x() > 0;
    }

    public void K0() {
        if (this.S.getVisibility() == 0) {
            this.S.setVisibility(8);
            this.w0++;
        }
    }

    public boolean L0() {
        return this.Z;
    }

    public final void M0(TranVideoDetail tranVideoDetail) {
        if (tranVideoDetail == null) {
            LogUtils.m("ShortPlayerDetailActivity", "get video info failed videoid");
            h27.c().e(1000, Boolean.TRUE, "");
            h27.c().e(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_GET_VIDEO_ID_FAILED));
            return;
        }
        LogUtils.j("ShortPlayerDetailActivity", "[TEST] Player:get video info end: " + tranVideoDetail.getVideoInfo().getVideoTitle(), tranVideoDetail.getVideoInfo().getVideoDescription());
        if (this.V) {
            this.Q.u(Collections.singletonList(ShortVideoDetail.fromTranVideoDetail(tranVideoDetail)));
            return;
        }
        this.U.setVideoDetail(tranVideoDetail);
        ArrayList arrayList = new ArrayList();
        for (TranVideoDetail.VideoSerials videoSerials : tranVideoDetail.getVideoSerials()) {
            ShortVideoDetail shortVideoDetail = new ShortVideoDetail();
            shortVideoDetail.setVideoSerial(videoSerials);
            shortVideoDetail.setVideoInfo(tranVideoDetail.getVideoInfo());
            arrayList.add(shortVideoDetail);
        }
        this.Q.G(arrayList);
    }

    public final void N0(List list) {
        LogUtils.v("ShortPlayerDetailActivity", "Player:get video sketch end: " + list);
        if (list != null) {
            if (list.isEmpty()) {
                LogUtils.v("ShortPlayerDetailActivity", "Player:get video sketch end: empty");
                return;
            }
            for (MediaBean mediaBean : new ArrayList(list)) {
                LogUtils.v("ShortPlayerDetailActivity", "[TEST] Player:get video sketch end: " + mediaBean.getTitle());
                H0(mediaBean.getId() + "");
            }
        }
    }

    public final void O0(List list, int i) {
        if (this.R != null) {
            LogUtils.v("ShortPlayerDetailActivity", "onEpisodeClick: position=" + i, "getSerialId: " + this.Q.z(i).getVideoSerial().getSerialId());
            this.R.setCurrentItem(i, false);
        }
    }

    public final void P0(int i) {
        if (this.V) {
            PlayerDatailViewModel playerDatailViewModel = this.W;
            String str = this.f0 + "";
            int i2 = this.P;
            this.P = i2 + 1;
            playerDatailViewModel.c(str, i2, 5);
        }
    }

    public final void R0(long j, String str, Integer num) {
        if (num.intValue() == 200) {
            LogUtils.v("onObservePlayDetailRequest success");
            return;
        }
        if (num.intValue() == -1) {
            zg9.q(this);
            zg9.o(this, zg9.i(j));
            return;
        }
        ShortPlayerDetailFragment shortPlayerDetailFragmentG0 = G0();
        long j2 = shortPlayerDetailFragmentG0 != null ? shortPlayerDetailFragmentG0.G : 0L;
        if (NetworkUtils.isAvailable(getApplicationContext())) {
            wz5.M(j2, j, String.valueOf(PlayerError.TRAN_PLAYER_ERROR_API_REQUEST_ERROR), "", str);
            return;
        }
        wz5.T("network", str);
        wz5.M(j2, j, String.valueOf(PlayerError.TRAN_PLAYER_ERROR_NETWORK_NOT_AVAILABLE), "", str);
        wz5.A();
        h27.c().e(1002, Boolean.TRUE);
    }

    public final void S0(PersistableBundle persistableBundle) {
        Intent intent = new Intent(this, (Class<?>) ShortPlayerDetailActivity.class);
        intent.putExtra(RouterUtils.ROUTER_DATA, persistableBundle);
        intent.addFlags(268435456);
        getApplication().startActivity(intent);
    }

    public boolean U0() {
        return (this.v0 || this.V) ? false : true;
    }

    public void V0(final long j, final String str) {
        if (this.W.a().hasObservers()) {
            return;
        }
        this.W.a().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.R0(j, str, (Integer) obj);
            }
        });
    }

    public void W0() {
        this.U.notifyAdapter();
        this.U.setVisibility(0);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.R.getLayoutParams();
        layoutParams.bottomToTop = R.id.episode_more;
        layoutParams.bottomToBottom = -1;
        this.R.setLayoutParams(layoutParams);
        if (G0() == null || G0().k0() == null) {
            return;
        }
        G0().k0().setBottomGradientBgVisibility(false);
    }

    public void X0(o18.b bVar) {
        this.b0.o(this, bVar);
    }

    public final void Y0(float f) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = f;
        getWindow().setAttributes(attributes);
    }

    public final void Z0() {
        final View decorView = getWindow() != null ? getWindow().getDecorView() : null;
        if (decorView == null) {
            return;
        }
        this.x0 = new ViewTreeObserver.OnGlobalFocusChangeListener() {
            @Override
            public final void onGlobalFocusChanged(View view, View view2) {
                ShortPlayerDetailActivity.T0(decorView, view, view2);
            }
        };
        decorView.getViewTreeObserver().addOnGlobalFocusChangeListener(this.x0);
    }

    public final void a1() {
        OSLoadingView oSLoadingView;
        if (this.a0 == null || (oSLoadingView = this.T) == null) {
            return;
        }
        oSLoadingView.setVisibility(8);
        this.a0.setVisibility(0);
        this.a0.bringToFront();
        View view = (View) this.a0.getParent();
        if (view != null) {
            view.requestLayout();
        }
    }

    public void b1(long j) {
        LogUtils.v("ShortPlayerDetailActivity", "showTip: ", Integer.valueOf(this.w0));
        if (this.w0 >= 3) {
            return;
        }
        if (this.S.getVisibility() != 0) {
            this.S.setVisibility(0);
            MMKV.p().t("ott_short_duration_tip_show", this.w0 + 1);
        }
        this.S.setText(getString(R.string.visha_would_play_next_after_seconds, j + ""));
    }

    public final void c1() {
        String str;
        if (G0() == null) {
            return;
        }
        if (GSYVideoManager.instance().getDuration() != 0) {
            str = ((GSYVideoManager.instance().getCurrentPosition() * 100) / GSYVideoManager.instance().getDuration()) + "%";
        } else {
            str = null;
        }
        AiStatisticsModel.markAlgorithmRecommend("vd_ott_video_duration", wz5.S(PlayHandler.getInstance().mPlayDuration, PlayHandler.getInstance().mPortPlayDuration, ShortPlayerDetailFragment.d0, String.valueOf(G0().G), G0().F, this.q0, this.m0, G0().w, this.s0, this.r0, this.u0, str, G0().E, null));
        PlayHandler.getInstance().mPortPlayDuration = 0L;
        PlayHandler.getInstance().mPlayDuration = 0L;
        PlayHandler.getInstance().mPlayItemDuration = 0L;
        PlayHandler.getInstance().mPlayTime = 0L;
        this.d0.clear();
    }

    public void d1(HistoryBean historyBean) {
        if (U0()) {
            this.v0 = true;
            this.e0 = historyBean;
            int iC = this.Q.C(historyBean.serialId);
            ShortVideoDetail shortVideoDetailZ = this.Q.z(iC);
            LogUtils.v("ShortPlayerDetailActivity", "useHistoryPlay = " + historyBean.serialId, Integer.valueOf(iC), Long.valueOf(historyBean.lastPos), Long.valueOf(historyBean.duration));
            if (iC != -1) {
                shortVideoDetailZ.setPlayPosition((int) historyBean.lastPos);
                if (this.R.getCurrentItem() != iC) {
                    this.R.setCurrentItem(iC, false);
                } else {
                    G0().W0(historyBean.lastPos);
                }
            }
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        switch (i) {
            case 1000:
            case 1016:
                PlayHandler.getInstance().mIsLoading = false;
                timeCount();
                MMKV.p().e("ott_play_fullscreen_guide", false);
                break;
            case 1002:
                this.T.setVisibility(8);
                if (objArr.length == 0 || Boolean.TRUE.equals(objArr[0])) {
                    a1();
                } else {
                    this.a0.setVisibility(8);
                }
                break;
            case 1008:
                wz5.i((String) objArr[0], G0().G, this.f0);
                break;
            case 1010:
                wz5.y("pip", G0().G, this.f0);
                break;
            case 1012:
                wz5.e0((String) objArr[0], G0().G, this.f0);
                break;
            case 1015:
                PlayHandler.getInstance().mIsLoading = false;
                markDuration();
                break;
            case AnalyticsListener.EVENT_DRM_KEYS_REMOVED:
                F0().onVideoPause();
                break;
            case AnalyticsListener.EVENT_AUDIO_CODEC_ERROR:
                wz5.y("", G0().G, this.f0);
                break;
            case 1074:
                hb0.markDirect("vd_ott_buffering_show");
                break;
            case 1076:
                if (isInPictureInPictureMode()) {
                    flushPip(((Integer) objArr[0]).intValue() == 2);
                }
                break;
            case 1082:
                F0().getCurrentPlayer().showTextToast(objArr[0] + "");
                break;
            case 1090:
                setNavVisibility(false);
                break;
            case 1105:
                wz5.D(this.f0, G0().G, System.currentTimeMillis() - PlayHandler.getInstance().mPauseTime);
                break;
            case 1106:
                PlayHandler.getInstance().mPauseTime = System.currentTimeMillis();
                break;
            default:
                G0().didReceivedNotification(i, objArr);
                break;
        }
    }

    public void enterPip() {
        if (isInPictureInPictureMode()) {
            return;
        }
        this.b0.w(this, F0().getGSYVideoManager().isPlaying() ? R.drawable.ic_floating_pause : R.drawable.ic_floating_play, "", 1, 1, F0().getCurrentVideoWidth(), F0().getCurrentVideoHeight(), J0(), I0());
        h06.d(false);
        o18.q(this, 2);
    }

    public final void exitOthersPip() {
        Activity activity;
        WeakReference weakReference = o18.g;
        if (weakReference != null) {
            Object obj = weakReference.get();
            if (obj instanceof VideosService) {
                ((VideosService) obj).n();
            }
        }
        WeakReference weakReference2 = o18.f;
        if (weakReference2 == null || (activity = (Activity) weakReference2.get()) == null || activity == this) {
            return;
        }
        try {
            activity.moveTaskToBack(true);
            activity.finish();
        } catch (Exception e) {
            LogUtils.l("ShortPlayerDetailActivity", "exitOthersPip error: " + e);
        }
    }

    public void flushPip(boolean z) {
        this.b0.r(this, z ? R.drawable.ic_floating_pause : R.drawable.ic_floating_play, "", z ? 1 : 2, z ? 1 : 2, F0().getCurrentVideoWidth(), F0().getCurrentVideoHeight(), J0(), I0());
    }

    public String getSerialStr() {
        StringBuilder sb = new StringBuilder();
        Iterator it = this.d0.iterator();
        while (it.hasNext()) {
            long jLongValue = ((Long) it.next()).longValue();
            sb.append(StringUtils.COMMA);
            sb.append(jLongValue);
        }
        return sb.length() > 0 ? sb.substring(1) : "";
    }

    @Override
    public void initNotify() {
        super.initNotify();
        this.mNotifys.add(1008);
        this.mNotifys.add(1010);
        this.mNotifys.add(1012);
        this.mNotifys.add(1014);
        this.mNotifys.add(1015);
        this.mNotifys.add(1016);
        this.mNotifys.add(1018);
        this.mNotifys.add(1021);
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED));
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_AUDIO_CODEC_ERROR));
        this.mNotifys.add(1034);
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_DRM_KEYS_REMOVED));
        this.mNotifys.add(1000);
        this.mNotifys.add(1037);
        this.mNotifys.add(1074);
        this.mNotifys.add(Integer.valueOf(PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_WATCH_DURATION));
        this.mNotifys.add(1076);
        this.mNotifys.add(1051);
        this.mNotifys.add(1082);
        this.mNotifys.add(1090);
        this.mNotifys.add(1106);
        this.mNotifys.add(1105);
        this.mNotifys.add(1099);
        this.mNotifys.add(1002);
    }

    public final void initThumb() {
        if (vha.s(this)) {
            PlayHandler.getInstance().setCustomThumb(vha.e(this), getResources().getDimensionPixelOffset(R.dimen.seekbar_custom_thumb_offset));
        }
    }

    public void markDuration() {
        if (G0() == null || G0().S) {
            return;
        }
        timeCount();
        c1();
    }

    public final void markDurationPause() {
        if (G0() == null || G0().S) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - 700;
        if (PlayHandler.getInstance().mPlayTime == 0) {
            return;
        }
        PlayHandler.getInstance().mPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayTime;
        PlayHandler.getInstance().mPlayItemDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayItemTime;
        PlayHandler.getInstance().mPortPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPortPlayTime;
        c1();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == o18.d && o18.d(this)) {
            enterPip();
        } else if (i == o18.c && o18.c(this)) {
            enterPip();
        }
    }

    @Override
    public void onBackPressed() {
        if (G0() != null) {
            G0().L0();
            markDuration();
        }
        super.onBackPressed();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        parseIntent(getIntent());
        GSYVideoManager.instance().stop();
        setWindowFullScreen(true);
        getWindow().addFlags(128);
        Y0(1.0f);
        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setDecorFitsSystemWindows(false);
        } else {
            getWindow().getDecorView().setSystemUiVisibility(1280);
        }
        getWindow().addFlags(512);
        super.onCreate(bundle);
        PlayHandler.getInstance().mIsLogin = com.transsion.palmsdk.b.s();
        setContentView(R.layout.activity_short_player_detail);
        this.w0 = MMKV.p().g("ott_short_duration_tip_show", 0);
        initView();
        this.W = (PlayerDatailViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(se.a())).get(PlayerDatailViewModel.class);
        this.X = new NetworkObserver(this);
        getLifecycle().addObserver(this.X);
        this.X.b("ottplayer", this.B0);
        if (!NetworkUtils.isAvailable(getApplicationContext())) {
            this.Y = 0;
            a1();
        }
        initThumb();
        initData();
        wz5.w();
        wz5.x();
        h27.c().e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new Object[0]);
        if (oa1.d()) {
            Z0();
        }
    }

    @Override
    public void onDestroy() {
        if (this.x0 != null && getWindow() != null) {
            ViewTreeObserver viewTreeObserver = getWindow().getDecorView().getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnGlobalFocusChangeListener(this.x0);
            }
            this.x0 = null;
        }
        getWindow().clearFlags(128);
        o18 o18Var = this.b0;
        if (o18Var != null) {
            try {
                o18Var.v(this);
            } catch (Exception e) {
                LogUtils.l("ShortPlayerDetailActivity", "unRegisterController error:" + e.getMessage());
            }
        }
        ShortPlayerBannerAdapter shortPlayerBannerAdapter = this.Q;
        if (shortPlayerBannerAdapter != null) {
            shortPlayerBannerAdapter.w();
            this.Q.setOnBoundaryReachedListener(null);
            this.Q.setOnFragmentUpdateListener(null);
        }
        if (G0() != null) {
            wz5.C(this.z0, this.q0, this.m0, getSerialStr(), G0().F);
            G0().K0();
        }
        PlayHandler.getInstance().release();
        PlayDetailDataManger.clear();
        if (this.V) {
            GSYVideoManager.instance().setSubtitleSizeRatio(0.06f);
            GSYVideoManager.instance().setSubtitleBottomRatio(0.01f);
        }
        markDuration();
        ThreadUtils.o().removeCallbacks(this.A0);
        o18.h(this);
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            PlayHandler.getInstance().mIsGravity = false;
            wz5.c();
        } else if (i == 24) {
            if (F0() != null) {
                F0().addVolume();
                return true;
            }
        } else if (i == 25 && F0() != null) {
            F0().cutVolume();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (G0() != null) {
            this.z0 += System.currentTimeMillis() - this.y0;
            G0().M0();
            ThreadUtils.o().postDelayed(this.A0, 700L);
        }
    }

    @Override
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        if (z && E0()) {
            D0();
        }
        if (G0() != null) {
            G0().S0(z);
        }
        super.onPictureInPictureModeChanged(z, configuration);
    }

    @Override
    public void onResume() {
        this.Z = false;
        if (G0() != null) {
            G0().N0();
            this.y0 = System.currentTimeMillis();
        }
        super.onResume();
    }

    @Override
    public void onStop() {
        super.onStop();
        LogUtils.j("ShortPlayerDetailActivity", "onStop =" + this);
        this.Z = true;
        if (isInPictureInPictureMode()) {
            GSYVideoManager.instance().gotoBackground();
            GSYVideoManager.instance().onActivityStop();
        }
    }

    @Override
    public void onUserLeaveHint() {
        super.onUserLeaveHint();
        if (G0() != null) {
            G0().T0();
        }
    }

    public final void parseIntent(Intent intent) {
        if (intent != null) {
            Parcelable parcelableExtra = intent.getParcelableExtra(RouterUtils.ROUTER_DATA);
            if (parcelableExtra instanceof PersistableBundle) {
                this.V = false;
                final PersistableBundle persistableBundle = (PersistableBundle) parcelableExtra;
                this.f0 = persistableBundle.getLong("vid");
                this.g0 = persistableBundle.getLong("serid");
                this.h0 = persistableBundle.getString("sid");
                this.i0 = persistableBundle.getInt("rel");
                LogUtils.j("ShortPlayerDetailActivity", "parseIntent: mVideoId = " + this.f0 + ", mSerialId = " + this.g0 + ", mSourceId = " + this.h0 + ", mIsRelated = " + this.i0);
                this.j0 = 0;
                this.k0 = false;
                if (isInPictureInPictureMode()) {
                    se.b().postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.S0(persistableBundle);
                        }
                    }, 100L);
                    finish();
                    return;
                }
            } else {
                this.c0 = (RouterBean.RouterData) parcelableExtra;
                Log.i("ShortPlayerDetailActivity", "parseIntent: intentData = " + this.c0);
                RouterBean.RouterData routerData = this.c0;
                if (routerData != null) {
                    this.f0 = routerData.getVideo_id();
                    this.h0 = this.c0.getSourceId();
                    this.o0 = this.c0.getSourceType() + "";
                    this.p0 = this.c0.getSourceType();
                    this.l0 = this.c0.getFrom_card();
                    this.m0 = this.c0.getTopic_id();
                    this.n0 = this.c0.getTopic_sort();
                    this.i0 = this.c0.getIs_related();
                    this.q0 = this.c0.getChannel();
                    this.r0 = this.c0.getChannel_name();
                    this.s0 = this.c0.getTopic_name();
                    this.j0 = this.c0.getData_type();
                    this.t0 = this.c0.getVideo_force_play();
                    if (this.c0.isNotPlayFromHistory()) {
                        this.k0 = false;
                        this.V = this.c0.getIsPreview() == ShortPlayType.PREVIEW.getValue();
                    } else {
                        this.V = false;
                    }
                    if (this.t0 == 1) {
                        long video_serial_id = this.c0.getVideo_serial_id();
                        this.g0 = video_serial_id;
                        if (video_serial_id == 0) {
                            this.g0 = this.c0.getSerialId();
                        }
                    } else {
                        this.g0 = this.c0.getSerialId();
                    }
                    this.u0 = this.c0.getRequestId();
                } else {
                    LogUtils.m("ShortPlayerDetailActivity", "parseIntent null");
                }
            }
            PlayHandler.getInstance().mIsYoutube = false;
            PlayHandler.getInstance().mIsVk = false;
        }
        PlayHandler.getInstance().mShowMobileData = (w6c.c(this, "allow_mobile_data_play", false) || MMKV.p().e("moble_remind", false)) ? false : true;
    }

    public void playNext() {
        ViewPager2 viewPager2 = this.R;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1, true);
        }
    }

    public void playPre() {
        ViewPager2 viewPager2 = this.R;
        if (viewPager2 == null || viewPager2.getCurrentItem() <= 0) {
            return;
        }
        ViewPager2 viewPager3 = this.R;
        viewPager3.setCurrentItem(viewPager3.getCurrentItem() - 1, true);
    }

    @Override
    public boolean shouldApplyLegacySystemBarPadding() {
        return false;
    }

    public final void timeCount() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (PlayHandler.getInstance().mPlayTime == 0) {
            return;
        }
        PlayHandler.getInstance().mPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayTime;
        PlayHandler.getInstance().mPlayItemDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayItemTime;
        PlayHandler.getInstance().mPortPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPortPlayTime;
    }
}
