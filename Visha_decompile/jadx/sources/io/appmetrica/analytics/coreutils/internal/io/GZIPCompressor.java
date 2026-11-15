package io.appmetrica.analytics.coreutils.internal.io;

import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.io.Compressor;
import java.io.IOException;

public class GZIPCompressor implements Compressor {
    @Override
    @Nullable
    public byte[] compress(@Nullable byte[] bArr) throws IOException {
        if (bArr == null) {
            return null;
        }
        return GZIPUtils.gzipBytes(bArr);
    }

    @Override
    @Nullable
    public byte[] uncompress(@Nullable byte[] bArr) throws IOException {
        if (bArr == null) {
            return null;
        }
        return GZIPUtils.unGzipBytes(bArr);
    }
}
