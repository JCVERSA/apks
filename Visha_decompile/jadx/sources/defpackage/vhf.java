package defpackage;

import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.z3;

public final class vhf extends z3 {
    public vhf(chf chfVar) {
        super(chfVar);
    }

    @Override
    public final void b() {
    }

    @Override
    public final boolean n(String str) {
        String strZzg = zzf.zzg(str);
        chf chfVar = (chf) this.d.get();
        if (chfVar != null && strZzg != null) {
            chfVar.zzt(strZzg, this);
        }
        int i = zze.zza;
        zzo.zzj("VideoStreamNoopCache is doing nothing.");
        c(str, strZzg, "noop", "Noop cache is a noop.");
        return false;
    }
}
