package defpackage;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import com.google.android.gms.internal.ads.zzbtn;
import java.util.List;

public final class poe implements v7i {
    public final zzbtn a;
    public final boolean b;
    public final zzau c;

    public poe(zzau zzauVar, zzbtn zzbtnVar, boolean z) {
        this.a = zzbtnVar;
        this.b = z;
        this.c = zzauVar;
    }

    @Override
    public final void zza(Throwable th) {
        try {
            this.a.zze("Internal error: " + th.getMessage());
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzh("", e);
        }
    }

    @Override
    public final void zzb(Object obj) {
        List<Uri> list = (List) obj;
        try {
            zzau zzauVar = this.c;
            zzau.zzJ(zzauVar, list);
            this.a.zzf(list);
            if (!zzauVar.zzs && !this.b) {
                return;
            }
            for (Uri uri : list) {
                if (zzauVar.zzP(uri)) {
                    zzauVar.zzq.d(zzau.zzaa(uri, zzauVar.zzA, "1").toString(), null, null, null);
                } else {
                    if (((Boolean) zzbd.zzc().b(cye.v7)).booleanValue()) {
                        zzauVar.zzq.d(uri.toString(), null, null, null);
                    }
                }
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzh("", e);
        }
    }
}
