package com.google.android.gms.ads.nonagon.util.logging.csi;

import androidx.annotation.NonNull;
import defpackage.fyi;
import defpackage.p5e;

public final class CsiUrlBuilder_Factory implements fyi {
    @NonNull
    public static CsiUrlBuilder_Factory create() {
        return p5e.a;
    }

    @NonNull
    public static CsiUrlBuilder newInstance() {
        return new CsiUrlBuilder();
    }

    @Override
    @NonNull
    public CsiUrlBuilder zzb() {
        return newInstance();
    }
}
