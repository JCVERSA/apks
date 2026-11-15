package defpackage;

import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzx;

public final class z6h implements deh {
    public final zzx a;
    public final boolean b;

    public z6h(zzx zzxVar, boolean z) {
        this.a = zzxVar;
        this.b = z;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        if (((Boolean) zzbd.zzc().b(cye.w5)).booleanValue()) {
            bundle.putBoolean("app_switched", this.b);
        }
        zzx zzxVar = this.a;
        if (zzxVar != null) {
            int i = zzxVar.zza;
            if (i == 1) {
                bundle.putString("avo", TtmlNode.TAG_P);
            } else if (i == 2) {
                bundle.putString("avo", CmcdData.STREAM_TYPE_LIVE);
            }
        }
    }
}
