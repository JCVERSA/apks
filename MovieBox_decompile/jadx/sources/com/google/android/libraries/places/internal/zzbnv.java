package com.google.android.libraries.places.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public interface zzbnv extends Closeable {
    @Override
    void close();

    void zzb();

    void zzc();

    boolean zzd();

    int zze();

    int zzf();

    zzbnv zzg(int i10);

    void zzi(ByteBuffer byteBuffer);

    void zzj(OutputStream outputStream, int i10) throws IOException;

    void zzk(byte[] bArr, int i10, int i11);

    void zzl(int i10);
}
