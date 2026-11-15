package com.hisavana.pangle.executer;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeRequest;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.pangle.check.ExistsCheck;
import com.hisavana.pangle.util.PlatformUtil;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.List;

public class PangleNative extends BaseNative {

    private PAGNativeAdLoadListener f32533d;

    private PAGNativeAdInteractionListener f32534e;

    private PAGNativeAd f32535f;

    private AdNativeInfo f32536g;

    public PangleNative(Context context, Network network, int i10) {
        super(context, network, i10);
        this.f32533d = new PAGNativeAdLoadListener() {
            @Override
            public void onError(int i11, String str) {
                PangleNative.this.adFailedToLoad(new TAdErrorCode(i11, "Pangle Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads failed to load ad with error code：" + i11 + "，message: " + str);
            }

            @Override
            public void onAdLoaded(PAGNativeAd pAGNativeAd) {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "onAdLoad");
                PangleNative.this.f32535f = pAGNativeAd;
                if (PangleNative.this.f32535f == null || PangleNative.this.f32535f.getNativeAdData() == null) {
                    return;
                }
                TAdNativeInfo tAdNativeInfo = PlatformUtil.getTAdNativeInfo(pAGNativeAd, ((BaseNative) PangleNative.this).mAdt, PangleNative.this.getTtl(), PangleNative.this);
                int iFilter = PangleNative.this.filter(tAdNativeInfo);
                if (iFilter == 0) {
                    ((BaseNative) PangleNative.this).mNatives.add(tAdNativeInfo);
                } else {
                    AdUtil.release(tAdNativeInfo);
                }
                if (!((BaseNative) PangleNative.this).mNatives.isEmpty()) {
                    PangleNative pangleNative = PangleNative.this;
                    pangleNative.adLoaded(((BaseNative) pangleNative).mNatives);
                    return;
                }
                PangleNative.this.adFailedToLoad(new TAdErrorCode(iFilter, "ad filter"));
                AdLogUtil.Log().w(ExistsCheck.PANGLE_TAG, "ad not pass sensitive check or no icon or image filter:" + iFilter);
            }
        };
        this.f32534e = new PAGNativeAdInteractionListener() {
            @Override
            public void onAdClicked() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdClick");
                PangleNative pangleNative = PangleNative.this;
                pangleNative.adClicked(pangleNative.f32536g);
            }

            @Override
            public void onAdDismissed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdDismissed");
                PangleNative.this.adClosed();
            }

            @Override
            public void onAdShowed() {
                AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "Pangle Ads onAdShowed");
                PangleNative pangleNative = PangleNative.this;
                pangleNative.adImpression(pangleNative.f32536g);
            }
        };
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        this.f32535f = null;
        this.f32533d = null;
        this.f32534e = null;
        this.f32536g = null;
        AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected void initNative() {
        Network network = this.mNetwork;
        if (network == null) {
            adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with mNetwork == null"));
        } else {
            ExistsCheck.initAdSource(network.getApplicationId(), new PAGSdk.PAGInitCallback() {
                @Override
                public void fail(int i10, String str) {
                    PangleNative.this.adFailedToLoad(new TAdErrorCode(i10, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                    AdLogUtil.Log().d(ExistsCheck.PANGLE_TAG, "init onError code：" + i10 + "，message：" + str);
                }

                @Override
                public void success() {
                    if (((BaseAd) PangleNative.this).mNetwork != null && !TextUtils.isEmpty(((BaseAd) PangleNative.this).mNetwork.getCodeSeatId()) && PangleNative.this.f32533d != null) {
                        PAGNativeAd.loadAd(((BaseAd) PangleNative.this).mNetwork.getCodeSeatId(), new PAGNativeRequest(), PangleNative.this.f32533d);
                        return;
                    }
                    PangleNative.this.adFailedToLoad(new TAdErrorCode(30003, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() " + PAGSdk.isInitSuccess()));
                }
            });
        }
    }

    @Override
    protected void onNativeAdStartLoad() {
    }

    @Override
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        PAGNativeAd pAGNativeAd;
        this.f32536g = adNativeInfo;
        logTrigerShow(adNativeInfo);
        ArrayList arrayList = new ArrayList();
        arrayList.add(viewGroup);
        arrayList.addAll(list);
        ArrayList arrayList2 = new ArrayList();
        for (View view : list) {
            if (view instanceof Button) {
                arrayList2.add(view);
            }
        }
        ImageView imageView = new ImageView(e.a());
        PAGNativeAdInteractionListener pAGNativeAdInteractionListener = this.f32534e;
        if (pAGNativeAdInteractionListener == null || (pAGNativeAd = this.f32535f) == null) {
            return;
        }
        pAGNativeAd.registerViewForInteraction(viewGroup, arrayList, arrayList2, imageView, pAGNativeAdInteractionListener);
        setNativeCloseListener(viewGroup, adNativeInfo);
    }

    @Override
    public void unregisterView(@NonNull AdNativeInfo adNativeInfo) {
    }
}
