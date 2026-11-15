package com.google.android.gms.internal.ads;

import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.a5i;
import defpackage.s5i;
import defpackage.t3i;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

public abstract class zzfwz implements Map, Serializable {
    private transient zzfxb zza;
    private transient zzfxb zzb;
    private transient zzfwr zzc;

    public static zzfwz zzc(Map map) {
        Set setEntrySet = map.entrySet();
        l7 l7Var = new l7(setEntrySet instanceof Collection ? setEntrySet.size() : 4);
        l7Var.b(setEntrySet);
        return l7Var.c();
    }

    public static zzfwz zzd() {
        return zzfyn.zza;
    }

    public static zzfwz zze(Object obj, Object obj2) {
        t3i.b("dialog_not_shown_reason", obj2);
        return zzfyn.zzj(1, new Object[]{"dialog_not_shown_reason", obj2}, null);
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override
    public final boolean equals(Object obj) {
        return a5i.b(this, obj);
    }

    @Override
    public abstract Object get(Object obj);

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override
    public final int hashCode() {
        return s5i.a(entrySet());
    }

    @Override
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        t3i.a(size, PlayAudioData.TAG_SIZE);
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public abstract zzfwr zza();

    @Override
    public final zzfwr values() {
        zzfwr zzfwrVar = this.zzc;
        if (zzfwrVar != null) {
            return zzfwrVar;
        }
        zzfwr zzfwrVarZza = zza();
        this.zzc = zzfwrVarZza;
        return zzfwrVarZza;
    }

    public abstract zzfxb zzf();

    public abstract zzfxb zzg();

    @Override
    public final zzfxb entrySet() {
        zzfxb zzfxbVar = this.zza;
        if (zzfxbVar != null) {
            return zzfxbVar;
        }
        zzfxb zzfxbVarZzf = zzf();
        this.zza = zzfxbVarZzf;
        return zzfxbVarZzf;
    }

    @Override
    public final zzfxb keySet() {
        zzfxb zzfxbVar = this.zzb;
        if (zzfxbVar != null) {
            return zzfxbVar;
        }
        zzfxb zzfxbVarZzg = zzg();
        this.zzb = zzfxbVarZzg;
        return zzfxbVarZzg;
    }
}
