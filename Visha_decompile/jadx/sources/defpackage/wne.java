package defpackage;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import com.google.android.gms.internal.ads.zzbtn;
import java.util.ArrayList;

public final class wne implements v7i {
    public final zzbtn a;
    public final boolean b;
    public final zzau c;

    public wne(zzau zzauVar, zzbtn zzbtnVar, boolean z) {
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
        ArrayList<Uri> arrayList = (ArrayList) obj;
        try {
            this.a.zzf(arrayList);
            zzau zzauVar = this.c;
            if (!zzauVar.zzr && !this.b) {
                return;
            }
            for (Uri uri : arrayList) {
                if (zzauVar.zzQ(uri)) {
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
