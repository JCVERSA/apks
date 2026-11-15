package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzblt;
import java.util.ArrayList;
import java.util.List;

public final class enh {
    public final zzfw a;
    public final zzblt b;
    public final k4h c;
    public final zzm d;
    public final zzr e;
    public final String f;
    public final ArrayList g;
    public final ArrayList h;
    public final zzbfi i;
    public final zzx j;
    public final int k;
    public final AdManagerAdViewOptions l;
    public final PublisherAdViewOptions m;
    public final zzcl n;
    public final rmh o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final Bundle s;
    public final zzcp t;

    public enh(cnh cnhVar, dnh dnhVar) {
        this.e = cnhVar.b;
        this.f = cnhVar.c;
        this.t = cnhVar.u;
        int i = cnhVar.a.zza;
        long j = cnhVar.a.zzb;
        Bundle bundle = cnhVar.a.zzc;
        int i2 = cnhVar.a.zzd;
        List list = cnhVar.a.zze;
        boolean z = cnhVar.a.zzf;
        int i3 = cnhVar.a.zzg;
        boolean z2 = true;
        if (!cnhVar.a.zzh && !cnhVar.e) {
            z2 = false;
        }
        this.d = new zzm(i, j, bundle, i2, list, z, i3, z2, cnhVar.a.zzi, cnhVar.a.zzj, cnhVar.a.zzk, cnhVar.a.zzl, cnhVar.a.zzm, cnhVar.a.zzn, cnhVar.a.zzo, cnhVar.a.zzp, cnhVar.a.zzq, cnhVar.a.zzr, cnhVar.a.zzs, cnhVar.a.zzt, cnhVar.a.zzu, cnhVar.a.zzv, zzs.zza(cnhVar.a.zzw), cnhVar.a.zzx, cnhVar.a.zzy, cnhVar.a.zzz);
        this.a = cnhVar.d != null ? cnhVar.d : cnhVar.h != null ? cnhVar.h.zzf : null;
        this.g = cnhVar.f;
        this.h = cnhVar.g;
        this.i = cnhVar.f == null ? null : cnhVar.h == null ? new zzbfi(new NativeAdOptions.Builder().build()) : cnhVar.h;
        this.j = cnhVar.i;
        this.k = cnhVar.m;
        this.l = cnhVar.j;
        this.m = cnhVar.k;
        this.n = cnhVar.l;
        this.b = cnhVar.n;
        this.o = new rmh(cnhVar.o, null);
        this.p = cnhVar.p;
        this.q = cnhVar.q;
        this.c = cnhVar.r;
        this.r = cnhVar.s;
        this.s = cnhVar.t;
    }

    public final boolean a() {
        return this.f.matches((String) zzbd.zzc().b(cye.u3));
    }
}
