package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;

public final class big implements v7i {
    public final hmh a;
    public final kmh b;
    public final wpf c;
    public final hig d;

    public big(hig higVar, hmh hmhVar, kmh kmhVar, wpf wpfVar) {
        this.a = hmhVar;
        this.b = kmhVar;
        this.c = wpfVar;
        this.d = higVar;
    }

    @Override
    public final void zza(Throwable th) {
    }

    @Override
    public final void zzb(Object obj) {
        ejf ejfVar = (ejf) obj;
        hmh hmhVar = this.a;
        ejfVar.zzW(hmhVar, this.b);
        ikf ikfVarZzN = ejfVar.zzN();
        if (((Boolean) zzbd.zzc().b(cye.ka)).booleanValue() && ikfVarZzN != null) {
            wpf wpfVar = this.c;
            hig higVar = this.d;
            ikfVarZzN.i(wpfVar, higVar.i, higVar.j);
            ikfVarZzN.f(wpfVar, higVar.i, higVar.d);
        }
        if (!((Boolean) zzbd.zzc().b(cye.bd)).booleanValue() || ikfVarZzN == null) {
            return;
        }
        ikfVarZzN.x(hmhVar);
    }
}
