package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.hisavana.common.constant.ComConstants;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.y45;
import java.util.List;

public final class mz0 {
    private static final String d = "com.yandex.mobile.ads.mediation";
    public static final int e = 0;
    private final String a;
    private final String b;
    private final List<b> c;

    public static final class b {
        private final String a;
        private final String b;

        public b(String str, String str2) {
            y45.j(str, "format");
            y45.j(str2, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "MediationAdapterSignature(format=" + this.a + ", className=" + this.b + ")";
        }
    }

    public mz0(String str, String str2, List<b> list) {
        y45.j(str, "name");
        y45.j(str2, TtmlNode.ATTR_ID);
        y45.j(list, "adapters");
        this.a = str;
        this.b = str2;
        this.c = list;
    }

    public final List<b> b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mz0)) {
            return false;
        }
        mz0 mz0Var = (mz0) obj;
        return y45.e(this.a, mz0Var.a) && y45.e(this.b, mz0Var.b) && y45.e(this.c, mz0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + v3.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "MediationNetwork(name=" + this.a + ", id=" + this.b + ", adapters=" + this.c + ")";
    }

    public static final class a {
        public static List a() {
            return defpackage.y71.n(new mz0("AppLovin", "applovin", defpackage.y71.n(new b("Banner", a("banner", "AppLovinBannerAdapter")), new b("Interstitial", a("interstitial", "AppLovinInterstitialAdapter")), new b("Rewarded", a("rewarded", "AppLovinRewardedAdapter")))), new mz0("AppLovinMax", "applovin_max", defpackage.y71.n(new b("Banner", a("banner", "AppLovinMaxBannerAdapter")), new b("Interstitial", a("interstitial", "AppLovinMaxInterstitialAdapter")), new b("Rewarded", a("rewarded", "AppLovinMaxRewardedAdapter")))), new mz0("Appnext", "appnext", defpackage.y71.n(new b("Banner", a("banner", "AppNextBannerAdapter")), new b("Interstitial", a("interstitial", "AppNextInterstitialAdapter")), new b("Native", a("nativeads", "AppNextNativeAdapter")), new b("Rewarded", a("rewarded", "AppNextRewardedAdapter")))), new mz0("BigoAds", "bigoads", defpackage.y71.n(new b("Banner", a("banner", "BigoAdsBannerAdapter")), new b("Interstitial", a("interstitial", "BigoAdsInterstitialAdapter")), new b("Native", a("nativeads", "BigoAdsNativeAdapter")), new b("Rewarded", a("rewarded", "BigoAdsRewardedAdapter")))), new mz0("Chartboost", "chartboost", defpackage.y71.n(new b("Banner", a("banner", "ChartboostBannerAdapter")), new b("Interstitial", a("interstitial", "ChartboostInterstitialAdapter")), new b("Rewarded", a("rewarded", "ChartboostRewardedAdapter")))), new mz0("AdMob", ComConstants.PLATFORM_ADMOB, defpackage.y71.n(new b("AppOpen", a("appopen", "AdMobAppOpenAdAdapter")), new b("Banner", a("banner", "AdMobBannerAdapter")), new b("Interstitial", a("interstitial", "AdMobInterstitialAdapter")), new b("Native", a("nativeads", "AdMobNativeAdapter")), new b("Rewarded", a("rewarded", "AdMobRewardedAdapter")))), new mz0("AdManager", "admanager", defpackage.y71.n(new b("Banner", a("banner", "AdManagerBannerAdapter")), new b("Interstitial", a("interstitial", "AdManagerInterstitialAdapter")), new b("Native", a("nativeads", "AdManagerNativeAdapter")), new b("Rewarded", a("rewarded", "AdManagerRewardedAdapter")))), new mz0("InMobi", "inmobi", defpackage.y71.n(new b("Banner", a("banner", "InMobiBannerAdapter")), new b("Interstitial", a("interstitial", "InMobiInterstitialAdapter")), new b("Rewarded", a("rewarded", "InMobiRewardedAdapter")))), new mz0("IronSource", "ironsource", defpackage.y71.n(new b("Banner", a("banner", "IronSourceBannerAdapter")), new b("Interstitial", a("interstitial", "IronSourceInterstitialAdapter")), new b("Rewarded", a("rewarded", "IronSourceRewardedAdapter")))), new mz0("Mintegral", "mintegral", defpackage.y71.n(new b("Banner", a("banner", "MintegralBannerAdapter")), new b("Interstitial", a("interstitial", "MintegralInterstitialAdapter")), new b("Native", a("nativeads", "MintegralNativeAdapter")), new b("Rewarded", a("rewarded", "MintegralRewardedAdapter")))), new mz0("MyTarget", "mytarget", defpackage.y71.n(new b("Banner", a("banner", "MyTargetBannerAdapter")), new b("Interstitial", a("interstitial", "MyTargetInterstitialAdapter")), new b("Native", a("nativeads", "MyTargetNativeAdapter")), new b("Rewarded", a("rewarded", "MyTargetRewardedAdapter")))), new mz0("Pangle", "pangle", defpackage.y71.n(new b("Interstitial", a("interstitial", "PangleInterstitialAdapter")), new b("Rewarded", a("rewarded", "PangleRewardedAdapter")))), new mz0("StartApp", "startapp", defpackage.y71.n(new b("Banner", a("banner", "StartAppBannerAdapter")), new b("Interstitial", a("interstitial", "StartAppInterstitialAdapter")), new b("Native", a("nativeads", "StartAppNativeAdapter")), new b("Rewarded", a("rewarded", "StartAppRewardedAdapter")))), new mz0("TapJoy", "tapjoy", defpackage.y71.n(new b("Interstitial", a("interstitial", "TapJoyInterstitialAdapter")), new b("Rewarded", a("rewarded", "TapJoyRewardedAdapter")))), new mz0("UnityAds", "unityads", defpackage.y71.n(new b("Banner", a("banner", "UnityAdsBannerAdapter")), new b("Interstitial", a("interstitial", "UnityAdsInterstitialAdapter")), new b("Rewarded", a("rewarded", "UnityAdsRewardedAdapter")))), new mz0("Vungle", "vungle", defpackage.y71.n(new b("Banner", a("banner", "VungleBannerAdapter")), new b("Interstitial", a("interstitial", "VungleInterstitialAdapter")), new b("Rewarded", a("rewarded", "VungleRewardedAdapter")))), new mz0("zMaticoo", "zmaticoo", defpackage.y71.n(new b("Banner", a("banner", "MaticooBannerAdapter")), new b("Interstitial", a("interstitial", "MaticooInterstitialAdapter")), new b("Rewarded", a("rewarded", "MaticooRewardedAdapter")))));
        }

        private static String a(String str, String str2) {
            return mz0.d + Consts.DOT + str + Consts.DOT + str2;
        }
    }
}
