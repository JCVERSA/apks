package com.google.android.libraries.places.widget.internal.ui;

import androidx.activity.u;

final class zzf extends u {
    final AutocompleteImplFragment zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzf(AutocompleteImplFragment autocompleteImplFragment, boolean z10) {
        super(true);
        this.zza = autocompleteImplFragment;
    }

    @Override
    public final void handleOnBackPressed() {
        this.zza.zze.zzj();
    }
}
