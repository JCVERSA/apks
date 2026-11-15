package com.google.android.gms.internal.ads;

import defpackage.q3i;
import defpackage.t2i;
import java.util.Map;

public final class j7 extends q3i {
    public final Object b;
    public int c;
    public final zzfwf d;

    public j7(zzfwf zzfwfVar, int i) {
        this.d = zzfwfVar;
        this.b = zzfwf.zzg(zzfwfVar, i);
        this.c = i;
    }

    public final void a() {
        int i = this.c;
        if (i != -1) {
            zzfwf zzfwfVar = this.d;
            if (i < zzfwfVar.size() && t2i.a(this.b, zzfwf.zzg(zzfwfVar, this.c))) {
                return;
            }
        }
        this.c = this.d.e(this.b);
    }

    @Override
    public final Object getKey() {
        return this.b;
    }

    @Override
    public final Object getValue() {
        zzfwf zzfwfVar = this.d;
        Map mapZzl = zzfwfVar.zzl();
        if (mapZzl != null) {
            return mapZzl.get(this.b);
        }
        a();
        int i = this.c;
        if (i == -1) {
            return null;
        }
        return zzfwf.zzj(zzfwfVar, i);
    }

    @Override
    public final Object setValue(Object obj) {
        zzfwf zzfwfVar = this.d;
        Map mapZzl = zzfwfVar.zzl();
        if (mapZzl != null) {
            return mapZzl.put(this.b, obj);
        }
        a();
        int i = this.c;
        if (i == -1) {
            zzfwfVar.put(this.b, obj);
            return null;
        }
        Object objZzj = zzfwf.zzj(zzfwfVar, i);
        zzfwf.zzn(zzfwfVar, this.c, obj);
        return objZzj;
    }
}
