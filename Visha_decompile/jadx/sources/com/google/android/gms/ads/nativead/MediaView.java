package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgn;

public class MediaView extends FrameLayout {
    public MediaContent b;
    public boolean c;
    public ImageView.ScaleType d;
    public boolean e;
    public zzb f;
    public zzc g;

    public MediaView(@NonNull Context context) {
        super(context);
    }

    public final synchronized void a(zzb zzbVar) {
        this.f = zzbVar;
        if (this.c) {
            NativeAdView.zzc(zzbVar.zza, this.b);
        }
    }

    public final synchronized void b(zzc zzcVar) {
        this.g = zzcVar;
        if (this.e) {
            NativeAdView.zzb(zzcVar.zza, this.d);
        }
    }

    @Nullable
    public MediaContent getMediaContent() {
        return this.b;
    }

    public void setImageScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.e = true;
        this.d = scaleType;
        zzc zzcVar = this.g;
        if (zzcVar != null) {
            NativeAdView.zzb(zzcVar.zza, scaleType);
        }
    }

    public void setMediaContent(@Nullable MediaContent mediaContent) {
        boolean zZzr;
        this.c = true;
        this.b = mediaContent;
        zzb zzbVar = this.f;
        if (zzbVar != null) {
            NativeAdView.zzc(zzbVar.zza, mediaContent);
        }
        if (mediaContent == null) {
            return;
        }
        try {
            zzbgn zzbgnVarZza = mediaContent.zza();
            if (zzbgnVarZza != null) {
                if (!mediaContent.hasVideoContent()) {
                    if (mediaContent.zzb()) {
                        zZzr = zzbgnVarZza.zzr(ObjectWrapper.wrap(this));
                    }
                    removeAllViews();
                }
                zZzr = zzbgnVarZza.zzs(ObjectWrapper.wrap(this));
                if (zZzr) {
                    return;
                }
                removeAllViews();
            }
        } catch (RemoteException e) {
            removeAllViews();
            zzo.zzh("", e);
        }
    }

    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
