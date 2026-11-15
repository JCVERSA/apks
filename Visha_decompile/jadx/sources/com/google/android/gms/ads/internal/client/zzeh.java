package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.nwh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class zzeh {
    public final String a;
    public final List b;
    public final Set c;
    public final Bundle d;
    public final String e;
    public final String f;
    public final int g;
    public final Set h;
    public final Bundle i;
    public final Set j;
    public final boolean k;
    public final String l;
    public final int m;
    public long n = 0;

    public zzeh(zzeg zzegVar, @Nullable nwh nwhVar) {
        this.a = zzegVar.g;
        this.b = zzegVar.h;
        this.c = Collections.unmodifiableSet(zzegVar.a);
        this.d = zzegVar.b;
        Collections.unmodifiableMap(zzegVar.c);
        this.e = zzegVar.i;
        this.f = zzegVar.j;
        this.g = zzegVar.k;
        this.h = Collections.unmodifiableSet(zzegVar.d);
        this.i = zzegVar.e;
        this.j = Collections.unmodifiableSet(zzegVar.f);
        this.k = zzegVar.l;
        this.l = zzegVar.m;
        this.m = zzegVar.n;
    }

    public final int zza() {
        return this.m;
    }

    public final int zzb() {
        return this.g;
    }

    public final long zzc() {
        return this.n;
    }

    @Nullable
    public final Bundle zzd(Class cls) {
        Bundle bundle = this.d.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle zze() {
        return this.i;
    }

    @Nullable
    public final Bundle zzf(Class cls) {
        return this.d.getBundle(cls.getName());
    }

    public final Bundle zzg() {
        return this.d;
    }

    @Nullable
    public final String zzh() {
        return this.l;
    }

    public final String zzi() {
        return this.a;
    }

    public final String zzj() {
        return this.e;
    }

    public final String zzk() {
        return this.f;
    }

    public final List zzl() {
        return new ArrayList(this.b);
    }

    public final Set zzm() {
        return this.j;
    }

    public final Set zzn() {
        return this.c;
    }

    public final void zzo(long j) {
        this.n = j;
    }

    @Deprecated
    public final boolean zzp() {
        return this.k;
    }

    public final boolean zzq(Context context) {
        RequestConfiguration requestConfigurationZzc = zzet.zzf().zzc();
        zzbb.zzb();
        Set set = this.h;
        String strZzz = com.google.android.gms.ads.internal.util.client.zzf.zzz(context);
        return set.contains(strZzz) || requestConfigurationZzc.getTestDeviceIds().contains(strZzz);
    }
}
