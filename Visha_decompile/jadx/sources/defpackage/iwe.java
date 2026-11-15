package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzcm;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

public abstract class iwe {
    public static final zzco a;

    static {
        zzco zzcmVar = null;
        try {
            Object objNewInstance = zzaz.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(null).newInstance(null);
            if (objNewInstance instanceof IBinder) {
                IBinder iBinder = (IBinder) objNewInstance;
                if (iBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzcmVar = iInterfaceQueryLocalInterface instanceof zzco ? (zzco) iInterfaceQueryLocalInterface : new zzcm(iBinder);
                }
            } else {
                zzo.zzj("ClientApi class is not an instance of IBinder.");
            }
        } catch (Exception unused) {
            zzo.zzj("Failed to instantiate ClientApi class.");
        }
        a = zzcmVar;
    }

    public abstract Object a();

    public abstract Object b(zzco zzcoVar);

    public abstract Object c();

    public final Object d(Context context, boolean z) {
        boolean z2;
        Object objE;
        if (!z) {
            zzbb.zzb();
            if (!zzf.zzt(context, 12451000)) {
                zzo.zze("Google Play Services is not available.");
                z = true;
            }
        }
        boolean z3 = false;
        boolean z4 = !(DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) <= DynamiteModule.c(context, ModuleDescriptor.MODULE_ID));
        cye.a(context);
        if (((Boolean) uze.a.e()).booleanValue()) {
            z2 = false;
        } else if (((Boolean) uze.b.e()).booleanValue()) {
            z2 = true;
            z3 = true;
        } else {
            z3 = z | z4;
            z2 = false;
        }
        if (z3) {
            objE = e();
            if (objE == null && !z2) {
                objE = f();
            }
        } else {
            Object objF = f();
            if (objF == null) {
                if (zzbb.zze().nextInt(((Long) i0f.a.e()).intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", 1);
                    zzbb.zzb().zzo(context, zzbb.zzc().afmaVersion, "gmob-apps", bundle, true);
                }
            }
            objE = objF == null ? e() : objF;
        }
        return objE == null ? a() : objE;
    }

    public final Object e() {
        zzco zzcoVar = a;
        if (zzcoVar == null) {
            zzo.zzj("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return b(zzcoVar);
        } catch (RemoteException e) {
            zzo.zzk("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    public final Object f() {
        try {
            return c();
        } catch (RemoteException e) {
            zzo.zzk("Cannot invoke remote loader.", e);
            return null;
        }
    }
}
