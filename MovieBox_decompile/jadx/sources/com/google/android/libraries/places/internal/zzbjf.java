package com.google.android.libraries.places.internal;

final class zzbjf implements zzbaq {
    zzbjf() {
    }

    @Override
    public final Object zza(byte[] bArr) {
        if (bArr.length < 3) {
            throw new NumberFormatException("Malformed status code ".concat(new String(bArr, zzbar.zza)));
        }
        return Integer.valueOf(((bArr[0] - 48) * 100) + ((bArr[1] - 48) * 10) + (bArr[2] - 48));
    }

    @Override
    public final byte[] zzb(Object obj) {
        throw new UnsupportedOperationException();
    }
}
