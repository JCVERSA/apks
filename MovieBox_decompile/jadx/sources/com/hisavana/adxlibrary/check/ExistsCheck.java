package com.hisavana.adxlibrary.check;

import android.content.Context;
import c7.b;
import ce.a;
import com.hisavana.adxlibrary.excuter.AdxBanner;
import com.hisavana.adxlibrary.excuter.AdxInterstitia;
import com.hisavana.adxlibrary.excuter.AdxNative;
import com.hisavana.adxlibrary.excuter.AdxRewarded;
import com.hisavana.adxlibrary.excuter.AdxSplash;
import com.hisavana.adxlibrary.holder.NativeAdViewHolder;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IBaseAdSummary;

public class ExistsCheck implements IBaseAdSummary {
    public void check() {
    }

    @Override
    public BaseBanner getBanner(Context context, Network network, int i10, int i11) {
        return a.a(context, network, new AdxBanner(context, network, i10));
    }

    @Override
    public BaseInterstitial getInterstitial(Context context, Network network) {
        return a.b(context, network, new AdxInterstitia(context, network));
    }

    @Override
    public BaseNative getNative(Context context, Network network, int i10) {
        return a.c(context, network, i10, new AdxNative(context, network, i10));
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
        b.C0148b c0148b = new b.C0148b();
        c0148b.i(adSourceConfig.pkgEvn).o(adSourceConfig.testDevice).m(adSourceConfig.isEnableRewardedToast).k(adSourceConfig.isEnableWebRecommendFeature).h(adSourceConfig.appId).n(adSourceConfig.shouldOptimizeImageLoading);
        long j10 = adSourceConfig.defaultVersion;
        if (j10 > 0) {
            c0148b.l(j10);
        }
        int i10 = adSourceConfig.defaultMaterialMaxSize;
        if (i10 > 0) {
            c0148b.j(i10);
        }
        b.k(context, c0148b.c());
        b.q(AdMuteStatus.MUTE_ALL);
    }
}
