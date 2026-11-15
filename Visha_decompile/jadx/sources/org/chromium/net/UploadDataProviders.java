package org.chromium.net;

import android.os.ParcelFileDescriptor;
import defpackage.khb;
import java.io.File;
import java.nio.ByteBuffer;

@Deprecated
public final class UploadDataProviders {
    private UploadDataProviders() {
    }

    public static UploadDataProvider create(File file) {
        return khb.b(file);
    }

    public static UploadDataProvider create(ParcelFileDescriptor parcelFileDescriptor) {
        return khb.a(parcelFileDescriptor);
    }

    public static UploadDataProvider create(ByteBuffer byteBuffer) {
        return khb.c(byteBuffer);
    }

    public static UploadDataProvider create(byte[] bArr, int i, int i2) {
        return khb.e(bArr, i, i2);
    }

    public static UploadDataProvider create(byte[] bArr) {
        return khb.d(bArr);
    }
}
