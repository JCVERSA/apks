package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.util.List;

public final class lmj implements apj {
    public final zzfww b;
    public long c;

    public lmj(List list, List list2) {
        int i = zzfww.zzd;
        l4i l4iVar = new l4i();
        n7g.d(list.size() == list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            l4iVar.g(new kmj((apj) list.get(i2), (List) list2.get(i2)));
        }
        this.b = l4iVar.j();
        this.c = C.TIME_UNSET;
    }

    @Override
    public final void a(long j) {
        int i = 0;
        while (true) {
            zzfww zzfwwVar = this.b;
            if (i >= zzfwwVar.size()) {
                return;
            }
            ((kmj) zzfwwVar.get(i)).a(j);
            i++;
        }
    }

    @Override
    public final boolean b(z7j z7jVar) {
        boolean zB;
        boolean z = false;
        do {
            long jZzc = zzc();
            if (jZzc == Long.MIN_VALUE) {
                break;
            }
            int i = 0;
            zB = false;
            while (true) {
                zzfww zzfwwVar = this.b;
                if (i >= zzfwwVar.size()) {
                    break;
                }
                long jZzc2 = ((kmj) zzfwwVar.get(i)).zzc();
                boolean z2 = jZzc2 != Long.MIN_VALUE && jZzc2 <= z7jVar.a;
                if (jZzc2 == jZzc || z2) {
                    zB |= ((kmj) zzfwwVar.get(i)).b(z7jVar);
                }
                i++;
            }
            z |= zB;
        } while (zB);
        return z;
    }

    @Override
    public final long zzb() {
        int i = 0;
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        while (true) {
            zzfww zzfwwVar = this.b;
            if (i >= zzfwwVar.size()) {
                break;
            }
            kmj kmjVar = (kmj) zzfwwVar.get(i);
            long jZzb = kmjVar.zzb();
            if ((kmjVar.f().contains(1) || kmjVar.f().contains(2) || kmjVar.f().contains(4)) && jZzb != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzb);
            }
            if (jZzb != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, jZzb);
            }
            i++;
        }
        if (jMin != Long.MAX_VALUE) {
            this.c = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.c;
        return j != C.TIME_UNSET ? j : jMin2;
    }

    @Override
    public final long zzc() {
        int i = 0;
        long jMin = Long.MAX_VALUE;
        while (true) {
            zzfww zzfwwVar = this.b;
            if (i >= zzfwwVar.size()) {
                break;
            }
            long jZzc = ((kmj) zzfwwVar.get(i)).zzc();
            if (jZzc != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzc);
            }
            i++;
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override
    public final boolean zzp() {
        int i = 0;
        while (true) {
            zzfww zzfwwVar = this.b;
            if (i >= zzfwwVar.size()) {
                return false;
            }
            if (((kmj) zzfwwVar.get(i)).zzp()) {
                return true;
            }
            i++;
        }
    }
}
