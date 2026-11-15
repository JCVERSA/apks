package com.google.android.gms.internal.ads;

import defpackage.i4i;
import defpackage.j4i;
import defpackage.k4i;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

public final class m7 extends j4i {
    public Object[] d;
    public int e;

    public m7() {
        super(4);
    }

    @Override
    public final k4i a(Object obj) {
        g(obj);
        return this;
    }

    public final m7 g(Object obj) {
        obj.getClass();
        if (this.d != null) {
            int iZzh = zzfxb.zzh(this.b);
            Object[] objArr = this.d;
            if (iZzh <= objArr.length) {
                int length = objArr.length - 1;
                int iHashCode = obj.hashCode();
                int iA = i4i.a(iHashCode);
                while (true) {
                    int i = iA & length;
                    Object[] objArr2 = this.d;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        iA = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.e += iHashCode;
                        super.c(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.d = null;
        super.c(obj);
        return this;
    }

    public final m7 h(Object... objArr) {
        if (this.d != null) {
            for (int i = 0; i < 2; i++) {
                g(objArr[i]);
            }
        } else {
            e(objArr, 2);
        }
        return this;
    }

    public final m7 i(Iterable iterable) {
        iterable.getClass();
        if (this.d != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g(it.next());
            }
        } else {
            super.d(iterable);
        }
        return this;
    }

    public final zzfxb j() {
        zzfxb zzfxbVarZzv;
        int i = this.b;
        if (i == 0) {
            return zzfyo.zza;
        }
        if (i == 1) {
            Object obj = this.a[0];
            Objects.requireNonNull(obj);
            return new zzfyz(obj);
        }
        if (this.d == null || zzfxb.zzh(i) != this.d.length) {
            zzfxbVarZzv = zzfxb.zzv(this.b, this.a);
            this.b = zzfxbVarZzv.size();
        } else {
            int i2 = this.b;
            Object[] objArrCopyOf = this.a;
            if (zzfxb.zzw(i2, objArrCopyOf.length)) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i2);
            }
            int i3 = this.e;
            Object[] objArr = this.d;
            zzfxbVarZzv = new zzfyo(objArrCopyOf, i3, objArr, objArr.length - 1, this.b);
        }
        this.c = true;
        this.d = null;
        return zzfxbVarZzv;
    }

    public m7(int i, boolean z) {
        super(i);
        this.d = new Object[zzfxb.zzh(i)];
    }
}
