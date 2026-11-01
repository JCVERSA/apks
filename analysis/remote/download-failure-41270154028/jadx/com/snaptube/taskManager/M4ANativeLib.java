package com.snaptube.taskManager;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.util.ProductionEnv;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import o.xe6;
import o.yn4;

public class M4ANativeLib {
    private static final String LIB_NAME = "mp3cvt";
    private static final String TAG = "M4ANativeLib";
    private static boolean supported;

    static {
        try {
            xe6.a(PhoenixApplication.z(), LIB_NAME);
            supported = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static native long convertDASH2MPEG(String str, String str2);

    public static boolean convertDASHM4A(String str, String str2) {
        if (!isSupported() || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equals(str2)) {
            return false;
        }
        if (!isDashFormat(str)) {
            ProductionEnv.d(TAG, String.format("[convertDASHM4A] file is not dash format: %s", str));
            return true;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jConvertDASH2MPEG = convertDASH2MPEG(str, str2);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            String str3 = TAG;
            ProductionEnv.d(str3, "[convertDASHM4A] errorCode = " + jConvertDASH2MPEG);
            ProductionEnv.d(str3, String.format("[convertDASHM4A] timeUsed = %d ms", Long.valueOf(jCurrentTimeMillis2)));
            return jConvertDASH2MPEG == 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static Bitmap createBitmap(byte[] bArr, int i, int i2) {
        return (i <= 0 || i2 <= 0) ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length) : yn4.k(i, i2, bArr);
    }

    public static byte[] getBitmapByteArray(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] byteArray = bitmap.compress(Bitmap.CompressFormat.JPEG, 25, byteArrayOutputStream) ? byteArrayOutputStream.toByteArray() : null;
        try {
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArray;
    }

    public static native boolean isDashFormat(String str);

    public static boolean isSupported() {
        return supported;
    }

    public static MediaMetadataCompat loadM4aMetadata(String str, boolean z, boolean z2, int i, int i2) {
        if (!isSupported() || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MediaMetadataCompat.Builder m4aMetadata = readM4aMetadata(str, z, z2, i, i2);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("[loadM4aMetadata] success = ");
            sb.append(m4aMetadata != null);
            ProductionEnv.d(str2, sb.toString());
            ProductionEnv.d(str2, String.format("[loadM4aMetadata] timeUsed = %d ms", Long.valueOf(jCurrentTimeMillis2)));
            if (m4aMetadata == null) {
                return null;
            }
            return m4aMetadata.build();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static MediaMetadataCompat loadM4aMetadataByFd(int i, boolean z, boolean z2, int i2, int i3) {
        if (!isSupported()) {
            return null;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            MediaMetadataCompat.Builder m4aMetadataByFD = readM4aMetadataByFD(i, z, z2, i2, i3);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("[loadM4aMetadata] success = ");
            sb.append(m4aMetadataByFD != null);
            ProductionEnv.d(str, sb.toString());
            ProductionEnv.d(str, String.format("[loadM4aMetadata] timeUsed = %d ms", Long.valueOf(jCurrentTimeMillis2)));
            if (m4aMetadataByFD == null) {
                return null;
            }
            return m4aMetadataByFD.build();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static native MediaMetadataCompat.Builder readM4aMetadata(String str, boolean z, boolean z2, int i, int i2);

    private static native MediaMetadataCompat.Builder readM4aMetadataByFD(int i, boolean z, boolean z2, int i2, int i3);

    public static boolean storeM4aMetadata(String str, MediaMetadataCompat mediaMetadataCompat) {
        if (!TextUtils.isEmpty(str) && mediaMetadataCompat != null) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                boolean zWriteM4aMetadata = writeM4aMetadata(str, mediaMetadataCompat);
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                String str2 = TAG;
                ProductionEnv.d(str2, "[storeM4aMetadata] success = " + zWriteM4aMetadata);
                ProductionEnv.d(str2, String.format("[storeM4aMetadata] timeUsed = %d ms", Long.valueOf(jCurrentTimeMillis2)));
                return zWriteM4aMetadata;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public static boolean storeM4aMetadataByFD(int i, MediaMetadataCompat mediaMetadataCompat) {
        if (i >= 0 && mediaMetadataCompat != null) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                boolean zWriteM4aMetadataByFD = writeM4aMetadataByFD(i, mediaMetadataCompat);
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                String str = TAG;
                ProductionEnv.d(str, "[storeM4aMetadata] success = " + zWriteM4aMetadataByFD);
                ProductionEnv.d(str, String.format("[storeM4aMetadata] timeUsed = %d ms", Long.valueOf(jCurrentTimeMillis2)));
                return zWriteM4aMetadataByFD;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    private static native boolean writeM4aMetadata(String str, MediaMetadataCompat mediaMetadataCompat);

    private static native boolean writeM4aMetadataByFD(int i, MediaMetadataCompat mediaMetadataCompat);
}
