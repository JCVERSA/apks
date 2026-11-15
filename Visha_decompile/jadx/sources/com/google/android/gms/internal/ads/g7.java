package com.google.android.gms.internal.ads;

import defpackage.b4i;
import defpackage.t2i;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

public final class g7 extends AbstractSet {
    public final zzfwf b;

    public g7(zzfwf zzfwfVar) {
        this.b = zzfwfVar;
    }

    @Override
    public final void clear() {
        this.b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        zzfwf zzfwfVar = this.b;
        Map mapZzl = zzfwfVar.zzl();
        if (mapZzl != null) {
            return mapZzl.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iE = zzfwfVar.e(entry.getKey());
            if (iE != -1 && t2i.a(zzfwf.zzj(zzfwfVar, iE), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Iterator iterator() {
        zzfwf zzfwfVar = this.b;
        Map mapZzl = zzfwfVar.zzl();
        return mapZzl != null ? mapZzl.entrySet().iterator() : new e7(zzfwfVar);
    }

    @Override
    public final boolean remove(Object obj) {
        zzfwf zzfwfVar = this.b;
        Map mapZzl = zzfwfVar.zzl();
        if (mapZzl != null) {
            return mapZzl.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (zzfwfVar.zzr()) {
            return false;
        }
        int iD = zzfwfVar.d();
        int iB = b4i.b(entry.getKey(), entry.getValue(), iD, zzfwf.zzi(zzfwfVar), zzfwfVar.a(), zzfwfVar.b(), zzfwfVar.c());
        if (iB == -1) {
            return false;
        }
        zzfwfVar.zzq(iB, iD);
        zzfwfVar.d--;
        zzfwfVar.zzo();
        return true;
    }

    @Override
    public final int size() {
        return this.b.size();
    }
}
