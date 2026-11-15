package com.google.android.libraries.places.widget.internal.ui;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.i;
import com.google.android.libraries.places.R;
import com.google.android.libraries.places.api.model.AutocompletePrediction;
import com.google.android.libraries.places.internal.zzkd;
import java.util.List;

public final class zzr extends i {
    private int zza;
    private boolean zzb;
    private final zzd zzc;

    public zzr(zzd zzdVar) {
        super(new zzq(null));
        this.zzb = true;
        this.zzc = zzdVar;
    }

    @Override
    public final void submitList(@Nullable List list) {
        try {
            int size = 0;
            this.zzb = (this.zza != 0 || list == null || list.isEmpty()) ? false : true;
            if (list != null) {
                size = list.size();
            }
            this.zza = size;
            super.submitList(list);
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }

    @Override
    public final zzt onCreateViewHolder(ViewGroup viewGroup, int i10) {
        try {
            return new zzt(this.zzc, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.places_autocomplete_prediction, viewGroup, false));
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    public final void onBindViewHolder(zzt zztVar, int i10) {
        try {
            zztVar.zza((AutocompletePrediction) getItem(i10), this.zzb);
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }
}
