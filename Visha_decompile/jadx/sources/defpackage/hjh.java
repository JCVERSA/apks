package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.concurrent.atomic.AtomicReference;

public abstract class hjh {
    public static void a(AtomicReference atomicReference, gjh gjhVar) {
        Object obj = atomicReference.get();
        if (obj == null) {
            return;
        }
        try {
            gjhVar.zza(obj);
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        } catch (NullPointerException e2) {
            int i2 = zze.zza;
            zzo.zzk("NullPointerException occurs when invoking a method from a delegating listener.", e2);
        }
    }
}
