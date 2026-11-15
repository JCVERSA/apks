package com.hisavana.mintegral.holder;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.MediationImageLoader;
import com.hisavana.mintegral.executer.MintegralNative;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.widget.MBAdChoice;

public class NativeAdViewHolder extends BaseNativeViewHolder {

    private Campaign f32509b;

    private MBMediaView f32510c;

    private MintegralNative f32511d;

    @Override
    protected View createChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        MBAdChoice mBAdChoice = new MBAdChoice(context);
        Campaign campaign = this.f32509b;
        if (campaign != null) {
            mBAdChoice.setCampaign(campaign);
        }
        return mBAdChoice;
    }

    @Override
    protected View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        this.f32510c = new MBMediaView(context);
        if (this.f32511d.getOnMBMediaViewListenerPlus() != null) {
            this.f32510c.setOnMediaViewListener(this.f32511d.getOnMBMediaViewListenerPlus());
        }
        return this.f32510c;
    }

    @Override
    public void destroy() {
        super.destroy();
        MBMediaView mBMediaView = this.f32510c;
        if (mBMediaView != null) {
            mBMediaView.destory();
        }
    }

    @Override
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        if (tAdNativeInfo == null || tAdNativeInfo.getNativeAdWrapper() == null || tAdNativeInfo.getNativeAdWrapper().getAdImpl() == null || !(tAdNativeInfo.getNativeAdWrapper().getAdImpl() instanceof MintegralNative) || tAdNativeInfo.getNativeAdWrapper().getNativeAd() == null || !(tAdNativeInfo.getNativeAdWrapper().getNativeAd() instanceof Campaign)) {
            return null;
        }
        this.f32511d = (MintegralNative) tAdNativeInfo.getNativeAdWrapper().getAdImpl();
        this.f32509b = (Campaign) tAdNativeInfo.getNativeAdWrapper().getNativeAd();
        return null;
    }

    @Override
    public View getIconView(Context context) {
        Campaign campaign;
        if (context != null && (campaign = this.f32509b) != null && !TextUtils.isEmpty(campaign.getIconUrl())) {
            this.iconView = createIconView(context.getApplicationContext());
            MediationImageLoader.loadImage(this.f32509b.getIconUrl(), (ImageView) this.iconView);
        }
        return this.iconView;
    }

    @Override
    public void setNativeAd(TAdNativeInfo tAdNativeInfo) {
        Campaign campaign;
        MBMediaView mBMediaView = this.f32510c;
        if (mBMediaView == null || (campaign = this.f32509b) == null) {
            return;
        }
        mBMediaView.setNativeAd(campaign);
    }
}
