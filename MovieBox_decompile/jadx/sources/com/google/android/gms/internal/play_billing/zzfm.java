package com.google.android.gms.internal.play_billing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class zzfm extends zzfq {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    zzfm(zzfl zzflVar) {
        super(null);
    }

    @Override
    final void zza(Object obj, long j10) {
        Object objUnmodifiableList;
        List list = (List) zzhn.zzf(obj, j10);
        if (list instanceof zzfk) {
            objUnmodifiableList = ((zzfk) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzgj) && (list instanceof zzfc)) {
                zzfc zzfcVar = (zzfc) list;
                if (zzfcVar.zzc()) {
                    zzfcVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzhn.zzs(obj, j10, objUnmodifiableList);
    }

    @Override
    final void zzb(Object obj, Object obj2, long j10) {
        List list;
        List list2;
        List listZzd;
        List list3 = (List) zzhn.zzf(obj2, j10);
        int size = list3.size();
        List list4 = (List) zzhn.zzf(obj, j10);
        if (list4.isEmpty()) {
            if (list4 instanceof zzfk) {
                listZzd = new zzfj(size);
            } else {
                listZzd = ((list4 instanceof zzgj) && (list4 instanceof zzfc)) ? ((zzfc) list4).zzd(size) : new ArrayList(size);
            }
            zzhn.zzs(obj, j10, listZzd);
            list2 = listZzd;
        } else {
            if (zza.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzhn.zzs(obj, j10, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzhi) {
                zzfj zzfjVar = new zzfj(list4.size() + size);
                zzfjVar.addAll(zzfjVar.size(), (zzhi) list4);
                zzhn.zzs(obj, j10, zzfjVar);
                list = zzfjVar;
            } else if ((list4 instanceof zzgj) && (list4 instanceof zzfc)) {
                zzfc zzfcVar = (zzfc) list4;
                if (!zzfcVar.zzc()) {
                    list2 = list4;
                    list2 = list4;
                    list2 = list4;
                    zzfc zzfcVarZzd = zzfcVar.zzd(list4.size() + size);
                    zzhn.zzs(obj, j10, zzfcVarZzd);
                    list2 = zzfcVarZzd;
                }
            }
            list2 = list;
        }
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzhn.zzs(obj, j10, list3);
    }

    private zzfm() {
        super(null);
    }
}
