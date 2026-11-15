package defpackage;

import com.google.android.gms.internal.ads.j8;

public final class h8h implements eeh {
    public final ajh a;

    public h8h(ajh ajhVar) {
        this.a = ajhVar;
    }

    @Override
    public final int zza() {
        return 15;
    }

    @Override
    public final im5 zzb() {
        ajh ajhVar = this.a;
        if (ajhVar == null) {
            return j8.h(new g8h(null));
        }
        String strA = ajhVar.a();
        return v0a.a(strA) ? j8.h(new g8h(null)) : j8.h(new g8h(strA));
    }
}
