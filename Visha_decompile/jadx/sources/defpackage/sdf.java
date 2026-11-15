package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.Iterator;
import java.util.Map;

public abstract class sdf {
    public static sdf a;

    public static synchronized sdf b(Context context) {
        try {
            sdf sdfVar = a;
            if (sdfVar != null) {
                return sdfVar;
            }
            Context applicationContext = context.getApplicationContext();
            cye.a(applicationContext);
            zzg zzgVarJ = zzv.zzp().j();
            zzgVarJ.zzp(applicationContext);
            kdf kdfVar = new kdf(null);
            kdfVar.b(applicationContext);
            kdfVar.c(zzv.zzC());
            kdfVar.a(zzgVarJ);
            kdfVar.d(zzv.zzo());
            sdf sdfVarE = kdfVar.e();
            a = sdfVarE;
            ((edf) ((ldf) sdfVarE).e.zzb()).a();
            bef befVar = (bef) ((ldf) a).j.zzb();
            if (((Boolean) zzbd.zzc().b(cye.I0)).booleanValue()) {
                zzv.zzq();
                Map mapZzw = zzs.zzw((String) zzbd.zzc().b(cye.J0));
                Iterator it = mapZzw.keySet().iterator();
                while (it.hasNext()) {
                    befVar.c((String) it.next());
                }
                befVar.d(new udf(befVar, mapZzw));
            }
            return a;
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract idf a();
}
