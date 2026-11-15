package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public abstract class q4i {
    public static Object a(Iterable iterable, Object obj) {
        x5i it = ((m5i) iterable).iterator();
        return it.hasNext() ? it.next() : obj;
    }

    public static boolean b(Iterable iterable, w2i w2iVar) {
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            w2iVar.getClass();
            return d((List) iterable, w2iVar);
        }
        Iterator it = iterable.iterator();
        w2iVar.getClass();
        boolean z = false;
        while (it.hasNext()) {
            if (w2iVar.zza(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static void c(List list, w2i w2iVar, int i, int i2) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i2) {
                break;
            } else if (w2iVar.zza(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            } else {
                list.remove(i2);
            }
        }
    }

    public static boolean d(List list, w2i w2iVar) {
        int i = 0;
        int i2 = 0;
        while (i < list.size()) {
            Object obj = list.get(i);
            if (!w2iVar.zza(obj)) {
                if (i > i2) {
                    try {
                        list.set(i2, obj);
                    } catch (IllegalArgumentException unused) {
                        c(list, w2iVar, i2, i);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        c(list, w2iVar, i2, i);
                        return true;
                    }
                }
                i2++;
            }
            i++;
        }
        list.subList(i2, list.size()).clear();
        return i != i2;
    }
}
