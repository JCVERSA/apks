package com.hisavana.common.base;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.IadView;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;

public abstract class BaseBanner<T extends View> extends BaseAd implements IadView {
    private final String TAG;
    protected boolean isCloseDirectly;
    protected boolean isHideAdCloseView;
    protected int mBannerAdMaxHeight;
    protected int mBannerAdWidth;

    public BaseBanner(Context context, Network network) {
        super(context, network);
        this.TAG = "BaseBanner";
    }

    @Override
    public void adFailedToLoad(TAdErrorCode tAdErrorCode) {
        if (!this.isLoaded) {
            super.adFailedToLoad(tAdErrorCode);
            return;
        }
        Bundle bundle = new Bundle();
        int i = TAdErrorCode.CODE_AD_REQUEST_FAILED;
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : 30003;
        if (errorCode != 0) {
            i = errorCode;
        }
        bundle.putInt("error_code", i);
        bundle.putString(TrackingKey.ERROR_MESSAGE, tAdErrorCode == null ? "null" : TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        Bundle bundle2 = this.mBundle;
        if (bundle2 != null && bundle2.containsKey(TrackingKey.SCENE_ID)) {
            this.mBundle.remove(TrackingKey.SCENE_ID);
        }
        adReturnTracking(bundle);
        AdLogUtil.Log().e("BaseBanner", "banner have been Loaded, but refresh banner failed " + getLogString());
    }

    @Override
    public void adLoaded() {
        if (!this.isLoaded) {
            super.adLoaded();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        Bundle bundle2 = this.mBundle;
        if (bundle2 != null && bundle2.containsKey(TrackingKey.SCENE_ID)) {
            this.mBundle.remove(TrackingKey.SCENE_ID);
        }
        adReturnTracking(bundle);
        AdLogUtil.Log().e("BaseBanner", "banner have been Loaded, but refresh banner success " + getLogString());
    }

    public boolean canShow() {
        return true;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        this.isLoaded = false;
        View banner = getBanner();
        if (banner != null) {
            ViewParent parent = banner.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(banner);
            }
            onBannerDestroy();
        }
    }

    public boolean destroyFoldAd() {
        return false;
    }

    @Override
    public int getAdType() {
        return 2;
    }

    public abstract T getBanner();

    @Override
    public boolean isOfflineAd() {
        return false;
    }

    @Override
    public void loadAd() {
        if (getBanner() != null) {
            super.loadAd();
            onBannerLoad();
        }
    }

    public abstract void onBannerDestroy();

    public abstract void onBannerLoad();

    public void pauseAd() {
    }

    public void resumeAd() {
    }

    public void setBannerAdMaxHeight(int i) {
        this.mBannerAdMaxHeight = i;
    }

    public void setBannerAdWidth(int i) {
        this.mBannerAdWidth = i;
    }

    public void setCloseDirectlyWithoutJumping(boolean z) {
        this.isCloseDirectly = z;
    }

    public void setHideAdCloseView(boolean z) {
        this.isHideAdCloseView = z;
    }

    @Override
    public void show(WrapTadView wrapTadView, String str, String str2) {
        View banner = getBanner();
        if (banner != null && wrapTadView != null) {
            logTrigerShow(str, str2);
            wrapTadView.onAddView(banner);
            showBanner();
        } else {
            AdLogUtil.Log().w("BaseBanner", "banner is null " + getLogString());
        }
    }

    public abstract void showBanner();
}
