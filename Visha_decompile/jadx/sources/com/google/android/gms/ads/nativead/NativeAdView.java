package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzez;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfx;
import defpackage.cye;

public final class NativeAdView extends FrameLayout {
    public final FrameLayout b;
    public final zzbfx c;

    public NativeAdView(@NonNull Context context) {
        super(context);
        this.b = b(context);
        this.c = c();
    }

    public static void zzb(@NonNull NativeAdView nativeAdView, @NonNull ImageView.ScaleType scaleType) {
        zzbfx zzbfxVar = nativeAdView.c;
        if (zzbfxVar == null || scaleType == null) {
            return;
        }
        try {
            zzbfxVar.zzdw(ObjectWrapper.wrap(scaleType));
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setMediaViewImageScaleType on delegate", e);
        }
    }

    public static void zzc(@NonNull NativeAdView nativeAdView, @NonNull MediaContent mediaContent) {
        zzbfx zzbfxVar = nativeAdView.c;
        if (zzbfxVar == null) {
            return;
        }
        try {
            if (mediaContent instanceof zzez) {
                zzbfxVar.zzdv(((zzez) mediaContent).zzc());
            } else if (mediaContent == null) {
                zzbfxVar.zzdv(null);
            } else {
                zzo.zze("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setMediaContent on delegate", e);
        }
    }

    public final View a(String str) {
        zzbfx zzbfxVar = this.c;
        if (zzbfxVar != null) {
            try {
                IObjectWrapper iObjectWrapperZzb = zzbfxVar.zzb(str);
                if (iObjectWrapperZzb != null) {
                    return (View) ObjectWrapper.unwrap(iObjectWrapperZzb);
                }
            } catch (RemoteException e) {
                zzo.zzh("Unable to call getAssetView on delegate", e);
            }
        }
        return null;
    }

    @Override
    public final void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.b);
    }

    public final FrameLayout b(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @Override
    public final void bringChildToFront(@NonNull View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.b;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final zzbfx c() {
        if (isInEditMode()) {
            return null;
        }
        FrameLayout frameLayout = this.b;
        return zzbb.zza().zzj(frameLayout.getContext(), this, frameLayout);
    }

    public final void d(String str, View view) {
        zzbfx zzbfxVar = this.c;
        if (zzbfxVar == null) {
            return;
        }
        try {
            zzbfxVar.zzdt(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setAssetView on delegate", e);
        }
    }

    public void destroy() {
        zzbfx zzbfxVar = this.c;
        if (zzbfxVar == null) {
            return;
        }
        try {
            zzbfxVar.zzc();
        } catch (RemoteException e) {
            zzo.zzh("Unable to destroy native ad view", e);
        }
    }

    @Override
    public final boolean dispatchTouchEvent(@NonNull MotionEvent motionEvent) {
        zzbfx zzbfxVar = this.c;
        if (zzbfxVar != null) {
            if (((Boolean) zzbd.zzc().b(cye.Fb)).booleanValue()) {
                try {
                    zzbfxVar.zzd(ObjectWrapper.wrap(motionEvent));
                } catch (RemoteException e) {
                    zzo.zzh("Unable to call handleTouchEvent on delegate", e);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public AdChoicesView getAdChoicesView() {
        View viewA = a("3011");
        if (viewA instanceof AdChoicesView) {
            return (AdChoicesView) viewA;
        }
        return null;
    }

    @Nullable
    public final View getAdvertiserView() {
        return a("3005");
    }

    @Nullable
    public final View getBodyView() {
        return a("3004");
    }

    @Nullable
    public final View getCallToActionView() {
        return a("3002");
    }

    @Nullable
    public final View getHeadlineView() {
        return a("3001");
    }

    @Nullable
    public final View getIconView() {
        return a("3003");
    }

    @Nullable
    public final View getImageView() {
        return a("3008");
    }

    @Nullable
    public final MediaView getMediaView() {
        View viewA = a("3010");
        if (viewA instanceof MediaView) {
            return (MediaView) viewA;
        }
        if (viewA == null) {
            return null;
        }
        zzo.zze("View is not an instance of MediaView");
        return null;
    }

    @Nullable
    public final View getPriceView() {
        return a("3007");
    }

    @Nullable
    public final View getStarRatingView() {
        return a("3009");
    }

    @Nullable
    public final View getStoreView() {
        return a("3006");
    }

    @Override
    public final void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        zzbfx zzbfxVar = this.c;
        if (zzbfxVar == null) {
            return;
        }
        try {
            zzbfxVar.zze(ObjectWrapper.wrap(view), i);
        } catch (RemoteException e) {
            zzo.zzh("Unable to call onVisibilityChanged on delegate", e);
        }
    }

    @Override
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.b);
    }

    @Override
    public final void removeView(@NonNull View view) {
        if (this.b == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(@Nullable AdChoicesView adChoicesView) {
        d("3011", adChoicesView);
    }

    public final void setAdvertiserView(@Nullable View view) {
        d("3005", view);
    }

    public final void setBodyView(@Nullable View view) {
        d("3004", view);
    }

    public final void setCallToActionView(@Nullable View view) {
        d("3002", view);
    }

    public final void setClickConfirmingView(@Nullable View view) {
        zzbfx zzbfxVar = this.c;
        if (zzbfxVar == null) {
            return;
        }
        try {
            zzbfxVar.zzdu(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(@Nullable View view) {
        d("3001", view);
    }

    public final void setIconView(@Nullable View view) {
        d("3003", view);
    }

    public final void setImageView(@Nullable View view) {
        d("3008", view);
    }

    public final void setMediaView(@Nullable MediaView mediaView) {
        d("3010", mediaView);
        if (mediaView == null) {
            return;
        }
        mediaView.a(new zzb(this));
        mediaView.b(new zzc(this));
    }

    public void setNativeAd(@NonNull NativeAd nativeAd) {
        zzbfx zzbfxVar = this.c;
        if (zzbfxVar == null) {
            return;
        }
        try {
            zzbfxVar.zzdx((IObjectWrapper) nativeAd.a());
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(@Nullable View view) {
        d("3007", view);
    }

    public final void setStarRatingView(@Nullable View view) {
        d("3009", view);
    }

    public final void setStoreView(@Nullable View view) {
        d("3006", view);
    }

    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = b(context);
        this.c = c();
    }

    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = b(context);
        this.c = c();
    }

    @TargetApi(21)
    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = b(context);
        this.c = c();
    }
}
