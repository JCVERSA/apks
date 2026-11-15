package defpackage;

import com.google.android.gms.ads.internal.util.client.zzw;
import org.apache.commons.text.StringSubstitutor;

public final class jaj extends zzw {
    public final int a;
    public final int b;
    public final boolean c;

    public jaj(int i, int i2, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzw) {
            zzw zzwVar = (zzw) obj;
            if (this.a == zzwVar.zzb() && this.b == zzwVar.zza() && this.c == zzwVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.b ^ ((this.a ^ 1000003) * 1000003)) * 1000003) ^ (true != this.c ? 1237 : 1231);
    }

    public final String toString() {
        return "OfflineAdConfig{impressionPrerequisite=" + this.a + ", clickPrerequisite=" + this.b + ", notificationFlowEnabled=" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }

    @Override
    public final int zza() {
        return this.b;
    }

    @Override
    public final int zzb() {
        return this.a;
    }

    @Override
    public final boolean zzc() {
        return this.c;
    }
}
