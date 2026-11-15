package defpackage;

import com.google.android.gms.ads.internal.util.client.zzx;
import org.apache.commons.text.StringSubstitutor;

public final class xbj extends zzx {
    public final int a;
    public final int b;
    public final double c;
    public final boolean d;

    public xbj(int i, int i2, double d, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = d;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzx) {
            zzx zzxVar = (zzx) obj;
            if (this.a == zzxVar.zzc() && this.b == zzxVar.zzb() && Double.doubleToLongBits(this.c) == Double.doubleToLongBits(zzxVar.zza()) && this.d == zzxVar.zzd()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        double d = this.c;
        return ((((this.b ^ ((this.a ^ 1000003) * 1000003)) * 1000003) ^ ((int) (Double.doubleToLongBits(d) ^ (Double.doubleToLongBits(d) >>> 32)))) * 1000003) ^ (true != this.d ? 1237 : 1231);
    }

    public final String toString() {
        return "PingStrategy{maxAttempts=" + this.a + ", initialBackoffMs=" + this.b + ", backoffMultiplier=" + this.c + ", bufferAfterMaxAttempts=" + this.d + StringSubstitutor.DEFAULT_VAR_END;
    }

    @Override
    public final double zza() {
        return this.c;
    }

    @Override
    public final int zzb() {
        return this.b;
    }

    @Override
    public final int zzc() {
        return this.a;
    }

    @Override
    public final boolean zzd() {
        return this.d;
    }
}
