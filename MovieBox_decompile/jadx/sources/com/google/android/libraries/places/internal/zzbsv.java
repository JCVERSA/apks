package com.google.android.libraries.places.internal;

import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

final class zzbsv {
    private static final Logger zza = Logger.getLogger(zzbsv.class.getName());

    private zzbsv() {
    }

    public static zzbcf zza(List list) {
        return zzbar.zzc(zzc(list));
    }

    public static zzbcf zzb(List list) {
        return zzbar.zzc(zzc(list));
    }

    private static byte[][] zzc(List list) {
        int size = list.size();
        byte[][] bArr = new byte[size + size][];
        Iterator it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            zzbtt zzbttVar = (zzbtt) it.next();
            bArr[i10] = zzbttVar.zzh.zzp();
            bArr[i10 + 1] = zzbttVar.zzi.zzp();
            i10 += 2;
        }
        return zzbqu.zzb(bArr);
    }
}
