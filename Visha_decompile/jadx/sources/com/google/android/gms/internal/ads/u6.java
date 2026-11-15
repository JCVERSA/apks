package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

public final class u6 extends x6 implements NavigableMap {
    public final zzfvp h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u6(zzfvp zzfvpVar, NavigableMap navigableMap) {
        super(zzfvpVar, navigableMap);
        this.h = zzfvpVar;
    }

    @Override
    public final SortedMap c() {
        return (NavigableMap) ((SortedMap) this.d);
    }

    @Override
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry entryCeilingEntry = ((NavigableMap) ((SortedMap) this.d)).ceilingEntry(obj);
        if (entryCeilingEntry == null) {
            return null;
        }
        return b(entryCeilingEntry);
    }

    @Override
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.d)).ceilingKey(obj);
    }

    @Override
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override
    public final NavigableMap descendingMap() {
        return new u6(this.h, ((NavigableMap) ((SortedMap) this.d)).descendingMap());
    }

    @Override
    public final SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    public final Map.Entry f(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        zzfvp zzfvpVar = this.h;
        Collection collectionZza = zzfvpVar.zza();
        collectionZza.addAll((Collection) entry.getValue());
        it.remove();
        return new zzfws(entry.getKey(), zzfvpVar.zzb(collectionZza));
    }

    @Override
    public final Map.Entry firstEntry() {
        Map.Entry entryFirstEntry = ((NavigableMap) ((SortedMap) this.d)).firstEntry();
        if (entryFirstEntry == null) {
            return null;
        }
        return b(entryFirstEntry);
    }

    @Override
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry entryFloorEntry = ((NavigableMap) ((SortedMap) this.d)).floorEntry(obj);
        if (entryFloorEntry == null) {
            return null;
        }
        return b(entryFloorEntry);
    }

    @Override
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.d)).floorKey(obj);
    }

    @Override
    public final NavigableSet d() {
        return new v6(this.h, (NavigableMap) ((SortedMap) this.d));
    }

    @Override
    public final SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry entryHigherEntry = ((NavigableMap) ((SortedMap) this.d)).higherEntry(obj);
        if (entryHigherEntry == null) {
            return null;
        }
        return b(entryHigherEntry);
    }

    @Override
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.d)).higherKey(obj);
    }

    @Override
    public final Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override
    public final Map.Entry lastEntry() {
        Map.Entry entryLastEntry = ((NavigableMap) ((SortedMap) this.d)).lastEntry();
        if (entryLastEntry == null) {
            return null;
        }
        return b(entryLastEntry);
    }

    @Override
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry entryLowerEntry = ((NavigableMap) ((SortedMap) this.d)).lowerEntry(obj);
        if (entryLowerEntry == null) {
            return null;
        }
        return b(entryLowerEntry);
    }

    @Override
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.d)).lowerKey(obj);
    }

    @Override
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override
    public final Map.Entry pollFirstEntry() {
        return f(entrySet().iterator());
    }

    @Override
    public final Map.Entry pollLastEntry() {
        return f(descendingMap().entrySet().iterator());
    }

    @Override
    public final SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override
    public final SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override
    public final NavigableMap headMap(Object obj, boolean z) {
        return new u6(this.h, ((NavigableMap) ((SortedMap) this.d)).headMap(obj, z));
    }

    @Override
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new u6(this.h, ((NavigableMap) ((SortedMap) this.d)).subMap(obj, z, obj2, z2));
    }

    @Override
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new u6(this.h, ((NavigableMap) ((SortedMap) this.d)).tailMap(obj, z));
    }
}
