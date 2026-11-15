package com.google.android.libraries.places.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class zzaup extends zzaut {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzaup() {
        throw null;
    }

    private static List zzf(Object obj, long j10, int i10) {
        List list;
        List listZzd;
        List list2 = (List) zzawx.zzf(obj, j10);
        if (list2.isEmpty()) {
            if (list2 instanceof zzaun) {
                listZzd = new zzaum(i10);
            } else {
                listZzd = ((list2 instanceof zzavo) && (list2 instanceof zzauc)) ? ((zzauc) list2).zzd(i10) : new ArrayList(i10);
            }
            zzawx.zzs(obj, j10, listZzd);
            return listZzd;
        }
        if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i10);
            arrayList.addAll(list2);
            zzawx.zzs(obj, j10, arrayList);
            list = arrayList;
        } else {
            if (!(list2 instanceof zzaws)) {
                if (!(list2 instanceof zzavo) || !(list2 instanceof zzauc)) {
                    return list2;
                }
                zzauc zzaucVar = (zzauc) list2;
                if (zzaucVar.zzc()) {
                    return list2;
                }
                zzauc zzaucVarZzd = zzaucVar.zzd(list2.size() + i10);
                zzawx.zzs(obj, j10, zzaucVarZzd);
                return zzaucVarZzd;
            }
            zzaum zzaumVar = new zzaum(list2.size() + i10);
            zzaumVar.addAll(zzaumVar.size(), (zzaws) list2);
            zzawx.zzs(obj, j10, zzaumVar);
            list = zzaumVar;
        }
        return list;
    }

    @Override
    final List zza(Object obj, long j10) {
        return zzf(obj, j10, 10);
    }

    @Override
    final void zzb(Object obj, long j10) {
        Object objUnmodifiableList;
        List list = (List) zzawx.zzf(obj, j10);
        if (list instanceof zzaun) {
            objUnmodifiableList = ((zzaun) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzavo) && (list instanceof zzauc)) {
                zzauc zzaucVar = (zzauc) list;
                if (zzaucVar.zzc()) {
                    zzaucVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzawx.zzs(obj, j10, objUnmodifiableList);
    }

    @Override
    final void zzc(Object obj, Object obj2, long j10) {
        List list = (List) zzawx.zzf(obj2, j10);
        List listZzf = zzf(obj, j10, list.size());
        int size = listZzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listZzf.addAll(list);
        }
        if (size > 0) {
            list = listZzf;
        }
        zzawx.zzs(obj, j10, list);
    }

    zzaup(zzauo zzauoVar) {
        super(null);
    }
}
