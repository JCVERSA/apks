package com.google.android.libraries.places.internal;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.android.volley.toolbox.i;
import java.util.Map;

final class zzff extends i {
    final Map zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzff(zzfg zzfgVar, String str, com.android.volley.i.b bVar, int i10, int i11, ImageView.ScaleType scaleType, Bitmap.Config config, com.android.volley.i.a aVar, Map map) {
        super(str, bVar, 0, 0, scaleType, config, aVar);
        this.zza = map;
    }

    @Override
    public final Map getHeaders() {
        return this.zza;
    }
}
