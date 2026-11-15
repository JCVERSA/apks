package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.zzv;
import defpackage.chf;
import defpackage.ur8;
import java.lang.ref.WeakReference;
import java.util.Map;

public abstract class z3 implements ur8 {
    public final Context b;
    public final String c;
    public final WeakReference d;

    public z3(chf chfVar) {
        Context context = chfVar.getContext();
        this.b = context;
        this.c = zzv.zzq().zzc(context, chfVar.zzm().afmaVersion);
        this.d = new WeakReference(chfVar);
    }

    public static void a(z3 z3Var, String str, Map map) {
        chf chfVar = (chf) z3Var.d.get();
        if (chfVar != null) {
            chfVar.zzd("onPrecacheEvent", map);
        }
    }

    public abstract void b();

    public final void c(String str, String str2, String str3, String str4) {
        zzf.zza.post(new zzccr(this, str, str2, str3, str4));
    }

    public final void d(String str, String str2, int i) {
        zzf.zza.post(new zzccp(this, str, str2, i));
    }

    public final void e(String str, String str2, long j) {
        zzf.zza.post(new zzccq(this, str, str2, j));
    }

    public final void g(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzf.zza.post(new zzcco(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    public final void h(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        zzf.zza.post(new zzccn(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    public void i(int i) {
    }

    public void k(int i) {
    }

    public void l(int i) {
    }

    public void m(int i) {
    }

    public abstract boolean n(String str);

    public boolean o(String str, String[] strArr) {
        return n(str);
    }

    public boolean r(String str, String[] strArr, y3 y3Var) {
        return n(str);
    }

    @Override
    public void release() {
    }
}
