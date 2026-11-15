package defpackage;

import com.google.android.gms.internal.ads.zzfwr;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public abstract class j4i extends k4i {
    public Object[] a;
    public int b;
    public boolean c;

    public j4i(int i) {
        t3i.a(i, "initialCapacity");
        this.a = new Object[i];
        this.b = 0;
    }

    public final j4i c(Object obj) {
        obj.getClass();
        f(1);
        Object[] objArr = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
        return this;
    }

    public final k4i d(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            f(collection.size());
            if (collection instanceof zzfwr) {
                this.b = ((zzfwr) collection).zza(this.a, this.b);
                return this;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this;
    }

    public final void e(Object[] objArr, int i) {
        k5i.b(objArr, 2);
        f(2);
        System.arraycopy(objArr, 0, this.a, this.b, 2);
        this.b += 2;
    }

    public final void f(int i) {
        int length = this.a.length;
        int iB = k4i.b(length, this.b + i);
        if (iB > length || this.c) {
            this.a = Arrays.copyOf(this.a, iB);
            this.c = false;
        }
    }
}
