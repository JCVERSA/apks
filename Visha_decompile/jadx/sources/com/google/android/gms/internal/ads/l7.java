package com.google.android.gms.internal.ads;

import defpackage.k4i;
import defpackage.n4i;
import defpackage.t3i;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class l7 {
    public Object[] a;
    public int b;
    public n4i c;

    public l7() {
        this(4);
    }

    public final l7 a(Object obj, Object obj2) {
        d(this.b + 1);
        t3i.b(obj, obj2);
        Object[] objArr = this.a;
        int i = this.b;
        int i2 = i + i;
        objArr[i2] = obj;
        objArr[i2 + 1] = obj2;
        this.b = i + 1;
        return this;
    }

    public final l7 b(Iterable iterable) {
        if (iterable instanceof Collection) {
            d(this.b + ((Collection) iterable).size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            a(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzfwz c() {
        n4i n4iVar = this.c;
        if (n4iVar != null) {
            throw n4iVar.a();
        }
        zzfyn zzfynVarZzj = zzfyn.zzj(this.b, this.a, this);
        n4i n4iVar2 = this.c;
        if (n4iVar2 == null) {
            return zzfynVarZzj;
        }
        throw n4iVar2.a();
    }

    public final void d(int i) {
        Object[] objArr = this.a;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.a = Arrays.copyOf(objArr, k4i.b(length, i2));
        }
    }

    public l7(int i) {
        this.a = new Object[i + i];
        this.b = 0;
    }
}
