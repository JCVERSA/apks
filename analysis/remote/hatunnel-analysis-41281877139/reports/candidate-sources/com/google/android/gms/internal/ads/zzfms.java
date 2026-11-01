package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.lifecycle.AtomicReference$$ExternalSyntheticBackportWithForwarding0;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

public final class zzfms {
    private static zzfms zza;
    private final Context zzb;
    private final com.google.android.gms.ads.internal.client.zzcv zzc;
    private final AtomicReference zzd = new AtomicReference();

    zzfms(Context context, com.google.android.gms.ads.internal.client.zzcv zzcvVar) {
        this.zzb = context;
        this.zzc = zzcvVar;
    }

    public static zzfms zza(Context context) {
        synchronized (zzfms.class) {
            zzfms zzfmsVar = zza;
            if (zzfmsVar != null) {
                return zzfmsVar;
            }
            Context applicationContext = context.getApplicationContext();
            long jLongValue = ((Long) zzbli.zzb.zze()).longValue();
            com.google.android.gms.ads.internal.client.zzcv zzcvVarZzf = null;
            if (jLongValue > 0 && jLongValue <= 262180000) {
                zzcvVarZzf = zzf(applicationContext);
            }
            zzfms zzfmsVar2 = new zzfms(applicationContext, zzcvVarZzf);
            zza = zzfmsVar2;
            return zzfmsVar2;
        }
    }

    static com.google.android.gms.ads.internal.client.zzcv zzf(Context context) {
        try {
            try {
                return com.google.android.gms.ads.internal.client.zzcu.asInterface((IBinder) context.getClassLoader().loadClass(ProtectedFastSSH.s("泝")).getConstructor(Context.class).newInstance(context));
            } catch (ClassNotFoundException e) {
                e = e;
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("泞"), e);
                return null;
            } catch (IllegalAccessException e2) {
                e = e2;
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("泞"), e);
                return null;
            } catch (InstantiationException e3) {
                e = e3;
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("泞"), e);
                return null;
            } catch (NoSuchMethodException e4) {
                e = e4;
                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("泞"), e);
                return null;
            } catch (InvocationTargetException e5) {
                e = e5;
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("泞"), e);
                return null;
            }
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e6) {
            e = e6;
        }
    }

    private final com.google.android.gms.ads.internal.client.zzez zzg() {
        com.google.android.gms.ads.internal.client.zzcv zzcvVar = this.zzc;
        if (zzcvVar != null) {
            try {
                return zzcvVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public final VersionInfoParcel zzb(int i, boolean z, int i2) {
        com.google.android.gms.ads.internal.client.zzez zzezVarZzg;
        com.google.android.gms.ads.internal.zzt.zzc();
        boolean zZzH = com.google.android.gms.ads.internal.util.zzs.zzH(this.zzb);
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, i2, true, zZzH);
        return (((Boolean) zzbli.zzc.zze()).booleanValue() && (zzezVarZzg = zzg()) != null) ? new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, zzezVarZzg.zza(), true, zZzH) : versionInfoParcel;
    }

    public final void zzc(zzbvu zzbvuVar) {
        zzbvu adapterCreator;
        if (!((Boolean) zzbli.zza.zze()).booleanValue()) {
            AtomicReference$$ExternalSyntheticBackportWithForwarding0.m(this.zzd, null, zzbvuVar);
            return;
        }
        com.google.android.gms.ads.internal.client.zzcv zzcvVar = this.zzc;
        if (zzcvVar == null) {
            adapterCreator = null;
        } else {
            try {
                adapterCreator = zzcvVar.getAdapterCreator();
            } catch (RemoteException unused) {
                adapterCreator = null;
            }
        }
        AtomicReference atomicReference = this.zzd;
        if (adapterCreator != null) {
            zzbvuVar = adapterCreator;
        }
        AtomicReference$$ExternalSyntheticBackportWithForwarding0.m(atomicReference, null, zzbvuVar);
    }

    public final zzbvu zzd() {
        return (zzbvu) this.zzd.get();
    }

    public final String zze() {
        com.google.android.gms.ads.internal.client.zzez zzezVarZzg = zzg();
        if (zzezVarZzg != null) {
            return zzezVarZzg.zzb();
        }
        return null;
    }
}
