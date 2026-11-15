package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import defpackage.cye;
import defpackage.exe;
import java.util.concurrent.ExecutorService;

public final class exe {
    public zzayc a;
    public boolean b;
    public final ExecutorService c;

    public exe() {
        this.c = zzb.zzb;
    }

    public exe(final Context context) {
        ExecutorService executorService = zzb.zzb;
        this.c = executorService;
        executorService.execute(new Runnable() {
            @Override
            public final void run() {
                boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.g5)).booleanValue();
                exe exeVar = this.zza;
                Context context2 = context;
                if (zBooleanValue) {
                    try {
                        exeVar.a = (zzayc) com.google.android.gms.ads.internal.util.client.zzs.zzb(context2, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", new zzq() {
                            @Override
                            public final Object zza(Object obj) {
                                return zzayb.zzb((IBinder) obj);
                            }
                        });
                        exeVar.a.zze(ObjectWrapper.wrap(context2), "GMA_SDK");
                        exeVar.b = true;
                    } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException unused) {
                        zzo.zze("Cannot dynamite load clearcut");
                    }
                }
            }
        });
    }
}
