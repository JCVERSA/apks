package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.rewarded.RewardItem;

public final class zzbwu extends zzbvz {
    private final String zza;
    private final int zzb;

    public zzbwu(@Nullable RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    @Override
    public final int zze() throws RemoteException {
        return this.zzb;
    }

    @Override
    public final String zzf() throws RemoteException {
        return this.zza;
    }

    public zzbwu(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }
}
