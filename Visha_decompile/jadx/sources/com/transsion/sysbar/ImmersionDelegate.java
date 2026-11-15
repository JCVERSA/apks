package com.transsion.sysbar;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import defpackage.d80;
import defpackage.me7;

class ImmersionDelegate implements Runnable {
    private d80 mBarProperties;
    private ImmersionBar mImmersionBar;
    private int mNotchHeight;
    private me7 mOnBarListener;

    public ImmersionDelegate(Object obj) {
        if (obj instanceof Activity) {
            if (this.mImmersionBar == null) {
                this.mImmersionBar = new ImmersionBar((Activity) obj);
                return;
            }
            return;
        }
        if (obj instanceof Fragment) {
            if (this.mImmersionBar == null) {
                if (obj instanceof DialogFragment) {
                    this.mImmersionBar = new ImmersionBar((DialogFragment) obj);
                    return;
                } else {
                    this.mImmersionBar = new ImmersionBar((Fragment) obj);
                    return;
                }
            }
            return;
        }
        if ((obj instanceof android.app.Fragment) && this.mImmersionBar == null) {
            if (obj instanceof android.app.DialogFragment) {
                this.mImmersionBar = new ImmersionBar((android.app.DialogFragment) obj);
            } else {
                this.mImmersionBar = new ImmersionBar((android.app.Fragment) obj);
            }
        }
    }

    private void barChanged(Configuration configuration) {
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar == null || !immersionBar.initialized()) {
            return;
        }
        this.mImmersionBar.getBarParams().getClass();
    }

    public ImmersionBar get() {
        return this.mImmersionBar;
    }

    public void onActivityCreated(Configuration configuration) {
        barChanged(configuration);
    }

    public void onConfigurationChanged(Configuration configuration) {
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar != null) {
            immersionBar.onConfigurationChanged(configuration);
            barChanged(configuration);
        }
    }

    public void onDestroy() {
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar != null) {
            immersionBar.onDestroy();
            this.mImmersionBar = null;
        }
    }

    public void onResume() {
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar != null) {
            immersionBar.onResume();
        }
    }

    @Override
    public void run() {
        ImmersionBar immersionBar = this.mImmersionBar;
        if (immersionBar == null || immersionBar.getActivity() == null) {
            return;
        }
        Activity activity = this.mImmersionBar.getActivity();
        a aVar = new a(activity);
        this.mBarProperties.g(aVar.k());
        this.mBarProperties.b(aVar.m());
        this.mBarProperties.c(aVar.d());
        this.mBarProperties.d(aVar.g());
        this.mBarProperties.a(aVar.a());
        boolean zR = NotchUtils.r(activity);
        this.mBarProperties.f(zR);
        if (zR && this.mNotchHeight == 0) {
            int iG = NotchUtils.g(activity);
            this.mNotchHeight = iG;
            this.mBarProperties.e(iG);
        }
        throw null;
    }

    public ImmersionDelegate(Activity activity, Dialog dialog) {
        if (this.mImmersionBar == null) {
            this.mImmersionBar = new ImmersionBar(activity, dialog);
        }
    }
}
