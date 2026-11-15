package defpackage;

import com.google.android.gms.internal.ads.zzgtt;
import java.util.Objects;

public final class uhi extends p9i {
    public final vji a;

    public uhi(vji vjiVar) {
        this.a = vjiVar;
    }

    @Override
    public final boolean a() {
        return this.a.c().f0() != zzgtt.RAW;
    }

    public final vji b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof uhi)) {
            return false;
        }
        vji vjiVar = ((uhi) obj).a;
        vji vjiVar2 = this.a;
        return vjiVar2.c().f0().equals(vjiVar.c().f0()) && vjiVar2.c().h0().equals(vjiVar.c().h0()) && vjiVar2.c().g0().equals(vjiVar.c().g0());
    }

    public final int hashCode() {
        vji vjiVar = this.a;
        return Objects.hash(vjiVar.c(), vjiVar.zzd());
    }

    public final String toString() {
        String str;
        vji vjiVar = this.a;
        String strH0 = vjiVar.c().h0();
        int iOrdinal = vjiVar.c().f0().ordinal();
        if (iOrdinal == 1) {
            str = "TINK";
        } else if (iOrdinal == 2) {
            str = "LEGACY";
        } else if (iOrdinal != 3) {
            str = iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return String.format("(typeUrl=%s, outputPrefixType=%s)", strH0, str);
    }
}
