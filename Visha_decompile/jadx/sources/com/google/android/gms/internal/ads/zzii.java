package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import defpackage.bnj;
import defpackage.erj;
import defpackage.kfh;
import defpackage.n7g;
import java.io.IOException;

public final class zzii extends zzba {
    public final int zzc;

    @Nullable
    public final String zzd;
    public final int zze;

    @Nullable
    public final erj zzf;
    public final int zzg;

    @Nullable
    public final bnj zzh;
    final boolean zzi;

    private zzii(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, null, false);
    }

    public static zzii zzb(Throwable th, String str, int i, @Nullable erj erjVar, int i2, @Nullable bnj bnjVar, boolean z, int i3) {
        return new zzii(1, th, null, i3, str, i, erjVar, erjVar == null ? 4 : i2, bnjVar, z);
    }

    public static zzii zzc(IOException iOException, int i) {
        return new zzii(0, iOException, i);
    }

    public static zzii zzd(RuntimeException runtimeException, int i) {
        return new zzii(2, runtimeException, i);
    }

    @CheckResult
    public final zzii zza(@Nullable bnj bnjVar) {
        String message = getMessage();
        int i = kfh.a;
        return new zzii(message, getCause(), this.zza, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, bnjVar, this.zzb, this.zzi);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private zzii(int i, @Nullable Throwable th, @Nullable String str, int i2, @Nullable String str2, int i3, @Nullable erj erjVar, int i4, @Nullable bnj bnjVar, boolean z) {
        String str3;
        String str4;
        if (i == 0) {
            str3 = "Source error";
        } else if (i != 1) {
            str3 = "Unexpected runtime error";
        } else {
            String strValueOf = String.valueOf(erjVar);
            int i5 = kfh.a;
            if (i4 == 0) {
                str4 = "NO";
            } else if (i4 == 1) {
                str4 = "NO_UNSUPPORTED_TYPE";
            } else if (i4 == 2) {
                str4 = "NO_UNSUPPORTED_DRM";
            } else if (i4 == 3) {
                str4 = "NO_EXCEEDS_CAPABILITIES";
            } else {
                if (i4 != 4) {
                    throw new IllegalStateException();
                }
                str4 = "YES";
            }
            str3 = str2 + " error, index=" + i3 + ", format=" + strValueOf + ", format_supported=" + str4;
        }
        this(TextUtils.isEmpty(null) ? str3 : str3.concat(": null"), th, i2, i, str2, i3, erjVar, i4, bnjVar, SystemClock.elapsedRealtime(), z);
    }

    private zzii(String str, @Nullable Throwable th, int i, int i2, @Nullable String str2, int i3, @Nullable erj erjVar, int i4, @Nullable bnj bnjVar, long j, boolean z) {
        int i5;
        boolean z2;
        super(str, th, i, Bundle.EMPTY, j);
        if (z) {
            i5 = i2;
            if (i5 == 1) {
                i5 = 1;
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            i5 = i2;
            z2 = true;
        }
        n7g.d(z2);
        n7g.d(th != null);
        this.zzc = i5;
        this.zzd = str2;
        this.zze = i3;
        this.zzf = erjVar;
        this.zzg = i4;
        this.zzh = bnjVar;
        this.zzi = z;
    }
}
