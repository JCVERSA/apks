package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

public final class Downsampler {
    public static final Option<Boolean> ALLOW_HARDWARE_CONFIG;
    private static final DecodeCallbacks EMPTY_CALLBACKS;
    public static final Option<Boolean> FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS;
    private static final String ICO_MIME_TYPE = "image/x-ico";
    private static final Set<String> NO_DOWNSAMPLE_PRE_N_MIME_TYPES;
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE;
    static final String TAG = "Downsampler";
    private static final Set<ImageHeaderParser.ImageType> TYPES_THAT_USE_POOL_PRE_KITKAT;
    private static final String WBMP_MIME_TYPE = "image/vnd.wap.wbmp";
    private final BitmapPool bitmapPool;
    private final ArrayPool byteArrayPool;
    private final DisplayMetrics displayMetrics;
    private final HardwareConfigState hardwareConfigState = HardwareConfigState.getInstance();
    private final List<ImageHeaderParser> parsers;
    public static final Option<DecodeFormat> DECODE_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
    public static final Option<PreferredColorSpace> PREFERRED_COLOR_SPACE = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace");

    @Deprecated
    public static final Option<DownsampleStrategy> DOWNSAMPLE_STRATEGY = DownsampleStrategy.OPTION;

    public interface DecodeCallbacks {
        void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) throws IOException;

        void onObtainBounds();
    }

    static {
        Boolean bool = Boolean.FALSE;
        FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        ALLOW_HARDWARE_CONFIG = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        NO_DOWNSAMPLE_PRE_N_MIME_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(WBMP_MIME_TYPE, ICO_MIME_TYPE)));
        EMPTY_CALLBACKS = new DecodeCallbacks() {
            @Override
            public void onObtainBounds() {
            }

            @Override
            public void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) {
            }
        };
        TYPES_THAT_USE_POOL_PRE_KITKAT = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        OPTIONS_QUEUE = Util.createQueue(0);
    }

    public Downsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.parsers = list;
        this.displayMetrics = (DisplayMetrics) Preconditions.checkNotNull(displayMetrics);
        this.bitmapPool = (BitmapPool) Preconditions.checkNotNull(bitmapPool);
        this.byteArrayPool = (ArrayPool) Preconditions.checkNotNull(arrayPool);
    }

    private static int adjustTargetDensityForError(double d10) {
        int densityMultiplier = getDensityMultiplier(d10);
        int iRound = round(((double) densityMultiplier) * d10);
        return round((d10 / ((double) (iRound / densityMultiplier))) * ((double) iRound));
    }

    private void calculateConfig(ImageReader imageReader, DecodeFormat decodeFormat, boolean z10, boolean z11, BitmapFactory.Options options, int i10, int i11) {
        boolean zHasAlpha;
        if (this.hardwareConfigState.setHardwareConfigIfAllowed(i10, i11, options, z10, z11)) {
            return;
        }
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            zHasAlpha = imageReader.getImageType().hasAlpha();
        } catch (IOException unused) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Cannot determine whether the image has alpha or not from header, format ");
                sb2.append(decodeFormat);
            }
            zHasAlpha = false;
        }
        Bitmap.Config config = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        options.inPreferredConfig = config;
        if (config == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    private static void calculateScaling(ImageHeaderParser.ImageType imageType, ImageReader imageReader, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool, DownsampleStrategy downsampleStrategy, int i10, int i11, int i12, int i13, int i14, BitmapFactory.Options options) throws IOException {
        int i15;
        int i16;
        int i17;
        int iFloor;
        double dFloor;
        int iRound;
        if (i11 <= 0 || i12 <= 0) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to determine dimensions for: ");
                sb2.append(imageType);
                sb2.append(" with target [");
                sb2.append(i13);
                sb2.append("x");
                sb2.append(i14);
                sb2.append("]");
                return;
            }
            return;
        }
        if (isRotationRequired(i10)) {
            i16 = i11;
            i15 = i12;
        } else {
            i15 = i11;
            i16 = i12;
        }
        float scaleFactor = downsampleStrategy.getScaleFactor(i15, i16, i13, i14);
        if (scaleFactor <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + scaleFactor + " from: " + downsampleStrategy + ", source: [" + i11 + "x" + i12 + "], target: [" + i13 + "x" + i14 + "]");
        }
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = downsampleStrategy.getSampleSizeRounding(i15, i16, i13, i14);
        if (sampleSizeRounding == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f10 = i15;
        float f11 = i16;
        int iRound2 = i15 / round(scaleFactor * f10);
        int iRound3 = i16 / round(scaleFactor * f11);
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding2 = DownsampleStrategy.SampleSizeRounding.MEMORY;
        int iMax = sampleSizeRounding == sampleSizeRounding2 ? Math.max(iRound2, iRound3) : Math.min(iRound2, iRound3);
        int i18 = Build.VERSION.SDK_INT;
        if (i18 > 23 || !NO_DOWNSAMPLE_PRE_N_MIME_TYPES.contains(options.outMimeType)) {
            int iMax2 = Math.max(1, Integer.highestOneBit(iMax));
            if (sampleSizeRounding == sampleSizeRounding2 && iMax2 < 1.0f / scaleFactor) {
                iMax2 <<= 1;
            }
            i17 = iMax2;
        } else {
            i17 = 1;
        }
        options.inSampleSize = i17;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float fMin = Math.min(i17, 8);
            iFloor = (int) Math.ceil(f10 / fMin);
            iRound = (int) Math.ceil(f11 / fMin);
            int i19 = i17 / 8;
            if (i19 > 0) {
                iFloor /= i19;
                iRound /= i19;
            }
        } else {
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f12 = i17;
                iFloor = (int) Math.floor(f10 / f12);
                dFloor = Math.floor(f11 / f12);
            } else if (imageType.isWebp()) {
                if (i18 >= 24) {
                    float f13 = i17;
                    iFloor = Math.round(f10 / f13);
                    iRound = Math.round(f11 / f13);
                } else {
                    float f14 = i17;
                    iFloor = (int) Math.floor(f10 / f14);
                    dFloor = Math.floor(f11 / f14);
                }
            } else if (i15 % i17 == 0 && i16 % i17 == 0) {
                iFloor = i15 / i17;
                iRound = i16 / i17;
            } else {
                int[] dimensions = getDimensions(imageReader, options, decodeCallbacks, bitmapPool);
                iFloor = dimensions[0];
                iRound = dimensions[1];
            }
            iRound = (int) dFloor;
        }
        double scaleFactor2 = downsampleStrategy.getScaleFactor(iFloor, iRound, i13, i14);
        options.inTargetDensity = adjustTargetDensityForError(scaleFactor2);
        options.inDensity = getDensityMultiplier(scaleFactor2);
        if (isScaling(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Calculate scaling, source: [" + i11 + "x" + i12 + "], degreesToRotate: " + i10 + ", target: [" + i13 + "x" + i14 + "], power of two scaled: [" + iFloor + "x" + iRound + "], exact scale factor: " + scaleFactor + ", power of 2 sample size: " + i17 + ", adjusted scale factor: " + scaleFactor2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    private Bitmap decodeFromWrappedStreams(ImageReader imageReader, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z10, int i10, int i11, boolean z11, DecodeCallbacks decodeCallbacks) throws IOException {
        int i12;
        int i13;
        int i14;
        String str;
        int iRound;
        int iRound2;
        long logTime = LogTime.getLogTime();
        int[] dimensions = getDimensions(imageReader, options, decodeCallbacks, this.bitmapPool);
        int i15 = dimensions[0];
        int i16 = dimensions[1];
        String str2 = options.outMimeType;
        boolean z12 = (i15 == -1 || i16 == -1) ? false : z10;
        int imageOrientation = imageReader.getImageOrientation();
        int exifOrientationDegrees = TransformationUtils.getExifOrientationDegrees(imageOrientation);
        boolean zIsExifOrientationRequired = TransformationUtils.isExifOrientationRequired(imageOrientation);
        if (i10 == Integer.MIN_VALUE) {
            i12 = i11;
            i13 = isRotationRequired(exifOrientationDegrees) ? i16 : i15;
        } else {
            i12 = i11;
            i13 = i10;
        }
        if (i12 == Integer.MIN_VALUE) {
            i14 = isRotationRequired(exifOrientationDegrees) ? i15 : i16;
        } else {
            i14 = i12;
        }
        ImageHeaderParser.ImageType imageType = imageReader.getImageType();
        calculateScaling(imageType, imageReader, decodeCallbacks, this.bitmapPool, downsampleStrategy, exifOrientationDegrees, i15, i16, i13, i14, options);
        calculateConfig(imageReader, decodeFormat, z12, zIsExifOrientationRequired, options, i13, i14);
        int i17 = Build.VERSION.SDK_INT;
        if (shouldUsePool(imageType)) {
            if (i15 < 0 || i16 < 0 || !z11) {
                float f10 = isScaling(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i18 = options.inSampleSize;
                float f11 = i18;
                int iCeil = (int) Math.ceil(i15 / f11);
                int iCeil2 = (int) Math.ceil(i16 / f11);
                iRound = Math.round(iCeil * f10);
                iRound2 = Math.round(iCeil2 * f10);
                str = TAG;
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Calculated target [" + iRound + "x" + iRound2 + "] for source [" + i15 + "x" + i16 + "], sampleSize: " + i18 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f10);
                }
            } else {
                str = TAG;
                iRound = i13;
                iRound2 = i14;
            }
            if (iRound > 0 && iRound2 > 0) {
                setInBitmap(options, this.bitmapPool, iRound, iRound2);
            }
        } else {
            str = TAG;
        }
        if (preferredColorSpace != null) {
            if (i17 >= 28) {
                options.inPreferredColorSpace = ColorSpace.get((preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && options.outColorSpace != null && options.outColorSpace.isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
            } else if (i17 >= 26) {
                options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
        }
        Bitmap bitmapDecodeStream = decodeStream(imageReader, options, decodeCallbacks, this.bitmapPool);
        decodeCallbacks.onDecodeComplete(this.bitmapPool, bitmapDecodeStream);
        if (Log.isLoggable(str, 2)) {
            logDecode(i15, i16, str2, options, bitmapDecodeStream, i10, i11, logTime);
        }
        if (bitmapDecodeStream == null) {
            return null;
        }
        bitmapDecodeStream.setDensity(this.displayMetrics.densityDpi);
        Bitmap bitmapRotateImageExif = TransformationUtils.rotateImageExif(this.bitmapPool, bitmapDecodeStream, imageOrientation);
        if (bitmapDecodeStream.equals(bitmapRotateImageExif)) {
            return bitmapRotateImageExif;
        }
        this.bitmapPool.put(bitmapDecodeStream);
        return bitmapRotateImageExif;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap decodeStream(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        if (!options.inJustDecodeBounds) {
            decodeCallbacks.onObtainBounds();
            imageReader.stopGrowingBuffers();
        }
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        String str = options.outMimeType;
        TransformationUtils.getBitmapDrawableLock().lock();
        try {
            try {
                Bitmap bitmapDecodeBitmap = imageReader.decodeBitmap(options);
                TransformationUtils.getBitmapDrawableLock().unlock();
                return bitmapDecodeBitmap;
            } catch (IllegalArgumentException e10) {
                IOException iOExceptionNewIoExceptionForInBitmapAssertion = newIoExceptionForInBitmapAssertion(e10, i10, i11, str, options);
                Log.isLoggable(TAG, 3);
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw iOExceptionNewIoExceptionForInBitmapAssertion;
                }
                try {
                    bitmapPool.put(bitmap);
                    options.inBitmap = null;
                    Bitmap bitmapDecodeStream = decodeStream(imageReader, options, decodeCallbacks, bitmapPool);
                    TransformationUtils.getBitmapDrawableLock().unlock();
                    return bitmapDecodeStream;
                } catch (IOException unused) {
                    throw iOExceptionNewIoExceptionForInBitmapAssertion;
                }
            }
        } catch (Throwable th2) {
            TransformationUtils.getBitmapDrawableLock().unlock();
            throw th2;
        }
    }

    @Nullable
    @TargetApi(19)
    private static String getBitmapString(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    private static synchronized BitmapFactory.Options getDefaultOptions() {
        BitmapFactory.Options optionsPoll;
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            optionsPoll = queue.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            resetOptions(optionsPoll);
        }
        return optionsPoll;
    }

    private static int getDensityMultiplier(double d10) {
        if (d10 > 1.0d) {
            d10 = 1.0d / d10;
        }
        return (int) Math.round(d10 * 2.147483647E9d);
    }

    private static int[] getDimensions(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        options.inJustDecodeBounds = true;
        decodeStream(imageReader, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static String getInBitmapString(BitmapFactory.Options options) {
        return getBitmapString(options.inBitmap);
    }

    private static boolean isRotationRequired(int i10) {
        return i10 == 90 || i10 == 270;
    }

    private static boolean isScaling(BitmapFactory.Options options) {
        int i10;
        int i11 = options.inTargetDensity;
        return i11 > 0 && (i10 = options.inDensity) > 0 && i11 != i10;
    }

    private static void logDecode(int i10, int i11, String str, BitmapFactory.Options options, Bitmap bitmap, int i12, int i13, long j10) {
        Log.v(TAG, "Decoded " + getBitmapString(bitmap) + " from [" + i10 + "x" + i11 + "] " + str + " with inBitmap " + getInBitmapString(options) + " for [" + i12 + "x" + i13 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + LogTime.getElapsedMillis(j10));
    }

    private static IOException newIoExceptionForInBitmapAssertion(IllegalArgumentException illegalArgumentException, int i10, int i11, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i10 + ", outHeight: " + i11 + ", outMimeType: " + str + ", inBitmap: " + getInBitmapString(options), illegalArgumentException);
    }

    private static void releaseOptions(BitmapFactory.Options options) {
        resetOptions(options);
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static void resetOptions(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    private static int round(double d10) {
        return (int) (d10 + 0.5d);
    }

    @TargetApi(26)
    private static void setInBitmap(BitmapFactory.Options options, BitmapPool bitmapPool, int i10, int i11) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = bitmapPool.getDirty(i10, i11, config);
    }

    private boolean shouldUsePool(ImageHeaderParser.ImageType imageType) {
        return true;
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i10, int i11, Options options) throws IOException {
        return decode(inputStream, i10, i11, options, EMPTY_CALLBACKS);
    }

    public boolean handles(InputStream inputStream) {
        return true;
    }

    public Resource<Bitmap> decode(ByteBuffer byteBuffer, int i10, int i11, Options options) throws IOException {
        return decode(new ImageReader.ByteBufferReader(byteBuffer, this.parsers, this.byteArrayPool), i10, i11, options, EMPTY_CALLBACKS);
    }

    public boolean handles(ByteBuffer byteBuffer) {
        return true;
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i10, int i11, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        return decode(new ImageReader.InputStreamImageReader(inputStream, this.parsers, this.byteArrayPool), i10, i11, options, decodeCallbacks);
    }

    public boolean handles(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.isSupported();
    }

    void decode(byte[] bArr, int i10, int i11, Options options) throws IOException {
        decode(new ImageReader.ByteArrayReader(bArr, this.parsers, this.byteArrayPool), i10, i11, options, EMPTY_CALLBACKS);
    }

    void decode(File file, int i10, int i11, Options options) throws IOException {
        decode(new ImageReader.FileReader(file, this.parsers, this.byteArrayPool), i10, i11, options, EMPTY_CALLBACKS);
    }

    public Resource<Bitmap> decode(ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, Options options) throws IOException {
        return decode(new ImageReader.ParcelFileDescriptorImageReader(parcelFileDescriptor, this.parsers, this.byteArrayPool), i10, i11, options, EMPTY_CALLBACKS);
    }

    private Resource<Bitmap> decode(ImageReader imageReader, int i10, int i11, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        BitmapFactory.Options defaultOptions = getDefaultOptions();
        defaultOptions.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.get(DECODE_FORMAT);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) options.get(PREFERRED_COLOR_SPACE);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.get(DownsampleStrategy.OPTION);
        boolean zBooleanValue = ((Boolean) options.get(FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        Option<Boolean> option = ALLOW_HARDWARE_CONFIG;
        try {
            return BitmapResource.obtain(decodeFromWrappedStreams(imageReader, defaultOptions, downsampleStrategy, decodeFormat, preferredColorSpace, options.get(option) != null && ((Boolean) options.get(option)).booleanValue(), i10, i11, zBooleanValue, decodeCallbacks), this.bitmapPool);
        } finally {
            releaseOptions(defaultOptions);
            this.byteArrayPool.put(bArr);
        }
    }
}
