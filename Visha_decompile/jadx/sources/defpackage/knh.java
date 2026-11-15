package defpackage;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class knh {
    public static zzr a(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            imh imhVar = (imh) it.next();
            if (imhVar.c) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(imhVar.a, imhVar.b));
            }
        }
        return new zzr(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static imh b(zzr zzrVar) {
        return zzrVar.zzi ? new imh(-3, 0, true) : new imh(zzrVar.zze, zzrVar.zzb, false);
    }
}
