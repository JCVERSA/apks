package com.mgmi.ssp;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.mgmi.activity.IncentiveVideoActivity;
import java.lang.ref.WeakReference;

public class RewardVideoAd implements IncentiveVideoListener {
    public static final int HORIZONTAL = 2;
    public static final int VERTICAL = 1;
    private WeakReference<Activity> activityWeakReference;
    private IncentiveVideoListener listener;
    private IncentiveVideoAd mIncentiveVideoAd;
    private int orientation;
    private String appid = "";
    private String posID = "";
    private int timeout = 1000;
    private boolean nativeUi = false;
    private boolean mResizeVideo = false;
    private boolean mCloseBtnVisible = false;

    public RewardVideoAd(@NonNull Activity activity) {
        this.activityWeakReference = new WeakReference<>(activity);
    }

    public RewardVideoAd create() {
        IncentiveVideoActivity.a(this.activityWeakReference.get(), this.appid, this.posID, this, this.timeout, this.nativeUi, this.mCloseBtnVisible, this.mResizeVideo, this.orientation);
        return this;
    }

    public RewardVideoAd loadAd() {
        IncentiveVideoActivity.a();
        return this;
    }

    @Override
    public void onAdClick() {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onAdClick();
        }
    }

    @Override
    public void onAdClosed() {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onAdClosed();
        }
    }

    @Override
    public void onAdComplete() {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onAdComplete();
        }
    }

    @Override
    public void onAdError(@NonNull AdError adError) {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onAdError(adError);
        }
    }

    @Override
    public void onAdPrepared() {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onAdPrepared();
        }
    }

    @Override
    public void onAdStart() {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onAdStart();
        }
    }

    @Override
    public void onNoAd(@NonNull AdError adError) {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onNoAd(adError);
        }
    }

    @Override
    public void onUpdateAdTime(int i) {
        IncentiveVideoListener incentiveVideoListener = this.listener;
        if (incentiveVideoListener != null) {
            incentiveVideoListener.onUpdateAdTime(i);
        }
    }

    public RewardVideoAd setAppId(@NonNull String str) {
        this.appid = str;
        return this;
    }

    public RewardVideoAd setCloseBtnVisible(boolean z) {
        this.mCloseBtnVisible = z;
        return this;
    }

    public RewardVideoAd setIncentiveVideoListener(IncentiveVideoListener incentiveVideoListener) {
        this.listener = incentiveVideoListener;
        return this;
    }

    public RewardVideoAd setNativeUi(boolean z) {
        this.nativeUi = z;
        return this;
    }

    public RewardVideoAd setOrientation(int i) {
        this.orientation = i;
        return this;
    }

    public RewardVideoAd setPosid(@NonNull String str) {
        this.posID = str;
        return this;
    }

    public RewardVideoAd setResizeVideo(boolean z) {
        this.mResizeVideo = z;
        return this;
    }

    public RewardVideoAd setTimeout(int i) {
        this.timeout = i;
        return this;
    }

    public void showAd() {
        IncentiveVideoActivity.b();
    }
}
