package com.hisavana.admoblibrary.holder;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.hisavana.common.R;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class NativeAdViewHolder extends BaseNativeViewHolder {
    public NativeAdView a;
    public final LinkedHashMap<String, NativeAdView> b = new LinkedHashMap<>();

    public final void a(String str, NativeAdView nativeAdView) {
        try {
            this.b.put(str, nativeAdView);
            if (this.b.size() > 5) {
                AdLogUtil.Log().w("NativeAdViewHolder", "admob container holders exceed the max threshold");
                Map.Entry<String, NativeAdView> next = this.b.entrySet().iterator().next();
                if (next != null) {
                    this.b.remove(next.getKey());
                }
            }
        } catch (Exception e) {
            AdLogUtil.Log().e("NativeAdViewHolder", Log.getStackTraceString(e));
        }
    }

    @Override
    public void addContentView(View view) {
        if (this.a == null || isCachedAdView()) {
            return;
        }
        AdLogUtil.Log().w("NativeAdViewHolder", "----> admob,addContentView container:" + this.a);
        this.a.removeAllViews();
        this.a.addView(view, 0);
    }

    @Override
    public View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        List<TAdNativeInfo.Image> imageList;
        return (AdSourceConfig.isUseMediaView || (imageList = tAdNativeInfo.getImageList()) == null || imageList.isEmpty() || (imageList.get(0).getDrawable() == null && TextUtils.isEmpty(imageList.get(0).getUrl()))) ? new MediaView(context) : new ImageView(context);
    }

    @Override
    public void destroy() {
        super.destroy();
        if (this.b.size() > 0) {
            Iterator<Map.Entry<String, NativeAdView>> it = this.b.entrySet().iterator();
            while (it != null && it.hasNext()) {
                Map.Entry<String, NativeAdView> next = it.next();
                if (next != null && next.getValue() != null) {
                    next.getValue().removeAllViews();
                    try {
                        next.getValue().destroy();
                    } catch (Throwable th) {
                        AdLogUtil.Log().e("NativeAdViewHolder", Log.getStackTraceString(th));
                    }
                }
            }
        }
        this.b.clear();
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            nativeAdView.removeAllViews();
            try {
                this.a.destroy();
            } catch (Throwable th2) {
                AdLogUtil.Log().e("NativeAdViewHolder", Log.getStackTraceString(th2));
            }
            this.a = null;
        }
    }

    @Override
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getContext() == null) {
            return null;
        }
        NativeAdView nativeAdView = this.b.get(tAdNativeInfo.getAdId());
        this.a = nativeAdView;
        if (nativeAdView == null) {
            this.a = (NativeAdView) LayoutInflater.from(viewGroup.getContext().getApplicationContext()).inflate(R.layout.google_native_app_unified_ad_view, viewGroup, false);
        } else {
            nativeAdView.setTag(com.cloud.sdk.commonutil.R.id.native_view_source, 1);
        }
        return this.a;
    }

    @Override
    public View getIconView(Context context) {
        View viewCreateIconView = createIconView(context.getApplicationContext());
        this.iconView = viewCreateIconView;
        return viewCreateIconView;
    }

    @Override
    public View getMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        View viewCreateMediaView = createMediaView(context.getApplicationContext(), tAdNativeInfo, viewGroup);
        this.mediaView = viewCreateMediaView;
        return viewCreateMediaView;
    }

    @Override
    public boolean isCachedAdView() {
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            int i = com.cloud.sdk.commonutil.R.id.native_view_source;
            if (nativeAdView.getTag(i) != null && ((Integer) this.a.getTag(i)).intValue() == 1) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void setBodyView(View view) {
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            nativeAdView.setBodyView(view);
        }
    }

    @Override
    public void setCallToActionOtherView(View view) {
        super.setCallToActionOtherView(view);
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            nativeAdView.setCallToActionView(view);
        }
    }

    @Override
    public void setCallToActionView(View view) {
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            nativeAdView.setCallToActionView(view);
        }
    }

    @Override
    public void setHeadlineView(View view) {
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            nativeAdView.setHeadlineView(view);
        }
    }

    @Override
    public void setIconView(View view) {
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            nativeAdView.setIconView(view);
        }
    }

    @Override
    public void setMediaView(View view, ImageView.ScaleType scaleType) {
        NativeAdView nativeAdView = this.a;
        if (nativeAdView != null) {
            if (view instanceof MediaView) {
                nativeAdView.setMediaView((MediaView) view);
            } else {
                nativeAdView.setImageView(view);
            }
        }
    }

    @Override
    public void setNativeAd(TAdNativeInfo tAdNativeInfo) {
        if (this.b.containsValue(this.a)) {
            AdLogUtil.Log().w("NativeAdViewHolder", "----> admob container has called setNativeAd() before.");
            return;
        }
        if (tAdNativeInfo == null) {
            return;
        }
        try {
            Object nativeAd = tAdNativeInfo.getNativeAdWrapper().getNativeAd();
            NativeAdView nativeAdView = this.a;
            if (nativeAdView == null || !(nativeAd instanceof NativeAd)) {
                return;
            }
            if (nativeAdView.getMediaView() != null) {
                this.a.getMediaView().setMediaContent(((NativeAd) nativeAd).getMediaContent());
            }
            this.a.setNativeAd((NativeAd) nativeAd);
            a(tAdNativeInfo.getAdId(), this.a);
            AdLogUtil.Log().w("NativeAdViewHolder", "----> call setNativeAd()");
        } catch (Exception e) {
            AdLogUtil.Log().e("NativeAdViewHolder", Log.getStackTraceString(e));
        }
    }
}
