package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import defpackage.fme;
import defpackage.gme;
import defpackage.hme;
import defpackage.ime;
import defpackage.kme;
import defpackage.mme;
import defpackage.xle;
import defpackage.zle;
import java.util.Collections;
import java.util.Map;

public abstract class c implements Comparable {
    public final mme b;
    public final int c;
    public final String d;
    public final int e;
    public final Object f;
    public final ime g;
    public Integer h;
    public hme i;
    public boolean j;
    public xle k;
    public gme l;
    public final zle m;

    public c(int i, String str, ime imeVar) {
        Uri uri;
        String host;
        this.b = mme.c ? new mme() : null;
        this.f = new Object();
        int iHashCode = 0;
        this.j = false;
        this.k = null;
        this.c = i;
        this.d = str;
        this.g = imeVar;
        this.m = new zle();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.e = iHashCode;
    }

    public abstract kme a(fme fmeVar);

    @Override
    public final int compareTo(Object obj) {
        return this.h.intValue() - ((c) obj).h.intValue();
    }

    public abstract void d(Object obj);

    public final void e(String str) {
        hme hmeVar = this.i;
        if (hmeVar != null) {
            hmeVar.b(this);
        }
        if (mme.c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzaph(this, str, id));
                return;
            }
            mme mmeVar = this.b;
            mmeVar.a(str, id);
            mmeVar.b(toString());
        }
    }

    public final void f() {
        gme gmeVar;
        synchronized (this.f) {
            gmeVar = this.l;
        }
        if (gmeVar != null) {
            gmeVar.zza(this);
        }
    }

    public final void g(kme kmeVar) {
        gme gmeVar;
        synchronized (this.f) {
            gmeVar = this.l;
        }
        if (gmeVar != null) {
            gmeVar.a(this, kmeVar);
        }
    }

    public final void h(int i) {
        hme hmeVar = this.i;
        if (hmeVar != null) {
            hmeVar.c(this, i);
        }
    }

    public final void i(gme gmeVar) {
        synchronized (this.f) {
            this.l = gmeVar;
        }
    }

    public final String toString() {
        String strValueOf = String.valueOf(Integer.toHexString(this.e));
        zzw();
        return "[ ] " + this.d + " " + "0x".concat(strValueOf) + " NORMAL " + this.h;
    }

    public final int zza() {
        return this.c;
    }

    public final int zzb() {
        return this.m.b();
    }

    public final int zzc() {
        return this.e;
    }

    @Nullable
    public final xle zzd() {
        return this.k;
    }

    public final c zze(xle xleVar) {
        this.k = xleVar;
        return this;
    }

    public final c zzf(hme hmeVar) {
        this.i = hmeVar;
        return this;
    }

    public final c zzg(int i) {
        this.h = Integer.valueOf(i);
        return this;
    }

    public final String zzj() {
        int i = this.c;
        String str = this.d;
        if (i == 0) {
            return str;
        }
        return Integer.toString(1) + "-" + str;
    }

    public final String zzk() {
        return this.d;
    }

    public Map zzl() throws zzaor {
        return Collections.emptyMap();
    }

    public final void zzm(String str) {
        if (mme.c) {
            this.b.a(str, Thread.currentThread().getId());
        }
    }

    public final void zzn(zzaps zzapsVar) {
        ime imeVar;
        synchronized (this.f) {
            imeVar = this.g;
        }
        imeVar.a(zzapsVar);
    }

    public final void zzq() {
        synchronized (this.f) {
            this.j = true;
        }
    }

    public final boolean zzv() {
        boolean z;
        synchronized (this.f) {
            z = this.j;
        }
        return z;
    }

    public final boolean zzw() {
        synchronized (this.f) {
        }
        return false;
    }

    public byte[] zzx() throws zzaor {
        return null;
    }

    public final zle zzy() {
        return this.m;
    }
}
