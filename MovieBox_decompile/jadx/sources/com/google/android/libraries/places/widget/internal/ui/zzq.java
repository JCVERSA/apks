package com.google.android.libraries.places.widget.internal.ui;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.DiffUtil;
import com.google.android.libraries.places.api.model.AutocompletePrediction;
import com.google.android.libraries.places.internal.zzkd;

final class zzq extends DiffUtil.e {
    private zzq() {
        throw null;
    }

    public static final boolean zza(AutocompletePrediction autocompletePrediction, AutocompletePrediction autocompletePrediction2) {
        try {
            return autocompletePrediction.getPlaceId().equals(autocompletePrediction2.getPlaceId());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    @SuppressLint({"DiffUtilEquals"})
    public final boolean areContentsTheSame(Object obj, Object obj2) {
        return ((AutocompletePrediction) obj).equals((AutocompletePrediction) obj2);
    }

    @Override
    public final boolean areItemsTheSame(Object obj, Object obj2) {
        return zza((AutocompletePrediction) obj, (AutocompletePrediction) obj2);
    }

    zzq(zzp zzpVar) {
    }
}
