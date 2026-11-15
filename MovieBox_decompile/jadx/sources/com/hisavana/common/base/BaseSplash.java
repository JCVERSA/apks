package com.hisavana.common.base;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IadView;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.utils.AdLogUtil;

public abstract class BaseSplash<T extends View> extends BaseAd implements IadView {
    View logoLayout;
    protected Float mLogoLayoutHeightRatio;
    private int orientation;
    T splash;
    protected int splashMode;

    public BaseSplash(Context context, Network network) {
        super(context, network);
        this.splashMode = 1;
        this.orientation = 1;
    }

    public void addLogoLayout(View view) {
        this.logoLayout = view;
    }

    public boolean canShow() {
        return true;
    }

    protected boolean checkNeedAddLogo() {
        return false;
    }

    @Override
    public void destroyAd() {
        T t10 = this.splash;
        if (t10 != null && t10.getParent() != null && (this.splash.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.splash.getParent()).removeView(this.splash);
        }
        View view = this.logoLayout;
        if (view != null && view.getParent() != null && (this.logoLayout.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.logoLayout.getParent()).removeView(this.logoLayout);
        }
        this.logoLayout = null;
        this.splash = null;
        super.destroyAd();
    }

    @Override
    public int getAdType() {
        return 4;
    }

    protected float getLogoHeightDefaultRatio() {
        return 0.2f;
    }

    public View getLogoLayout() {
        return this.logoLayout;
    }

    public int getOrientation() {
        return this.orientation;
    }

    protected abstract T getSplash();

    @Override
    public boolean isOfflineAd() {
        return false;
    }

    @Override
    public void loadAd() {
        T t10 = (T) getSplash();
        this.splash = t10;
        if (t10 != null) {
            super.loadAd();
            onSplashStartLoad();
        }
    }

    protected void onSkipClick() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onSkipClick();
        }
    }

    protected abstract void onSplashShow();

    protected abstract void onSplashStartLoad();

    protected void onTimeReach() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onTimeReach();
        }
    }

    public void pauseAd() {
    }

    public void resumeAd() {
    }

    public void setLogoLayoutHeightRatio(Float f10) {
        this.mLogoLayoutHeightRatio = f10;
    }

    public void setOrientation(int i10) {
        this.orientation = i10;
    }

    public void setSplashMode(int i10) {
        this.splashMode = i10;
    }

    @Override
    public void show(WrapTadView wrapTadView, String str, String str2) {
        T t10 = this.splash;
        if (t10 == null || wrapTadView == null) {
            AdLogUtil.Log().w("BaseSplash", "Splash is null " + getLogString());
            onTimeReach();
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        wrapTadView.removeAllViews();
        if (t10.getParent() != null && (t10.getParent() instanceof ViewGroup)) {
            ((ViewGroup) t10.getParent()).removeView(t10);
        }
        wrapTadView.addView(t10, layoutParams);
        wrapTadView.setVisibility(0);
        if (checkNeedAddLogo()) {
            addLogoLayout(wrapTadView, t10, this.logoLayout);
        }
        onSplashShow();
        logTrigerShow(str, str2);
    }

    private void addLogoLayout(WrapTadView wrapTadView, T t10, View view) {
        int i10;
        if (view == null || t10 == null || wrapTadView == null) {
            return;
        }
        int iF = h.f();
        if (iF > 0) {
            Float f10 = this.mLogoLayoutHeightRatio;
            float fFloatValue = f10 != null ? f10.floatValue() : 0.2f;
            AdLogUtil.Log().i("BaseSplash", "mediation sdk addLogoLayout heightRatio = " + fFloatValue);
            i10 = (int) (((float) iF) * fFloatValue);
        } else {
            i10 = 0;
        }
        if (i10 == 0) {
            return;
        }
        AdLogUtil.Log().d("BaseSplash", "addLogoLayout logoHeight = " + i10 + " screenHeight = " + iF);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, i10);
        t10.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i10);
        layoutParams2.addRule(12);
        wrapTadView.addView(view, layoutParams2);
    }
}
