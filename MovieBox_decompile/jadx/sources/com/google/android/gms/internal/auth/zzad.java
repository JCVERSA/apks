package com.google.android.gms.internal.auth;

import android.accounts.Account;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;

final class zzad extends zzah {
    final zzae zza;

    zzad(zzae zzaeVar) {
        this.zza = zzaeVar;
    }

    @Override
    public final void zzb(@Nullable Account account) {
        this.zza.setResult(new zzai(account != null ? Status.RESULT_SUCCESS : zzal.zza, account));
    }
}
