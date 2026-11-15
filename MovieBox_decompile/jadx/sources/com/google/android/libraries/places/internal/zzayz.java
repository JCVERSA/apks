package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

public final class zzayz implements zzazb {
    @Override
    public final InputStream zza(InputStream inputStream) throws IOException {
        return new GZIPInputStream(inputStream);
    }

    @Override
    public final String zzb() {
        return "gzip";
    }
}
