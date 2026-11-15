package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class v9j extends a0j {
    public static final int k = 0;
    public final int d;
    public final int e;
    public final int[] f;
    public final int[] g;
    public final w4f[] h;
    public final Object[] i;
    public final HashMap j;

    /* JADX WARN: Illegal instructions before constructor call */
    public v9j(Collection collection, bpj bpjVar) {
        w4f[] w4fVarArr = new w4f[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            w4fVarArr[i2] = ((p8j) it.next()).zza();
            i2++;
        }
        Object[] objArr = new Object[collection.size()];
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            objArr[i] = ((p8j) it2.next()).zzb();
            i++;
        }
        this(w4fVarArr, objArr, bpjVar);
    }

    @Override
    public final int b() {
        return this.e;
    }

    @Override
    public final int c() {
        return this.d;
    }

    @Override
    public final int p(Object obj) {
        Integer num = (Integer) this.j.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override
    public final int q(int i) {
        return kfh.x(this.f, i + 1, false, false);
    }

    @Override
    public final int r(int i) {
        return kfh.x(this.g, i + 1, false, false);
    }

    @Override
    public final int s(int i) {
        return this.f[i];
    }

    @Override
    public final int t(int i) {
        return this.g[i];
    }

    @Override
    public final w4f u(int i) {
        return this.h[i];
    }

    @Override
    public final Object v(int i) {
        return this.i[i];
    }

    public final List y() {
        return Arrays.asList(this.h);
    }

    public final v9j z(bpj bpjVar) {
        w4f[] w4fVarArr = this.h;
        w4f[] w4fVarArr2 = new w4f[w4fVarArr.length];
        for (int i = 0; i < w4fVarArr.length; i++) {
            w4fVarArr2[i] = new u9j(this, w4fVarArr[i]);
        }
        return new v9j(w4fVarArr2, this.i, bpjVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v9j(w4f[] w4fVarArr, Object[] objArr, bpj bpjVar) {
        super(false, bpjVar);
        int i = 0;
        this.h = w4fVarArr;
        int length = w4fVarArr.length;
        this.f = new int[length];
        this.g = new int[length];
        this.i = objArr;
        this.j = new HashMap();
        int iC = 0;
        int iB = 0;
        int i2 = 0;
        while (i < w4fVarArr.length) {
            w4f w4fVar = w4fVarArr[i];
            this.h[i2] = w4fVar;
            this.g[i2] = iC;
            this.f[i2] = iB;
            iC += w4fVar.c();
            iB += this.h[i2].b();
            this.j.put(objArr[i2], Integer.valueOf(i2));
            i++;
            i2++;
        }
        this.d = iC;
        this.e = iB;
    }
}
