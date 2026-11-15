package defpackage;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzm;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;

public final class o5h implements deh {
    public final enh a;
    public final long b;

    public o5h(enh enhVar, long j) {
        this.a = enhVar;
        this.b = j;
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = ((kyf) obj).b;
        enh enhVar = this.a;
        bundle.putString("slotname", enhVar.f);
        zzm zzmVar = enhVar.d;
        if (zzmVar.zzf) {
            bundle.putBoolean("test_request", true);
        }
        int i = zzmVar.zzg;
        unh.e(bundle, "tag_for_child_directed_treatment", i, i != -1);
        if (zzmVar.zza >= 8) {
            int i2 = zzmVar.zzt;
            unh.e(bundle, "tag_for_under_age_of_consent", i2, i2 != -1);
        }
        unh.c(bundle, "url", zzmVar.zzl);
        unh.d(bundle, "neighboring_content_urls", zzmVar.zzv);
        Bundle bundle2 = zzmVar.zzc;
        Bundle bundle3 = (Bundle) bundle2.clone();
        HashSet hashSet = new HashSet(Arrays.asList(((String) zzbd.zzc().b(cye.B7)).split(StringUtils.COMMA, -1)));
        for (String str : bundle2.keySet()) {
            if (!hashSet.contains(str)) {
                bundle3.remove(str);
            }
        }
        unh.b(bundle, "extras", bundle3);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        enh enhVar = this.a;
        zzm zzmVar = enhVar.d;
        bundle.putInt("http_timeout_millis", zzmVar.zzw);
        bundle.putString("slotname", enhVar.f);
        int i = enhVar.o.a;
        if (i == 0) {
            throw null;
        }
        int i2 = i - 1;
        if (i2 == 1) {
            bundle.putBoolean("is_new_rewarded", true);
        } else if (i2 == 2) {
            bundle.putBoolean("is_rewarded_interstitial", true);
        }
        bundle.putLong("start_signals_timestamp", this.b);
        unh.g(bundle, "is_sdk_preload", true, zzmVar.zzb());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
        long j = zzmVar.zzb;
        unh.f(bundle, "cust_age", simpleDateFormat.format(new Date(j)), j != -1);
        unh.b(bundle, "extras", zzmVar.zzc);
        int i3 = zzmVar.zzd;
        unh.e(bundle, "cust_gender", i3, i3 != -1);
        unh.d(bundle, "kw", zzmVar.zze);
        int i4 = zzmVar.zzg;
        unh.e(bundle, "tag_for_child_directed_treatment", i4, i4 != -1);
        if (zzmVar.zzf) {
            bundle.putBoolean("test_request", true);
        }
        bundle.putInt("ppt_p13n", zzmVar.zzy);
        int i5 = zzmVar.zza;
        unh.e(bundle, "d_imp_hdr", 1, i5 >= 2 && zzmVar.zzh);
        String str = zzmVar.zzi;
        unh.f(bundle, "ppid", str, i5 >= 2 && !TextUtils.isEmpty(str));
        Location location = zzmVar.zzk;
        if (location != null) {
            float accuracy = location.getAccuracy() * 1000.0f;
            long time = location.getTime() * 1000;
            double latitude = location.getLatitude() * 1.0E7d;
            double longitude = location.getLongitude() * 1.0E7d;
            Bundle bundle2 = new Bundle();
            bundle2.putFloat("radius", accuracy);
            bundle2.putLong("lat", (long) latitude);
            bundle2.putLong("long", (long) longitude);
            bundle2.putLong("time", time);
            bundle.putBundle("uule", bundle2);
        }
        unh.c(bundle, "url", zzmVar.zzl);
        unh.d(bundle, "neighboring_content_urls", zzmVar.zzv);
        unh.b(bundle, "custom_targeting", zzmVar.zzn);
        unh.d(bundle, "category_exclusions", zzmVar.zzo);
        unh.c(bundle, "request_agent", zzmVar.zzp);
        unh.c(bundle, "request_pkg", zzmVar.zzq);
        unh.g(bundle, "is_designed_for_families", zzmVar.zzr, i5 >= 7);
        if (i5 >= 8) {
            int i6 = zzmVar.zzt;
            unh.e(bundle, "tag_for_under_age_of_consent", i6, i6 != -1);
            unh.c(bundle, "max_ad_content_rating", zzmVar.zzu);
        }
    }
}
