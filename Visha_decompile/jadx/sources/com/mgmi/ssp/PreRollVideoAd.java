package com.mgmi.ssp;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.doman.core.CoreMain;
import com.hunantv.media.widget.MgtvVideoView;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.a.b;
import com.mgmi.ads.api.a.d;
import com.mgmi.ads.api.a.n;
import com.mgmi.ads.api.h;
import com.mgmi.ads.api.i;
import com.mgmi.platform.e;
import java.lang.ref.WeakReference;

public class PreRollVideoAd {
    private static String TAG = "PreRollVideoAd";
    public static final int TO_FULL_SCREEN = 1;
    public static final int TO_HALF_SCREEN = 0;
    public static boolean isSuportFull = false;
    public static boolean isSupportClose = false;
    private a adPlayer;
    private boolean hasInit;
    private boolean isLocalPlay;
    private b mAdsLoaderInterface;
    private d mAdsRequestInterface;
    private MediaListener mMediaListener;
    private MgtvVideoView mMgtvVideoView;
    private WeakReference<ViewGroup> mViewParent;

    public PreRollVideoAd(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull String str, String str2, @NonNull MediaListener mediaListener, int i, boolean z, TParams tParams) {
        SourceKitLogger.a(TAG, "PreRollVideoAd");
        this.mViewParent = new WeakReference<>(viewGroup);
        if (!com.mgmi.platform.b.a().b()) {
            SourceKitLogger.a(TAG, "ssp error");
            if (mediaListener != null) {
                mediaListener.onNoAd(new AdError(AdError.ERROR_REASON_MID_BLACKLIST, "媒体黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(str2)) {
            SourceKitLogger.a(TAG, "ssp pid error");
            if (mediaListener != null) {
                mediaListener.onNoAd(new AdError(AdError.ERROR_REASON_PID_BLACKLIST, "广告位黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(activity, activity.getPackageName())) {
            SourceKitLogger.a(TAG, "package error");
            if (mediaListener != null) {
                mediaListener.onNoAd(new AdError(AdError.ERROR_REASON_PACKAGE_ERROR, "包名校验错误，当前APP包名与官网注册媒体是填写的包名不一致，无法使用SDK"));
                return;
            }
            return;
        }
        e.a(z);
        n nVar = new n(new i(mediaListener.getPositiveView()), viewGroup);
        this.mAdsRequestInterface = nVar;
        this.mMediaListener = mediaListener;
        nVar.c(i);
        com.mgmi.g.a aVar = new com.mgmi.g.a(str, str2);
        if (tParams != null) {
            com.mgmi.f.e.d(tParams.getISVip() == 1);
            aVar.c(tParams.getVid());
            aVar.d(tParams.getNid());
            aVar.f(tParams.getISVip());
            aVar.g(tParams.getIspay());
            aVar.o(tParams.getIspreview());
            aVar.d(tParams.getHid());
            aVar.e(tParams.getChid());
            aVar.b(tParams.getFrom());
            if (!TextUtils.isEmpty(tParams.getAdParams())) {
                aVar.e(tParams.getAdParams());
            }
            CoreMain.getInstance().setVid(tParams.getVid() + "");
            if (tParams.getChannellive() == 1) {
                aVar.h(tParams.getChannellive());
                aVar.m(tParams.getActivityId());
                aVar.l(tParams.getCamera_id());
                CoreMain.getInstance().setLiveid(tParams.getActivityId() + "");
            }
            aVar.n(tParams.getPosition());
        }
        boolean z2 = !"vod".equalsIgnoreCase(tParams.getFrom());
        isSupportClose = z2;
        this.mAdsRequestInterface.b(z2);
        boolean zEqualsIgnoreCase = "detail".equalsIgnoreCase(tParams.getFrom());
        isSuportFull = zEqualsIgnoreCase;
        this.mAdsRequestInterface.c(zEqualsIgnoreCase);
        this.mAdsRequestInterface.b(aVar);
        this.mAdsRequestInterface.b("ADS_OFFVIDEO_ONLINE");
        this.mAdsRequestInterface.a(new com.mgmi.ads.api.a() {
            @Override
            public int getContentCurrentPosition() {
                return PreRollVideoAd.this.mMediaListener.getCurrentTime();
            }

            @Override
            public Bitmap getSnapshot(int i2, int i3) {
                if (PreRollVideoAd.this.mMediaListener != null) {
                    return PreRollVideoAd.this.mMediaListener.getSnapshot(i2, i3);
                }
                return null;
            }

            @Override
            public int getVideoHeight() {
                if (PreRollVideoAd.this.mMediaListener != null) {
                    return PreRollVideoAd.this.mMediaListener.getVideoHeight();
                }
                try {
                    if (PreRollVideoAd.this.mViewParent == null || PreRollVideoAd.this.mViewParent.get() == null) {
                        return 0;
                    }
                    return ((ViewGroup) PreRollVideoAd.this.mViewParent.get()).getHeight();
                } catch (Throwable th) {
                    th.printStackTrace();
                    return 0;
                }
            }

            @Override
            public int getVideoWidth() {
                if (PreRollVideoAd.this.mMediaListener != null) {
                    return PreRollVideoAd.this.mMediaListener.getVideoWith();
                }
                try {
                    if (PreRollVideoAd.this.mViewParent == null || PreRollVideoAd.this.mViewParent.get() == null) {
                        return 0;
                    }
                    return ((ViewGroup) PreRollVideoAd.this.mViewParent.get()).getWidth();
                } catch (Throwable th) {
                    th.printStackTrace();
                    return 0;
                }
            }

            @Override
            public boolean isContentPlaying() {
                return PreRollVideoAd.this.mMediaListener.isContentPlaying();
            }

            @Override
            public boolean isFullScreen() {
                return PreRollVideoAd.this.mMediaListener.isFullScreen();
            }

            @Override
            public void onAdListener(com.mgmi.ads.api.a.EnumC0161a enumC0161a, @Nullable AdWidgetInfoImp adWidgetInfoImp) {
                if (com.mgmi.ads.api.a.EnumC0161a.START_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    com.mgmi.f.e.a().g(false);
                    PreRollVideoAd.this.setAdBackground(0);
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdComplete();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd START_POSITIVE_REQUESTED onAdComplete");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.START_PLAY_AD.equals(enumC0161a)) {
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd  @@@@START_PLAY_AD");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.PAUSE_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    com.mgmi.f.e.a().g(true);
                    PreRollVideoAd.this.setAdBackground(0);
                    PreRollVideoAd.this.mMediaListener.onAdPrepared();
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd PAUSE_POSITIVE_REQUESTED onAdPrepared");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FAIL.equals(enumC0161a)) {
                    PreRollVideoAd.this.setAdBackground(0);
                    PreRollVideoAd.this.mMediaListener.onNoAd(new AdError(adWidgetInfoImp.getErrorCode(), adWidgetInfoImp.getErrorMsg()));
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd AD_REQUEST_FAIL onNoAd");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.VIP_START_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    com.mgmi.f.e.a().g(false);
                    PreRollVideoAd.this.setAdBackground(0);
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdComplete();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd VIP_START_POSITIVE_REQUESTED onNoAd");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.RESUME_POSITIVE_REQUESTED.equals(enumC0161a)) {
                    com.mgmi.f.e.a().g(false);
                    PreRollVideoAd.this.setAdBackground(0);
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdComplete();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd RESUME_POSITIVE_REQUESTED onAdComplete");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.FULLSCREEN_REQUESTED.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onClickFullScreenButton();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd FULLSCREEN_REQUESTED onClickFullScreenButton");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.HALFSCREEN_REQUESTED.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onClickBackButton();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd FULLSCREEN_REQUESTED onClickFullScreenButton");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.BACK_BUTTON_REQUEST.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onClickBackButton();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd BACK_BUTTON_REQUEST onClickBackButton");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_SUCCESS.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdRequestSuccess();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd AD_REQUEST_SUCCESS  widgetInfo.getWidgetType() = " + adWidgetInfoImp.getWidgetType());
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.PLAYER_PROGRESS_UPDATE.equals(enumC0161a)) {
                    if (adWidgetInfoImp != null) {
                        PreRollVideoAd.this.mMediaListener.onUpdateAdTime(adWidgetInfoImp.getAdDurationRemain());
                        return;
                    }
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_BACK_PICTURE_IS_SHOW.equals(enumC0161a)) {
                    if (adWidgetInfoImp != null) {
                        PreRollVideoAd.this.mMediaListener.onAdStart();
                        return;
                    }
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_BACK_PICTURE_IS_FINISH.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mAdsLoaderInterface != null) {
                        PreRollVideoAd.this.setAdBackground(0);
                        PreRollVideoAd.this.mAdsLoaderInterface.a(h.AD_PLAY_END, "");
                        return;
                    }
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_FINISH.equals(enumC0161a)) {
                    com.mgmi.f.e.a().g(false);
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdComplete();
                        return;
                    }
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA.equals(enumC0161a) || com.mgmi.ads.api.a.EnumC0161a.JUMP_VIP.equals(enumC0161a) || com.mgmi.ads.api.a.EnumC0161a.JUMP_HARFSCREEN_SCHEMA.equals(enumC0161a) || com.mgmi.ads.api.a.EnumC0161a.LOAD_HARFSCREEN_SCHEMA.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mMediaListener != null && adWidgetInfoImp != null) {
                        PreRollVideoAd.this.mMediaListener.onAdClick(adWidgetInfoImp.getClickUrl());
                    }
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdClick();
                    }
                    SourceKitLogger.a(PreRollVideoAd.TAG, "PreRollVideoAd onAdClick");
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_COUNT_CLICK.equals(enumC0161a)) {
                    PreRollVideoAd.this.mMediaListener.onAdCountClicked();
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.AD_PAUSEAD_REPLAYER.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.resumePlay();
                    }
                } else if (com.mgmi.ads.api.a.EnumC0161a.AD_PLAYER_ON_FIRST_FRAME.equals(enumC0161a)) {
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdStart();
                    }
                } else if (com.mgmi.ads.api.a.EnumC0161a.AD_PREPARED.equals(enumC0161a)) {
                    com.mgmi.f.e.a().g(true);
                    if (PreRollVideoAd.this.mMediaListener != null) {
                        PreRollVideoAd.this.mMediaListener.onAdPrepared();
                    }
                }
            }

            @Override
            public void onUpdateStatus(boolean z3, boolean z4, boolean z5) {
                if (PreRollVideoAd.this.mMediaListener != null) {
                    PreRollVideoAd.this.mMediaListener.onUpdateStatus(z3, z4, z5);
                }
            }
        });
        this.mAdsRequestInterface.a(viewGroup);
        this.adPlayer = new a(this.mMgtvVideoView);
        this.mAdsRequestInterface.a((com.mgmi.platform.d) null);
        this.mAdsRequestInterface.b((com.mgmi.platform.d) null);
        this.mAdsLoaderInterface = com.mgmi.platform.b.b.a().a(activity, this.mAdsRequestInterface);
        this.hasInit = true;
        SourceKitLogger.a(TAG, "PreRollVideoAd onAdClick");
    }

    public void doAdMute() {
        if (this.mAdsLoaderInterface != null) {
            SourceKitLogger.a(TAG, "MgtvVideoView doAdMute");
            this.mAdsLoaderInterface.b_();
        }
    }

    public void doAdunMute() {
        if (this.mAdsLoaderInterface != null) {
            SourceKitLogger.a(TAG, "MgtvVideoView doAdunMute");
            this.mAdsLoaderInterface.c_();
        }
    }

    public void doPause() {
        if (this.mAdsLoaderInterface != null) {
            SourceKitLogger.a(TAG, "MgtvVideoView doPause");
            this.mAdsLoaderInterface.c();
            a aVar = this.adPlayer;
            if (aVar != null) {
                aVar.a(true);
            }
        }
    }

    public void doResume() {
        if (this.mAdsLoaderInterface != null) {
            SourceKitLogger.a(TAG, "MgtvVideoView doResume");
            this.mAdsLoaderInterface.b();
            a aVar = this.adPlayer;
            if (aVar != null) {
                aVar.a(false);
            }
        }
    }

    public void finish() {
        try {
            if (this.mAdsLoaderInterface != null) {
                SourceKitLogger.a(TAG, "PreRollVideoAd finish230");
                if (this.mMgtvVideoView != null) {
                    SourceKitLogger.a(TAG, "PreRollVideoAd @@@@@@@release232");
                    this.mMgtvVideoView.release();
                    this.mMgtvVideoView = null;
                } else {
                    SourceKitLogger.a(TAG, "PreRollVideoAd ##release237 mMgtvVideoView n= ");
                }
                this.mAdsLoaderInterface.a();
            }
        } catch (Exception e) {
            e.printStackTrace();
            SourceKitLogger.a(TAG, "PreRollVideoAd finish" + e.toString());
        }
    }

    public void loadAd(boolean z) {
        d dVar;
        SourceKitLogger.a(TAG, "PreRollVideoAd 1loadAd");
        if (!this.hasInit || !MGTVAdFactory.getInstance().isAdSdkInit() || (dVar = this.mAdsRequestInterface) == null || this.mAdsLoaderInterface == null) {
            return;
        }
        if (this.isLocalPlay) {
            dVar.b("ADS_OFFVIDEO_ONLINE");
        } else {
            dVar.b("ADS_ONLINE_VIDEO");
        }
        if (z) {
            this.mAdsRequestInterface.a(false);
        }
        this.mAdsLoaderInterface.b(this.mAdsRequestInterface);
    }

    public void noticeActivityStatus(boolean z) {
        SourceKitLogger.a(TAG, "noticeActivityStatus");
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            if (z) {
                bVar.a(h.RESUME, (String) null);
            } else {
                bVar.a(h.PAUSE, (String) null);
            }
        }
    }

    public void noticeFullScreen() {
        SourceKitLogger.a(TAG, "noticeFullScreen");
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(h.FULLSCREEN, (String) null);
        }
    }

    public void noticeHarlfScreen() {
        SourceKitLogger.a(TAG, "noticeHarlfScreen");
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(h.HARLFSCREEN, (String) null);
        }
    }

    public void noticePlayViewMode(int i) {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            if (i == 1) {
                bVar.a(h.FLOAT_MODE, (String) null);
            } else {
                bVar.a(h.NORMAL_MODE, (String) null);
            }
        }
    }

    public void onScreenOrientationChange(int i) {
        if (i == 0) {
            b bVar = this.mAdsLoaderInterface;
            if (bVar != null) {
                bVar.a(h.HARLFSCREEN, (String) null);
                return;
            }
            return;
        }
        b bVar2 = this.mAdsLoaderInterface;
        if (bVar2 != null) {
            bVar2.a(h.FULLSCREEN, (String) null);
        }
    }

    public void onScreenRotate() {
        if (this.mAdsLoaderInterface != null) {
            SourceKitLogger.a(TAG, "MgtvVideoView fullScreen");
            this.mAdsLoaderInterface.f();
        }
    }

    public void pauseByUser() {
        SourceKitLogger.a(TAG, "pauseByUser");
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(h.PAUSEPLAYER, (String) null);
        }
    }

    public void resumeByUser() {
        SourceKitLogger.a(TAG, "resumeByUser");
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(h.RESUMEPLAYER, (String) null);
        }
    }

    public void setAdBackground(int i) {
    }

    public void setIsDeatilBtnShow(boolean z) {
        d dVar = this.mAdsRequestInterface;
        if (dVar != null) {
            dVar.d(z);
        }
    }

    public void setLocalPlay(boolean z) {
        this.isLocalPlay = z;
    }

    public void videoContentComplete() {
        SourceKitLogger.a(TAG, "videoContentComplete");
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(h.CONTENT_ONEND, (String) null);
        }
    }

    public static final class a implements com.mgmi.platform.d {
        private boolean a;
        private MgtvVideoView b;

        public a(@NonNull MgtvVideoView mgtvVideoView) {
            this.b = mgtvVideoView;
            SourceKitLogger.a("广告异步", "AdPlayer：" + this.a);
        }

        public void a(boolean z) {
            this.a = z;
            SourceKitLogger.a("广告异步", "setStatus：" + z);
        }

        @Override
        public void b() {
            if (this.b != null) {
                SourceKitLogger.a(PreRollVideoAd.TAG, "MgtvVideoView 536pauseAd");
                this.b.pause();
            }
        }

        @Override
        public void c() {
            this.a = false;
            if (this.b != null) {
                SourceKitLogger.a(PreRollVideoAd.TAG, "MgtvVideoView resumeAd");
                this.b.start();
            }
        }

        @Override
        public View d() {
            SourceKitLogger.a(PreRollVideoAd.TAG, "MgtvVideoView getAdPlayerView");
            return this.b;
        }

        @Override
        public void a() {
            if (this.b != null) {
                SourceKitLogger.a(PreRollVideoAd.TAG, "MgtvVideoView 528@@@@@stopAd");
                this.b.stop();
            }
        }
    }
}
