package com.google.android.libraries.places.internal;

import java.nio.ByteBuffer;

final class zzbga implements zzbgc {
    zzbga() {
    }

    @Override
    public final int zza(zzbnv zzbnvVar, int i10, Object obj, int i11) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(byteBuffer.position() + i10);
        zzbnvVar.zzi(byteBuffer);
        byteBuffer.limit(iLimit);
        return 0;
    }
}
