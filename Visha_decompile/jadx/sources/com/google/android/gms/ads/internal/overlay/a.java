package com.google.android.gms.ads.internal.overlay;

import android.view.View;

public final class a implements View.OnClickListener {
    public final zzm b;

    public a(zzm zzmVar) {
        this.b = zzmVar;
    }

    @Override
    public final void onClick(View view) {
        zzm zzmVar = this.b;
        zzmVar.zzn = 2;
        zzmVar.zzb.finish();
    }
}
