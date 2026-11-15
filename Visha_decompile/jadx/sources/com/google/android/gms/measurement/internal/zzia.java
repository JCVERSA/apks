package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.c9j;
import defpackage.kwg;

final class zzia implements Runnable {
    final boolean zza;
    final Uri zzb;
    final String zzc;
    final String zzd;
    final f zze;

    public zzia(f fVar, boolean z, Uri uri, String str, String str2) {
        this.zze = fVar;
        this.zza = z;
        this.zzb = uri;
        this.zzc = str;
        this.zzd = str2;
    }

    @Override
    public final void run() {
        Bundle bundleQ0;
        Bundle bundleQ1;
        f fVar = this.zze;
        boolean z = this.zza;
        Uri uri = this.zzb;
        String str = this.zzc;
        String str2 = this.zzd;
        fVar.b.g();
        try {
            c9j c9jVarN = fVar.b.a.N();
            if (TextUtils.isEmpty(str2)) {
                bundleQ0 = null;
            } else if (str2.contains("gclid") || str2.contains("utm_campaign") || str2.contains("utm_source") || str2.contains("utm_medium") || str2.contains("utm_id") || str2.contains("dclid") || str2.contains("srsltid")) {
                bundleQ0 = c9jVarN.q0(Uri.parse("https://google.com/search?".concat(str2)));
                if (bundleQ0 != null) {
                    bundleQ0.putString("_cis", "referrer");
                }
            } else {
                c9jVarN.a.b().p().a("Activity created with data 'referrer' without required params");
                bundleQ0 = null;
            }
            if (z && (bundleQ1 = fVar.b.a.N().q0(uri)) != null) {
                bundleQ1.putString("_cis", "intent");
                if (!bundleQ1.containsKey("gclid") && bundleQ0 != null && bundleQ0.containsKey("gclid")) {
                    bundleQ1.putString("_cer", String.format("gclid=%s", bundleQ0.getString("gclid")));
                }
                fVar.b.t(str, "_cmp", bundleQ1);
                fVar.b.n.a(str, bundleQ1);
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            fVar.b.a.b().p().b("Activity created with referrer", str2);
            if (fVar.b.a.z().v(null, kwg.a0)) {
                if (bundleQ0 != null) {
                    fVar.b.t(str, "_cmp", bundleQ0);
                    fVar.b.n.a(str, bundleQ0);
                } else {
                    fVar.b.a.b().p().b("Referrer does not contain valid parameters", str2);
                }
                fVar.b.J(TtmlNode.TEXT_EMPHASIS_AUTO, "_ldl", null, true);
                return;
            }
            if (!str2.contains("gclid") || (!str2.contains("utm_campaign") && !str2.contains("utm_source") && !str2.contains("utm_medium") && !str2.contains("utm_term") && !str2.contains("utm_content"))) {
                fVar.b.a.b().p().a("Activity created with data 'referrer' without required params");
            } else {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                fVar.b.J(TtmlNode.TEXT_EMPHASIS_AUTO, "_ldl", str2, true);
            }
        } catch (RuntimeException e) {
            fVar.b.a.b().q().b("Throwable caught in handleReferrerForOnActivityCreated", e);
        }
    }
}
