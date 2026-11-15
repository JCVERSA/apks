package defpackage;

import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyj;
import com.google.android.gms.internal.ads.zzgyk;

public abstract class pui {
    public static volatile int a = 100;

    public abstract Object a(Object obj);

    public abstract Object b();

    public abstract Object c(Object obj);

    public abstract void d(Object obj, int i, int i2);

    public abstract void e(Object obj, int i, long j);

    public abstract void f(Object obj, int i, Object obj2);

    public abstract void g(Object obj, int i, zzgwn zzgwnVar);

    public abstract void h(Object obj, int i, long j);

    public abstract void i(Object obj);

    public abstract void j(Object obj, Object obj2);

    public final boolean k(Object obj, aui auiVar, int i) throws zzgyk {
        int iZzd = auiVar.zzd();
        int i2 = iZzd >>> 3;
        int i3 = iZzd & 7;
        if (i3 == 0) {
            h(obj, i2, auiVar.zzl());
            return true;
        }
        if (i3 == 1) {
            e(obj, i2, auiVar.zzk());
            return true;
        }
        if (i3 == 2) {
            g(obj, i2, auiVar.zzp());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                if (i != 0) {
                    return false;
                }
                throw new zzgyk("Protocol message end-group tag did not match expected tag.");
            }
            if (i3 != 5) {
                throw new zzgyj("Protocol message tag had invalid wire type.");
            }
            d(obj, i2, auiVar.zzf());
            return true;
        }
        Object objB = b();
        int i4 = i2 << 3;
        int i5 = i + 1;
        if (i5 >= a) {
            throw new zzgyk("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (auiVar.zzc() != Integer.MAX_VALUE && k(objB, auiVar, i5)) {
        }
        if ((i4 | 4) != auiVar.zzd()) {
            throw new zzgyk("Protocol message end-group tag did not match expected tag.");
        }
        f(obj, i2, c(objB));
        return true;
    }
}
