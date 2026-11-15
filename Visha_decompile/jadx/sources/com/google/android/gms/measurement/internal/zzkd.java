package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;

final class zzkd implements Runnable {
    final long zza;
    final long zzb;
    final k zzc;

    public zzkd(k kVar, long j, long j2) {
        this.zzc = kVar;
        this.zza = j;
        this.zzb = j2;
    }

    @Override
    public final void run() {
        this.zzc.b.a.a().w(new Runnable() {
            @Override
            public final void run() {
                zzkd zzkdVar = this.zza;
                k kVar = zzkdVar.zzc;
                long j = zzkdVar.zza;
                long j2 = zzkdVar.zzb;
                kVar.b.g();
                kVar.b.a.b().p().a("Application going to the background");
                kVar.b.a.F().q.a(true);
                Bundle bundle = new Bundle();
                if (!kVar.b.a.z().w()) {
                    kVar.b.e.b(j2);
                    kVar.b.e.d(false, false, j2);
                }
                kVar.b.a.I().u(TtmlNode.TEXT_EMPHASIS_AUTO, "_ab", j, bundle);
            }
        });
    }
}
