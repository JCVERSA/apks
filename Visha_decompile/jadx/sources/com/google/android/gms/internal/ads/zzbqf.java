package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class zzbqf extends zzbpm {
    private final UnifiedNativeAdMapper zza;

    public zzbqf(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.zza = unifiedNativeAdMapper;
    }

    @Override
    public final boolean zzA() {
        return this.zza.getOverrideClickHandling();
    }

    @Override
    public final boolean zzB() {
        return this.zza.getOverrideImpressionRecording();
    }

    @Override
    public final double zze() {
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.zza;
        if (unifiedNativeAdMapper.getStarRating() != null) {
            return unifiedNativeAdMapper.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override
    public final float zzf() {
        return this.zza.getMediaContentAspectRatio();
    }

    @Override
    public final float zzg() {
        return this.zza.getCurrentTime();
    }

    @Override
    public final float zzh() {
        return this.zza.getDuration();
    }

    @Override
    public final Bundle zzi() {
        return this.zza.getExtras();
    }

    @Override
    @Nullable
    public final zzea zzj() {
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.zza;
        if (unifiedNativeAdMapper.zzb() != null) {
            return unifiedNativeAdMapper.zzb().zza();
        }
        return null;
    }

    @Override
    @Nullable
    public final zzbfm zzk() {
        return null;
    }

    @Override
    @Nullable
    public final zzbft zzl() {
        NativeAd.Image icon = this.zza.getIcon();
        if (icon != null) {
            return new zzbfg(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.zzb(), icon.zza());
        }
        return null;
    }

    @Override
    @Nullable
    public final IObjectWrapper zzm() {
        View adChoicesContent = this.zza.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override
    @Nullable
    public final IObjectWrapper zzn() {
        View viewZza = this.zza.zza();
        if (viewZza == null) {
            return null;
        }
        return ObjectWrapper.wrap(viewZza);
    }

    @Override
    @Nullable
    public final IObjectWrapper zzo() {
        Object objZzc = this.zza.zzc();
        if (objZzc == null) {
            return null;
        }
        return ObjectWrapper.wrap(objZzc);
    }

    @Override
    public final String zzp() {
        return this.zza.getAdvertiser();
    }

    @Override
    public final String zzq() {
        return this.zza.getBody();
    }

    @Override
    public final String zzr() {
        return this.zza.getCallToAction();
    }

    @Override
    public final String zzs() {
        return this.zza.getHeadline();
    }

    @Override
    public final String zzt() {
        return this.zza.getPrice();
    }

    @Override
    public final String zzu() {
        return this.zza.getStore();
    }

    @Override
    public final List zzv() {
        List<NativeAd.Image> images = this.zza.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzbfg(image.getDrawable(), image.getUri(), image.getScale(), image.zzb(), image.zza()));
            }
        }
        return arrayList;
    }

    @Override
    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.zza.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override
    public final void zzx() {
        this.zza.recordImpression();
    }

    @Override
    public final void zzy(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        HashMap map = (HashMap) ObjectWrapper.unwrap(iObjectWrapper2);
        HashMap map2 = (HashMap) ObjectWrapper.unwrap(iObjectWrapper3);
        this.zza.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), map, map2);
    }

    @Override
    public final void zzz(IObjectWrapper iObjectWrapper) {
        this.zza.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
