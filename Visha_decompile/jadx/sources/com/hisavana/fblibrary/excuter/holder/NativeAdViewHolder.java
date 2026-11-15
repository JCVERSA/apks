package com.hisavana.fblibrary.excuter.holder;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.hisavana.common.R;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.TAdNativeInfo;

public class NativeAdViewHolder extends BaseNativeViewHolder {
    public MediaView a;
    public NativeAdLayout b;

    @Override
    public void addContentView(View view) {
        NativeAdLayout nativeAdLayout = this.b;
        if (nativeAdLayout != null) {
            nativeAdLayout.removeAllViews();
            this.b.addView(view);
        }
    }

    @Override
    public View createChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.addView(new AdOptionsView(context, (NativeAdBase) tAdNativeInfo.getNativeAdWrapper().getNativeAd(), this.b), 0);
        return linearLayout;
    }

    @Override
    public View createIconView(Context context) {
        return new MediaView(context);
    }

    @Override
    public View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        MediaView mediaView = new MediaView(context);
        this.a = mediaView;
        return mediaView;
    }

    @Override
    public void destroy() {
        super.destroy();
        MediaView mediaView = this.a;
        if (mediaView != null) {
            mediaView.destroy();
            this.a = null;
        }
        NativeAdLayout nativeAdLayout = this.b;
        if (nativeAdLayout != null) {
            nativeAdLayout.removeAllViews();
            this.b = null;
        }
    }

    @Override
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        NativeAdLayout nativeAdLayout = (NativeAdLayout) LayoutInflater.from(viewGroup.getContext().getApplicationContext()).inflate(R.layout.fb_native_ad_view, viewGroup, false);
        this.b = nativeAdLayout;
        return nativeAdLayout;
    }

    @Override
    public void setIconDrawable(Drawable drawable) {
    }
}
