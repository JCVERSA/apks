package com.mgmi.ssp;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.widget.IVideoView;
import com.hunantv.media.widget.MgtvVideoView;
import com.mgadplus.brower.CustomWebActivity;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgadplus.viewgroup.dynamicview.ScreenOrientationContainer;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.a.b;
import com.mgmi.ads.api.a.c;
import com.mgmi.ads.api.a.d;
import com.mgmi.ads.api.h;
import defpackage.g4d;
import defpackage.k7d;
import defpackage.mpd;
import java.lang.ref.WeakReference;

public class IncentiveVideoAd {
    private WeakReference<Activity> activityWeakReference;
    private ScreenOrientationContainer container;
    private boolean hasInit;
    private b mAdsLoaderInterface;
    private d mAdsRequestInterface;
    private IncentiveVideoListener mMediaListener;
    private MgtvVideoView mMgtvInnerVideoView;
    private Point mScreenSize;
    private ViewGroup mViewParent;
    private boolean setCloseBtnVisible = true;

    public static final class a implements com.mgmi.platform.d {
        private MgtvVideoView a;

        public a(@NonNull MgtvVideoView mgtvVideoView) {
            this.a = mgtvVideoView;
        }

        @Override
        public void a() {
            MgtvVideoView mgtvVideoView = this.a;
            if (mgtvVideoView != null) {
                mgtvVideoView.stop();
            }
        }

        @Override
        public void b() {
            MgtvVideoView mgtvVideoView = this.a;
            if (mgtvVideoView != null) {
                mgtvVideoView.pause();
            }
        }

        @Override
        public void c() {
            MgtvVideoView mgtvVideoView = this.a;
            if (mgtvVideoView != null) {
                mgtvVideoView.start();
            }
        }

        @Override
        public View d() {
            return this.a;
        }
    }

    public IncentiveVideoAd(@NonNull Activity activity, @NonNull String str, String str2, @NonNull IncentiveVideoListener incentiveVideoListener, int i, boolean z, int i2) {
        init(activity, null, str, str2, incentiveVideoListener, i, z, i2);
    }

    private void init(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull String str, String str2, @NonNull final IncentiveVideoListener incentiveVideoListener, int i, boolean z, int i2) {
        SourceKitLogger.a("mgmiad", "PreRollVideoAd");
        this.activityWeakReference = new WeakReference<>(activity);
        if (!com.mgmi.platform.b.a().b()) {
            SourceKitLogger.a("mgmiad", "ssp error");
            if (incentiveVideoListener != null) {
                incentiveVideoListener.onNoAd(new AdError(AdError.ERROR_REASON_MID_BLACKLIST, "媒体黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(str2)) {
            SourceKitLogger.a("mgmiad", "ssp pid error");
            if (incentiveVideoListener != null) {
                incentiveVideoListener.onNoAd(new AdError(AdError.ERROR_REASON_PID_BLACKLIST, "广告位黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(this.activityWeakReference.get(), this.activityWeakReference.get().getPackageName())) {
            SourceKitLogger.a("mgmiad", "package error");
            if (incentiveVideoListener != null) {
                incentiveVideoListener.onNoAd(new AdError(AdError.ERROR_REASON_PACKAGE_ERROR, "包名校验错误，当前APP包名与官网注册媒体是填写的包名不一致，无法使用SDK"));
                return;
            }
            return;
        }
        Point pointD = mpd.d(this.activityWeakReference.get());
        this.mScreenSize = pointD;
        mpd.c(pointD);
        initPlayer(this.activityWeakReference.get());
        c cVar = new c();
        this.mAdsRequestInterface = cVar;
        this.mMediaListener = incentiveVideoListener;
        cVar.c(i);
        this.mAdsRequestInterface.b(new com.mgmi.g.a(str, str2));
        if (z) {
            this.mAdsRequestInterface.a(false);
        } else {
            this.mAdsRequestInterface.a(true);
        }
        this.mAdsRequestInterface.b("ADS_TYPE_INCENTIVE_VIDEO");
        ScreenOrientationContainer screenOrientationContainer = new ScreenOrientationContainer(this.activityWeakReference.get());
        this.container = screenOrientationContainer;
        screenOrientationContainer.setOnScreenOrientationChangeListener(new ScreenOrientationContainer.c() {
            @Override
            public void onScreenOrientationChange(int i3) {
            }
        });
        if (viewGroup == null) {
            ViewGroup viewGroup2 = (ViewGroup) this.activityWeakReference.get().findViewById(R.id.content);
            this.mViewParent = viewGroup2;
            viewGroup2.addView(this.container, new FrameLayout.LayoutParams(-1, -1));
        } else {
            this.mViewParent = viewGroup;
            viewGroup.addView(this.container, new FrameLayout.LayoutParams(-1, -1));
        }
        this.mAdsRequestInterface.a(new com.mgmi.ads.api.a() {
            @Override
            public int getVideoHeight() {
                return IncentiveVideoAd.this.mViewParent.getHeight();
            }

            @Override
            public int getVideoWidth() {
                return IncentiveVideoAd.this.mViewParent.getWidth();
            }

            @Override
            public boolean isFullScreen() {
                return false;
            }

            @Override
            public void onAdListener(com.mgmi.ads.api.a.EnumC0161a enumC0161a, @Nullable final AdWidgetInfoImp adWidgetInfoImp) {
                IncentiveVideoListener incentiveVideoListener2;
                if (com.mgmi.ads.api.a.EnumC0161a.START_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    IncentiveVideoAd.this.mMediaListener.onAdComplete();
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.PAUSE_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    IncentiveVideoAd.this.mMediaListener.onAdPrepared();
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FAIL.equals(enumC0161a)) {
                    IncentiveVideoAd.this.mMediaListener.onNoAd(new AdError(adWidgetInfoImp.getErrorCode(), adWidgetInfoImp.getErrorMsg()));
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.VIP_START_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    IncentiveVideoAd.this.mMediaListener.onAdComplete();
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.RESUME_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    IncentiveVideoAd.this.mMediaListener.onAdComplete();
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.FULLSCREEN_REQUESTED.equals(enumC0161a)) {
                    IncentiveVideoAd.this.container.setLandScape();
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.HALFSCREEN_REQUESTED.equals(enumC0161a)) {
                    IncentiveVideoAd.this.container.setPortrait();
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.BACK_BUTTON_REQUEST.equals(enumC0161a)) {
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.PLAYER_PROGRESS_UPDATE.equals(enumC0161a)) {
                    if (adWidgetInfoImp != null) {
                        IncentiveVideoAd.this.mMediaListener.onUpdateAdTime(adWidgetInfoImp.getAdDurationRemain());
                        return;
                    }
                    return;
                }
                if (!com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA.equals(enumC0161a) && !com.mgmi.ads.api.a.EnumC0161a.JUMP_VIP.equals(enumC0161a) && !com.mgmi.ads.api.a.EnumC0161a.JUMP_HARFSCREEN_SCHEMA.equals(enumC0161a) && !com.mgmi.ads.api.a.EnumC0161a.LOAD_HARFSCREEN_SCHEMA.equals(enumC0161a)) {
                    if (!com.mgmi.ads.api.a.EnumC0161a.CLOSE_AD.equals(enumC0161a) || (incentiveVideoListener2 = incentiveVideoListener) == null) {
                        return;
                    }
                    incentiveVideoListener2.onAdClosed();
                    return;
                }
                if (IncentiveVideoAd.this.activityWeakReference.get() != null && adWidgetInfoImp != null) {
                    if (!g4d.m(adWidgetInfoImp.getClickUrl())) {
                        CustomWebActivity.d((Context) IncentiveVideoAd.this.activityWeakReference.get(), adWidgetInfoImp.getClickUrl(), adWidgetInfoImp.getUuid(), adWidgetInfoImp.getAwayAppType());
                    } else if (adWidgetInfoImp.getAwayAppType() == com.mgmi.ads.api.d.AWAY_APP_TYPE_YES) {
                        com.mgmi.ViewGroup.a.a aVar = new com.mgmi.ViewGroup.a.a((Context) IncentiveVideoAd.this.activityWeakReference.get());
                        aVar.a((CharSequence) ((Activity) IncentiveVideoAd.this.activityWeakReference.get()).getResources().getString(com.mgmi.R.string.mgmi_confirm_download)).b(com.mgmi.R.string.mgmi_common_cancel).c(com.mgmi.R.string.mgmi_common_confim).a(false).a(new com.mgmi.ViewGroup.a.a.b(aVar) {
                            @Override
                            public void a() {
                                super.a();
                                k7d.c(com.mgmi.ads.api.c.a()).d(adWidgetInfoImp.getUuid(), adWidgetInfoImp.getClickUrl());
                            }

                            @Override
                            public void b() {
                                super.b();
                                com.mgmi.e.b.a().a(com.mgmi.ads.api.c.a(), adWidgetInfoImp.getUuid(), com.mgmi.e.c.CONVERTION_TYPE_USER_CANCEL_DOWNLOAD, null, null);
                            }
                        });
                        aVar.b();
                    } else {
                        k7d.c(com.mgmi.ads.api.c.a()).d(adWidgetInfoImp.getUuid(), adWidgetInfoImp.getClickUrl());
                    }
                }
                IncentiveVideoAd.this.mMediaListener.onAdClick();
            }
        });
        this.mAdsRequestInterface.a(this.mViewParent);
        this.mAdsRequestInterface.a(new a(this.mMgtvInnerVideoView));
        this.mAdsRequestInterface.b((com.mgmi.platform.d) null);
        this.mAdsLoaderInterface = com.mgmi.platform.b.b.a().a(this.activityWeakReference.get(), this.mAdsRequestInterface);
        this.hasInit = true;
    }

    private void initAdInnerPlayerListener() {
        MgtvVideoView mgtvVideoView = this.mMgtvInnerVideoView;
        if (mgtvVideoView != null) {
            mgtvVideoView.setOnPreparedListener(new IVideoView.OnPreparedListener() {
                @Override
                public void onPrepared() {
                    SourceKitLogger.a("mgadlog", "onPrepared");
                    IncentiveVideoAd.this.resetVideoSize();
                    if (IncentiveVideoAd.this.mAdsLoaderInterface != null) {
                        IncentiveVideoAd.this.mAdsLoaderInterface.a(h.AD_PREPARED, "");
                    }
                }
            });
            this.mMgtvInnerVideoView.setOnPauseListener(new IVideoView.OnPauseListener() {
                @Override
                public void onPause() {
                    SourceKitLogger.a("mgadlog", "onPause");
                    if (IncentiveVideoAd.this.mAdsLoaderInterface != null) {
                        IncentiveVideoAd.this.mAdsLoaderInterface.a(h.AD_ONPAUSE, "");
                    }
                }
            });
            this.mMgtvInnerVideoView.setOnStartListener(new IVideoView.OnStartListener() {
                @Override
                public void onStart() {
                    SourceKitLogger.a("mgadlog", "onStart");
                    if (IncentiveVideoAd.this.mAdsLoaderInterface != null) {
                        IncentiveVideoAd.this.mAdsLoaderInterface.a(h.AD_ONRESUME, "");
                    }
                }
            });
            this.mMgtvInnerVideoView.setOnErrorListener(new IVideoView.OnErrorListener() {
                @Override
                public boolean onError(int i, int i2) {
                    SourceKitLogger.a("mgadlog", "onError" + i + "e = " + i2);
                    if (IncentiveVideoAd.this.mAdsLoaderInterface != null) {
                        IncentiveVideoAd.this.mAdsLoaderInterface.a(h.AD_PLAY_ERROR, "errmsg what=" + i + "extra=" + i2);
                    }
                    if (IncentiveVideoAd.this.mMediaListener == null) {
                        return false;
                    }
                    IncentiveVideoAd.this.mMediaListener.onAdError(new AdError(5003, "what + extra"));
                    return false;
                }
            });
            this.mMgtvInnerVideoView.setOnCompletionListener(new IVideoView.OnCompletionListener() {
                @Override
                public void onCompletion(int i, int i2) {
                    SourceKitLogger.a("mgadlog", "onCompletion" + i + "e = " + i2);
                    if (IncentiveVideoAd.this.mAdsLoaderInterface != null) {
                        IncentiveVideoAd.this.mAdsLoaderInterface.a(h.AD_PLAY_END, "");
                    }
                }
            });
            this.mMgtvInnerVideoView.setOnInfoListener(new IVideoView.OnInfoListener() {
                @Override
                public boolean onInfo(int i, int i2) {
                    SourceKitLogger.a("mgadlog", "onInfo = " + i + "e = " + i2);
                    if (i == 900) {
                        IncentiveVideoAd.this.mMgtvInnerVideoView.setVisibility(0);
                        IncentiveVideoAd.this.mMediaListener.onAdStart();
                        if (IncentiveVideoAd.this.mAdsLoaderInterface != null) {
                            IncentiveVideoAd.this.mAdsLoaderInterface.a(h.AD_PLAY_FIRST_FRAME, "");
                        }
                    }
                    return false;
                }
            });
        }
    }

    private void initPlayer(Context context) {
        MgtvVideoView mgtvVideoView = new MgtvVideoView(context);
        this.mMgtvInnerVideoView = mgtvVideoView;
        mgtvVideoView.setReportParams(new ReportParams().setVideoSession(ReportParams.createSessionID(context)).setVideoType(ReportParams.VideoType.AD_BOOT));
        this.mMgtvInnerVideoView.setBufferTimeout(1000);
        this.mMgtvInnerVideoView.setAspectRatio(1);
        this.mMgtvInnerVideoView.setVisibility(4);
        initAdInnerPlayerListener();
    }

    public void resetVideoSize() {
        if (this.mAdsRequestInterface.s()) {
            int videoWidth = this.mMgtvInnerVideoView.getVideoWidth();
            int videoHeight = this.mMgtvInnerVideoView.getVideoHeight();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            if (videoHeight <= 0 || videoWidth <= 0) {
                Point point = this.mScreenSize;
                layoutParams.width = point.x;
                layoutParams.height = point.y;
                return;
            }
            float f = videoHeight;
            float f2 = videoWidth;
            float f3 = f / f2;
            Point point2 = this.mScreenSize;
            int i = point2.y;
            int i2 = point2.x;
            float f4 = i / i2;
            layoutParams.gravity = 17;
            if (f3 > f4) {
                layoutParams.width = i2;
                layoutParams.height = (int) (i2 * f3);
            } else {
                layoutParams.height = i;
                layoutParams.width = (int) (i * (f2 / f));
            }
            this.mMgtvInnerVideoView.setLayoutParams(layoutParams);
        }
    }

    public void doAdMute() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.b_();
        }
    }

    public void doAdunMute() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.c_();
        }
    }

    public void doPause() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.c();
        }
    }

    public void doResume() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void finish() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a();
        }
        MgtvVideoView mgtvVideoView = this.mMgtvInnerVideoView;
        if (mgtvVideoView != null) {
            mgtvVideoView.release();
            this.mMgtvInnerVideoView = null;
        }
    }

    public boolean getCloseBtnVisible() {
        d dVar = this.mAdsRequestInterface;
        if (dVar != null) {
            dVar.r();
        }
        return this.setCloseBtnVisible;
    }

    public void loadAd(boolean z) {
        if (this.hasInit) {
            if (z) {
                this.mAdsRequestInterface.a(false);
            } else {
                this.mAdsRequestInterface.a(true);
            }
            this.mAdsLoaderInterface.b(this.mAdsRequestInterface);
        }
    }

    public void onScreenRotate(boolean z) {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.b_();
        }
    }

    public void setCloseBtnVisible(boolean z) {
        this.setCloseBtnVisible = z;
        d dVar = this.mAdsRequestInterface;
        if (dVar != null) {
            dVar.b(z);
        }
    }

    public void setOrientation(int i) {
        d dVar = this.mAdsRequestInterface;
        if (dVar != null) {
            dVar.d(i);
        }
    }

    public void setResizeVideo(boolean z) {
        d dVar = this.mAdsRequestInterface;
        if (dVar != null) {
            dVar.e(z);
        }
    }

    public void showAd(Activity activity) {
        if (this.hasInit) {
            this.activityWeakReference = new WeakReference<>(activity);
            this.container.setCurentActivity(activity);
            this.mAdsLoaderInterface.g();
        }
    }

    public IncentiveVideoAd(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull String str, String str2, @NonNull IncentiveVideoListener incentiveVideoListener, int i, boolean z, int i2) {
        init(activity, viewGroup, str, str2, incentiveVideoListener, i, z, i2);
    }
}
