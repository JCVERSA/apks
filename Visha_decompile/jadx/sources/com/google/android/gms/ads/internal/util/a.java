package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;

public final class a implements DialogInterface.OnClickListener {
    public final Context b;

    public a(zzax zzaxVar, Context context) {
        this.b = context;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzV(this.b, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
