package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LruCache;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.integration.webp.WebpFrame;
import com.bumptech.glide.integration.webp.WebpFrameInfo;
import com.bumptech.glide.integration.webp.WebpImage;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class WebpDecoder implements GifDecoder {
    private static final int MAX_FRAME_BITMAP_CACHE_SIZE = 5;
    private static final String TAG = "WebpDecoder";
    private int downsampledHeight;
    private int downsampledWidth;
    private Bitmap.Config mBitmapConfig;
    private final GifDecoder.BitmapProvider mBitmapProvider;
    private WebpFrameCacheStrategy mCacheStrategy;
    private final LruCache<Integer, Bitmap> mFrameBitmapCache;
    private final int[] mFrameDurations;
    private final WebpFrameInfo[] mFrameInfos;
    private int mFramePointer;
    private final Paint mTransparentFillPaint;
    private WebpImage mWebPImage;
    private ByteBuffer rawData;
    private int sampleSize;

    public WebpDecoder(GifDecoder.BitmapProvider bitmapProvider, WebpImage webpImage, ByteBuffer byteBuffer, int i10) {
        this(bitmapProvider, webpImage, byteBuffer, i10, WebpFrameCacheStrategy.NONE);
    }

    private void cacheFrameBitmap(int i10, Bitmap bitmap) {
        this.mFrameBitmapCache.remove(Integer.valueOf(i10));
        Bitmap bitmapObtain = this.mBitmapProvider.obtain(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        bitmapObtain.eraseColor(0);
        bitmapObtain.setDensity(bitmap.getDensity());
        Canvas canvas = new Canvas(bitmapObtain);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        this.mFrameBitmapCache.put(Integer.valueOf(i10), bitmapObtain);
    }

    private void disposeToBackground(Canvas canvas, WebpFrameInfo webpFrameInfo) {
        int i10 = webpFrameInfo.xOffset;
        int i11 = this.sampleSize;
        int i12 = webpFrameInfo.yOffset;
        canvas.drawRect(i10 / i11, i12 / i11, (i10 + webpFrameInfo.width) / i11, (i12 + webpFrameInfo.height) / i11, this.mTransparentFillPaint);
    }

    private boolean isFullFrame(WebpFrameInfo webpFrameInfo) {
        return webpFrameInfo.xOffset == 0 && webpFrameInfo.yOffset == 0 && webpFrameInfo.width == this.mWebPImage.getWidth() && webpFrameInfo.height == this.mWebPImage.getHeight();
    }

    private boolean isKeyFrame(int i10) {
        if (i10 == 0) {
            return true;
        }
        WebpFrameInfo[] webpFrameInfoArr = this.mFrameInfos;
        WebpFrameInfo webpFrameInfo = webpFrameInfoArr[i10];
        WebpFrameInfo webpFrameInfo2 = webpFrameInfoArr[i10 - 1];
        if (webpFrameInfo.blendPreviousFrame || !isFullFrame(webpFrameInfo)) {
            return webpFrameInfo2.disposeBackgroundColor && isFullFrame(webpFrameInfo2);
        }
        return true;
    }

    private int prepareCanvasWithBlending(int i10, Canvas canvas) {
        while (i10 >= 0) {
            WebpFrameInfo webpFrameInfo = this.mFrameInfos[i10];
            if (webpFrameInfo.disposeBackgroundColor && isFullFrame(webpFrameInfo)) {
                return i10 + 1;
            }
            Bitmap bitmap = this.mFrameBitmapCache.get(Integer.valueOf(i10));
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.setDensity(canvas.getDensity());
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                if (webpFrameInfo.disposeBackgroundColor) {
                    disposeToBackground(canvas, webpFrameInfo);
                }
                return i10 + 1;
            }
            if (isKeyFrame(i10)) {
                return i10;
            }
            i10--;
        }
        return 0;
    }

    private void renderFrame(int i10, Canvas canvas) {
        WebpFrameInfo webpFrameInfo = this.mFrameInfos[i10];
        int i11 = webpFrameInfo.width;
        int i12 = this.sampleSize;
        int i13 = i11 / i12;
        int i14 = webpFrameInfo.height / i12;
        int i15 = webpFrameInfo.xOffset / i12;
        int i16 = webpFrameInfo.yOffset / i12;
        WebpFrame frame = this.mWebPImage.getFrame(i10);
        try {
            try {
                Bitmap bitmapObtain = this.mBitmapProvider.obtain(i13, i14, this.mBitmapConfig);
                bitmapObtain.eraseColor(0);
                bitmapObtain.setDensity(canvas.getDensity());
                frame.renderFrame(i13, i14, bitmapObtain);
                canvas.drawBitmap(bitmapObtain, i15, i16, (Paint) null);
                this.mBitmapProvider.release(bitmapObtain);
            } catch (IllegalStateException unused) {
                Log.e(TAG, "Rendering of frame failed. Frame number: " + i10);
            }
        } finally {
            frame.dispose();
        }
    }

    @Override
    public void advance() {
        this.mFramePointer = (this.mFramePointer + 1) % this.mWebPImage.getFrameCount();
    }

    @Override
    public void clear() {
        this.mWebPImage.dispose();
        this.mWebPImage = null;
        this.mFrameBitmapCache.evictAll();
        this.rawData = null;
    }

    @Override
    public int getByteSize() {
        return this.mWebPImage.getSizeInBytes();
    }

    public WebpFrameCacheStrategy getCacheStrategy() {
        return this.mCacheStrategy;
    }

    @Override
    public int getCurrentFrameIndex() {
        return this.mFramePointer;
    }

    @Override
    public ByteBuffer getData() {
        return this.rawData;
    }

    @Override
    public int getDelay(int i10) {
        if (i10 >= 0) {
            int[] iArr = this.mFrameDurations;
            if (i10 < iArr.length) {
                return iArr[i10];
            }
        }
        return -1;
    }

    @Override
    public int getFrameCount() {
        return this.mWebPImage.getFrameCount();
    }

    @Override
    public int getHeight() {
        return this.mWebPImage.getHeight();
    }

    @Override
    @Deprecated
    public int getLoopCount() {
        return this.mWebPImage.getLoopCount();
    }

    @Override
    public int getNetscapeLoopCount() {
        return this.mWebPImage.getLoopCount();
    }

    @Override
    public int getNextDelay() {
        int i10;
        if (this.mFrameDurations.length == 0 || (i10 = this.mFramePointer) < 0) {
            return 0;
        }
        return getDelay(i10);
    }

    @Override
    public Bitmap getNextFrame() {
        Bitmap bitmap;
        int currentFrameIndex = getCurrentFrameIndex();
        Bitmap bitmapObtain = this.mBitmapProvider.obtain(this.downsampledWidth, this.downsampledHeight, Bitmap.Config.ARGB_8888);
        bitmapObtain.eraseColor(0);
        if (Build.VERSION.SDK_INT >= 24) {
            bitmapObtain.setDensity(DisplayMetrics.DENSITY_DEVICE_STABLE);
        }
        Canvas canvas = new Canvas(bitmapObtain);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        if (!this.mCacheStrategy.noCache() && (bitmap = this.mFrameBitmapCache.get(Integer.valueOf(currentFrameIndex))) != null) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("hit frame bitmap from memory cache, frameNumber=");
                sb2.append(currentFrameIndex);
            }
            bitmap.setDensity(canvas.getDensity());
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            return bitmapObtain;
        }
        int iPrepareCanvasWithBlending = !isKeyFrame(currentFrameIndex) ? prepareCanvasWithBlending(currentFrameIndex - 1, canvas) : currentFrameIndex;
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("frameNumber=");
            sb3.append(currentFrameIndex);
            sb3.append(", nextIndex=");
            sb3.append(iPrepareCanvasWithBlending);
        }
        while (iPrepareCanvasWithBlending < currentFrameIndex) {
            WebpFrameInfo webpFrameInfo = this.mFrameInfos[iPrepareCanvasWithBlending];
            if (!webpFrameInfo.blendPreviousFrame) {
                disposeToBackground(canvas, webpFrameInfo);
            }
            renderFrame(iPrepareCanvasWithBlending, canvas);
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("renderFrame, index=");
                sb4.append(iPrepareCanvasWithBlending);
                sb4.append(", blend=");
                sb4.append(webpFrameInfo.blendPreviousFrame);
                sb4.append(", dispose=");
                sb4.append(webpFrameInfo.disposeBackgroundColor);
            }
            if (webpFrameInfo.disposeBackgroundColor) {
                disposeToBackground(canvas, webpFrameInfo);
            }
            iPrepareCanvasWithBlending++;
        }
        WebpFrameInfo webpFrameInfo2 = this.mFrameInfos[currentFrameIndex];
        if (!webpFrameInfo2.blendPreviousFrame) {
            disposeToBackground(canvas, webpFrameInfo2);
        }
        renderFrame(currentFrameIndex, canvas);
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("renderFrame, index=");
            sb5.append(currentFrameIndex);
            sb5.append(", blend=");
            sb5.append(webpFrameInfo2.blendPreviousFrame);
            sb5.append(", dispose=");
            sb5.append(webpFrameInfo2.disposeBackgroundColor);
        }
        cacheFrameBitmap(currentFrameIndex, bitmapObtain);
        return bitmapObtain;
    }

    @Override
    public int getStatus() {
        return 0;
    }

    @Override
    public int getTotalIterationCount() {
        if (this.mWebPImage.getLoopCount() == 0) {
            return 0;
        }
        return this.mWebPImage.getLoopCount();
    }

    @Override
    public int getWidth() {
        return this.mWebPImage.getWidth();
    }

    @Override
    public int read(InputStream inputStream, int i10) {
        return 0;
    }

    @Override
    public void resetFrameIndex() {
        this.mFramePointer = -1;
    }

    @Override
    public void setData(GifHeader gifHeader, byte[] bArr) {
        setData(gifHeader, ByteBuffer.wrap(bArr));
    }

    @Override
    public void setDefaultBitmapConfig(Bitmap.Config config) {
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config == config2) {
            this.mBitmapConfig = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config2);
    }

    public WebpDecoder(GifDecoder.BitmapProvider bitmapProvider, WebpImage webpImage, ByteBuffer byteBuffer, int i10, WebpFrameCacheStrategy webpFrameCacheStrategy) {
        this.mFramePointer = -1;
        this.mBitmapConfig = Bitmap.Config.ARGB_8888;
        this.mBitmapProvider = bitmapProvider;
        this.mWebPImage = webpImage;
        this.mFrameDurations = webpImage.getFrameDurations();
        this.mFrameInfos = new WebpFrameInfo[webpImage.getFrameCount()];
        for (int i11 = 0; i11 < this.mWebPImage.getFrameCount(); i11++) {
            this.mFrameInfos[i11] = this.mWebPImage.getFrameInfo(i11);
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("mFrameInfos: ");
                sb2.append(this.mFrameInfos[i11].toString());
            }
        }
        this.mCacheStrategy = webpFrameCacheStrategy;
        Paint paint = new Paint();
        this.mTransparentFillPaint = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.mFrameBitmapCache = new LruCache<Integer, Bitmap>(this.mCacheStrategy.cacheAll() ? webpImage.getFrameCount() : Math.max(5, this.mCacheStrategy.getCacheSize())) {
            @Override
            public void entryRemoved(boolean z10, Integer num, Bitmap bitmap, Bitmap bitmap2) {
                if (bitmap != null) {
                    WebpDecoder.this.mBitmapProvider.release(bitmap);
                }
            }
        };
        setData(new GifHeader(), byteBuffer, i10);
    }

    @Override
    public int read(byte[] bArr) {
        return 0;
    }

    @Override
    public void setData(GifHeader gifHeader, ByteBuffer byteBuffer) {
        setData(gifHeader, byteBuffer, 1);
    }

    @Override
    public void setData(GifHeader gifHeader, ByteBuffer byteBuffer, int i10) {
        if (i10 > 0) {
            int iHighestOneBit = Integer.highestOneBit(i10);
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.rawData = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            this.sampleSize = iHighestOneBit;
            this.downsampledWidth = this.mWebPImage.getWidth() / iHighestOneBit;
            this.downsampledHeight = this.mWebPImage.getHeight() / iHighestOneBit;
            return;
        }
        throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
    }
}
