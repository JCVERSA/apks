package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zzar extends zzal implements zzak {
    private final List<String> zzk;
    private final List<zzaq> zzl;
    private zzh zzm;

    private zzar(zzar zzarVar) {
        super(zzarVar.zza);
        ArrayList arrayList = new ArrayList(zzarVar.zzk.size());
        this.zzk = arrayList;
        arrayList.addAll(zzarVar.zzk);
        ArrayList arrayList2 = new ArrayList(zzarVar.zzl.size());
        this.zzl = arrayList2;
        arrayList2.addAll(zzarVar.zzl);
        this.zzm = zzarVar.zzm;
    }

    @Override
    public final zzaq zza(zzh zzhVar, List<zzaq> list) {
        zzh zzhVarZza = this.zzm.zza();
        for (int i10 = 0; i10 < this.zzk.size(); i10++) {
            if (i10 < list.size()) {
                zzhVarZza.zza(this.zzk.get(i10), zzhVar.zza(list.get(i10)));
            } else {
                zzhVarZza.zza(this.zzk.get(i10), zzaq.zzc);
            }
        }
        for (zzaq zzaqVar : this.zzl) {
            zzaq zzaqVarZza = zzhVarZza.zza(zzaqVar);
            if (zzaqVarZza instanceof zzat) {
                zzaqVarZza = zzhVarZza.zza(zzaqVar);
            }
            if (zzaqVarZza instanceof zzaj) {
                return ((zzaj) zzaqVarZza).zza();
            }
        }
        return zzaq.zzc;
    }

    @Override
    public final zzaq zzc() {
        return new zzar(this);
    }

    public zzar(String str, List<zzaq> list, List<zzaq> list2, zzh zzhVar) {
        super(str);
        this.zzk = new ArrayList();
        this.zzm = zzhVar;
        if (!list.isEmpty()) {
            Iterator<zzaq> it = list.iterator();
            while (it.hasNext()) {
                this.zzk.add(it.next().zzf());
            }
        }
        this.zzl = new ArrayList(list2);
    }
}
