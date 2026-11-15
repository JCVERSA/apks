package defpackage;

import android.view.View;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.zze;
import com.google.android.gms.ads.formats.zzj;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.Map;

public final class w5e extends UnifiedNativeAdMapper {
    public w5e(UnifiedNativeAd unifiedNativeAd) {
        setHeadline(unifiedNativeAd.zzh());
        setImages(unifiedNativeAd.zzk());
        setBody(unifiedNativeAd.zzf());
        setIcon(unifiedNativeAd.zzb());
        setCallToAction(unifiedNativeAd.zzg());
        setAdvertiser(unifiedNativeAd.zze());
        setStarRating(unifiedNativeAd.zzc());
        setStore(unifiedNativeAd.zzj());
        setPrice(unifiedNativeAd.zzi());
        zzd(unifiedNativeAd.zzd());
        setOverrideImpressionRecording(true);
        setOverrideClickHandling(true);
        zze(unifiedNativeAd.zza());
    }

    @Override
    public final void trackViews(View view, Map map, Map map2) {
        if ((view instanceof zzj) || ((zze) zze.zza.get(view)) != null) {
            throw null;
        }
    }
}
