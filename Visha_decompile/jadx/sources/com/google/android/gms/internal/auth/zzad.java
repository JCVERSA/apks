package com.google.android.gms.internal.auth;

import android.accounts.Account;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import defpackage.cie;
import defpackage.dae;
import defpackage.see;

final class zzad extends zzah {
    final dae zza;

    public zzad(dae daeVar) {
    }

    @Override
    public final void zzb(@Nullable Account account) {
        new see(account != null ? Status.RESULT_SUCCESS : cie.a, account);
        throw null;
    }
}
