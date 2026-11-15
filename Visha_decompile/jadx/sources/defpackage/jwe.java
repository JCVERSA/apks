package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzazv;
import com.google.android.gms.internal.ads.zzbou;

public final class jwe {
    public zzbx a;
    public final Context b;
    public final String c;
    public final zzeh d;
    public final AppOpenAd.AppOpenAdLoadCallback e;
    public final zzbou f = new zzbou();
    public final zzq g = zzq.zza;

    public jwe(Context context, String str, zzeh zzehVar, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.b = context;
        this.c = str;
        this.d = zzehVar;
        this.e = appOpenAdLoadCallback;
    }

    public final void a() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            zzr zzrVarZzb = zzr.zzb();
            zzaz zzazVarZza = zzbb.zza();
            Context context = this.b;
            String str = this.c;
            zzbx zzbxVarZze = zzazVarZza.zze(context, zzrVarZzb, str, this.f);
            this.a = zzbxVarZze;
            if (zzbxVarZze != null) {
                zzeh zzehVar = this.d;
                zzehVar.zzo(jCurrentTimeMillis);
                this.a.zzH(new zzazv(this.e, str));
                this.a.zzab(this.g.zza(context, zzehVar));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
