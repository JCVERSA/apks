package com.hisavana.common.base;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IadView;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.hm4;

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

    public boolean checkNeedAddLogo() {
        return false;
    }

    @Override
    public void destroyAd() {
        T t = this.splash;
        if (t != null && t.getParent() != null && (this.splash.getParent() instanceof ViewGroup)) {
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

    public float getLogoHeightDefaultRatio() {
        return 0.2f;
    }

    public View getLogoLayout() {
        return this.logoLayout;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public abstract T getSplash();

    @Override
    public boolean isOfflineAd() {
        return false;
    }

    @Override
    public void loadAd() {
        T t = (T) getSplash();
        this.splash = t;
        if (t != null) {
            super.loadAd();
            onSplashStartLoad();
        }
    }

    public void onSkipClick() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onSkipClick();
        }
    }

    public abstract void onSplashShow();

    public abstract void onSplashStartLoad();

    public void onTimeReach() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onTimeReach();
        }
    }

    public void pauseAd() {
    }

    public void resumeAd() {
    }

    public void setLogoLayoutHeightRatio(Float f) {
        this.mLogoLayoutHeightRatio = f;
    }

    public void setOrientation(int i) {
        this.orientation = i;
    }

    public void setSplashMode(int i) {
        this.splashMode = i;
    }

    @Override
    public void show(WrapTadView wrapTadView, String str, String str2) {
        T t = this.splash;
        if (t == null || wrapTadView == null) {
            AdLogUtil.Log().w("BaseSplash", "Splash is null " + getLogString());
            onTimeReach();
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        wrapTadView.removeAllViews();
        if (t.getParent() != null && (t.getParent() instanceof ViewGroup)) {
            ((ViewGroup) t.getParent()).removeView(t);
        }
        wrapTadView.addView(t, layoutParams);
        wrapTadView.setVisibility(0);
        if (checkNeedAddLogo()) {
            addLogoLayout(wrapTadView, t, this.logoLayout);
        }
        onSplashShow();
        logTrigerShow(str, str2);
    }

    private void addLogoLayout(WrapTadView wrapTadView, T t, View view) {
        int i;
        if (view == null || t == null || wrapTadView == null) {
            return;
        }
        int iG = hm4.g();
        if (iG > 0) {
            Float f = this.mLogoLayoutHeightRatio;
            float fFloatValue = f != null ? f.floatValue() : 0.2f;
            AdLogUtil.Log().i("BaseSplash", "mediation sdk addLogoLayout heightRatio = " + fFloatValue);
            i = (int) (((float) iG) * fFloatValue);
        } else {
            i = 0;
        }
        if (i == 0) {
            return;
        }
        AdLogUtil.Log().d("BaseSplash", "addLogoLayout logoHeight = " + i + " screenHeight = " + iG);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, i);
        t.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i);
        layoutParams2.addRule(12);
        wrapTadView.addView(view, layoutParams2);
    }
}
