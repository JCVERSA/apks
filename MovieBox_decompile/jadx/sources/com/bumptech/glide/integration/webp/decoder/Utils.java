package com.bumptech.glide.integration.webp.decoder;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

class Utils {
    private static final String TAG = "Utils";

    Utils() {
    }

    static int getSampleSize(int i10, int i11, int i12, int i13) {
        int iMin = Math.min(i11 / i13, i10 / i12);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable(TAG, 2) && iMax > 1) {
            Log.v(TAG, "Downsampling WEBP, sampleSize: " + iMax + ", target dimens: [" + i12 + "x" + i13 + "], actual dimens: [" + i10 + "x" + i11 + "]");
        }
        return iMax;
    }

    static byte[] inputStreamToBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException e10) {
            if (!Log.isLoggable(TAG, 5)) {
                return null;
            }
            Log.w(TAG, "Error reading data from stream", e10);
            return null;
        }
    }
}
