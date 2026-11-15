package com.hisavana.adxlibrary.check;

import android.content.Context;
import com.hisavana.adxlibrary.excuter.AdxBanner;
import com.hisavana.adxlibrary.excuter.AdxInterstitia;
import com.hisavana.adxlibrary.excuter.AdxInterstitialRewarded;
import com.hisavana.adxlibrary.excuter.AdxNative;
import com.hisavana.adxlibrary.excuter.AdxRewarded;
import com.hisavana.adxlibrary.excuter.AdxSplash;
import com.hisavana.adxlibrary.holder.NativeAdViewHolder;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseInterstitialRewardedVideo;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IBaseAdSummary;
import defpackage.n9;
import defpackage.r6;

public class ExistsCheck implements IBaseAdSummary {
    public void check() {
    }

    @Override
    public BaseBanner getBanner(Context context, Network network, int i, int i2) {
        return n9.a(context, network, new AdxBanner(context, network, i));
    }

    @Override
    public BaseInterstitial getInterstitial(Context context, Network network) {
        return n9.b(context, network, new AdxInterstitia(context, network));
    }

    @Override
    public BaseInterstitialRewardedVideo getInterstitialRewarded(Context context, Network network) {
        return new AdxInterstitialRewarded(context, network);
    }

    @Override
    public BaseNative getNative(Context context, Network network, int i) {
        return n9.c(context, network, i, new AdxNative(context, network, i));
    }

    @Override
    public BaseNativeViewHolder getNativeViewHolder() {
        return new NativeAdViewHolder();
    }

    @Override
    public BaseQueryPrice getQueryPrice() {
        return null;
    }

    @Override
    public BaseSplash getSplash(Context context, Network network) {
        return new AdxSplash(context, network);
    }

    @Override
    public BaseVideo getVideo(Context context, Network network) {
        return new AdxRewarded(context, network);
    }

    @Override
    public void init(Context context, AdSourceConfig adSourceConfig) {
        r6.b bVar = new r6.b();
        bVar.i(adSourceConfig.pkgEvn).p(adSourceConfig.testDevice).n(adSourceConfig.isEnableRewardedToast).l(adSourceConfig.isEnableWebRecommendFeature).k(adSourceConfig.isEnableVideoAd).h(adSourceConfig.appId).o(adSourceConfig.shouldOptimizeImageLoading);
        long j = adSourceConfig.defaultVersion;
        if (j > 0) {
            bVar.m(j);
        }
        int i = adSourceConfig.defaultMaterialMaxSize;
        if (i > 0) {
            bVar.j(i);
        }
        r6.o(context, bVar.c());
        r6.u(AdMuteStatus.MUTE_ALL);
    }
}
