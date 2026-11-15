package defpackage;

import com.google.android.gms.internal.ads.zzgtt;

public final class rhi extends p9i {
    public final String a;
    public final zzgtt b;

    public rhi(String str, zzgtt zzgttVar, shi shiVar) {
        this.a = str;
        this.b = zzgttVar;
    }

    @Override
    public final boolean a() {
        return this.b != zzgtt.RAW;
    }

    public final String toString() {
        String str;
        String str2 = this.a;
        int iOrdinal = this.b.ordinal();
        if (iOrdinal == 1) {
            str = "TINK";
        } else if (iOrdinal == 2) {
            str = "LEGACY";
        } else if (iOrdinal != 3) {
            str = iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return String.format("(typeUrl=%s, outputPrefixType=%s)", str2, str);
    }
}
