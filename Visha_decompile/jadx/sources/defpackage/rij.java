package defpackage;

import android.os.AsyncTask;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.internal.zzu;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class rij extends AsyncTask {
    public final zzu a;

    public rij(zzu zzuVar, zzt zztVar) {
        this.a = zzuVar;
    }

    @Override
    public final String doInBackground(Void... voidArr) {
        try {
            zzu zzuVar = this.a;
            zzuVar.zzh = (fre) zzuVar.zzc.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException e) {
            int i = zze.zza;
            zzo.zzk("", e);
        } catch (TimeoutException e2) {
            int i2 = zze.zza;
            zzo.zzk("", e2);
        }
        return this.a.zzp();
    }

    @Override
    public final void onPostExecute(Object obj) {
        zzu zzuVar = this.a;
        String str = (String) obj;
        if (zzuVar.zzf == null || str == null) {
            return;
        }
        zzuVar.zzf.loadUrl(str);
    }
}
