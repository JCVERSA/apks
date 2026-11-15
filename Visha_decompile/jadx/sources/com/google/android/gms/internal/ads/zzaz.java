package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import org.apache.commons.text.StringSubstitutor;

public class zzaz extends IOException {
    public final boolean zza;
    public final int zzb;

    public zzaz(@Nullable String str, @Nullable Throwable th, boolean z, int i) {
        super(str, th);
        this.zza = z;
        this.zzb = i;
    }

    public static zzaz zza(@Nullable String str, @Nullable Throwable th) {
        return new zzaz(str, th, true, 1);
    }

    public static zzaz zzb(@Nullable String str, @Nullable Throwable th) {
        return new zzaz(str, th, true, 0);
    }

    public static zzaz zzc(@Nullable String str) {
        return new zzaz(str, null, false, 1);
    }

    @Override
    public final String getMessage() {
        String message = super.getMessage();
        return (message != null ? message.concat(" ") : "") + "{contentIsMalformed=" + this.zza + ", dataType=" + this.zzb + StringSubstitutor.DEFAULT_VAR_END;
    }
}
