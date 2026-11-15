package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import defpackage.a9f;

public final class zzbou extends zzbox {
    @Override
    public final zzbpb zzb(String str) throws RemoteException {
        zzbpz zzbpzVar;
        try {
            try {
                Class<?> cls = Class.forName(str, false, zzbou.class.getClassLoader());
                if (MediationAdapter.class.isAssignableFrom(cls)) {
                    return new zzbpz((MediationAdapter) cls.getDeclaredConstructor(null).newInstance(null));
                }
                if (Adapter.class.isAssignableFrom(cls)) {
                    return new zzbpz((Adapter) cls.getDeclaredConstructor(null).newInstance(null));
                }
                zzo.zzj("Could not instantiate mediation adapter: " + str + " (not a valid adapter).");
                throw new RemoteException();
            } catch (Throwable th) {
                zzo.zzk("Could not instantiate mediation adapter: " + str + ". ", th);
                throw new RemoteException();
            }
        } catch (Throwable unused) {
            zzo.zze("Reflection failed, retrying using direct instantiation");
            if (!"com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    zzbpzVar = new zzbpz(new CustomEventAdapter());
                }
                throw new RemoteException();
            }
            zzbpzVar = new zzbpz(new AdMobAdapter());
            return zzbpzVar;
        }
    }

    @Override
    public final zzbqx zzc(String str) throws RemoteException {
        try {
            return new zzbrk((RtbAdapter) Class.forName(str, false, a9f.class.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
        } catch (Throwable unused) {
            throw new RemoteException();
        }
    }

    @Override
    public final boolean zzd(String str) throws RemoteException {
        try {
            return Adapter.class.isAssignableFrom(Class.forName(str, false, zzbou.class.getClassLoader()));
        } catch (Throwable unused) {
            zzo.zzj("Could not load custom event implementation class as Adapter: " + str + ", assuming old custom event implementation.");
            return false;
        }
    }

    @Override
    public final boolean zze(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzbou.class.getClassLoader()));
        } catch (Throwable unused) {
            zzo.zzj("Could not load custom event implementation class: " + str + ", trying Adapter implementation class.");
            return false;
        }
    }
}
