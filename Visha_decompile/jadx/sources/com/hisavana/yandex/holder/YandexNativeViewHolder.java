package com.hisavana.yandex.holder;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.view.TIconView;
import com.hisavana.yandex.R;
import com.hisavana.yandex.executer.YandexNative;
import com.yandex.mobile.ads.nativeads.MediaView;
import com.yandex.mobile.ads.nativeads.NativeAd;
import com.yandex.mobile.ads.nativeads.NativeAdType;
import com.yandex.mobile.ads.nativeads.NativeAdView;
import com.yandex.mobile.ads.nativeads.NativeAdViewBinder;

public class YandexNativeViewHolder extends BaseNativeViewHolder {
    public final String c = "YandexNativeViewHolder";
    public NativeAdView d;
    public View e;
    public View f;
    public View g;
    public View h;
    public View i;
    public View j;

    @Override
    public void addContentView(View view) {
        super.addContentView(view);
        NativeAdView nativeAdView = this.d;
        if (nativeAdView != null) {
            nativeAdView.removeAllViews();
            this.d.addView(view);
        }
    }

    @Override
    public View createAdDisclaimerView(Context context, TAdNativeInfo tAdNativeInfo) {
        return new TextView(context);
    }

    @Override
    public View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        return new MediaView(context);
    }

    @Override
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        NativeAdView nativeAdView = (NativeAdView) LayoutInflater.from(viewGroup.getContext().getApplicationContext()).inflate(R.layout.m_yandex_native_ad_view, viewGroup, false);
        this.d = nativeAdView;
        return nativeAdView;
    }

    @Override
    public void setCallToActionView(View view) {
        this.g = view;
    }

    @Override
    public void setDomain(View view) {
        this.e = view;
    }

    @Override
    public void setFeedback(View view) {
        this.j = view;
    }

    @Override
    public void setHeadlineView(View view) {
        this.f = view;
    }

    @Override
    public void setNativeAd(TAdNativeInfo tAdNativeInfo) {
        super.setNativeAd(tAdNativeInfo);
        try {
            NativeAd nativeAd = (NativeAd) tAdNativeInfo.getNativeAdWrapper().getNativeAd();
            if (nativeAd == null) {
                return;
            }
            NativeAdViewBinder.Builder builder = new NativeAdViewBinder.Builder(this.d);
            View view = this.mediaView;
            if (view instanceof MediaView) {
                builder.setMediaView((MediaView) view);
            }
            View view2 = this.f;
            if (view2 instanceof TextView) {
                builder.setTitleView((TextView) view2);
            }
            View view3 = this.j;
            if (view3 instanceof ImageView) {
                builder.setFeedbackView((ImageView) view3);
            }
            View view4 = this.i;
            if (view4 instanceof TextView) {
                builder.setSponsoredView((TextView) view4);
            }
            View view5 = this.e;
            if (view5 instanceof TextView) {
                builder.setDomainView((TextView) view5);
            }
            View view6 = this.iconView;
            if (view6 instanceof ImageView) {
                builder.setIconView((ImageView) view6);
            }
            View view7 = this.g;
            if (view7 instanceof TextView) {
                builder.setCallToActionView((TextView) view7);
            }
            View view8 = this.h;
            if (view8 instanceof TextView) {
                builder.setPriceView((TextView) view8);
            }
            View view9 = this.adDisclaimerView;
            if (view9 instanceof TextView) {
                builder.setWarningView((TextView) view9);
            }
            ((YandexNative) tAdNativeInfo.getNativeAdWrapper().getAdImpl()).registerImpression((AdNativeInfo) tAdNativeInfo);
            if (nativeAd.getAdAssets() == null || nativeAd.getAdAssets().getIcon() == null || (nativeAd.getAdAssets().getIcon().getBitmap() == null && nativeAd.getAdType() != NativeAdType.APP_INSTALL && (this.iconView.getParent() instanceof TIconView))) {
                ((TIconView) this.iconView.getParent()).setVisibility(8);
            }
            nativeAd.bindNativeAd(builder.build());
        } catch (Exception e) {
            AdLogUtil.Log().w("YandexNativeViewHolder", e.getMessage());
        }
    }

    @Override
    public void setPrice(View view) {
        this.h = view;
    }

    @Override
    public void setSponsored(View view) {
        this.i = view;
    }
}
