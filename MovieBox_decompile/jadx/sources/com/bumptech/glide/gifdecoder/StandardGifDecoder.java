package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

public class StandardGifDecoder implements GifDecoder {
    private static final int BYTES_PER_INTEGER = 4;
    private static final int COLOR_TRANSPARENT_BLACK = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    private static final String TAG = "StandardGifDecoder";
    private int[] act;

    @NonNull
    private Bitmap.Config bitmapConfig;
    private final GifDecoder.BitmapProvider bitmapProvider;
    private byte[] block;
    private int downsampledHeight;
    private int downsampledWidth;
    private int framePointer;
    private GifHeader header;

    @Nullable
    private Boolean isFirstFrameTransparent;
    private byte[] mainPixels;
    private int[] mainScratch;
    private GifHeaderParser parser;
    private final int[] pct;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private int sampleSize;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer) {
        this(bitmapProvider, gifHeader, byteBuffer, 1);
    }

    private int averageColorsNear(int i10, int i11, int i12) {
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        for (int i18 = i10; i18 < this.sampleSize + i10; i18++) {
            byte[] bArr = this.mainPixels;
            if (i18 >= bArr.length || i18 >= i11) {
                break;
            }
            int i19 = this.act[bArr[i18] & 255];
            if (i19 != 0) {
                i13 += (i19 >> 24) & 255;
                i14 += (i19 >> 16) & 255;
                i15 += (i19 >> 8) & 255;
                i16 += i19 & 255;
                i17++;
            }
        }
        int i20 = i10 + i12;
        for (int i21 = i20; i21 < this.sampleSize + i20; i21++) {
            byte[] bArr2 = this.mainPixels;
            if (i21 >= bArr2.length || i21 >= i11) {
                break;
            }
            int i22 = this.act[bArr2[i21] & 255];
            if (i22 != 0) {
                i13 += (i22 >> 24) & 255;
                i14 += (i22 >> 16) & 255;
                i15 += (i22 >> 8) & 255;
                i16 += i22 & 255;
                i17++;
            }
        }
        if (i17 == 0) {
            return 0;
        }
        return ((i13 / i17) << 24) | ((i14 / i17) << 16) | ((i15 / i17) << 8) | (i16 / i17);
    }

    private void copyCopyIntoScratchRobust(GifFrame gifFrame) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = this.mainScratch;
        int i15 = gifFrame.f19513ih;
        int i16 = this.sampleSize;
        int i17 = i15 / i16;
        int i18 = gifFrame.f19516iy / i16;
        int i19 = gifFrame.f19514iw / i16;
        int i20 = gifFrame.f19515ix / i16;
        boolean z10 = this.framePointer == 0;
        int i21 = this.downsampledWidth;
        int i22 = this.downsampledHeight;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        Boolean bool = this.isFirstFrameTransparent;
        int i23 = 8;
        int i24 = 0;
        int i25 = 0;
        int i26 = 1;
        while (i25 < i17) {
            Boolean bool2 = bool;
            if (gifFrame.interlace) {
                if (i24 >= i17) {
                    int i27 = i26 + 1;
                    i10 = i17;
                    if (i27 == 2) {
                        i24 = 4;
                    } else if (i27 == 3) {
                        i23 = 4;
                        i26 = i27;
                        i24 = 2;
                    } else if (i27 == 4) {
                        i26 = i27;
                        i24 = 1;
                        i23 = 2;
                    }
                    i26 = i27;
                } else {
                    i10 = i17;
                }
                i11 = i24 + i23;
            } else {
                i10 = i17;
                i11 = i24;
                i24 = i25;
            }
            int i28 = i24 + i18;
            boolean z11 = i16 == 1;
            if (i28 < i22) {
                int i29 = i28 * i21;
                int i30 = i29 + i20;
                int i31 = i30 + i19;
                int i32 = i29 + i21;
                if (i32 < i31) {
                    i31 = i32;
                }
                i12 = i11;
                int i33 = i25 * i16 * gifFrame.f19514iw;
                if (!z11) {
                    i14 = i18;
                    int i34 = ((i31 - i30) * i16) + i33;
                    int i35 = i30;
                    while (true) {
                        i13 = i19;
                        if (i35 >= i31) {
                            break;
                        }
                        int iAverageColorsNear = averageColorsNear(i33, i34, gifFrame.f19514iw);
                        if (iAverageColorsNear != 0) {
                            iArr[i35] = iAverageColorsNear;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i33 += i16;
                        i35++;
                        i19 = i13;
                    }
                } else {
                    int i36 = i30;
                    while (i36 < i31) {
                        int i37 = i18;
                        int i38 = iArr2[bArr[i33] & 255];
                        if (i38 != 0) {
                            iArr[i36] = i38;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i33 += i16;
                        i36++;
                        i18 = i37;
                    }
                }
                bool = bool2;
                i25++;
                i18 = i14;
                i17 = i10;
                i19 = i13;
                i24 = i12;
            } else {
                i12 = i11;
            }
            i14 = i18;
            i13 = i19;
            bool = bool2;
            i25++;
            i18 = i14;
            i17 = i10;
            i19 = i13;
            i24 = i12;
        }
        Boolean bool3 = bool;
        if (this.isFirstFrameTransparent == null) {
            this.isFirstFrameTransparent = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    private void copyIntoScratchFast(GifFrame gifFrame) {
        GifFrame gifFrame2 = gifFrame;
        int[] iArr = this.mainScratch;
        int i10 = gifFrame2.f19513ih;
        int i11 = gifFrame2.f19516iy;
        int i12 = gifFrame2.f19514iw;
        int i13 = gifFrame2.f19515ix;
        boolean z10 = this.framePointer == 0;
        int i14 = this.downsampledWidth;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        int i15 = 0;
        byte b10 = -1;
        while (i15 < i10) {
            int i16 = (i15 + i11) * i14;
            int i17 = i16 + i13;
            int i18 = i17 + i12;
            int i19 = i16 + i14;
            if (i19 < i18) {
                i18 = i19;
            }
            int i20 = gifFrame2.f19514iw * i15;
            int i21 = i17;
            while (i21 < i18) {
                byte b11 = bArr[i20];
                int i22 = i10;
                int i23 = b11 & 255;
                if (i23 != b10) {
                    int i24 = iArr2[i23];
                    if (i24 != 0) {
                        iArr[i21] = i24;
                    } else {
                        b10 = b11;
                    }
                }
                i20++;
                i21++;
                i10 = i22;
            }
            i15++;
            gifFrame2 = gifFrame;
        }
        Boolean bool = this.isFirstFrameTransparent;
        this.isFirstFrameTransparent = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.isFirstFrameTransparent == null && z10 && b10 != -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    private void decodeBitmapData(GifFrame gifFrame) {
        int i10;
        int i11;
        short s10;
        StandardGifDecoder standardGifDecoder = this;
        if (gifFrame != null) {
            standardGifDecoder.rawData.position(gifFrame.bufferFrameStart);
        }
        if (gifFrame == null) {
            GifHeader gifHeader = standardGifDecoder.header;
            i10 = gifHeader.width;
            i11 = gifHeader.height;
        } else {
            i10 = gifFrame.f19514iw;
            i11 = gifFrame.f19513ih;
        }
        int i12 = i10 * i11;
        byte[] bArr = standardGifDecoder.mainPixels;
        if (bArr == null || bArr.length < i12) {
            standardGifDecoder.mainPixels = standardGifDecoder.bitmapProvider.obtainByteArray(i12);
        }
        byte[] bArr2 = standardGifDecoder.mainPixels;
        if (standardGifDecoder.prefix == null) {
            standardGifDecoder.prefix = new short[4096];
        }
        short[] sArr = standardGifDecoder.prefix;
        if (standardGifDecoder.suffix == null) {
            standardGifDecoder.suffix = new byte[4096];
        }
        byte[] bArr3 = standardGifDecoder.suffix;
        if (standardGifDecoder.pixelStack == null) {
            standardGifDecoder.pixelStack = new byte[4097];
        }
        byte[] bArr4 = standardGifDecoder.pixelStack;
        int i13 = readByte();
        int i14 = 1 << i13;
        int i15 = i14 + 1;
        int i16 = i14 + 2;
        int i17 = i13 + 1;
        int i18 = (1 << i17) - 1;
        int i19 = 0;
        for (int i20 = 0; i20 < i14; i20++) {
            sArr[i20] = 0;
            bArr3[i20] = (byte) i20;
        }
        byte[] bArr5 = standardGifDecoder.block;
        int i21 = i17;
        int i22 = i16;
        int i23 = i18;
        int block = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = -1;
        while (i19 < i12) {
            if (block == 0) {
                block = readBlock();
                if (block <= 0) {
                    standardGifDecoder.status = 3;
                    break;
                }
                i24 = 0;
            }
            i26 += (bArr5[i24] & 255) << i25;
            i24++;
            block--;
            int i31 = i25 + 8;
            i22 = i22;
            i30 = i30;
            i21 = i21;
            i17 = i17;
            i29 = i29;
            while (true) {
                if (i31 < i21) {
                    i25 = i31;
                    break;
                }
                int i32 = i16;
                int i33 = i26 & i23;
                i26 >>= i21;
                i31 -= i21;
                if (i33 == i14) {
                    i23 = i18;
                    i21 = i17;
                    i22 = i32;
                    i16 = i22;
                    i30 = -1;
                } else {
                    if (i33 == i15) {
                        i25 = i31;
                        i16 = i32;
                        break;
                    }
                    if (i30 == -1) {
                        bArr2[i27] = bArr3[i33];
                        i27++;
                        i19++;
                        i30 = i33;
                        i29 = i30;
                        i16 = i32;
                        i31 = i31;
                    } else {
                        if (i33 >= i22) {
                            bArr4[i28] = (byte) i29;
                            i28++;
                            s10 = i30;
                        } else {
                            s10 = i33;
                        }
                        while (s10 >= i14) {
                            bArr4[i28] = bArr3[s10];
                            i28++;
                            s10 = sArr[s10];
                        }
                        i29 = bArr3[s10] & 255;
                        byte b10 = (byte) i29;
                        bArr2[i27] = b10;
                        while (true) {
                            i27++;
                            i19++;
                            if (i28 <= 0) {
                                break;
                            }
                            i28--;
                            bArr2[i27] = bArr4[i28];
                        }
                        byte[] bArr6 = bArr4;
                        if (i22 < 4096) {
                            sArr[i22] = (short) i30;
                            bArr3[i22] = b10;
                            i22++;
                            if ((i22 & i23) == 0 && i22 < 4096) {
                                i21++;
                                i23 += i22;
                            }
                        }
                        i30 = i33;
                        i16 = i32;
                        i31 = i31;
                        bArr4 = bArr6;
                    }
                }
            }
            standardGifDecoder = this;
        }
        Arrays.fill(bArr2, i27, i12, (byte) 0);
    }

    @NonNull
    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    private Bitmap getNextBitmap() {
        Boolean bool = this.isFirstFrameTransparent;
        Bitmap bitmapObtain = this.bitmapProvider.obtain(this.downsampledWidth, this.downsampledHeight, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.bitmapConfig);
        bitmapObtain.setHasAlpha(true);
        return bitmapObtain;
    }

    private int readBlock() {
        int i10 = readByte();
        if (i10 <= 0) {
            return i10;
        }
        ByteBuffer byteBuffer = this.rawData;
        byteBuffer.get(this.block, 0, Math.min(i10, byteBuffer.remaining()));
        return i10;
    }

    private int readByte() {
        return this.rawData.get() & 255;
    }

    private Bitmap setPixels(GifFrame gifFrame, GifFrame gifFrame2) {
        int i10;
        int i11;
        Bitmap bitmap;
        int[] iArr = this.mainScratch;
        int i12 = 0;
        if (gifFrame2 == null) {
            Bitmap bitmap2 = this.previousImage;
            if (bitmap2 != null) {
                this.bitmapProvider.release(bitmap2);
            }
            this.previousImage = null;
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && gifFrame2.dispose == 3 && this.previousImage == null) {
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && (i11 = gifFrame2.dispose) > 0) {
            if (i11 == 2) {
                if (!gifFrame.transparency) {
                    GifHeader gifHeader = this.header;
                    int i13 = gifHeader.bgColor;
                    if (gifFrame.lct == null || gifHeader.bgIndex != gifFrame.transIndex) {
                        i12 = i13;
                    }
                }
                int i14 = gifFrame2.f19513ih;
                int i15 = this.sampleSize;
                int i16 = i14 / i15;
                int i17 = gifFrame2.f19516iy / i15;
                int i18 = gifFrame2.f19514iw / i15;
                int i19 = gifFrame2.f19515ix / i15;
                int i20 = this.downsampledWidth;
                int i21 = (i17 * i20) + i19;
                int i22 = (i16 * i20) + i21;
                while (i21 < i22) {
                    int i23 = i21 + i18;
                    for (int i24 = i21; i24 < i23; i24++) {
                        iArr[i24] = i12;
                    }
                    i21 += this.downsampledWidth;
                }
            } else if (i11 == 3 && (bitmap = this.previousImage) != null) {
                int i25 = this.downsampledWidth;
                bitmap.getPixels(iArr, 0, i25, 0, 0, i25, this.downsampledHeight);
            }
        }
        decodeBitmapData(gifFrame);
        if (gifFrame.interlace || this.sampleSize != 1) {
            copyCopyIntoScratchRobust(gifFrame);
        } else {
            copyIntoScratchFast(gifFrame);
        }
        if (this.savePrevious && ((i10 = gifFrame.dispose) == 0 || i10 == 1)) {
            if (this.previousImage == null) {
                this.previousImage = getNextBitmap();
            }
            Bitmap bitmap3 = this.previousImage;
            int i26 = this.downsampledWidth;
            bitmap3.setPixels(iArr, 0, i26, 0, 0, i26, this.downsampledHeight);
        }
        Bitmap nextBitmap = getNextBitmap();
        int i27 = this.downsampledWidth;
        nextBitmap.setPixels(iArr, 0, i27, 0, 0, i27, this.downsampledHeight);
        return nextBitmap;
    }

    @Override
    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    @Override
    public void clear() {
        this.header = null;
        byte[] bArr = this.mainPixels;
        if (bArr != null) {
            this.bitmapProvider.release(bArr);
        }
        int[] iArr = this.mainScratch;
        if (iArr != null) {
            this.bitmapProvider.release(iArr);
        }
        Bitmap bitmap = this.previousImage;
        if (bitmap != null) {
            this.bitmapProvider.release(bitmap);
        }
        this.previousImage = null;
        this.rawData = null;
        this.isFirstFrameTransparent = null;
        byte[] bArr2 = this.block;
        if (bArr2 != null) {
            this.bitmapProvider.release(bArr2);
        }
    }

    @Override
    public int getByteSize() {
        return this.rawData.limit() + this.mainPixels.length + (this.mainScratch.length * 4);
    }

    @Override
    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    @Override
    @NonNull
    public ByteBuffer getData() {
        return this.rawData;
    }

    @Override
    public int getDelay(int i10) {
        if (i10 >= 0) {
            GifHeader gifHeader = this.header;
            if (i10 < gifHeader.frameCount) {
                return gifHeader.frames.get(i10).delay;
            }
        }
        return -1;
    }

    @Override
    public int getFrameCount() {
        return this.header.frameCount;
    }

    @Override
    public int getHeight() {
        return this.header.height;
    }

    @Override
    @Deprecated
    public int getLoopCount() {
        int i10 = this.header.loopCount;
        if (i10 == -1) {
            return 1;
        }
        return i10;
    }

    @Override
    public int getNetscapeLoopCount() {
        return this.header.loopCount;
    }

    @Override
    public int getNextDelay() {
        int i10;
        if (this.header.frameCount <= 0 || (i10 = this.framePointer) < 0) {
            return 0;
        }
        return getDelay(i10);
    }

    @Override
    @Nullable
    public synchronized Bitmap getNextFrame() {
        try {
            if (this.header.frameCount <= 0 || this.framePointer < 0) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unable to decode frame, frameCount=");
                    sb2.append(this.header.frameCount);
                    sb2.append(", framePointer=");
                    sb2.append(this.framePointer);
                }
                this.status = 1;
            }
            int i10 = this.status;
            if (i10 != 1 && i10 != 2) {
                this.status = 0;
                if (this.block == null) {
                    this.block = this.bitmapProvider.obtainByteArray(255);
                }
                GifFrame gifFrame = this.header.frames.get(this.framePointer);
                int i11 = this.framePointer - 1;
                GifFrame gifFrame2 = i11 >= 0 ? this.header.frames.get(i11) : null;
                int[] iArr = gifFrame.lct;
                if (iArr == null) {
                    iArr = this.header.gct;
                }
                this.act = iArr;
                if (iArr == null) {
                    if (Log.isLoggable(TAG, 3)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("No valid color table found for frame #");
                        sb3.append(this.framePointer);
                    }
                    this.status = 1;
                    return null;
                }
                if (gifFrame.transparency) {
                    System.arraycopy(iArr, 0, this.pct, 0, iArr.length);
                    int[] iArr2 = this.pct;
                    this.act = iArr2;
                    iArr2[gifFrame.transIndex] = 0;
                    if (gifFrame.dispose == 2 && this.framePointer == 0) {
                        this.isFirstFrameTransparent = Boolean.TRUE;
                    }
                }
                return setPixels(gifFrame, gifFrame2);
            }
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Unable to decode frame, status=");
                sb4.append(this.status);
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public int getStatus() {
        return this.status;
    }

    @Override
    public int getTotalIterationCount() {
        int i10 = this.header.loopCount;
        if (i10 == -1) {
            return 1;
        }
        if (i10 == 0) {
            return 0;
        }
        return i10 + 1;
    }

    @Override
    public int getWidth() {
        return this.header.width;
    }

    @Override
    public int read(@Nullable InputStream inputStream, int i10) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i10 > 0 ? i10 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i11 = inputStream.read(bArr, 0, 16384);
                    if (i11 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i11);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e10) {
                Log.w(TAG, "Error reading data from stream", e10);
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e11) {
                Log.w(TAG, "Error closing stream", e11);
            }
        }
        return this.status;
    }

    @Override
    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    @Override
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull byte[] bArr) {
        setData(gifHeader, ByteBuffer.wrap(bArr));
    }

    @Override
    public void setDefaultBitmapConfig(@NonNull Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.bitmapConfig = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i10) {
        this(bitmapProvider);
        setData(gifHeader, byteBuffer, i10);
    }

    @Override
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer) {
        setData(gifHeader, byteBuffer, 1);
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider) {
        this.pct = new int[256];
        this.bitmapConfig = Bitmap.Config.ARGB_8888;
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    @Override
    public synchronized void setData(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer, int i10) {
        try {
            if (i10 > 0) {
                int iHighestOneBit = Integer.highestOneBit(i10);
                this.status = 0;
                this.header = gifHeader;
                this.framePointer = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.rawData = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.rawData.order(ByteOrder.LITTLE_ENDIAN);
                this.savePrevious = false;
                Iterator<GifFrame> it = gifHeader.frames.iterator();
                while (it.hasNext()) {
                    if (it.next().dispose == 3) {
                        this.savePrevious = true;
                        break;
                    }
                }
                this.sampleSize = iHighestOneBit;
                int i11 = gifHeader.width;
                this.downsampledWidth = i11 / iHighestOneBit;
                int i12 = gifHeader.height;
                this.downsampledHeight = i12 / iHighestOneBit;
                this.mainPixels = this.bitmapProvider.obtainByteArray(i11 * i12);
                this.mainScratch = this.bitmapProvider.obtainIntArray(this.downsampledWidth * this.downsampledHeight);
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized int read(@Nullable byte[] bArr) {
        try {
            GifHeader header = getHeaderParser().setData(bArr).parseHeader();
            this.header = header;
            if (bArr != null) {
                setData(header, bArr);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.status;
    }
}
