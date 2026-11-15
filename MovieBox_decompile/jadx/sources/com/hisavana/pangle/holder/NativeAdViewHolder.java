package com.hisavana.pangle.holder;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.MediationImageLoader;

public class NativeAdViewHolder extends BaseNativeViewHolder {

    private PAGNativeAdData f32554b;

    @Override
    protected View createChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        PAGNativeAdData pAGNativeAdData = this.f32554b;
        if (pAGNativeAdData != null) {
            return pAGNativeAdData.getAdLogoView();
        }
        return null;
    }

    @Override
    protected View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        PAGNativeAdData pAGNativeAdData = this.f32554b;
        if (pAGNativeAdData != null) {
            return pAGNativeAdData.getMediaView();
        }
        return null;
    }

    @Override
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        if (tAdNativeInfo == null || tAdNativeInfo.getNativeAdWrapper() == null || tAdNativeInfo.getNativeAdWrapper().getNativeAd() == null || !(tAdNativeInfo.getNativeAdWrapper().getNativeAd() instanceof PAGNativeAd)) {
            return null;
        }
        this.f32554b = ((PAGNativeAd) tAdNativeInfo.getNativeAdWrapper().getNativeAd()).getNativeAdData();
        return null;
    }

    @Override
    public View getIconView(Context context) {
        PAGNativeAdData pAGNativeAdData;
        if (context != null && (pAGNativeAdData = this.f32554b) != null && pAGNativeAdData.getIcon() != null && !TextUtils.isEmpty(this.f32554b.getIcon().getImageUrl())) {
            this.iconView = createIconView(context.getApplicationContext());
            MediationImageLoader.loadImage(this.f32554b.getIcon().getImageUrl(), (ImageView) this.iconView);
        }
        return this.iconView;
    }
}
