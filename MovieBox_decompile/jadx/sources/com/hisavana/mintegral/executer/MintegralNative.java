package com.hisavana.mintegral.executer;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.hisavana.mintegral.util.PlatformUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.MBBidNativeHandler;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.out.OnMBMediaViewListenerPlus;
import com.transsion.push.PushConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class MintegralNative extends BaseNative {

    private MBBidNativeHandler f32492d;

    private NativeListener.NativeAdListener f32493e;

    private OnMBMediaViewListenerPlus f32494f;

    private AdNativeInfo f32495g;

    public MintegralNative(Context context, Network network, int i10) {
        super(context, network, i10);
        this.f32493e = new NativeListener.NativeAdListener() {
            @Override
            public void onAdClick(Campaign campaign) {
                MintegralNative mintegralNative = MintegralNative.this;
                mintegralNative.adClicked(mintegralNative.f32495g);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onAdClick");
            }

            @Override
            public void onAdFramesLoaded(List<Frame> list) {
            }

            @Override
            public void onAdLoadError(String str) {
                MintegralNative.this.adFailedToLoad(new TAdErrorCode(30003, str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral onLoadFailed message：" + str);
            }

            @Override
            public void onAdLoaded(List<Campaign> list, int i11) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdLoad");
                if (list == null || list.isEmpty()) {
                    return;
                }
                Iterator<Campaign> it = list.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    TAdNativeInfo tAdNativeInfo = PlatformUtil.getTAdNativeInfo(it.next(), ((BaseNative) MintegralNative.this).mAdt, MintegralNative.this.getTtl(), MintegralNative.this);
                    int iFilter = MintegralNative.this.filter(tAdNativeInfo);
                    if (iFilter == 0) {
                        ((BaseNative) MintegralNative.this).mNatives.add(tAdNativeInfo);
                    } else {
                        AdUtil.release(tAdNativeInfo);
                    }
                    i12 = iFilter;
                }
                if (!((BaseNative) MintegralNative.this).mNatives.isEmpty()) {
                    MintegralNative mintegralNative = MintegralNative.this;
                    mintegralNative.adLoaded(((BaseNative) mintegralNative).mNatives);
                    return;
                }
                MintegralNative.this.adFailedToLoad(new TAdErrorCode(i12, "ad filter"));
                AdLogUtil.Log().w(ExistsCheck.MINTEGRAL_TAG, "ad not pass sensitive check or no icon or image filter:" + i12);
            }

            @Override
            public void onLoggingImpression(int i11) {
                MintegralNative mintegralNative = MintegralNative.this;
                mintegralNative.adImpression(mintegralNative.f32495g);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLoggingImpression");
            }
        };
        this.f32494f = new OnMBMediaViewListenerPlus() {
            @Override
            public void onEnterFullscreen() {
            }

            @Override
            public void onExitFullscreen() {
            }

            @Override
            public void onFinishRedirection(Campaign campaign, String str) {
            }

            @Override
            public void onRedirectionFailed(Campaign campaign, String str) {
            }

            @Override
            public void onStartRedirection(Campaign campaign, String str) {
            }

            @Override
            public void onVideoAdClicked(Campaign campaign) {
                MintegralNative mintegralNative = MintegralNative.this;
                mintegralNative.adClicked(mintegralNative.f32495g);
            }

            @Override
            public void onVideoComplete() {
            }

            @Override
            public void onVideoStart() {
            }
        };
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        MBBidNativeHandler mBBidNativeHandler = this.f32492d;
        if (mBBidNativeHandler != null) {
            mBBidNativeHandler.bidRelease();
        }
        this.f32492d = null;
        this.f32493e = null;
        this.f32494f = null;
        this.f32495g = null;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    public OnMBMediaViewListenerPlus getOnMBMediaViewListenerPlus() {
        return this.f32494f;
    }

    @Override
    protected void initNative() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f32493e != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                Map<String, Object> nativeProperties = MBBidNativeHandler.getNativeProperties("", this.mNetwork.getCodeSeatId());
                nativeProperties.put("ad_num", Integer.valueOf(this.mAdCount));
                nativeProperties.put(MBridgeConstans.NATIVE_VIDEO_SUPPORT, Boolean.TRUE);
                MBBidNativeHandler mBBidNativeHandler = new MBBidNativeHandler(nativeProperties, e.a());
                this.f32492d = mBBidNativeHandler;
                mBBidNativeHandler.setAdListener(this.f32493e);
                this.f32492d.bidLoad(this.mNetwork.getBidInfo().getPayload());
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param empty"));
    }

    @Override
    protected void onNativeAdStartLoad() {
    }

    @Override
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        logTrigerShow(adNativeInfo);
        this.f32495g = adNativeInfo;
        if (this.f32492d == null || adNativeInfo == null || adNativeInfo.getNativeAdWrapper() == null || adNativeInfo.getNativeAdWrapper().getNativeAd() == null || !(adNativeInfo.getNativeAdWrapper().getNativeAd() instanceof Campaign)) {
            onAdShowError(adNativeInfo, TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "registerViewForInteraction error");
        } else {
            this.f32492d.registerView(viewGroup, list, (Campaign) adNativeInfo.getNativeAdWrapper().getNativeAd());
            setNativeCloseListener(viewGroup, adNativeInfo);
        }
    }

    @Override
    public void unregisterView(@NonNull AdNativeInfo adNativeInfo) {
    }
}
