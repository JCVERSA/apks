package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.zsi;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class zzgza extends LinkedHashMap {
    private static final zzgza zza;
    private boolean zzb;

    static {
        zzgza zzgzaVar = new zzgza();
        zza = zzgzaVar;
        zzgzaVar.zzb = false;
    }

    private zzgza() {
        this.zzb = true;
    }

    public static zzgza zza() {
        return zza;
    }

    private static int zzf(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof psi) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = zsi.a;
        int length = bArr.length;
        int iB = zsi.b(length, bArr, 0, length);
        if (iB == 0) {
            return 1;
        }
        return iB;
    }

    private final void zzg() {
        if (!this.zzb) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final void clear() {
        zzg();
        super.clear();
    }

    @Override
    public final Set entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            Object value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int hashCode() {
        Iterator it = entrySet().iterator();
        int iZzf = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iZzf += zzf(entry.getValue()) ^ zzf(entry.getKey());
        }
        return iZzf;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        zzg();
        Charset charset = zsi.a;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override
    public final void putAll(Map map) {
        zzg();
        for (Object obj : map.keySet()) {
            Charset charset = zsi.a;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override
    public final Object remove(Object obj) {
        zzg();
        return super.remove(obj);
    }

    public final zzgza zzb() {
        return isEmpty() ? new zzgza() : new zzgza(this);
    }

    public final void zzc() {
        this.zzb = false;
    }

    public final void zzd(zzgza zzgzaVar) {
        zzg();
        if (zzgzaVar.isEmpty()) {
            return;
        }
        putAll(zzgzaVar);
    }

    public final boolean zze() {
        return this.zzb;
    }

    private zzgza(Map map) {
        super(map);
        this.zzb = true;
    }
}
