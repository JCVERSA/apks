package com.hisavana.common.base;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IadInterstitial;
import com.hisavana.common.utils.AdLogUtil;

public abstract class BaseInterstitial extends BaseAd implements IadInterstitial {
    private static final String TAG = "BaseInterstitial";

    protected BaseInterstitial(Context context, Network network) {
        super(context, network);
    }

    @Override
    public void adLoaded() {
        super.adLoaded();
        AdLogUtil.Log().d(TAG, "adLoaded");
    }

    public boolean canShow() {
        return true;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d(TAG, "destroyAd");
    }

    @Override
    public int getAdType() {
        return 3;
    }

    protected abstract void initInterstitial();

    @Override
    public boolean isOfflineAd() {
        return false;
    }

    @Override
    public void loadAd() {
        super.loadAd();
        initInterstitial();
        onInterstitialStartLoad();
    }

    protected abstract void onInterstitialShow(Activity activity);

    protected abstract void onInterstitialStartLoad();

    @Override
    public void onResume() {
    }

    @Override
    public void show(Activity activity, String str, String str2) {
        try {
            if (isLoaded()) {
                logTrigerShow(str, str2);
                onInterstitialShow(activity);
            } else {
                AdLogUtil.Log().d(TAG, "interstitial  is not ready" + getLogString());
            }
        } catch (Exception e10) {
            AdLogUtil.Log().e(TAG, "interstitial show exception:" + Log.getStackTraceString(e10));
        }
    }
}
