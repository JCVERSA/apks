package defpackage;

import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzfyh;

public final class mqj extends oqj implements Comparable {
    public final int f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final boolean n;

    public mqj(int i, n5f n5fVar, int i2, hqj hqjVar, int i3, String str, String str2) {
        int iM;
        super(i, n5fVar, i2);
        int i4 = 0;
        this.g = y9j.a(i3, false);
        int i5 = this.e.e;
        int i6 = hqjVar.y;
        this.h = 1 == (i5 & 1);
        this.i = (i5 & 2) != 0;
        zzfww zzfwwVarZzo = str2 != null ? zzfww.zzo(str2) : hqjVar.v.isEmpty() ? zzfww.zzo("") : hqjVar.v;
        int i7 = 0;
        while (true) {
            if (i7 >= zzfwwVarZzo.size()) {
                i7 = Integer.MAX_VALUE;
                iM = 0;
                break;
            } else {
                iM = rqj.m(this.e, (String) zzfwwVarZzo.get(i7), false);
                if (iM > 0) {
                    break;
                } else {
                    i7++;
                }
            }
        }
        this.j = i7;
        this.k = iM;
        int iL = rqj.l(this.e.f, str2 != null ? 1088 : 0);
        this.l = iL;
        this.n = (1088 & this.e.f) != 0;
        int iM2 = rqj.m(this.e, str, rqj.p(str) == null);
        this.m = iM2;
        boolean z = iM > 0 || (hqjVar.v.isEmpty() && iL > 0) || this.h || (this.i && iM2 > 0);
        if (y9j.a(i3, hqjVar.Q) && z) {
            i4 = 1;
        }
        this.f = i4;
    }

    @Override
    public final int a() {
        return this.f;
    }

    @Override
    public final boolean b(oqj oqjVar) {
        return false;
    }

    @Override
    public final int compareTo(mqj mqjVar) {
        f4i f4iVarC = f4i.i().d(this.g, mqjVar.g).c(Integer.valueOf(this.j), Integer.valueOf(mqjVar.j), zzfyh.zzc().zza());
        int i = this.k;
        f4i f4iVarB = f4iVarC.b(i, mqjVar.k);
        int i2 = this.l;
        f4i f4iVarB2 = f4iVarB.b(i2, mqjVar.l).d(this.h, mqjVar.h).c(Boolean.valueOf(this.i), Boolean.valueOf(mqjVar.i), i == 0 ? zzfyh.zzc() : zzfyh.zzc().zza()).b(this.m, mqjVar.m);
        if (i2 == 0) {
            f4iVarB2 = f4iVarB2.e(this.n, mqjVar.n);
        }
        return f4iVarB2.a();
    }
}
