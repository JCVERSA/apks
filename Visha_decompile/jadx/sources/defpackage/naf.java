package defpackage;

import com.google.android.gms.internal.ads.zzfww;
import java.util.List;

public final class naf {
    public static final naf b = new naf(zzfww.zzn());
    public final zzfww a;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
    }

    public naf(List list) {
        this.a = zzfww.zzl(list);
    }

    public final zzfww a() {
        return this.a;
    }

    public final boolean b(int i) {
        int i2 = 0;
        while (true) {
            zzfww zzfwwVar = this.a;
            if (i2 >= zzfwwVar.size()) {
                return false;
            }
            x9f x9fVar = (x9f) zzfwwVar.get(i2);
            if (x9fVar.c() && x9fVar.a() == i) {
                return true;
            }
            i2++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || naf.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((naf) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
