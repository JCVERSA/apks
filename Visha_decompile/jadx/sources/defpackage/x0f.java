package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbfc;
import com.google.android.gms.internal.ads.zzbuc;

public final class x0f {
    public final Context a;

    public x0f(Context context) {
        this.a = context;
    }

    public final void a(zzbuc zzbucVar) {
        try {
            ((zzbfc) zzs.zzb(this.a, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", new zzq() {
                @Override
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
                    return iInterfaceQueryLocalInterface instanceof zzbfc ? (zzbfc) iInterfaceQueryLocalInterface : new zzbfc(iBinder);
                }
            })).zze(zzbucVar);
        } catch (RemoteException e) {
            zzo.zzj("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e.getMessage())));
        } catch (zzr e2) {
            zzo.zzj("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e2.getMessage())));
        }
    }
}
