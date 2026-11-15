package com.google.android.libraries.places.internal;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

class zzawg extends AbstractMap {
    private final int zza;
    private boolean zzd;
    private volatile zzawe zze;
    private List zzb = Collections.emptyList();
    private Map zzc = Collections.emptyMap();
    private Map zzf = Collections.emptyMap();

    private final int zzk(Comparable comparable) {
        int size = this.zzb.size();
        int i10 = size - 1;
        int i11 = 0;
        if (i10 >= 0) {
            int iCompareTo = comparable.compareTo(((zzawa) this.zzb.get(i10)).zza());
            if (iCompareTo > 0) {
                return -(size + 1);
            }
            if (iCompareTo == 0) {
                return i10;
            }
        }
        while (i11 <= i10) {
            int i12 = (i11 + i10) / 2;
            int iCompareTo2 = comparable.compareTo(((zzawa) this.zzb.get(i12)).zza());
            if (iCompareTo2 < 0) {
                i10 = i12 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i12;
                }
                i11 = i12 + 1;
            }
        }
        return -(i11 + 1);
    }

    public final Object zzl(int i10) {
        zzn();
        Object value = ((zzawa) this.zzb.remove(i10)).getValue();
        if (!this.zzc.isEmpty()) {
            Iterator it = zzm().entrySet().iterator();
            List list = this.zzb;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzawa(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return value;
    }

    private final SortedMap zzm() {
        zzn();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    public final void zzn() {
        if (this.zzd) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final void clear() {
        zzn();
        if (!this.zzb.isEmpty()) {
            this.zzb.clear();
        }
        if (this.zzc.isEmpty()) {
            return;
        }
        this.zzc.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zzk(comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override
    public final Set entrySet() {
        if (this.zze == null) {
            this.zze = new zzawe(this, null);
        }
        return this.zze;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzawg)) {
            return super.equals(obj);
        }
        zzawg zzawgVar = (zzawg) obj;
        int size = size();
        if (size != zzawgVar.size()) {
            return false;
        }
        int iZzb = zzb();
        if (iZzb != zzawgVar.zzb()) {
            return entrySet().equals(zzawgVar.entrySet());
        }
        for (int i10 = 0; i10 < iZzb; i10++) {
            if (!zzg(i10).equals(zzawgVar.zzg(i10))) {
                return false;
            }
        }
        if (iZzb != size) {
            return this.zzc.equals(zzawgVar.zzc);
        }
        return true;
    }

    @Override
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZzk = zzk(comparable);
        return iZzk >= 0 ? ((zzawa) this.zzb.get(iZzk)).getValue() : this.zzc.get(comparable);
    }

    @Override
    public final int hashCode() {
        int iZzb = zzb();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iZzb; i10++) {
            iHashCode += ((zzawa) this.zzb.get(i10)).hashCode();
        }
        return this.zzc.size() > 0 ? iHashCode + this.zzc.hashCode() : iHashCode;
    }

    @Override
    public final Object remove(Object obj) {
        zzn();
        Comparable comparable = (Comparable) obj;
        int iZzk = zzk(comparable);
        if (iZzk >= 0) {
            return zzl(iZzk);
        }
        if (this.zzc.isEmpty()) {
            return null;
        }
        return this.zzc.remove(comparable);
    }

    @Override
    public final int size() {
        return this.zzb.size() + this.zzc.size();
    }

    public void zza() {
        if (this.zzd) {
            return;
        }
        this.zzc = this.zzc.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzc);
        this.zzf = this.zzf.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzf);
        this.zzd = true;
    }

    public final int zzb() {
        return this.zzb.size();
    }

    public final Iterable zzc() {
        return this.zzc.isEmpty() ? zzavz.zza() : this.zzc.entrySet();
    }

    @Override
    public final Object put(Comparable comparable, Object obj) {
        zzn();
        int iZzk = zzk(comparable);
        if (iZzk >= 0) {
            return ((zzawa) this.zzb.get(iZzk)).setValue(obj);
        }
        zzn();
        if (this.zzb.isEmpty() && !(this.zzb instanceof ArrayList)) {
            this.zzb = new ArrayList(this.zza);
        }
        int i10 = -(iZzk + 1);
        if (i10 >= this.zza) {
            return zzm().put(comparable, obj);
        }
        int size = this.zzb.size();
        int i11 = this.zza;
        if (size == i11) {
            zzawa zzawaVar = (zzawa) this.zzb.remove(i11 - 1);
            zzm().put(zzawaVar.zza(), zzawaVar.getValue());
        }
        this.zzb.add(i10, new zzawa(this, comparable, obj));
        return null;
    }

    public final Map.Entry zzg(int i10) {
        return (Map.Entry) this.zzb.get(i10);
    }

    public final boolean zzj() {
        return this.zzd;
    }
}
