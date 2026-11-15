package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

public interface zzbwc extends WritableByteChannel, zzbwq {
    @Override
    void flush() throws IOException;

    zzbwc zzv(int i10) throws IOException;

    zzbwc zzw(int i10) throws IOException;

    zzbwc zzx(String str) throws IOException;
}
