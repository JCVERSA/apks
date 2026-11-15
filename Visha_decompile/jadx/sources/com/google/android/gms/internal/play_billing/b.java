package com.google.android.gms.internal.play_billing;

import defpackage.gcf;
import defpackage.laf;
import defpackage.wgf;
import java.util.Arrays;

public final class b {
    public Object[] a = new Object[8];
    public int b = 0;
    public wgf c;

    public final b a(Object obj, Object obj2) {
        int i = this.b + 1;
        Object[] objArr = this.a;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.a = Arrays.copyOf(objArr, gcf.a(length, i2));
        }
        laf.a(obj, obj2);
        Object[] objArr2 = this.a;
        int i3 = this.b;
        int i4 = i3 + i3;
        objArr2[i4] = obj;
        objArr2[i4 + 1] = obj2;
        this.b = i3 + 1;
        return this;
    }

    public final zzcd b() {
        wgf wgfVar = this.c;
        if (wgfVar != null) {
            throw wgfVar.a();
        }
        zzco zzcoVarZzg = zzco.zzg(this.b, this.a, this);
        wgf wgfVar2 = this.c;
        if (wgfVar2 == null) {
            return zzcoVarZzg;
        }
        throw wgfVar2.a();
    }
}
