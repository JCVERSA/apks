package com.hisavana.adxlibrary.holder;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.hisavana.adxlibrary.excuter.AdxNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.TAdNativeInfo;
import defpackage.tca;

public class NativeAdViewHolder extends BaseNativeViewHolder {
    public TNativeView a;

    @Override
    public void addContentView(View view) {
        TNativeView tNativeView = this.a;
        if (tNativeView != null) {
            tNativeView.addView(view);
        }
    }

    @Override
    public View createAdBadgeView(Context context, TAdNativeInfo tAdNativeInfo) {
        AdxNative adxNative;
        if (context == null || tAdNativeInfo == null || (adxNative = (AdxNative) tAdNativeInfo.getNativeAdWrapper().getAdImpl()) == null || adxNative.getNativeAd() == null) {
            return null;
        }
        AdBadgeView adBadgeView = new AdBadgeView(context);
        TNativeView tNativeView = this.a;
        if (tNativeView != null) {
            tNativeView.setAdBagdeView(adBadgeView);
        }
        return adBadgeView;
    }

    @Override
    public View createAdCloseView(Context context, TAdNativeInfo tAdNativeInfo) {
        AdxNative adxNative;
        if (context == null || (adxNative = (AdxNative) tAdNativeInfo.getNativeAdWrapper().getAdImpl()) == null) {
            return null;
        }
        tca nativeAd = adxNative.getNativeAd();
        AdCloseView adCloseViewT = nativeAd == null ? null : nativeAd.t(context);
        if (adCloseViewT == null) {
            return null;
        }
        TNativeView tNativeView = this.a;
        if (tNativeView != null) {
            tNativeView.setAdCloseView(adCloseViewT);
        }
        return adCloseViewT;
    }

    @Override
    public View createAdDisclaimerView(Context context, TAdNativeInfo tAdNativeInfo) {
        AdxNative adxNative;
        if (context == null || tAdNativeInfo == null || (adxNative = (AdxNative) tAdNativeInfo.getNativeAdWrapper().getAdImpl()) == null || adxNative.getNativeAd() == null) {
            return null;
        }
        AdDisclaimerView adDisclaimerView = new AdDisclaimerView(context);
        TNativeView tNativeView = this.a;
        if (tNativeView != null) {
            tNativeView.setAdDisclaimerView(adDisclaimerView);
        }
        return adDisclaimerView;
    }

    @Override
    public View createChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        AdxNative adxNative;
        if (context == null || (adxNative = (AdxNative) tAdNativeInfo.getNativeAdWrapper().getAdImpl()) == null) {
            return null;
        }
        tca nativeAd = adxNative.getNativeAd();
        AdChoicesView adChoicesViewS = nativeAd != null ? nativeAd.s(context, (TaNativeInfo) tAdNativeInfo.getNativeAdWrapper().getNativeAd()) : null;
        TNativeView tNativeView = this.a;
        if (tNativeView != null) {
            tNativeView.setAdChoiceView(adChoicesViewS);
        }
        return adChoicesViewS;
    }

    @Override
    public View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        MediaView mediaView = new MediaView(context);
        mediaView.init(tAdNativeInfo.getMime());
        return mediaView;
    }

    @Override
    public View createStoreMarkView(Context context, TAdNativeInfo tAdNativeInfo) {
        if (context == null) {
            return null;
        }
        StoreMarkView storeMarkView = new StoreMarkView(context);
        TNativeView tNativeView = this.a;
        if (tNativeView != null) {
            tNativeView.setPsMarkView(storeMarkView);
        }
        return storeMarkView;
    }

    @Override
    public void destroy() {
        super.destroy();
        TNativeView tNativeView = this.a;
        if (tNativeView != null) {
            tNativeView.destroy();
        }
    }

    @Override
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        TNativeView tNativeView = new TNativeView(viewGroup.getContext());
        this.a = tNativeView;
        return tNativeView;
    }

    @Override
    public void setIconView(View view) {
        TNativeView tNativeView = this.a;
        if (tNativeView == null || !(view instanceof ImageView)) {
            return;
        }
        tNativeView.setIconView((ImageView) view);
    }

    @Override
    public void setMediaView(View view, ImageView.ScaleType scaleType) {
        TNativeView tNativeView = this.a;
        if (tNativeView == null || !(view instanceof MediaView)) {
            return;
        }
        tNativeView.setMediaView((MediaView) view, scaleType);
    }

    @Override
    public void setNativeAd(TAdNativeInfo tAdNativeInfo) {
        AdImage iconImage;
        if (this.a == null || tAdNativeInfo == null) {
            return;
        }
        Object nativeAd = tAdNativeInfo.getNativeAdWrapper().getNativeAd();
        if (nativeAd instanceof TaNativeInfo) {
            Drawable iconDrawable = tAdNativeInfo.getIconDrawable();
            if (iconDrawable != null && (iconImage = ((TaNativeInfo) nativeAd).getIconImage()) != null) {
                iconImage.setDrawable(iconDrawable);
            }
            if (tAdNativeInfo instanceof AdNativeInfo) {
                TaNativeInfo taNativeInfo = (TaNativeInfo) nativeAd;
                AdNativeInfo adNativeInfo = (AdNativeInfo) tAdNativeInfo;
                taNativeInfo.setSdkTypeSetStoreMark(adNativeInfo.getSdkTypeSetStoreMark());
                taNativeInfo.setStoreMarkTextColor(adNativeInfo.getStoreMarkTextColor());
                taNativeInfo.setStoreMarkTextSize(adNativeInfo.getStoreMarkTextSize());
            }
            this.a.setupViews((TaNativeInfo) nativeAd);
        }
    }
}
