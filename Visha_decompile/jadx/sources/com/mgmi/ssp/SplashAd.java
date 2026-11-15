package com.mgmi.ssp;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgmi.ads.api.a;
import com.mgmi.ads.api.a.b;
import com.mgmi.ads.api.a.c;
import com.mgmi.ads.api.a.d;
import com.mgmi.ads.api.e.f;
import com.mgmi.f.e;
import com.mgmi.net.bean.CustomBootAdBean;
import com.mgmi.net.bean.ExSplashAdBean;
import defpackage.g4d;
import defpackage.qyd;
import defpackage.wrd;
import java.net.URLDecoder;

public class SplashAd extends a {
    public static boolean isBid = false;
    private String appID;
    private boolean isopenInerBrowser = true;
    private Activity mActivity;
    private b mBootAdsloader;
    private SplashADListener mSplashADListener;
    private String posID;
    private d requestInterface;

    public SplashAd(Activity activity, ViewGroup viewGroup, View view, View view2, @NonNull String str, @NonNull String str2, SplashADListener splashADListener, int i, int i2) {
        if (!com.mgmi.platform.b.a().b()) {
            if (splashADListener != null) {
                splashADListener.onNoAd(new AdError(AdError.ERROR_REASON_MID_BLACKLIST, "媒体黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(str2)) {
            if (splashADListener != null) {
                splashADListener.onNoAd(new AdError(AdError.ERROR_REASON_PID_BLACKLIST, "广告位黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(activity, activity.getPackageName())) {
            if (splashADListener != null) {
                splashADListener.onNoAd(new AdError(AdError.ERROR_REASON_PACKAGE_ERROR, "包名校验错误，当前APP包名与官网注册媒体是填写的包名不一致，无法使用SDK"));
                return;
            }
            return;
        }
        this.mActivity = activity;
        this.appID = str;
        this.posID = str2;
        updateResource(activity, str2);
        isBid = true;
        com.mgmi.g.a aVar = new com.mgmi.g.a(str, str2);
        aVar.j(i2);
        d dVarB = new c().b("ADS_BOOT").b(aVar);
        this.requestInterface = dVarB;
        dVarB.a(viewGroup);
        this.requestInterface.c(i);
        this.requestInterface.a(this);
        this.requestInterface.f(isBid);
        if (view != null) {
            this.requestInterface.a(view);
            this.requestInterface.a(splashADListener.setSkipViewLayoutParams());
        }
        if (view2 != null) {
            this.requestInterface.b(view2);
        }
        this.mSplashADListener = splashADListener;
        b bVarA = com.mgmi.platform.b.b.a().a(activity, this.requestInterface);
        this.mBootAdsloader = bVarA;
        if (bVarA != null) {
            bVarA.b(this.requestInterface);
        }
    }

    private void finish() {
        b bVar = this.mBootAdsloader;
        if (bVar != null) {
            bVar.a();
        }
    }

    private String getJumpUrl(CustomBootAdBean customBootAdBean) {
        int iA = qyd.a(customBootAdBean.jumpkind, -1);
        String str = "imgotv://";
        if (iA == 1) {
            str = "imgotv://player?clipId=" + customBootAdBean.jumpid + "&plId=0&videoId=0&barrage=1";
        } else if (iA == 2) {
            str = "imgotv://player?clipId=0&plId=" + customBootAdBean.jumpid + "&videoId=0&barrage=1";
        } else if (iA == 5) {
            str = "imgotv://vault?fstlvlId=" + customBootAdBean.jumpid;
        } else if (iA != 7) {
            if (iA != 16) {
                switch (iA) {
                    case 11:
                        str = "imgotv://player?clipId=0&plId=0&videoId=" + customBootAdBean.jumpid + "&barrage=1";
                        break;
                    case 12:
                        str = "imgotv://player?clipId=" + customBootAdBean.jumpid + "&plId=0&videoId=" + customBootAdBean.childId + "&barrage=1";
                        break;
                    case 13:
                        str = "imgotv://player?clipId=0&plId=" + customBootAdBean.jumpid + "&videoId=" + customBootAdBean.childId + "&barrage=1";
                        break;
                }
            } else {
                str = "imgotv://subjectpage?subjectId=" + customBootAdBean.jumpid;
            }
        } else if (TextUtils.isEmpty(customBootAdBean.childId)) {
            str = "imgotv://subjectpage?subjectId=" + customBootAdBean.childId;
        } else {
            str = "imgotv://channel?vclassId=" + customBootAdBean.jumpid;
        }
        if (!TextUtils.isEmpty(com.mgmi.platform.b.a().c())) {
            str = str + "&from=lm_" + com.mgmi.platform.b.a().c() + "_" + this.appID + "_" + this.posID;
        }
        if (TextUtils.isEmpty(customBootAdBean.getMid())) {
            return str;
        }
        return str + "&dc=m_" + customBootAdBean.getMid();
    }

    public void biddingFail(BidInfo bidInfo) {
        b bVar = this.mBootAdsloader;
        if (bVar != null) {
            bVar.a(false, copyInfo(bidInfo));
        }
    }

    public com.mgmi.e.a copyInfo(BidInfo bidInfo) {
        if (bidInfo == null) {
            return new com.mgmi.e.a();
        }
        return new com.mgmi.e.a().setResult(bidInfo.getResult()).setBidType(bidInfo.getBidType()).setBidWinner(bidInfo.getBidWinner()).setWinECPM("" + bidInfo.getWinECPM()).setSecondECPM("" + bidInfo.getSecondECPM());
    }

    public void loadAd() {
    }

    @Override
    public void onAdListener(a.EnumC0161a enumC0161a, @Nullable CustomBootAdBean customBootAdBean) {
        SplashADListener splashADListener;
        SplashADListener splashADListener2;
        if (a.EnumC0161a.AD_REQUEST_FAIL.equals(enumC0161a)) {
            Log.v("mgadlog", "AD_REQUEST_FAIL111");
            SplashADListener splashADListener3 = this.mSplashADListener;
            if (splashADListener3 != null) {
                splashADListener3.onNoAd(new AdError(customBootAdBean.getErrorCode(), customBootAdBean.getErrorMsg()));
                return;
            }
            return;
        }
        if (a.EnumC0161a.AD_REQUEST_SUCCESS.equals(enumC0161a)) {
            Log.v("mgadlog", "AD_REQUEST_SC");
            if (this.mSplashADListener == null || customBootAdBean == null) {
                return;
            }
            if (TextUtils.isEmpty(customBootAdBean.eCpm)) {
                this.mSplashADListener.onADLoad(-1);
                return;
            } else {
                this.mSplashADListener.onADLoad(g4d.j(wrd.c(URLDecoder.decode(customBootAdBean.eCpm))));
                return;
            }
        }
        if (a.EnumC0161a.JUMP_SCHEMA.equals(enumC0161a)) {
            SplashADListener splashADListener4 = this.mSplashADListener;
            if (splashADListener4 != null) {
                splashADListener4.onADClicked();
            }
            ExSplashAdBean exSplashAdBean = new ExSplashAdBean();
            exSplashAdBean.build(customBootAdBean);
            splashAdOuterOpen(exSplashAdBean);
            finish();
            if (customBootAdBean == null || !customBootAdBean.isApkDown || (splashADListener2 = this.mSplashADListener) == null) {
                return;
            }
            splashADListener2.onADDismissed();
            return;
        }
        if (a.EnumC0161a.CLOSE_AD.equals(enumC0161a) || a.EnumC0161a.AD_FINISH.equals(enumC0161a)) {
            SplashADListener splashADListener5 = this.mSplashADListener;
            if (splashADListener5 != null) {
                splashADListener5.onADDismissed();
                return;
            }
            return;
        }
        if (a.EnumC0161a.AD_RENDER_FAIL.equals(enumC0161a)) {
            return;
        }
        if (a.EnumC0161a.AD_RENDER_SUCCESS.equals(enumC0161a)) {
            SplashADListener splashADListener6 = this.mSplashADListener;
            if (splashADListener6 != null) {
                splashADListener6.onADPresent();
                this.mSplashADListener.onADExposure();
                return;
            }
            return;
        }
        if (!a.EnumC0161a.AD_COUNTDOWN_NOTIFY.equals(enumC0161a) || (splashADListener = this.mSplashADListener) == null || customBootAdBean == null) {
            return;
        }
        splashADListener.onADTick(customBootAdBean.getAdDurationRemain());
    }

    public void pause() {
        b bVar = this.mBootAdsloader;
        if (bVar != null) {
            bVar.c();
        }
    }

    public void resume() {
        b bVar = this.mBootAdsloader;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void setIsopenInerBrowser(boolean z) {
        this.isopenInerBrowser = z;
    }

    public void showAd(BidInfo bidInfo) {
        b bVar = this.mBootAdsloader;
        if (bVar != null) {
            bVar.a(true, copyInfo(bidInfo));
            this.mBootAdsloader.g();
        }
    }

    public void splashAdOuterOpen(ExSplashAdBean exSplashAdBean) {
        e.i();
    }

    public void updateResource(final Activity activity, final String str) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    f.a().a(activity.getApplicationContext(), Integer.valueOf(str).intValue());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
    }

    @Deprecated
    public void loadAd(int i) {
    }

    public SplashAd(Activity activity, ViewGroup viewGroup, View view, View view2, @NonNull String str, @NonNull String str2, SplashADListener splashADListener, int i) {
        if (!com.mgmi.platform.b.a().b()) {
            if (splashADListener != null) {
                splashADListener.onNoAd(new AdError(AdError.ERROR_REASON_MID_BLACKLIST, "媒体黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(str2)) {
            if (splashADListener != null) {
                splashADListener.onNoAd(new AdError(AdError.ERROR_REASON_PID_BLACKLIST, "广告位黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(activity, activity.getPackageName())) {
            if (splashADListener != null) {
                splashADListener.onNoAd(new AdError(AdError.ERROR_REASON_PACKAGE_ERROR, "包名校验错误，当前APP包名与官网注册媒体是填写的包名不一致，无法使用SDK"));
                return;
            }
            return;
        }
        this.mActivity = activity;
        this.appID = str;
        this.posID = str2;
        updateResource(activity, str2);
        isBid = false;
        d dVarB = new c().b("ADS_BOOT").b(new com.mgmi.g.a(str, str2));
        this.requestInterface = dVarB;
        dVarB.a(viewGroup);
        this.requestInterface.c(i);
        this.requestInterface.a(this);
        this.requestInterface.f(false);
        if (view != null) {
            this.requestInterface.a(view);
            this.requestInterface.a(splashADListener.setSkipViewLayoutParams());
        }
        if (view2 != null) {
            this.requestInterface.b(view2);
        }
        this.mSplashADListener = splashADListener;
        b bVarA = com.mgmi.platform.b.b.a().a(activity, this.requestInterface);
        this.mBootAdsloader = bVarA;
        if (bVarA != null) {
            bVarA.b(this.requestInterface);
        }
    }
}
