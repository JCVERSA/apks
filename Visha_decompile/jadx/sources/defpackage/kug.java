package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;

public final class kug implements v7i {
    public final pqh a;

    public kug(lug lugVar, pqh pqhVar) {
        this.a = pqhVar;
    }

    @Override
    public final void zza(Throwable th) {
        String strValueOf = String.valueOf(th.getMessage());
        int i = zze.zza;
        zzo.zzg("Failed to get offline signal database: ".concat(strValueOf));
    }

    @Override
    public final void zzb(Object obj) {
        try {
            this.a.zza((SQLiteDatabase) obj);
        } catch (Exception e) {
            String strValueOf = String.valueOf(e.getMessage());
            int i = zze.zza;
            zzo.zzg("Error executing function on offline signal database: ".concat(strValueOf));
        }
    }
}
