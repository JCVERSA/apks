package org.chromium.net;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.nio.ByteBuffer;

@Deprecated
public final class UploadDataProviders {
    private UploadDataProviders() {
    }

    public static UploadDataProvider create(File file) {
        return qz.a.b(file);
    }

    public static UploadDataProvider create(ParcelFileDescriptor parcelFileDescriptor) {
        return qz.a.a(parcelFileDescriptor);
    }

    public static UploadDataProvider create(ByteBuffer byteBuffer) {
        return qz.a.c(byteBuffer);
    }

    public static UploadDataProvider create(byte[] bArr, int i10, int i11) {
        return qz.a.e(bArr, i10, i11);
    }

    public static UploadDataProvider create(byte[] bArr) {
        return qz.a.d(bArr);
    }
}
