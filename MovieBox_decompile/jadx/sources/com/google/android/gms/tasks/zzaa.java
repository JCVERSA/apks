package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

final class zzaa implements Continuation {
    final Collection zza;

    zzaa(Collection collection) {
        this.zza = collection;
    }

    @Override
    public final Object then(@NonNull Task task) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            arrayList.add(((Task) it.next()).getResult());
        }
        return arrayList;
    }
}
