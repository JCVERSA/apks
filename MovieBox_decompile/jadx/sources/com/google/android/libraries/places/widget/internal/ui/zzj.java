package com.google.android.libraries.places.widget.internal.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.libraries.places.internal.zzkd;

final class zzj implements TextWatcher {
    final AutocompleteImplFragment zza;

    zzj(AutocompleteImplFragment autocompleteImplFragment, zzi zziVar) {
        this.zza = autocompleteImplFragment;
    }

    @Override
    public final void afterTextChanged(Editable editable) {
        try {
            this.zza.zze.zzm(editable.toString(), this.zza.zzg.getSelectionEnd());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
