package com.bumptech.glide.integration.webp;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.Keep;
import java.io.BufferedInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@Keep
public class WebpBitmapFactory {
    private static final int IN_TEMP_BUFFER_SIZE = 8192;
    private static final int MAX_WEBP_HEADER_SIZE = 21;

    static {
        System.loadLibrary("glide-webp");
    }

    @Keep
    private static Bitmap createBitmap(int i10, int i11, BitmapFactory.Options options) {
        Bitmap bitmap;
        if (options != null && (bitmap = options.inBitmap) != null && bitmap.isMutable()) {
            return options.inBitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setHasAlpha(true);
        bitmapCreateBitmap.eraseColor(0);
        return bitmapCreateBitmap;
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i10, int i11) {
        return decodeByteArray(bArr, i10, i11, null);
    }

    public static Bitmap decodeFile(String str) {
        return decodeFile(str, null);
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        return decodeFileDescriptor(fileDescriptor, null, null);
    }

    public static Bitmap decodeResource(Resources resources, int i10) {
        return decodeResource(resources, i10, null);
    }

    public static Bitmap decodeResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        if (options.inDensity == 0 && typedValue != null) {
            int i10 = typedValue.density;
            if (i10 == 0) {
                options.inDensity = 160;
            } else if (i10 != 65535) {
                options.inDensity = i10;
            }
        }
        if (options.inTargetDensity == 0 && resources != null) {
            options.inTargetDensity = resources.getDisplayMetrics().densityDpi;
        }
        return decodeStream(inputStream, rect, options);
    }

    public static Bitmap decodeStream(InputStream inputStream) {
        return decodeStream(inputStream, null, null);
    }

    private static byte[] getImageHeader(InputStream inputStream) {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream, 21);
        }
        inputStream.mark(21);
        byte[] bArr = new byte[21];
        try {
            inputStream.read(bArr, 0, 21);
            inputStream.reset();
            return bArr;
        } catch (IOException unused) {
            return null;
        }
    }

    private static byte[] getInTempStorageFromOptions(BitmapFactory.Options options) {
        byte[] bArr;
        return (options == null || (bArr = options.inTempStorage) == null) ? new byte[8192] : bArr;
    }

    private static float getScaleFromOptions(BitmapFactory.Options options) {
        if (options == null) {
            return 1.0f;
        }
        int i10 = options.inSampleSize;
        float f10 = i10 > 1 ? 1.0f / i10 : 1.0f;
        if (!options.inScaled) {
            return f10;
        }
        int i11 = options.inDensity;
        int i12 = options.inTargetDensity;
        return (i11 == 0 || i12 == 0 || i11 == options.inScreenDensity) ? f10 : i12 / i11;
    }

    private static native Bitmap nativeDecodeByteArray(byte[] bArr, int i10, int i11, BitmapFactory.Options options, float f10, byte[] bArr2);

    private static native Bitmap nativeDecodeStream(InputStream inputStream, BitmapFactory.Options options, float f10, byte[] bArr);

    private static void setDefaultPadding(Rect rect) {
        if (rect != null) {
            rect.top = -1;
            rect.left = -1;
            rect.bottom = -1;
            rect.right = -1;
        }
    }

    private static void setDensityFromOptions(Bitmap bitmap, BitmapFactory.Options options) {
        if (bitmap == null || options == null) {
            return;
        }
        int i10 = options.inDensity;
        if (i10 == 0) {
            if (options.inBitmap != null) {
                bitmap.setDensity(160);
                return;
            }
            return;
        }
        bitmap.setDensity(i10);
        int i11 = options.inTargetDensity;
        if (i11 == 0 || i10 == i11 || i10 == options.inScreenDensity || !options.inScaled) {
            return;
        }
        bitmap.setDensity(i11);
    }

    @Keep
    private static boolean setOutDimensions(BitmapFactory.Options options, int i10, int i11) {
        if (options == null) {
            return false;
        }
        options.outWidth = i10;
        options.outHeight = i11;
        return options.inJustDecodeBounds;
    }

    private static void setWebpBitmapOptions(Bitmap bitmap, BitmapFactory.Options options) {
        setDensityFromOptions(bitmap, options);
        if (options != null) {
            options.outMimeType = "image/webp";
        }
    }

    public static boolean webpSupportRequired(byte[] bArr, int i10, int i11) {
        try {
            WebpHeaderParser.getType(bArr, i10, i11);
            return false;
        } catch (IOException unused) {
            WebpHeaderParser.WebpImageType webpImageType = WebpHeaderParser.WebpImageType.WEBP_SIMPLE;
            return false;
        }
    }

    private static InputStream wrapToMarkSupportedStream(InputStream inputStream) {
        return !inputStream.markSupported() ? new BufferedInputStream(inputStream, 8192) : inputStream;
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i10, int i11, BitmapFactory.Options options) {
        if ((i10 | i11) < 0 || bArr.length < i10 + i11) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (!webpSupportRequired(bArr, i10, i11)) {
            return BitmapFactory.decodeByteArray(bArr, i10, i11, options);
        }
        Bitmap bitmapNativeDecodeByteArray = nativeDecodeByteArray(bArr, i10, i11, options, getScaleFromOptions(options), getInTempStorageFromOptions(options));
        setWebpBitmapOptions(bitmapNativeDecodeByteArray, options);
        return bitmapNativeDecodeByteArray;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static Bitmap decodeFile(String str, BitmapFactory.Options options) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        bitmapDecodeStream = null;
        Bitmap bitmapDecodeStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    bitmapDecodeStream = decodeStream(fileInputStream, null, options);
                } catch (Exception e10) {
                    e = e10;
                    Log.e("WebpBitmapFactory", "Unable to decode stream: " + e);
                    if (fileInputStream != null) {
                    }
                    return bitmapDecodeStream;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
        try {
            fileInputStream.close();
        } catch (IOException unused2) {
        }
        return bitmapDecodeStream;
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, BitmapFactory.Options options) {
        Bitmap bitmapDecodeFileDescriptor;
        InputStream inputStreamWrapToMarkSupportedStream = wrapToMarkSupportedStream(new FileInputStream(fileDescriptor));
        try {
            if (webpSupportRequired(getImageHeader(inputStreamWrapToMarkSupportedStream), 0, 21)) {
                bitmapDecodeFileDescriptor = nativeDecodeStream(inputStreamWrapToMarkSupportedStream, options, getScaleFromOptions(options), getInTempStorageFromOptions(options));
                setWebpBitmapOptions(bitmapDecodeFileDescriptor, options);
                setDefaultPadding(rect);
            } else {
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, rect, options);
            }
            return bitmapDecodeFileDescriptor;
        } finally {
            try {
                inputStreamWrapToMarkSupportedStream.close();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0010 A[EXC_TOP_SPLITTER, PHI: r0 r3
      0x0010: PHI (r0v3 android.graphics.Bitmap) = (r0v9 android.graphics.Bitmap), (r0v7 android.graphics.Bitmap) binds: [B:16:0x0021, B:5:0x000e] A[DONT_GENERATE, DONT_INLINE]
      0x0010: PHI (r3v3 java.io.InputStream) = (r3v2 java.io.InputStream), (r3v5 java.io.InputStream) binds: [B:16:0x0021, B:5:0x000e] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public static Bitmap decodeResource(Resources resources, int i10, BitmapFactory.Options options) throws Throwable {
        InputStream inputStreamOpenRawResource;
        InputStream inputStream = null;
        bitmapDecodeResourceStream = null;
        Bitmap bitmapDecodeResourceStream = null;
        try {
            TypedValue typedValue = new TypedValue();
            inputStreamOpenRawResource = resources.openRawResource(i10, typedValue);
            try {
                bitmapDecodeResourceStream = decodeResourceStream(resources, typedValue, inputStreamOpenRawResource, null, options);
                if (inputStreamOpenRawResource != null) {
                    try {
                        inputStreamOpenRawResource.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (Exception unused2) {
                if (inputStreamOpenRawResource != null) {
                    inputStreamOpenRawResource.close();
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStreamOpenRawResource;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
            inputStreamOpenRawResource = null;
        } catch (Throwable th3) {
            th = th3;
        }
        if (bitmapDecodeResourceStream != null || options == null || options.inBitmap == null) {
            return bitmapDecodeResourceStream;
        }
        throw new IllegalArgumentException("Problem decoding into existing bitmap");
    }

    public static Bitmap decodeStream(InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        if (inputStream == null) {
            return null;
        }
        InputStream inputStreamWrapToMarkSupportedStream = wrapToMarkSupportedStream(inputStream);
        if (!webpSupportRequired(getImageHeader(inputStreamWrapToMarkSupportedStream), 0, 21)) {
            return BitmapFactory.decodeStream(inputStreamWrapToMarkSupportedStream, rect, options);
        }
        Bitmap bitmapNativeDecodeStream = nativeDecodeStream(inputStreamWrapToMarkSupportedStream, options, getScaleFromOptions(options), getInTempStorageFromOptions(options));
        setWebpBitmapOptions(bitmapNativeDecodeStream, options);
        setDefaultPadding(rect);
        return bitmapNativeDecodeStream;
    }
}
