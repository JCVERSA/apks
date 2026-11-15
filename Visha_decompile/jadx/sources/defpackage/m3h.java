package defpackage;

import com.google.android.gms.internal.ads.zzeix;

public final class m3h implements b5h {
    public final zzeix a;

    public m3h(zzeix zzeixVar) {
        this.a = zzeixVar;
    }

    @Override
    public final void zza() {
        zzeix zzeixVar = this.a;
        synchronized (zzeixVar) {
            zzeixVar.zzi = null;
        }
    }

    @Override
    public final void zzb(Object obj) {
        zzeix zzeixVar = this.a;
        srf srfVar = (srf) obj;
        synchronized (zzeixVar) {
            try {
                if (zzeixVar.zzi != null) {
                    zzeixVar.zzi.a();
                }
                zzeixVar.zzi = srfVar;
                zzeixVar.zzi.b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
