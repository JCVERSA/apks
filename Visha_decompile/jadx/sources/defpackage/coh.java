package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzcu;
import com.google.android.gms.ads.internal.client.zzcv;
import com.google.android.gms.ads.internal.client.zzex;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzboy;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

public final class coh {
    public static coh d;
    public final Context a;
    public final zzcv b;
    public final AtomicReference c = new AtomicReference();

    public coh(Context context, zzcv zzcvVar) {
        this.a = context;
        this.b = zzcvVar;
    }

    public static zzcv a(Context context) {
        try {
            return zzcu.asInterface((IBinder) context.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(context));
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            int i = zze.zza;
            zzo.zzh("Failed to retrieve lite SDK info.", e);
            return null;
        }
    }

    public static coh d(Context context) {
        synchronized (coh.class) {
            try {
                coh cohVar = d;
                if (cohVar != null) {
                    return cohVar;
                }
                Context applicationContext = context.getApplicationContext();
                long jLongValue = ((Long) a0f.b.e()).longValue();
                zzcv zzcvVarA = null;
                if (jLongValue > 0 && jLongValue <= 251310000) {
                    zzcvVarA = a(applicationContext);
                }
                coh cohVar2 = new coh(applicationContext, zzcvVarA);
                d = cohVar2;
                return cohVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzboy b() {
        return (zzboy) this.c.get();
    }

    public final VersionInfoParcel c(int i, boolean z, int i2) {
        zzex zzexVarG;
        zzv.zzq();
        boolean zZzF = zzs.zzF(this.a);
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(251410000, i2, true, zZzF);
        return (((Boolean) a0f.c.e()).booleanValue() && (zzexVarG = g()) != null) ? new VersionInfoParcel(251410000, zzexVarG.zza(), true, zZzF) : versionInfoParcel;
    }

    public final String e() {
        zzex zzexVarG = g();
        if (zzexVarG != null) {
            return zzexVarG.zzb();
        }
        return null;
    }

    public final void f(zzboy zzboyVar) {
        zzboy adapterCreator;
        if (!((Boolean) a0f.a.e()).booleanValue()) {
            boh.a(this.c, null, zzboyVar);
            return;
        }
        zzcv zzcvVar = this.b;
        if (zzcvVar == null) {
            adapterCreator = null;
        } else {
            try {
                adapterCreator = zzcvVar.getAdapterCreator();
            } catch (RemoteException unused) {
                adapterCreator = null;
            }
        }
        AtomicReference atomicReference = this.c;
        if (adapterCreator != null) {
            zzboyVar = adapterCreator;
        }
        boh.a(atomicReference, null, zzboyVar);
    }

    public final zzex g() {
        zzcv zzcvVar = this.b;
        if (zzcvVar != null) {
            try {
                return zzcvVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return null;
    }
}
