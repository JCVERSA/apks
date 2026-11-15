package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import defpackage.gaf;
import defpackage.haf;

public final class u3 {
    public final NativeCustomFormatAd.OnCustomFormatAdLoadedListener a;
    public final NativeCustomFormatAd.OnCustomClickListener b;
    public NativeCustomFormatAd c;

    public u3(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.a = onCustomFormatAdLoadedListener;
        this.b = onCustomClickListener;
    }

    public final zzbgx a() {
        gaf gafVar = null;
        if (this.b == null) {
            return null;
        }
        return new zzbsi(this, gafVar);
    }

    public final zzbha b() {
        return new zzbsj(this, null);
    }

    public final synchronized NativeCustomFormatAd f(zzbgn zzbgnVar) {
        NativeCustomFormatAd nativeCustomFormatAd = this.c;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        haf hafVar = new haf(zzbgnVar);
        this.c = hafVar;
        return hafVar;
    }
}
