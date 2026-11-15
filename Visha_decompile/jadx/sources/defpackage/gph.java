package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.k5;
import com.google.android.gms.internal.ads.zzfdg;
import com.google.android.gms.internal.ads.zzfdj;
import java.util.HashMap;

public final class gph {
    public final HashMap a = new HashMap();

    public final fph a(zzfdg zzfdgVar, Context context, ooh oohVar, mph mphVar) {
        HashMap map = this.a;
        fph fphVar = (fph) map.get(zzfdgVar);
        if (fphVar != null) {
            return fphVar;
        }
        k5 k5Var = new k5(zzfdj.zza(zzfdgVar, context));
        fph fphVar2 = new fph(k5Var, new oph(k5Var, oohVar, mphVar));
        map.put(zzfdgVar, fphVar2);
        return fphVar2;
    }
}
