package defpackage;

import android.util.Pair;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import org.apache.commons.lang3.BooleanUtils;

public final class kpe implements v7i {
    public final zzau a;

    public kpe(zzau zzauVar) {
        this.a = zzauVar;
    }

    @Override
    public final void zza(Throwable th) {
        zzv.zzp().x(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        zzau zzauVar = this.a;
        zzaa.zzd(zzauVar.zzp, null, "sgf", new Pair("sgf_reason", th.getMessage()), new Pair("se", "query_g"), new Pair("ad_format", AdFormat.BANNER.name()), new Pair("rtype", Integer.toString(6)), new Pair("scar", BooleanUtils.TRUE), new Pair("sgi_rn", Integer.toString(zzauVar.zzH.get())));
        int i = zze.zza;
        zzo.zzh("Failed to initialize webview for loading SDKCore. ", th);
        if (!((Boolean) zzbd.zzc().b(cye.O9)).booleanValue() || zzauVar.zzG.get()) {
            return;
        }
        if (zzauVar.zzH.getAndIncrement() < ((Integer) zzbd.zzc().b(cye.P9)).intValue()) {
            zzauVar.zzT();
        }
    }

    @Override
    public final void zzb(Object obj) {
        int i = zze.zza;
        zzo.zze("Initialized webview successfully for SDKCore.");
        if (((Boolean) zzbd.zzc().b(cye.O9)).booleanValue()) {
            zzau zzauVar = this.a;
            zzaa.zzd(zzauVar.zzp, null, "sgs", new Pair("se", "query_g"), new Pair("ad_format", AdFormat.BANNER.name()), new Pair("rtype", Integer.toString(6)), new Pair("scar", BooleanUtils.TRUE), new Pair("sgi_rn", Integer.toString(zzauVar.zzH.get())));
            zzauVar.zzG.set(true);
        }
    }
}
