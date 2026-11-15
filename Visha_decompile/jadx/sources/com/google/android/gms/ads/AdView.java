package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import defpackage.wd8;

public final class AdView extends BaseAdView {
    public AdView(@NonNull Context context) {
        super(context, 0);
        wd8.m(context, "Context cannot be null");
    }

    @NonNull
    public final VideoController zza() {
        return this.b.zzf();
    }

    public AdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public AdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }
}
