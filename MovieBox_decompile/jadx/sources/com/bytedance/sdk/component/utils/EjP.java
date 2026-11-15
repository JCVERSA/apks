package com.bytedance.sdk.component.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayOutputStream;

public class EjP {
    public static Bitmap Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] Sj(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getByteCount());
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static Bitmap Sj(Bitmap bitmap, int i10, int i11) {
        if (bitmap == null) {
            return null;
        }
        if (i10 <= 0 || i11 <= 0) {
            return bitmap;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (i10 < width && i11 < height) {
                Matrix matrix = new Matrix();
                matrix.postScale(i10 / width, i11 / height);
                return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
            }
            return bitmap;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }
}
