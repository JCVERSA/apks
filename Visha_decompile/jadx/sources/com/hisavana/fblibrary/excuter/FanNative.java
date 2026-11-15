package com.hisavana.fblibrary.excuter;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.NativeBannerAd;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.view.TIconView;
import com.hisavana.fblibrary.excuter.check.ExistsCheck;
import com.hisavana.fblibrary.excuter.util.PltatformUtil;
import defpackage.ul4;
import java.util.ArrayList;
import java.util.List;

public class FanNative extends BaseNative {
    public NativeAdBase a;
    public NativeAdListener b;
    public AdNativeInfo c;

    class AnonymousClass4 implements Runnable {
        final NativeAdsManager val$nativeAdsManager;

        public AnonymousClass4(NativeAdsManager nativeAdsManager) {
            this.val$nativeAdsManager = nativeAdsManager;
        }

        @Override
        public void run() {
            try {
                this.val$nativeAdsManager.loadAds();
            } catch (Exception e) {
                AdLogUtil.Log().e("FanNative", Log.getStackTraceString(e));
            }
        }
    }

    public class a implements NativeAdListener {
        public a() {
        }

        @Override
        public void onAdClicked(Ad ad) {
            AdLogUtil.Log().d("FanNative", "fan ad clicked");
            FanNative fanNative = FanNative.this;
            fanNative.adClicked(fanNative.c);
        }

        @Override
        public void onAdLoaded(Ad ad) {
            TAdNativeInfo tAdNativeInfo = PltatformUtil.getTAdNativeInfo(ad, ((BaseNative) FanNative.this).mAdt, FanNative.this.getTtl(), FanNative.this);
            int iFilter = FanNative.this.filter(tAdNativeInfo);
            if (iFilter == 0) {
                ((BaseNative) FanNative.this).mNatives.add(tAdNativeInfo);
            } else {
                AdUtil.release(tAdNativeInfo);
            }
            if (!((BaseNative) FanNative.this).mNatives.isEmpty()) {
                FanNative fanNative = FanNative.this;
                fanNative.adLoaded(((BaseNative) fanNative).mNatives);
                return;
            }
            FanNative.this.adFailedToLoad(new TAdErrorCode(iFilter, "ad filter"));
            AdLogUtil.Log().w("FanNative", "ad not pass sensitive check or no icon or image filter:" + iFilter);
        }

        @Override
        public void onError(Ad ad, AdError adError) {
            AdLogUtil.Log().w("FanNative", "fan native is error, error code is " + adError.getErrorCode() + ", error msg is " + adError.getErrorMessage());
            FanNative.this.adFailedToLoad(new TAdErrorCode(adError.getErrorCode(), adError.getErrorMessage()));
        }

        @Override
        public void onLoggingImpression(Ad ad) {
            AdLogUtil.Log().d("FanNative", "fan ad impression");
            FanNative fanNative = FanNative.this;
            fanNative.adImpression(fanNative.c);
        }

        @Override
        public void onMediaDownloaded(Ad ad) {
            AdLogUtil.Log().d("FanNative", "fan native ad media download");
        }
    }

    public FanNative(Context context, Network network, int i) {
        super(context, network, i);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        NativeAdBase nativeAdBase = this.a;
        if (nativeAdBase != null) {
            nativeAdBase.destroy();
            this.a = null;
        }
        this.c = null;
        AdLogUtil.Log().d("FanNative", "fan destroy" + getLogString());
    }

    @Override
    public void initNative() {
        if (this.mNetwork != null) {
            this.a = this.mAdt == 10 ? new NativeBannerAd(ul4.a().getApplicationContext(), this.mNetwork.getCodeSeatId()) : new NativeAd(ul4.a().getApplicationContext(), this.mNetwork.getCodeSeatId());
            this.b = new a();
        }
    }

    @Override
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        NativeAdBase nativeAdBase = this.a;
        if (nativeAdBase != null) {
            return nativeAdBase.isAdInvalidated();
        }
        return false;
    }

    @Override
    public boolean isSupportRtBidding() {
        return true;
    }

    @Override
    public boolean isSupportStopRequest() {
        return true;
    }

    @Override
    public void loadAd() {
        a();
    }

    @Override
    public void onNativeAdStartLoad() {
        if (this.a != null) {
            post(PltatformUtil.handler, new Runnable() {

                public class a implements AudienceNetworkAds.InitListener {
                    public final long a;

                    public a(long j) {
                        this.a = j;
                    }

                    @Override
                    public void onInitialized(AudienceNetworkAds.InitResult initResult) {
                        AdLogUtil.Log().d("FanNative", "onInitialized " + (System.currentTimeMillis() - this.a));
                        if (initResult == null || !initResult.isSuccess() || FanNative.this.a == null || ((BaseAd) FanNative.this).mNetwork == null) {
                            FanNative.this.adFailedToLoad(new TAdErrorCode(30001, initResult == null ? "" : initResult.getMessage()));
                            return;
                        }
                        if (TextUtils.isEmpty(((BaseAd) FanNative.this).mNetwork.getBidInfo() != null ? ((BaseAd) FanNative.this).mNetwork.getBidInfo().getPayload() : null)) {
                            FanNative.this.a.loadAd(FanNative.this.a.buildLoadAdConfig().withAdListener(FanNative.this.b).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).build());
                        } else {
                            FanNative.this.a.loadAd(FanNative.this.a.buildLoadAdConfig().withAdListener(FanNative.this.b).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).withBid(((BaseAd) FanNative.this).mNetwork.getBidInfo().getPayload()).build());
                            ((BaseAd) FanNative.this).mNetwork.setBidInfo(null);
                        }
                    }
                }

                @Override
                public void run() {
                    try {
                        ExistsCheck.initFan(ul4.a(), new a(System.currentTimeMillis()));
                    } catch (Exception e) {
                        AdLogUtil.Log().e("FanNative", "onNativeAdStartLoad " + Log.getStackTraceString(e));
                    }
                }
            });
        }
    }

    @Override
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        this.c = adNativeInfo;
        logTrigerShow(adNativeInfo);
        NativeAdBase nativeAdBase = (NativeAdBase) adNativeInfo.getNativeAdWrapper().getNativeAd();
        if (viewGroup == null || nativeAdBase == null || !nativeAdBase.isAdLoaded()) {
            onAdShowError(adNativeInfo, TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("FanNative", "registerViewForInteraction show error,adBase is null or expired");
            return;
        }
        unregisterView(adNativeInfo);
        ArrayList<View> arrayList = new ArrayList();
        PltatformUtil.findFbMediaViewAndIconView(viewGroup, arrayList);
        MediaView mediaView = null;
        MediaView mediaView2 = null;
        for (View view : arrayList) {
            if (view instanceof MediaView) {
                if (view.getParent() instanceof TIconView) {
                    mediaView2 = (MediaView) view;
                } else {
                    mediaView = (MediaView) view;
                }
            }
        }
        if (nativeAdBase instanceof NativeAd) {
            ((NativeAd) nativeAdBase).registerViewForInteraction(viewGroup, mediaView, mediaView2, list);
            setNativeCloseListener(viewGroup, adNativeInfo);
        } else if (nativeAdBase instanceof NativeBannerAd) {
            ((NativeBannerAd) nativeAdBase).registerViewForInteraction(viewGroup, mediaView2, list);
        }
    }

    @Override
    public void unregisterView(AdNativeInfo adNativeInfo) {
        NativeAdBase nativeAdBase = (NativeAdBase) adNativeInfo.getNativeAdWrapper().getNativeAd();
        if (nativeAdBase != null) {
            nativeAdBase.unregisterView();
        }
    }

    public final void a() {
        String codeSeatId;
        super.loadAd();
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb = new StringBuilder();
        sb.append("fan native load mPlacementId:");
        Network network = this.mNetwork;
        if (network != null) {
            codeSeatId = network.getCodeSeatId();
        } else {
            codeSeatId = "  num:" + this.mAdCount;
        }
        sb.append(codeSeatId);
        adLogUtilLog.d("FanNative", sb.toString());
    }
}
