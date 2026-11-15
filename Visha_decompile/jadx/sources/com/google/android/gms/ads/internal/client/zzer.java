package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.internal.ads.zzbln;
import java.util.ArrayList;
import java.util.List;

final class zzer extends zzbln {
    final zzet zza;

    public zzer(zzet zzetVar, zzes zzesVar) {
        this.zza = zzetVar;
    }

    @Override
    public final void zzb(List list) throws RemoteException {
        int i;
        ArrayList arrayList;
        zzet zzetVar = this.zza;
        synchronized (zzetVar.a) {
            zzetVar.d = false;
            zzetVar.e = true;
            arrayList = new ArrayList(zzetVar.c);
            zzetVar.c.clear();
        }
        InitializationStatus initializationStatusA = zzet.a(list);
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((OnInitializationCompleteListener) arrayList.get(i)).onInitializationComplete(initializationStatusA);
        }
    }
}
