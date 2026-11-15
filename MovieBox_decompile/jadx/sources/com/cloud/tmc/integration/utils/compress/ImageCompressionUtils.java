package com.cloud.tmc.integration.utils.compress;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J:\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010\b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0007¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/utils/compress/ImageCompressionUtils;", "", "()V", "calculateInSampleSize", "", "options", "Landroid/graphics/BitmapFactory$Options;", "ratio", "compressImage", "Ljava/io/File;", "imageFile", "quality", "compressedWidth", "compressedHeight", "compressDir", "", "", "imageData", "format", "Landroid/graphics/Bitmap$CompressFormat;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImageCompressionUtils {
    public static final ImageCompressionUtils INSTANCE = new ImageCompressionUtils();

    private ImageCompressionUtils() {
    }

    private final int calculateInSampleSize(BitmapFactory.Options options, int ratio) {
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        int i12 = 1;
        int i13 = i11;
        int i14 = i10;
        while (true) {
            if (i13 <= i11 / ratio && i14 <= i10 / ratio) {
                return i12;
            }
            i13 >>= 1;
            i14 >>= 1;
            i12 <<= 1;
        }
    }

    @JvmStatic
    public static final File compressImage(File imageFile, int quality, int compressedWidth, int compressedHeight, String compressDir) {
        Bitmap.CompressFormat compressFormat;
        Intrinsics.h(imageFile, "imageFile");
        String strW = FilesKt.w(imageFile);
        if (Intrinsics.c(strW, "png")) {
            compressFormat = Bitmap.CompressFormat.PNG;
        } else if (!Intrinsics.c(strW, "webp")) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        } else if (Build.VERSION.SDK_INT >= 30) {
            compressFormat = quality == 100 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP_LOSSY;
        } else {
            compressFormat = Bitmap.CompressFormat.WEBP;
        }
        byte[] bArrCompressImage = compressImage(FilesKt.g(imageFile), quality, compressedWidth, compressedHeight, compressFormat);
        if (compressDir == null || compressDir.length() == 0) {
            compressDir = imageFile.getParent();
        }
        File file = new File(compressDir, "compressed_" + imageFile.getName());
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArrCompressImage);
            fileOutputStream.flush();
            Unit unit = Unit.f64096a;
            CloseableKt.a(fileOutputStream, null);
            return file;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(fileOutputStream, th2);
                throw th3;
            }
        }
    }

    public static File compressImage$default(File file, int i10, int i11, int i12, String str, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 80;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = 0;
        }
        if ((i13 & 16) != 0) {
            str = null;
        }
        return compressImage(file, i10, i11, i12, str);
    }

    public static byte[] compressImage$default(byte[] bArr, int i10, int i11, int i12, Bitmap.CompressFormat compressFormat, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 80;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = 0;
        }
        if ((i13 & 16) != 0) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        return compressImage(bArr, i10, i11, i12, compressFormat);
    }

    @JvmStatic
    public static final byte[] compressImage(byte[] imageData, int quality, int compressedWidth, int compressedHeight, Bitmap.CompressFormat format) {
        int iC;
        Bitmap bitmapCreateScaledBitmap;
        Intrinsics.h(imageData, "imageData");
        Intrinsics.h(format, "format");
        if (format == Bitmap.CompressFormat.PNG) {
            return imageData;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(imageData, 0, imageData.length, options);
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        if (compressedWidth > 0 && compressedHeight > 0) {
            iC = RangesKt.h(MathKt.c(i11 / compressedHeight), MathKt.c(i10 / compressedWidth));
        } else if (compressedWidth > 0) {
            iC = MathKt.c(i10 / compressedWidth);
        } else {
            iC = compressedHeight > 0 ? MathKt.c(i11 / compressedHeight) : 1;
        }
        options.inSampleSize = INSTANCE.calculateInSampleSize(options, iC);
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(imageData, 0, imageData.length, options);
        int width = bitmapDecodeByteArray.getWidth();
        int height = bitmapDecodeByteArray.getHeight();
        if (compressedWidth > 0 && compressedHeight > 0) {
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, compressedWidth, compressedHeight, true);
        } else if (compressedWidth > 0) {
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, compressedWidth, (int) (height * (compressedWidth / width)), true);
        } else {
            bitmapCreateScaledBitmap = compressedHeight > 0 ? Bitmap.createScaledBitmap(bitmapDecodeByteArray, (int) (width * (compressedHeight / height)), compressedHeight, true) : bitmapDecodeByteArray;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapCreateScaledBitmap.compress(format, quality, byteArrayOutputStream);
        bitmapCreateScaledBitmap.recycle();
        bitmapDecodeByteArray.recycle();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.g(byteArray, "outputStream.toByteArray()");
        return byteArray;
    }
}
