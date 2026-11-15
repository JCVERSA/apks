package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    private static final Object zza = new Object();
    private boolean zzb = false;

    public static boolean canUnparcelSafely(@NonNull String str) {
        synchronized (zza) {
        }
        return true;
    }

    @Nullable
    public static Integer getUnparcelClientVersion() {
        synchronized (zza) {
        }
        return null;
    }

    public abstract boolean prepareForClientVersion(int i);

    public void setShouldDowngrade(boolean z) {
        this.zzb = z;
    }

    public boolean shouldDowngrade() {
        return this.zzb;
    }
}
