package defpackage;

import com.google.android.gms.internal.ads.x7;

public final class b0i extends x7 {
    public Object b;

    public b0i(Object obj, Runnable runnable) {
        this.b = obj;
    }

    @Override
    public final String zza() {
        Object obj = this.b;
        return obj == null ? "" : obj.toString();
    }

    @Override
    public final void zzb() {
        this.b = null;
    }

    @Override
    public final boolean zzc(Object obj) {
        return super.zzc(obj);
    }

    @Override
    public final boolean zzd(Throwable th) {
        return super.zzd(th);
    }
}
