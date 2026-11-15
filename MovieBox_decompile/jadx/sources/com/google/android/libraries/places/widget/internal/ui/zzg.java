package com.google.android.libraries.places.widget.internal.ui;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.libraries.places.internal.zzkd;

final class zzg extends RecyclerView.r {
    final AutocompleteImplFragment zza;

    zzg(AutocompleteImplFragment autocompleteImplFragment) {
        this.zza = autocompleteImplFragment;
    }

    @Override
    public final void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        if (i10 == 1) {
            try {
                this.zza.zze.zzg();
                this.zza.zzg.clearFocus();
            } catch (Error | RuntimeException e10) {
                zzkd.zzb(e10);
                throw e10;
            }
        }
    }
}
