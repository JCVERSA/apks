package defpackage;

import defpackage.erj;
import java.util.Arrays;
import java.util.Comparator;

public abstract class tpj implements tqj {
    public final n5f a;
    public final int b;
    public final int[] c;
    public final erj[] d;
    public int e;

    public tpj(n5f n5fVar, int[] iArr, int i) {
        int length = iArr.length;
        n7g.f(length > 0);
        n5fVar.getClass();
        this.a = n5fVar;
        this.b = length;
        this.d = new erj[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.d[i2] = n5fVar.b(iArr[i2]);
        }
        Arrays.sort(this.d, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ((erj) obj2).j - ((erj) obj).j;
            }
        });
        this.c = new int[this.b];
        for (int i3 = 0; i3 < this.b; i3++) {
            this.c[i3] = n5fVar.a(this.d[i3]);
        }
    }

    @Override
    public final int a(int i) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            tpj tpjVar = (tpj) obj;
            if (this.a.equals(tpjVar.a) && Arrays.equals(this.c, tpjVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.e;
        if (i != 0) {
            return i;
        }
        int iIdentityHashCode = (System.identityHashCode(this.a) * 31) + Arrays.hashCode(this.c);
        this.e = iIdentityHashCode;
        return iIdentityHashCode;
    }

    @Override
    public final int zza(int i) {
        return this.c[i];
    }

    @Override
    public final int zzb() {
        return this.c[0];
    }

    @Override
    public final int zzd() {
        return this.c.length;
    }

    @Override
    public final erj zze(int i) {
        return this.d[i];
    }

    @Override
    public final erj zzf() {
        return this.d[0];
    }

    @Override
    public final n5f zzg() {
        return this.a;
    }
}
