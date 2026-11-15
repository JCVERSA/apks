package defpackage;

import com.google.android.gms.internal.ads.p7;
import com.google.android.gms.internal.ads.zzfww;

public final class npj {
    public static final npj d = new npj(new n5f[0]);
    public final int a;
    public final zzfww b;
    public int c;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
    }

    public npj(n5f... n5fVarArr) {
        this.b = zzfww.zzm(n5fVarArr);
        this.a = n5fVarArr.length;
        int i = 0;
        while (i < this.b.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.b.size(); i3++) {
                if (((n5f) this.b.get(i)).equals(this.b.get(i3))) {
                    zrg.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    public final int a(n5f n5fVar) {
        int iIndexOf = this.b.indexOf(n5fVar);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public final n5f b(int i) {
        return (n5f) this.b.get(i);
    }

    public final zzfww c() {
        return zzfww.zzl(p7.b(this.b, new m2i() {
            @Override
            public final Object apply(Object obj) {
                npj npjVar = npj.d;
                return Integer.valueOf(((n5f) obj).c);
            }
        }));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && npj.class == obj.getClass()) {
            npj npjVar = (npj) obj;
            if (this.a == npjVar.a && this.b.equals(npjVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.b.hashCode();
        this.c = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        return this.b.toString();
    }
}
