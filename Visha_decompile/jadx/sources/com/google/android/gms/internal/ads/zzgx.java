package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import defpackage.cfi;
import java.io.IOException;
import java.util.Map;

public final class zzgx extends zzgv {
    public final int zzc;

    public zzgx(int i, @Nullable String str, @Nullable IOException iOException, Map map, cfi cfiVar, byte[] bArr) {
        super("Response code: " + i, iOException, cfiVar, 2004, 1);
        this.zzc = i;
    }
}
